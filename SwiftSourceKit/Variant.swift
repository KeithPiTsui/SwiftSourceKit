//
//  Variant.swift
//  SwiftSourceKit
//

import sourcekitd

public struct Variant {
    let variant: sourcekitd_variant_t

    public enum VariantType {
        case null
        case dictionary
        case array
        case integer
        case str
        case uid
        case boolean
    }

    public var type: VariantType {
        switch sourcekitd_variant_get_type(variant) {
        case SOURCEKITD_VARIANT_TYPE_NULL: return .null
        case SOURCEKITD_VARIANT_TYPE_DICTIONARY: return .dictionary
        case SOURCEKITD_VARIANT_TYPE_INT64: return .integer
        case SOURCEKITD_VARIANT_TYPE_ARRAY: return .array
        case SOURCEKITD_VARIANT_TYPE_STRING: return .str
        case SOURCEKITD_VARIANT_TYPE_UID: return .uid
        case SOURCEKITD_VARIANT_TYPE_BOOL: return .boolean
        default:
            fatalError("Invalid sourcekitd variant type")
        }
    }

    init(variant: sourcekitd_variant_t) {
        self.variant = variant
    }
    init(dictionary: sourcekitd_variant_t) {
        assert(sourcekitd_variant_get_type(dictionary) == SOURCEKITD_VARIANT_TYPE_DICTIONARY)
        variant = dictionary
    }

    public subscript(UIDForKey key: sourcekitd_uid_t) -> sourcekitd_uid_t? {
        return sourcekitd_variant_dictionary_get_uid(variant, key)
    }

    public subscript(IntForKey key: sourcekitd_uid_t) -> Int {
        return Int(sourcekitd_variant_dictionary_get_int64(variant, key))
    }

    public subscript(BoolForKey key: sourcekitd_uid_t) -> Bool {
        return sourcekitd_variant_dictionary_get_bool(variant, key)
    }

    public subscript(StringForKey key: sourcekitd_uid_t) -> String {
        guard let cString = sourcekitd_variant_dictionary_get_string(variant, key), let str = String(validatingUTF8: cString) else {
            return ""
        }
        return str
    }
    
    public subscript(VariantForKey key: sourcekitd_uid_t) -> Variant {
        return Variant(variant: sourcekitd_variant_dictionary_get_value(variant, key))
    }
    
    public var description: String {
        guard let str = String(validatingUTF8: sourcekitd_variant_description_copy(variant)) else {
            return ""
        }
        return str
    }
}
