//
//  SourceKitUIDS.swift
//  SwiftSourceKit
//

import sourcekitd

public let KeyRequest = sourcekitd_uid_get_from_cstr("key.request")!
public let KeyCompilerArgs = sourcekitd_uid_get_from_cstr("key.compilerargs")!
public let KeyOffset = sourcekitd_uid_get_from_cstr("key.offset")!
public let KeySourceFile = sourcekitd_uid_get_from_cstr("key.sourcefile")!
public let KeyModuleName = sourcekitd_uid_get_from_cstr("key.modulename")!
public let KeyName = sourcekitd_uid_get_from_cstr("key.name")!
public let KeyFilePath = sourcekitd_uid_get_from_cstr("key.filepath")!
public let KeyModuleInterfaceName = sourcekitd_uid_get_from_cstr("key.module_interface_name")!
public let KeyLength = sourcekitd_uid_get_from_cstr("key.length")!
public let KeySourceText = sourcekitd_uid_get_from_cstr("key.sourcetext")!
public let KeyUSR = sourcekitd_uid_get_from_cstr("key.usr")!
public let KeyEntities = sourcekitd_uid_get_from_cstr("key.entities")!
public let KeyTypename = sourcekitd_uid_get_from_cstr("key.typename")!
public let KeyOverrides = sourcekitd_uid_get_from_cstr("key.overrides")!
public let KeyRelatedDecls = sourcekitd_uid_get_from_cstr("key.related_decls")!
public let KeyAnnotatedDecl = sourcekitd_uid_get_from_cstr("key.annotated_decl")!
public let KeyDocFullAsXML = sourcekitd_uid_get_from_cstr("key.doc.full_as_xml")!
public let KeyResults = sourcekitd_uid_get_from_cstr("key.results")!
public let KeySyntaxMap = sourcekitd_uid_get_from_cstr("key.syntaxmap")!
public let KeyEnableSyntaxMap = sourcekitd_uid_get_from_cstr("key.enablesyntaxmap")!
public let KeyEnableSubStructure = sourcekitd_uid_get_from_cstr("key.enablesubstructure")!
public let KeySyntacticOnly = sourcekitd_uid_get_from_cstr("key.syntactic_only")!
public let KeyLine = sourcekitd_uid_get_from_cstr("key.line")!
public let KeyColumn = sourcekitd_uid_get_from_cstr("key.column")!
public let KeyFormatOptions = sourcekitd_uid_get_from_cstr("key.editor.format.options")!
public let KeyCodeCompleteOptions =
    sourcekitd_uid_get_from_cstr("key.codecomplete.options")!
public let KeyKind = sourcekitd_uid_get_from_cstr("key.kind")!
public let KeyAnnotations = sourcekitd_uid_get_from_cstr("key.annotations")!
public let KeyDiagnostics = sourcekitd_uid_get_from_cstr("key.diagnostics")!
public let KeyDiagnosticStage = sourcekitd_uid_get_from_cstr("key.diagnostic_stage")!
public let KeySubStructure = sourcekitd_uid_get_from_cstr("key.substructure")!
public let KeyIsSystem = sourcekitd_uid_get_from_cstr("key.is_system")!
public let KeyNotification = sourcekitd_uid_get_from_cstr("key.notification")!
public let KeyPopular = sourcekitd_uid_get_from_cstr("key.popular")!
public let KeyUnpopular = sourcekitd_uid_get_from_cstr("key.unpopular")!
public let KeyTypeInterface = sourcekitd_uid_get_from_cstr("key.typeinterface")!
public let KeySeverity = sourcekitd_uid_get_from_cstr("key.severity")!
public let KeyDescription = sourcekitd_uid_get_from_cstr("key.description")!
public let KeyFixits = sourcekitd_uid_get_from_cstr("key.fixits")!
public let KeyNumBytesToErase = sourcekitd_uid_get_from_cstr("key.num_bytes_to_erase")!
public let KeyExtends = sourcekitd_uid_get_from_cstr("key.extends")!
public let KeyGenericParams = sourcekitd_uid_get_from_cstr("key.generic_params")!
public let KeyGenericRequirements = sourcekitd_uid_get_from_cstr("key.generic_requirements")!
public let KeyIsUnavailable = sourcekitd_uid_get_from_cstr("key.is_unavailable")!
public let KeyConforms = sourcekitd_uid_get_from_cstr("key.conforms")!
public let KeyFormatIndentWidth = sourcekitd_uid_get_from_cstr("key.editor.format.indentwidth")!
public let KeyFormatTabWidth = sourcekitd_uid_get_from_cstr("key.editor.format.tabwidth")!
public let KeyFormatUseTabs = sourcekitd_uid_get_from_cstr("key.editor.format.usetabs")!

public let RequestIndex = sourcekitd_uid_get_from_cstr("source.request.indexsource")!
public let RequestCodeComplete = sourcekitd_uid_get_from_cstr("source.request.codecomplete")!
public let RequestCodeCompleteOpen = sourcekitd_uid_get_from_cstr("source.request.codecomplete.open")!
public let RequestCodeCompleteClose = sourcekitd_uid_get_from_cstr("source.request.codecomplete.close")!
public let RequestCodeCompleteUpdate = sourcekitd_uid_get_from_cstr("source.request.codecomplete.update")!
public let RequestCodeCompleteCacheOnDisk = sourcekitd_uid_get_from_cstr("source.request.codecomplete.cache.ondisk")!
public let RequestCodeCompleteSetPopularAPI = sourcekitd_uid_get_from_cstr("source.request.codecomplete.setpopularapi")!
public let RequestCursorInfo = sourcekitd_uid_get_from_cstr("source.request.cursorinfo")!
public let RequestRelatedIdents = sourcekitd_uid_get_from_cstr("source.request.relatedidents")!
public let RequestEditorOpen = sourcekitd_uid_get_from_cstr("source.request.editor.open")!
public let RequestEditorClose = sourcekitd_uid_get_from_cstr("source.request.editor.close")!
public let RequestEditorOpenInterface = sourcekitd_uid_get_from_cstr("source.request.editor.open.interface")!
public let RequestEditorOpenSwiftSourceInterface = sourcekitd_uid_get_from_cstr("source.request.editor.open.interface.swiftsource")!
public let RequestEditorOpenHeaderInterface = sourcekitd_uid_get_from_cstr("source.request.editor.open.interface.header")!
public let RequestEditorExtractTextFromComment = sourcekitd_uid_get_from_cstr("source.request.editor.extract.comment")!
public let RequestEditorReplaceText = sourcekitd_uid_get_from_cstr("source.request.editor.replacetext")!
public let RequestEditorFormatText = sourcekitd_uid_get_from_cstr("source.request.editor.formattext")!
public let RequestEditorExpandPlaceholder = sourcekitd_uid_get_from_cstr("source.request.editor.expand_placeholder")!
public let RequestEditorFindUSR = sourcekitd_uid_get_from_cstr("source.request.editor.find_usr")!
public let RequestEditorFindInterfaceDoc = sourcekitd_uid_get_from_cstr("source.request.editor.find_interface_doc")!
public let RequestDocInfo = sourcekitd_uid_get_from_cstr("source.request.docinfo")!

public let NotificationDocumentUpdate = sourcekitd_uid_get_from_cstr("source.notification.editor.documentupdate")!

public let SourceDiagnosticSeverityError = sourcekitd_uid_get_from_cstr("source.diagnostic.severity.error")!
public let SourceDiagnosticSeverityWarning = sourcekitd_uid_get_from_cstr("source.diagnostic.severity.warning")!
public let SourceDiagnosticSeverityNote = sourcekitd_uid_get_from_cstr("source.diagnostic.severity.note")!

public let SourceDiagnosticStageSwiftParse = sourcekitd_uid_get_from_cstr("source.diagnostic.stage.swift.parse")!
public let SourceDiagnosticStageSwiftSema = sourcekitd_uid_get_from_cstr("source.diagnostic.stage.swift.sema")!
