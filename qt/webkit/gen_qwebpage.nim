import Qt5WebKitWidgets_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebpage.cpp", cflags).}


type QWebPageNavigationType* = cint
const
  QWebPageNavigationTypeLinkClicked* = 0
  QWebPageNavigationTypeFormSubmitted* = 1
  QWebPageNavigationTypeBackOrForward* = 2
  QWebPageNavigationTypeReload* = 3
  QWebPageNavigationTypeFormResubmitted* = 4
  QWebPageNavigationTypeOther* = 5



type QWebPageWebAction* = cint
const
  QWebPageNoWebAction* = -1
  QWebPageOpenLink* = 0
  QWebPageOpenLinkInNewWindow* = 1
  QWebPageOpenFrameInNewWindow* = 2
  QWebPageDownloadLinkToDisk* = 3
  QWebPageCopyLinkToClipboard* = 4
  QWebPageOpenImageInNewWindow* = 5
  QWebPageDownloadImageToDisk* = 6
  QWebPageCopyImageToClipboard* = 7
  QWebPageBack* = 8
  QWebPageForward* = 9
  QWebPageStop* = 10
  QWebPageReload* = 11
  QWebPageCut* = 12
  QWebPageCopy* = 13
  QWebPagePaste* = 14
  QWebPageUndo* = 15
  QWebPageRedo* = 16
  QWebPageMoveToNextChar* = 17
  QWebPageMoveToPreviousChar* = 18
  QWebPageMoveToNextWord* = 19
  QWebPageMoveToPreviousWord* = 20
  QWebPageMoveToNextLine* = 21
  QWebPageMoveToPreviousLine* = 22
  QWebPageMoveToStartOfLine* = 23
  QWebPageMoveToEndOfLine* = 24
  QWebPageMoveToStartOfBlock* = 25
  QWebPageMoveToEndOfBlock* = 26
  QWebPageMoveToStartOfDocument* = 27
  QWebPageMoveToEndOfDocument* = 28
  QWebPageSelectNextChar* = 29
  QWebPageSelectPreviousChar* = 30
  QWebPageSelectNextWord* = 31
  QWebPageSelectPreviousWord* = 32
  QWebPageSelectNextLine* = 33
  QWebPageSelectPreviousLine* = 34
  QWebPageSelectStartOfLine* = 35
  QWebPageSelectEndOfLine* = 36
  QWebPageSelectStartOfBlock* = 37
  QWebPageSelectEndOfBlock* = 38
  QWebPageSelectStartOfDocument* = 39
  QWebPageSelectEndOfDocument* = 40
  QWebPageDeleteStartOfWord* = 41
  QWebPageDeleteEndOfWord* = 42
  QWebPageSetTextDirectionDefault* = 43
  QWebPageSetTextDirectionLeftToRight* = 44
  QWebPageSetTextDirectionRightToLeft* = 45
  QWebPageToggleBold* = 46
  QWebPageToggleItalic* = 47
  QWebPageToggleUnderline* = 48
  QWebPageInspectElement* = 49
  QWebPageInsertParagraphSeparator* = 50
  QWebPageInsertLineSeparator* = 51
  QWebPageSelectAll* = 52
  QWebPageReloadAndBypassCache* = 53
  QWebPagePasteAndMatchStyle* = 54
  QWebPageRemoveFormat* = 55
  QWebPageToggleStrikethrough* = 56
  QWebPageToggleSubscript* = 57
  QWebPageToggleSuperscript* = 58
  QWebPageInsertUnorderedList* = 59
  QWebPageInsertOrderedList* = 60
  QWebPageIndent* = 61
  QWebPageOutdent* = 62
  QWebPageAlignCenter* = 63
  QWebPageAlignJustified* = 64
  QWebPageAlignLeft* = 65
  QWebPageAlignRight* = 66
  QWebPageStopScheduledPageRefresh* = 67
  QWebPageCopyImageUrlToClipboard* = 68
  QWebPageOpenLinkInThisWindow* = 69
  QWebPageDownloadMediaToDisk* = 70
  QWebPageCopyMediaUrlToClipboard* = 71
  QWebPageToggleMediaControls* = 72
  QWebPageToggleMediaLoop* = 73
  QWebPageToggleMediaPlayPause* = 74
  QWebPageToggleMediaMute* = 75
  QWebPageToggleVideoFullscreen* = 76
  QWebPageRequestClose* = 77
  QWebPageUnselect* = 78
  QWebPageWebActionCount* = 79



type QWebPageFindFlag* = cint
const
  QWebPageFindBackward* = 1
  QWebPageFindCaseSensitively* = 2
  QWebPageFindWrapsAroundDocument* = 4
  QWebPageHighlightAllOccurrences* = 8
  QWebPageFindAtWordBeginningsOnly* = 16
  QWebPageTreatMedialCapitalAsWordBeginning* = 32
  QWebPageFindBeginsInSelection* = 64
  QWebPageFindAtWordEndingsOnly* = 128
  QWebPageFindExactMatchOnly* = 144



type QWebPageLinkDelegationPolicy* = cint
const
  QWebPageDontDelegateLinks* = 0
  QWebPageDelegateExternalLinks* = 1
  QWebPageDelegateAllLinks* = 2



type QWebPageWebWindowType* = cint
const
  QWebPageWebBrowserWindow* = 0
  QWebPageWebModalDialog* = 1



type QWebPagePermissionPolicy* = cint
const
  QWebPagePermissionUnknown* = 0
  QWebPagePermissionGrantedByUser* = 1
  QWebPagePermissionDeniedByUser* = 2



type QWebPageFeature* = cint
const
  QWebPageNotifications* = 0
  QWebPageGeolocation* = 1



type QWebPageVisibilityState* = cint
const
  QWebPageVisibilityStateVisible* = 0
  QWebPageVisibilityStateHidden* = 1
  QWebPageVisibilityStatePrerender* = 2
  QWebPageVisibilityStateUnloaded* = 3



type QWebPageMessageSource* = cint
const
  QWebPageXmlMessageSource* = 0
  QWebPageJSMessageSource* = 1
  QWebPageNetworkMessageSource* = 2
  QWebPageConsoleAPIMessageSource* = 3
  QWebPageStorageMessageSource* = 4
  QWebPageAppCacheMessageSource* = 5
  QWebPageRenderingMessageSource* = 6
  QWebPageCSSMessageSource* = 7
  QWebPageSecurityMessageSource* = 8
  QWebPageContentBlockerMessageSource* = 9
  QWebPageOtherMessageSource* = 10



type QWebPageMessageLevel* = cint
const
  QWebPageLogMessageLevel* = 1
  QWebPageWarningMessageLevel* = 2
  QWebPageErrorMessageLevel* = 3
  QWebPageDebugMessageLevel* = 4
  QWebPageInfoMessageLevel* = 5



type QWebPageExtension* = cint
const
  QWebPageChooseMultipleFilesExtension* = 0
  QWebPageErrorPageExtension* = 1



type QWebPageErrorDomain* = cint
const
  QWebPageQtNetwork* = 0
  QWebPageHttp* = 1
  QWebPageWebKit* = 2



import gen_qwebpage_types
export gen_qwebpage_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qmenu,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkreply,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qundostack,
  gen_qurl,
  gen_qvariant,
  gen_qwebelement,
  gen_qwebframe,
  gen_qwebfullscreenrequest,
  gen_qwebhistory,
  gen_qwebpluginfactory,
  gen_qwebsecurityorigin,
  gen_qwebsettings,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qmenu,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkreply,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qundostack,
  gen_qurl,
  gen_qvariant,
  gen_qwebelement,
  gen_qwebframe,
  gen_qwebfullscreenrequest,
  gen_qwebhistory,
  gen_qwebpluginfactory,
  gen_qwebsecurityorigin,
  gen_qwebsettings,
  gen_qwidget

type cQWebPage*{.exportc: "QWebPage", incompleteStruct.} = object
type cQWebPageViewportAttributes*{.exportc: "QWebPage__ViewportAttributes", incompleteStruct.} = object
type cQWebPageExtensionOption*{.exportc: "QWebPage__ExtensionOption", incompleteStruct.} = object
type cQWebPageExtensionReturn*{.exportc: "QWebPage__ExtensionReturn", incompleteStruct.} = object
type cQWebPageChooseMultipleFilesExtensionOption*{.exportc: "QWebPage__ChooseMultipleFilesExtensionOption", incompleteStruct.} = object
type cQWebPageChooseMultipleFilesExtensionReturn*{.exportc: "QWebPage__ChooseMultipleFilesExtensionReturn", incompleteStruct.} = object
type cQWebPageErrorPageExtensionOption*{.exportc: "QWebPage__ErrorPageExtensionOption", incompleteStruct.} = object
type cQWebPageErrorPageExtensionReturn*{.exportc: "QWebPage__ErrorPageExtensionReturn", incompleteStruct.} = object

proc fcQWebPage_new(): ptr cQWebPage {.importc: "QWebPage_new".}
proc fcQWebPage_new2(parent: pointer): ptr cQWebPage {.importc: "QWebPage_new2".}
proc fcQWebPage_metaObject(self: pointer, ): pointer {.importc: "QWebPage_metaObject".}
proc fcQWebPage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPage_metacast".}
proc fcQWebPage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPage_metacall".}
proc fcQWebPage_tr(s: cstring): struct_miqt_string {.importc: "QWebPage_tr".}
proc fcQWebPage_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebPage_trUtf8".}
proc fcQWebPage_mainFrame(self: pointer, ): pointer {.importc: "QWebPage_mainFrame".}
proc fcQWebPage_currentFrame(self: pointer, ): pointer {.importc: "QWebPage_currentFrame".}
proc fcQWebPage_frameAt(self: pointer, pos: pointer): pointer {.importc: "QWebPage_frameAt".}
proc fcQWebPage_history(self: pointer, ): pointer {.importc: "QWebPage_history".}
proc fcQWebPage_settings(self: pointer, ): pointer {.importc: "QWebPage_settings".}
proc fcQWebPage_setView(self: pointer, view: pointer): void {.importc: "QWebPage_setView".}
proc fcQWebPage_view(self: pointer, ): pointer {.importc: "QWebPage_view".}
proc fcQWebPage_isModified(self: pointer, ): bool {.importc: "QWebPage_isModified".}
proc fcQWebPage_undoStack(self: pointer, ): pointer {.importc: "QWebPage_undoStack".}
proc fcQWebPage_setNetworkAccessManager(self: pointer, manager: pointer): void {.importc: "QWebPage_setNetworkAccessManager".}
proc fcQWebPage_networkAccessManager(self: pointer, ): pointer {.importc: "QWebPage_networkAccessManager".}
proc fcQWebPage_setPluginFactory(self: pointer, factory: pointer): void {.importc: "QWebPage_setPluginFactory".}
proc fcQWebPage_pluginFactory(self: pointer, ): pointer {.importc: "QWebPage_pluginFactory".}
proc fcQWebPage_totalBytes(self: pointer, ): culonglong {.importc: "QWebPage_totalBytes".}
proc fcQWebPage_bytesReceived(self: pointer, ): culonglong {.importc: "QWebPage_bytesReceived".}
proc fcQWebPage_visibilityState(self: pointer, ): cint {.importc: "QWebPage_visibilityState".}
proc fcQWebPage_setVisibilityState(self: pointer, visibilityState: cint): void {.importc: "QWebPage_setVisibilityState".}
proc fcQWebPage_recentlyAudible(self: pointer, ): bool {.importc: "QWebPage_recentlyAudible".}
proc fcQWebPage_hasSelection(self: pointer, ): bool {.importc: "QWebPage_hasSelection".}
proc fcQWebPage_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebPage_selectedText".}
proc fcQWebPage_selectedHtml(self: pointer, ): struct_miqt_string {.importc: "QWebPage_selectedHtml".}
proc fcQWebPage_action(self: pointer, action: cint): pointer {.importc: "QWebPage_action".}
proc fcQWebPage_customAction(self: pointer, action: cint): pointer {.importc: "QWebPage_customAction".}
proc fcQWebPage_triggerAction(self: pointer, action: cint, checked: bool): void {.importc: "QWebPage_triggerAction".}
proc fcQWebPage_setDevicePixelRatio(self: pointer, ratio: float64): void {.importc: "QWebPage_setDevicePixelRatio".}
proc fcQWebPage_devicePixelRatio(self: pointer, ): float64 {.importc: "QWebPage_devicePixelRatio".}
proc fcQWebPage_resetDevicePixelRatio(self: pointer, ): void {.importc: "QWebPage_resetDevicePixelRatio".}
proc fcQWebPage_viewportSize(self: pointer, ): pointer {.importc: "QWebPage_viewportSize".}
proc fcQWebPage_setViewportSize(self: pointer, size: pointer): void {.importc: "QWebPage_setViewportSize".}
proc fcQWebPage_viewportAttributesForSize(self: pointer, availableSize: pointer): pointer {.importc: "QWebPage_viewportAttributesForSize".}
proc fcQWebPage_preferredContentsSize(self: pointer, ): pointer {.importc: "QWebPage_preferredContentsSize".}
proc fcQWebPage_setPreferredContentsSize(self: pointer, size: pointer): void {.importc: "QWebPage_setPreferredContentsSize".}
proc fcQWebPage_setActualVisibleContentRect(self: pointer, rect: pointer): void {.importc: "QWebPage_setActualVisibleContentRect".}
proc fcQWebPage_event(self: pointer, param1: pointer): bool {.importc: "QWebPage_event".}
proc fcQWebPage_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebPage_focusNextPrevChild".}
proc fcQWebPage_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebPage_inputMethodQuery".}
proc fcQWebPage_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QWebPage_findText".}
proc fcQWebPage_setForwardUnsupportedContent(self: pointer, forward: bool): void {.importc: "QWebPage_setForwardUnsupportedContent".}
proc fcQWebPage_forwardUnsupportedContent(self: pointer, ): bool {.importc: "QWebPage_forwardUnsupportedContent".}
proc fcQWebPage_setLinkDelegationPolicy(self: pointer, policy: cint): void {.importc: "QWebPage_setLinkDelegationPolicy".}
proc fcQWebPage_linkDelegationPolicy(self: pointer, ): cint {.importc: "QWebPage_linkDelegationPolicy".}
proc fcQWebPage_setPalette(self: pointer, palette: pointer): void {.importc: "QWebPage_setPalette".}
proc fcQWebPage_palette(self: pointer, ): pointer {.importc: "QWebPage_palette".}
proc fcQWebPage_setContentEditable(self: pointer, editable: bool): void {.importc: "QWebPage_setContentEditable".}
proc fcQWebPage_isContentEditable(self: pointer, ): bool {.importc: "QWebPage_isContentEditable".}
proc fcQWebPage_swallowContextMenuEvent(self: pointer, event: pointer): bool {.importc: "QWebPage_swallowContextMenuEvent".}
proc fcQWebPage_updatePositionDependentActions(self: pointer, pos: pointer): void {.importc: "QWebPage_updatePositionDependentActions".}
proc fcQWebPage_createStandardContextMenu(self: pointer, ): pointer {.importc: "QWebPage_createStandardContextMenu".}
proc fcQWebPage_setFeaturePermission(self: pointer, frame: pointer, feature: cint, policy: cint): void {.importc: "QWebPage_setFeaturePermission".}
proc fcQWebPage_supportedContentTypes(self: pointer, ): struct_miqt_array {.importc: "QWebPage_supportedContentTypes".}
proc fcQWebPage_supportsContentType(self: pointer, mimeType: struct_miqt_string): bool {.importc: "QWebPage_supportsContentType".}
proc fcQWebPage_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPage_extension".}
proc fcQWebPage_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPage_supportsExtension".}
proc fcQWebPage_shouldInterruptJavaScript(self: pointer, ): bool {.importc: "QWebPage_shouldInterruptJavaScript".}
proc fcQWebPage_loadStarted(self: pointer, ): void {.importc: "QWebPage_loadStarted".}
proc fQWebPage_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebPage_connect_loadStarted".}
proc fcQWebPage_loadProgress(self: pointer, progress: cint): void {.importc: "QWebPage_loadProgress".}
proc fQWebPage_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebPage_connect_loadProgress".}
proc fcQWebPage_loadFinished(self: pointer, ok: bool): void {.importc: "QWebPage_loadFinished".}
proc fQWebPage_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebPage_connect_loadFinished".}
proc fcQWebPage_linkHovered(self: pointer, link: struct_miqt_string, title: struct_miqt_string, textContent: struct_miqt_string): void {.importc: "QWebPage_linkHovered".}
proc fQWebPage_connect_linkHovered(self: pointer, slot: int) {.importc: "QWebPage_connect_linkHovered".}
proc fcQWebPage_statusBarMessage(self: pointer, text: struct_miqt_string): void {.importc: "QWebPage_statusBarMessage".}
proc fQWebPage_connect_statusBarMessage(self: pointer, slot: int) {.importc: "QWebPage_connect_statusBarMessage".}
proc fcQWebPage_selectionChanged(self: pointer, ): void {.importc: "QWebPage_selectionChanged".}
proc fQWebPage_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebPage_connect_selectionChanged".}
proc fcQWebPage_frameCreated(self: pointer, frame: pointer): void {.importc: "QWebPage_frameCreated".}
proc fQWebPage_connect_frameCreated(self: pointer, slot: int) {.importc: "QWebPage_connect_frameCreated".}
proc fcQWebPage_geometryChangeRequested(self: pointer, geom: pointer): void {.importc: "QWebPage_geometryChangeRequested".}
proc fQWebPage_connect_geometryChangeRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_geometryChangeRequested".}
proc fcQWebPage_repaintRequested(self: pointer, dirtyRect: pointer): void {.importc: "QWebPage_repaintRequested".}
proc fQWebPage_connect_repaintRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_repaintRequested".}
proc fcQWebPage_scrollRequested(self: pointer, dx: cint, dy: cint, scrollViewRect: pointer): void {.importc: "QWebPage_scrollRequested".}
proc fQWebPage_connect_scrollRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_scrollRequested".}
proc fcQWebPage_windowCloseRequested(self: pointer, ): void {.importc: "QWebPage_windowCloseRequested".}
proc fQWebPage_connect_windowCloseRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_windowCloseRequested".}
proc fcQWebPage_printRequested(self: pointer, frame: pointer): void {.importc: "QWebPage_printRequested".}
proc fQWebPage_connect_printRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_printRequested".}
proc fcQWebPage_linkClicked(self: pointer, url: pointer): void {.importc: "QWebPage_linkClicked".}
proc fQWebPage_connect_linkClicked(self: pointer, slot: int) {.importc: "QWebPage_connect_linkClicked".}
proc fcQWebPage_toolBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_toolBarVisibilityChangeRequested".}
proc fQWebPage_connect_toolBarVisibilityChangeRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_toolBarVisibilityChangeRequested".}
proc fcQWebPage_statusBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_statusBarVisibilityChangeRequested".}
proc fQWebPage_connect_statusBarVisibilityChangeRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_statusBarVisibilityChangeRequested".}
proc fcQWebPage_menuBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_menuBarVisibilityChangeRequested".}
proc fQWebPage_connect_menuBarVisibilityChangeRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_menuBarVisibilityChangeRequested".}
proc fcQWebPage_unsupportedContent(self: pointer, reply: pointer): void {.importc: "QWebPage_unsupportedContent".}
proc fQWebPage_connect_unsupportedContent(self: pointer, slot: int) {.importc: "QWebPage_connect_unsupportedContent".}
proc fcQWebPage_downloadRequested(self: pointer, request: pointer): void {.importc: "QWebPage_downloadRequested".}
proc fQWebPage_connect_downloadRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_downloadRequested".}
proc fcQWebPage_focusedElementChanged(self: pointer, element: pointer): void {.importc: "QWebPage_focusedElementChanged".}
proc fQWebPage_connect_focusedElementChanged(self: pointer, slot: int) {.importc: "QWebPage_connect_focusedElementChanged".}
proc fcQWebPage_microFocusChanged(self: pointer, ): void {.importc: "QWebPage_microFocusChanged".}
proc fQWebPage_connect_microFocusChanged(self: pointer, slot: int) {.importc: "QWebPage_connect_microFocusChanged".}
proc fcQWebPage_contentsChanged(self: pointer, ): void {.importc: "QWebPage_contentsChanged".}
proc fQWebPage_connect_contentsChanged(self: pointer, slot: int) {.importc: "QWebPage_connect_contentsChanged".}
proc fcQWebPage_databaseQuotaExceeded(self: pointer, frame: pointer, databaseName: struct_miqt_string): void {.importc: "QWebPage_databaseQuotaExceeded".}
proc fQWebPage_connect_databaseQuotaExceeded(self: pointer, slot: int) {.importc: "QWebPage_connect_databaseQuotaExceeded".}
proc fcQWebPage_applicationCacheQuotaExceeded(self: pointer, origin: pointer, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong): void {.importc: "QWebPage_applicationCacheQuotaExceeded".}
proc fQWebPage_connect_applicationCacheQuotaExceeded(self: pointer, slot: int) {.importc: "QWebPage_connect_applicationCacheQuotaExceeded".}
proc fcQWebPage_saveFrameStateRequested(self: pointer, frame: pointer, item: pointer): void {.importc: "QWebPage_saveFrameStateRequested".}
proc fQWebPage_connect_saveFrameStateRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_saveFrameStateRequested".}
proc fcQWebPage_restoreFrameStateRequested(self: pointer, frame: pointer): void {.importc: "QWebPage_restoreFrameStateRequested".}
proc fQWebPage_connect_restoreFrameStateRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_restoreFrameStateRequested".}
proc fcQWebPage_viewportChangeRequested(self: pointer, ): void {.importc: "QWebPage_viewportChangeRequested".}
proc fQWebPage_connect_viewportChangeRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_viewportChangeRequested".}
proc fcQWebPage_featurePermissionRequested(self: pointer, frame: pointer, feature: cint): void {.importc: "QWebPage_featurePermissionRequested".}
proc fQWebPage_connect_featurePermissionRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_featurePermissionRequested".}
proc fcQWebPage_featurePermissionRequestCanceled(self: pointer, frame: pointer, feature: cint): void {.importc: "QWebPage_featurePermissionRequestCanceled".}
proc fQWebPage_connect_featurePermissionRequestCanceled(self: pointer, slot: int) {.importc: "QWebPage_connect_featurePermissionRequestCanceled".}
proc fcQWebPage_fullScreenRequested(self: pointer, fullScreenRequest: pointer): void {.importc: "QWebPage_fullScreenRequested".}
proc fQWebPage_connect_fullScreenRequested(self: pointer, slot: int) {.importc: "QWebPage_connect_fullScreenRequested".}
proc fcQWebPage_consoleMessageReceived(self: pointer, source: cint, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.importc: "QWebPage_consoleMessageReceived".}
proc fQWebPage_connect_consoleMessageReceived(self: pointer, slot: int) {.importc: "QWebPage_connect_consoleMessageReceived".}
proc fcQWebPage_recentlyAudibleChanged(self: pointer, recentlyAudible: bool): void {.importc: "QWebPage_recentlyAudibleChanged".}
proc fQWebPage_connect_recentlyAudibleChanged(self: pointer, slot: int) {.importc: "QWebPage_connect_recentlyAudibleChanged".}
proc fcQWebPage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPage_tr2".}
proc fcQWebPage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPage_tr3".}
proc fcQWebPage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPage_trUtf82".}
proc fcQWebPage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPage_trUtf83".}
proc fcQWebPage_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QWebPage_findText2".}
proc fQWebPage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebPage_virtualbase_metacall".}
proc fcQWebPage_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_metacall".}
proc fQWebPage_virtualbase_triggerAction(self: pointer, action: cint, checked: bool): void{.importc: "QWebPage_virtualbase_triggerAction".}
proc fcQWebPage_override_virtual_triggerAction(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_triggerAction".}
proc fQWebPage_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebPage_virtualbase_event".}
proc fcQWebPage_override_virtual_event(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_event".}
proc fQWebPage_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool{.importc: "QWebPage_virtualbase_extension".}
proc fcQWebPage_override_virtual_extension(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_extension".}
proc fQWebPage_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QWebPage_virtualbase_supportsExtension".}
proc fcQWebPage_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_supportsExtension".}
proc fQWebPage_virtualbase_shouldInterruptJavaScript(self: pointer, ): bool{.importc: "QWebPage_virtualbase_shouldInterruptJavaScript".}
proc fcQWebPage_override_virtual_shouldInterruptJavaScript(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_shouldInterruptJavaScript".}
proc fQWebPage_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebPage_virtualbase_createWindow".}
proc fcQWebPage_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_createWindow".}
proc fQWebPage_virtualbase_createPlugin(self: pointer, classid: struct_miqt_string, url: pointer, paramNames: struct_miqt_array, paramValues: struct_miqt_array): pointer{.importc: "QWebPage_virtualbase_createPlugin".}
proc fcQWebPage_override_virtual_createPlugin(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_createPlugin".}
proc fQWebPage_virtualbase_acceptNavigationRequest(self: pointer, frame: pointer, request: pointer, typeVal: cint): bool{.importc: "QWebPage_virtualbase_acceptNavigationRequest".}
proc fcQWebPage_override_virtual_acceptNavigationRequest(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_acceptNavigationRequest".}
proc fQWebPage_virtualbase_chooseFile(self: pointer, originatingFrame: pointer, oldFile: struct_miqt_string): struct_miqt_string{.importc: "QWebPage_virtualbase_chooseFile".}
proc fcQWebPage_override_virtual_chooseFile(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_chooseFile".}
proc fQWebPage_virtualbase_javaScriptAlert(self: pointer, originatingFrame: pointer, msg: struct_miqt_string): void{.importc: "QWebPage_virtualbase_javaScriptAlert".}
proc fcQWebPage_override_virtual_javaScriptAlert(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_javaScriptAlert".}
proc fQWebPage_virtualbase_javaScriptConfirm(self: pointer, originatingFrame: pointer, msg: struct_miqt_string): bool{.importc: "QWebPage_virtualbase_javaScriptConfirm".}
proc fcQWebPage_override_virtual_javaScriptConfirm(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_javaScriptConfirm".}
proc fQWebPage_virtualbase_javaScriptConsoleMessage(self: pointer, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void{.importc: "QWebPage_virtualbase_javaScriptConsoleMessage".}
proc fcQWebPage_override_virtual_javaScriptConsoleMessage(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_javaScriptConsoleMessage".}
proc fQWebPage_virtualbase_userAgentForUrl(self: pointer, url: pointer): struct_miqt_string{.importc: "QWebPage_virtualbase_userAgentForUrl".}
proc fcQWebPage_override_virtual_userAgentForUrl(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_userAgentForUrl".}
proc fQWebPage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebPage_virtualbase_eventFilter".}
proc fcQWebPage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_eventFilter".}
proc fQWebPage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebPage_virtualbase_timerEvent".}
proc fcQWebPage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_timerEvent".}
proc fQWebPage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebPage_virtualbase_childEvent".}
proc fcQWebPage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_childEvent".}
proc fQWebPage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebPage_virtualbase_customEvent".}
proc fcQWebPage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_customEvent".}
proc fQWebPage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebPage_virtualbase_connectNotify".}
proc fcQWebPage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_connectNotify".}
proc fQWebPage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebPage_virtualbase_disconnectNotify".}
proc fcQWebPage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebPage_override_virtual_disconnectNotify".}
proc fcQWebPage_delete(self: pointer) {.importc: "QWebPage_delete".}
proc fcQWebPageViewportAttributes_new(): ptr cQWebPageViewportAttributes {.importc: "QWebPage__ViewportAttributes_new".}
proc fcQWebPageViewportAttributes_new2(other: pointer): ptr cQWebPageViewportAttributes {.importc: "QWebPage__ViewportAttributes_new2".}
proc fcQWebPageViewportAttributes_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebPage__ViewportAttributes_operatorAssign".}
proc fcQWebPageViewportAttributes_initialScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_initialScaleFactor".}
proc fcQWebPageViewportAttributes_minimumScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_minimumScaleFactor".}
proc fcQWebPageViewportAttributes_maximumScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_maximumScaleFactor".}
proc fcQWebPageViewportAttributes_devicePixelRatio(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_devicePixelRatio".}
proc fcQWebPageViewportAttributes_isUserScalable(self: pointer, ): bool {.importc: "QWebPage__ViewportAttributes_isUserScalable".}
proc fcQWebPageViewportAttributes_isValid(self: pointer, ): bool {.importc: "QWebPage__ViewportAttributes_isValid".}
proc fcQWebPageViewportAttributes_size(self: pointer, ): pointer {.importc: "QWebPage__ViewportAttributes_size".}
proc fcQWebPageViewportAttributes_delete(self: pointer) {.importc: "QWebPage__ViewportAttributes_delete".}
proc fcQWebPageExtensionOption_new(param1: pointer): ptr cQWebPageExtensionOption {.importc: "QWebPage__ExtensionOption_new".}
proc fcQWebPageExtensionOption_delete(self: pointer) {.importc: "QWebPage__ExtensionOption_delete".}
proc fcQWebPageExtensionReturn_new(param1: pointer): ptr cQWebPageExtensionReturn {.importc: "QWebPage__ExtensionReturn_new".}
proc fcQWebPageExtensionReturn_new2(): ptr cQWebPageExtensionReturn {.importc: "QWebPage__ExtensionReturn_new2".}
proc fcQWebPageExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ExtensionReturn_delete".}
proc fcQWebPageChooseMultipleFilesExtensionOption_delete(self: pointer) {.importc: "QWebPage__ChooseMultipleFilesExtensionOption_delete".}
proc fcQWebPageChooseMultipleFilesExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ChooseMultipleFilesExtensionReturn_delete".}
proc fcQWebPageErrorPageExtensionOption_new(param1: pointer): ptr cQWebPageErrorPageExtensionOption {.importc: "QWebPage__ErrorPageExtensionOption_new".}
proc fcQWebPageErrorPageExtensionOption_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPage__ErrorPageExtensionOption_operatorAssign".}
proc fcQWebPageErrorPageExtensionOption_delete(self: pointer) {.importc: "QWebPage__ErrorPageExtensionOption_delete".}
proc fcQWebPageErrorPageExtensionReturn_new(): ptr cQWebPageErrorPageExtensionReturn {.importc: "QWebPage__ErrorPageExtensionReturn_new".}
proc fcQWebPageErrorPageExtensionReturn_new2(param1: pointer): ptr cQWebPageErrorPageExtensionReturn {.importc: "QWebPage__ErrorPageExtensionReturn_new2".}
proc fcQWebPageErrorPageExtensionReturn_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPage__ErrorPageExtensionReturn_operatorAssign".}
proc fcQWebPageErrorPageExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ErrorPageExtensionReturn_delete".}


func init*(T: type QWebPage, h: ptr cQWebPage): QWebPage =
  T(h: h)
proc create*(T: type QWebPage, ): QWebPage =

  QWebPage.init(fcQWebPage_new())
proc create*(T: type QWebPage, parent: gen_qobject.QObject): QWebPage =

  QWebPage.init(fcQWebPage_new2(parent.h))
proc metaObject*(self: QWebPage, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebPage_metaObject(self.h))

proc metacast*(self: QWebPage, param1: cstring): pointer =

  fcQWebPage_metacast(self.h, param1)

proc metacall*(self: QWebPage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebPage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebPage, s: cstring): string =

  let v_ms = fcQWebPage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebPage, s: cstring): string =

  let v_ms = fcQWebPage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mainFrame*(self: QWebPage, ): gen_qwebframe.QWebFrame =

  gen_qwebframe.QWebFrame(h: fcQWebPage_mainFrame(self.h))

proc currentFrame*(self: QWebPage, ): gen_qwebframe.QWebFrame =

  gen_qwebframe.QWebFrame(h: fcQWebPage_currentFrame(self.h))

proc frameAt*(self: QWebPage, pos: gen_qpoint.QPoint): gen_qwebframe.QWebFrame =

  gen_qwebframe.QWebFrame(h: fcQWebPage_frameAt(self.h, pos.h))

proc history*(self: QWebPage, ): gen_qwebhistory.QWebHistory =

  gen_qwebhistory.QWebHistory(h: fcQWebPage_history(self.h))

proc settings*(self: QWebPage, ): gen_qwebsettings.QWebSettings =

  gen_qwebsettings.QWebSettings(h: fcQWebPage_settings(self.h))

proc setView*(self: QWebPage, view: gen_qwidget.QWidget): void =

  fcQWebPage_setView(self.h, view.h)

proc view*(self: QWebPage, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWebPage_view(self.h))

proc isModified*(self: QWebPage, ): bool =

  fcQWebPage_isModified(self.h)

proc undoStack*(self: QWebPage, ): gen_qundostack.QUndoStack =

  gen_qundostack.QUndoStack(h: fcQWebPage_undoStack(self.h))

proc setNetworkAccessManager*(self: QWebPage, manager: gen_qnetworkaccessmanager.QNetworkAccessManager): void =

  fcQWebPage_setNetworkAccessManager(self.h, manager.h)

proc networkAccessManager*(self: QWebPage, ): gen_qnetworkaccessmanager.QNetworkAccessManager =

  gen_qnetworkaccessmanager.QNetworkAccessManager(h: fcQWebPage_networkAccessManager(self.h))

proc setPluginFactory*(self: QWebPage, factory: gen_qwebpluginfactory.QWebPluginFactory): void =

  fcQWebPage_setPluginFactory(self.h, factory.h)

proc pluginFactory*(self: QWebPage, ): gen_qwebpluginfactory.QWebPluginFactory =

  gen_qwebpluginfactory.QWebPluginFactory(h: fcQWebPage_pluginFactory(self.h))

proc totalBytes*(self: QWebPage, ): culonglong =

  fcQWebPage_totalBytes(self.h)

proc bytesReceived*(self: QWebPage, ): culonglong =

  fcQWebPage_bytesReceived(self.h)

proc visibilityState*(self: QWebPage, ): QWebPageVisibilityState =

  QWebPageVisibilityState(fcQWebPage_visibilityState(self.h))

proc setVisibilityState*(self: QWebPage, visibilityState: QWebPageVisibilityState): void =

  fcQWebPage_setVisibilityState(self.h, cint(visibilityState))

proc recentlyAudible*(self: QWebPage, ): bool =

  fcQWebPage_recentlyAudible(self.h)

proc hasSelection*(self: QWebPage, ): bool =

  fcQWebPage_hasSelection(self.h)

proc selectedText*(self: QWebPage, ): string =

  let v_ms = fcQWebPage_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedHtml*(self: QWebPage, ): string =

  let v_ms = fcQWebPage_selectedHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc action*(self: QWebPage, action: QWebPageWebAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWebPage_action(self.h, cint(action)))

proc customAction*(self: QWebPage, action: cint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWebPage_customAction(self.h, action))

proc triggerAction*(self: QWebPage, action: QWebPageWebAction, checked: bool): void =

  fcQWebPage_triggerAction(self.h, cint(action), checked)

proc setDevicePixelRatio*(self: QWebPage, ratio: float64): void =

  fcQWebPage_setDevicePixelRatio(self.h, ratio)

proc devicePixelRatio*(self: QWebPage, ): float64 =

  fcQWebPage_devicePixelRatio(self.h)

proc resetDevicePixelRatio*(self: QWebPage, ): void =

  fcQWebPage_resetDevicePixelRatio(self.h)

proc viewportSize*(self: QWebPage, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWebPage_viewportSize(self.h))

proc setViewportSize*(self: QWebPage, size: gen_qsize.QSize): void =

  fcQWebPage_setViewportSize(self.h, size.h)

proc viewportAttributesForSize*(self: QWebPage, availableSize: gen_qsize.QSize): QWebPageViewportAttributes =

  QWebPageViewportAttributes(h: fcQWebPage_viewportAttributesForSize(self.h, availableSize.h))

proc preferredContentsSize*(self: QWebPage, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWebPage_preferredContentsSize(self.h))

proc setPreferredContentsSize*(self: QWebPage, size: gen_qsize.QSize): void =

  fcQWebPage_setPreferredContentsSize(self.h, size.h)

proc setActualVisibleContentRect*(self: QWebPage, rect: gen_qrect.QRect): void =

  fcQWebPage_setActualVisibleContentRect(self.h, rect.h)

proc event*(self: QWebPage, param1: gen_qcoreevent.QEvent): bool =

  fcQWebPage_event(self.h, param1.h)

proc focusNextPrevChild*(self: QWebPage, next: bool): bool =

  fcQWebPage_focusNextPrevChild(self.h, next)

proc inputMethodQuery*(self: QWebPage, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWebPage_inputMethodQuery(self.h, cint(property)))

proc findText*(self: QWebPage, subString: string): bool =

  fcQWebPage_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc setForwardUnsupportedContent*(self: QWebPage, forward: bool): void =

  fcQWebPage_setForwardUnsupportedContent(self.h, forward)

proc forwardUnsupportedContent*(self: QWebPage, ): bool =

  fcQWebPage_forwardUnsupportedContent(self.h)

proc setLinkDelegationPolicy*(self: QWebPage, policy: QWebPageLinkDelegationPolicy): void =

  fcQWebPage_setLinkDelegationPolicy(self.h, cint(policy))

proc linkDelegationPolicy*(self: QWebPage, ): QWebPageLinkDelegationPolicy =

  QWebPageLinkDelegationPolicy(fcQWebPage_linkDelegationPolicy(self.h))

proc setPalette*(self: QWebPage, palette: gen_qpalette.QPalette): void =

  fcQWebPage_setPalette(self.h, palette.h)

proc palette*(self: QWebPage, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQWebPage_palette(self.h))

proc setContentEditable*(self: QWebPage, editable: bool): void =

  fcQWebPage_setContentEditable(self.h, editable)

proc isContentEditable*(self: QWebPage, ): bool =

  fcQWebPage_isContentEditable(self.h)

proc swallowContextMenuEvent*(self: QWebPage, event: gen_qevent.QContextMenuEvent): bool =

  fcQWebPage_swallowContextMenuEvent(self.h, event.h)

proc updatePositionDependentActions*(self: QWebPage, pos: gen_qpoint.QPoint): void =

  fcQWebPage_updatePositionDependentActions(self.h, pos.h)

proc createStandardContextMenu*(self: QWebPage, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQWebPage_createStandardContextMenu(self.h))

proc setFeaturePermission*(self: QWebPage, frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature, policy: QWebPagePermissionPolicy): void =

  fcQWebPage_setFeaturePermission(self.h, frame.h, cint(feature), cint(policy))

proc supportedContentTypes*(self: QWebPage, ): seq[string] =

  var v_ma = fcQWebPage_supportedContentTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportsContentType*(self: QWebPage, mimeType: string): bool =

  fcQWebPage_supportsContentType(self.h, struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc extension*(self: QWebPage, extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool =

  fcQWebPage_extension(self.h, cint(extension), option.h, output.h)

proc supportsExtension*(self: QWebPage, extension: QWebPageExtension): bool =

  fcQWebPage_supportsExtension(self.h, cint(extension))

proc shouldInterruptJavaScript*(self: QWebPage, ): bool =

  fcQWebPage_shouldInterruptJavaScript(self.h)

proc loadStarted*(self: QWebPage, ): void =

  fcQWebPage_loadStarted(self.h)

proc miqt_exec_callback_QWebPage_loadStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadStarted*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_loadStarted(self.h, cast[int](addr tmp[]))
proc loadProgress*(self: QWebPage, progress: cint): void =

  fcQWebPage_loadProgress(self.h, progress)

proc miqt_exec_callback_QWebPage_loadProgress(slot: int, progress: cint) {.exportc.} =
  type Cb = proc(progress: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onloadProgress*(self: QWebPage, slot: proc(progress: cint)) =
  type Cb = proc(progress: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_loadProgress(self.h, cast[int](addr tmp[]))
proc loadFinished*(self: QWebPage, ok: bool): void =

  fcQWebPage_loadFinished(self.h, ok)

proc miqt_exec_callback_QWebPage_loadFinished(slot: int, ok: bool) {.exportc.} =
  type Cb = proc(ok: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ok


  nimfunc[](slotval1)

proc onloadFinished*(self: QWebPage, slot: proc(ok: bool)) =
  type Cb = proc(ok: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_loadFinished(self.h, cast[int](addr tmp[]))
proc linkHovered*(self: QWebPage, link: string, title: string, textContent: string): void =

  fcQWebPage_linkHovered(self.h, struct_miqt_string(data: link, len: csize_t(len(link))), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: textContent, len: csize_t(len(textContent))))

proc miqt_exec_callback_QWebPage_linkHovered(slot: int, link: struct_miqt_string, title: struct_miqt_string, textContent: struct_miqt_string) {.exportc.} =
  type Cb = proc(link: string, title: string, textContent: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval2 = vtitlex_ret

  let vtextContent_ms = textContent
  let vtextContentx_ret = string.fromBytes(toOpenArrayByte(vtextContent_ms.data, 0, int(vtextContent_ms.len)-1))
  c_free(vtextContent_ms.data)
  let slotval3 = vtextContentx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onlinkHovered*(self: QWebPage, slot: proc(link: string, title: string, textContent: string)) =
  type Cb = proc(link: string, title: string, textContent: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_linkHovered(self.h, cast[int](addr tmp[]))
proc statusBarMessage*(self: QWebPage, text: string): void =

  fcQWebPage_statusBarMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QWebPage_statusBarMessage(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc onstatusBarMessage*(self: QWebPage, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_statusBarMessage(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QWebPage, ): void =

  fcQWebPage_selectionChanged(self.h)

proc miqt_exec_callback_QWebPage_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc frameCreated*(self: QWebPage, frame: gen_qwebframe.QWebFrame): void =

  fcQWebPage_frameCreated(self.h, frame.h)

proc miqt_exec_callback_QWebPage_frameCreated(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)


  nimfunc[](slotval1)

proc onframeCreated*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_frameCreated(self.h, cast[int](addr tmp[]))
proc geometryChangeRequested*(self: QWebPage, geom: gen_qrect.QRect): void =

  fcQWebPage_geometryChangeRequested(self.h, geom.h)

proc miqt_exec_callback_QWebPage_geometryChangeRequested(slot: int, geom: pointer) {.exportc.} =
  type Cb = proc(geom: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: geom)


  nimfunc[](slotval1)

proc ongeometryChangeRequested*(self: QWebPage, slot: proc(geom: gen_qrect.QRect)) =
  type Cb = proc(geom: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_geometryChangeRequested(self.h, cast[int](addr tmp[]))
proc repaintRequested*(self: QWebPage, dirtyRect: gen_qrect.QRect): void =

  fcQWebPage_repaintRequested(self.h, dirtyRect.h)

proc miqt_exec_callback_QWebPage_repaintRequested(slot: int, dirtyRect: pointer) {.exportc.} =
  type Cb = proc(dirtyRect: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: dirtyRect)


  nimfunc[](slotval1)

proc onrepaintRequested*(self: QWebPage, slot: proc(dirtyRect: gen_qrect.QRect)) =
  type Cb = proc(dirtyRect: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_repaintRequested(self.h, cast[int](addr tmp[]))
proc scrollRequested*(self: QWebPage, dx: cint, dy: cint, scrollViewRect: gen_qrect.QRect): void =

  fcQWebPage_scrollRequested(self.h, dx, dy, scrollViewRect.h)

proc miqt_exec_callback_QWebPage_scrollRequested(slot: int, dx: cint, dy: cint, scrollViewRect: pointer) {.exportc.} =
  type Cb = proc(dx: cint, dy: cint, scrollViewRect: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy

  let slotval3 = gen_qrect.QRect(h: scrollViewRect)


  nimfunc[](slotval1, slotval2, slotval3)

proc onscrollRequested*(self: QWebPage, slot: proc(dx: cint, dy: cint, scrollViewRect: gen_qrect.QRect)) =
  type Cb = proc(dx: cint, dy: cint, scrollViewRect: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_scrollRequested(self.h, cast[int](addr tmp[]))
proc windowCloseRequested*(self: QWebPage, ): void =

  fcQWebPage_windowCloseRequested(self.h)

proc miqt_exec_callback_QWebPage_windowCloseRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwindowCloseRequested*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_windowCloseRequested(self.h, cast[int](addr tmp[]))
proc printRequested*(self: QWebPage, frame: gen_qwebframe.QWebFrame): void =

  fcQWebPage_printRequested(self.h, frame.h)

proc miqt_exec_callback_QWebPage_printRequested(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)


  nimfunc[](slotval1)

proc onprintRequested*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_printRequested(self.h, cast[int](addr tmp[]))
proc linkClicked*(self: QWebPage, url: gen_qurl.QUrl): void =

  fcQWebPage_linkClicked(self.h, url.h)

proc miqt_exec_callback_QWebPage_linkClicked(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onlinkClicked*(self: QWebPage, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_linkClicked(self.h, cast[int](addr tmp[]))
proc toolBarVisibilityChangeRequested*(self: QWebPage, visible: bool): void =

  fcQWebPage_toolBarVisibilityChangeRequested(self.h, visible)

proc miqt_exec_callback_QWebPage_toolBarVisibilityChangeRequested(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc ontoolBarVisibilityChangeRequested*(self: QWebPage, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_toolBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]))
proc statusBarVisibilityChangeRequested*(self: QWebPage, visible: bool): void =

  fcQWebPage_statusBarVisibilityChangeRequested(self.h, visible)

proc miqt_exec_callback_QWebPage_statusBarVisibilityChangeRequested(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc onstatusBarVisibilityChangeRequested*(self: QWebPage, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_statusBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]))
proc menuBarVisibilityChangeRequested*(self: QWebPage, visible: bool): void =

  fcQWebPage_menuBarVisibilityChangeRequested(self.h, visible)

proc miqt_exec_callback_QWebPage_menuBarVisibilityChangeRequested(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc onmenuBarVisibilityChangeRequested*(self: QWebPage, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_menuBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]))
proc unsupportedContent*(self: QWebPage, reply: gen_qnetworkreply.QNetworkReply): void =

  fcQWebPage_unsupportedContent(self.h, reply.h)

proc miqt_exec_callback_QWebPage_unsupportedContent(slot: int, reply: pointer) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)


  nimfunc[](slotval1)

proc onunsupportedContent*(self: QWebPage, slot: proc(reply: gen_qnetworkreply.QNetworkReply)) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_unsupportedContent(self.h, cast[int](addr tmp[]))
proc downloadRequested*(self: QWebPage, request: gen_qnetworkrequest.QNetworkRequest): void =

  fcQWebPage_downloadRequested(self.h, request.h)

proc miqt_exec_callback_QWebPage_downloadRequested(slot: int, request: pointer) {.exportc.} =
  type Cb = proc(request: gen_qnetworkrequest.QNetworkRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkrequest.QNetworkRequest(h: request)


  nimfunc[](slotval1)

proc ondownloadRequested*(self: QWebPage, slot: proc(request: gen_qnetworkrequest.QNetworkRequest)) =
  type Cb = proc(request: gen_qnetworkrequest.QNetworkRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_downloadRequested(self.h, cast[int](addr tmp[]))
proc focusedElementChanged*(self: QWebPage, element: gen_qwebelement.QWebElement): void =

  fcQWebPage_focusedElementChanged(self.h, element.h)

proc miqt_exec_callback_QWebPage_focusedElementChanged(slot: int, element: pointer) {.exportc.} =
  type Cb = proc(element: gen_qwebelement.QWebElement)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebelement.QWebElement(h: element)


  nimfunc[](slotval1)

proc onfocusedElementChanged*(self: QWebPage, slot: proc(element: gen_qwebelement.QWebElement)) =
  type Cb = proc(element: gen_qwebelement.QWebElement)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_focusedElementChanged(self.h, cast[int](addr tmp[]))
proc microFocusChanged*(self: QWebPage, ): void =

  fcQWebPage_microFocusChanged(self.h)

proc miqt_exec_callback_QWebPage_microFocusChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmicroFocusChanged*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_microFocusChanged(self.h, cast[int](addr tmp[]))
proc contentsChanged*(self: QWebPage, ): void =

  fcQWebPage_contentsChanged(self.h)

proc miqt_exec_callback_QWebPage_contentsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontentsChanged*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_contentsChanged(self.h, cast[int](addr tmp[]))
proc databaseQuotaExceeded*(self: QWebPage, frame: gen_qwebframe.QWebFrame, databaseName: string): void =

  fcQWebPage_databaseQuotaExceeded(self.h, frame.h, struct_miqt_string(data: databaseName, len: csize_t(len(databaseName))))

proc miqt_exec_callback_QWebPage_databaseQuotaExceeded(slot: int, frame: pointer, databaseName: struct_miqt_string) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, databaseName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)

  let vdatabaseName_ms = databaseName
  let vdatabaseNamex_ret = string.fromBytes(toOpenArrayByte(vdatabaseName_ms.data, 0, int(vdatabaseName_ms.len)-1))
  c_free(vdatabaseName_ms.data)
  let slotval2 = vdatabaseNamex_ret


  nimfunc[](slotval1, slotval2)

proc ondatabaseQuotaExceeded*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame, databaseName: string)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, databaseName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_databaseQuotaExceeded(self.h, cast[int](addr tmp[]))
proc applicationCacheQuotaExceeded*(self: QWebPage, origin: gen_qwebsecurityorigin.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong): void =

  fcQWebPage_applicationCacheQuotaExceeded(self.h, origin.h, defaultOriginQuota, totalSpaceNeeded)

proc miqt_exec_callback_QWebPage_applicationCacheQuotaExceeded(slot: int, origin: pointer, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong) {.exportc.} =
  type Cb = proc(origin: gen_qwebsecurityorigin.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebsecurityorigin.QWebSecurityOrigin(h: origin)

  let slotval2 = defaultOriginQuota

  let slotval3 = totalSpaceNeeded


  nimfunc[](slotval1, slotval2, slotval3)

proc onapplicationCacheQuotaExceeded*(self: QWebPage, slot: proc(origin: gen_qwebsecurityorigin.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong)) =
  type Cb = proc(origin: gen_qwebsecurityorigin.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_applicationCacheQuotaExceeded(self.h, cast[int](addr tmp[]))
proc saveFrameStateRequested*(self: QWebPage, frame: gen_qwebframe.QWebFrame, item: gen_qwebhistory.QWebHistoryItem): void =

  fcQWebPage_saveFrameStateRequested(self.h, frame.h, item.h)

proc miqt_exec_callback_QWebPage_saveFrameStateRequested(slot: int, frame: pointer, item: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, item: gen_qwebhistory.QWebHistoryItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)

  let slotval2 = gen_qwebhistory.QWebHistoryItem(h: item)


  nimfunc[](slotval1, slotval2)

proc onsaveFrameStateRequested*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame, item: gen_qwebhistory.QWebHistoryItem)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, item: gen_qwebhistory.QWebHistoryItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_saveFrameStateRequested(self.h, cast[int](addr tmp[]))
proc restoreFrameStateRequested*(self: QWebPage, frame: gen_qwebframe.QWebFrame): void =

  fcQWebPage_restoreFrameStateRequested(self.h, frame.h)

proc miqt_exec_callback_QWebPage_restoreFrameStateRequested(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)


  nimfunc[](slotval1)

proc onrestoreFrameStateRequested*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_restoreFrameStateRequested(self.h, cast[int](addr tmp[]))
proc viewportChangeRequested*(self: QWebPage, ): void =

  fcQWebPage_viewportChangeRequested(self.h)

proc miqt_exec_callback_QWebPage_viewportChangeRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onviewportChangeRequested*(self: QWebPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_viewportChangeRequested(self.h, cast[int](addr tmp[]))
proc featurePermissionRequested*(self: QWebPage, frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature): void =

  fcQWebPage_featurePermissionRequested(self.h, frame.h, cint(feature))

proc miqt_exec_callback_QWebPage_featurePermissionRequested(slot: int, frame: pointer, feature: cint) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)

  let slotval2 = QWebPageFeature(feature)


  nimfunc[](slotval1, slotval2)

proc onfeaturePermissionRequested*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_featurePermissionRequested(self.h, cast[int](addr tmp[]))
proc featurePermissionRequestCanceled*(self: QWebPage, frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature): void =

  fcQWebPage_featurePermissionRequestCanceled(self.h, frame.h, cint(feature))

proc miqt_exec_callback_QWebPage_featurePermissionRequestCanceled(slot: int, frame: pointer, feature: cint) {.exportc.} =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)

  let slotval2 = QWebPageFeature(feature)


  nimfunc[](slotval1, slotval2)

proc onfeaturePermissionRequestCanceled*(self: QWebPage, slot: proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)) =
  type Cb = proc(frame: gen_qwebframe.QWebFrame, feature: QWebPageFeature)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_featurePermissionRequestCanceled(self.h, cast[int](addr tmp[]))
proc fullScreenRequested*(self: QWebPage, fullScreenRequest: gen_qwebfullscreenrequest.QWebFullScreenRequest): void =

  fcQWebPage_fullScreenRequested(self.h, fullScreenRequest.h)

proc miqt_exec_callback_QWebPage_fullScreenRequested(slot: int, fullScreenRequest: pointer) {.exportc.} =
  type Cb = proc(fullScreenRequest: gen_qwebfullscreenrequest.QWebFullScreenRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebfullscreenrequest.QWebFullScreenRequest(h: fullScreenRequest)


  nimfunc[](slotval1)

proc onfullScreenRequested*(self: QWebPage, slot: proc(fullScreenRequest: gen_qwebfullscreenrequest.QWebFullScreenRequest)) =
  type Cb = proc(fullScreenRequest: gen_qwebfullscreenrequest.QWebFullScreenRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_fullScreenRequested(self.h, cast[int](addr tmp[]))
proc consoleMessageReceived*(self: QWebPage, source: QWebPageMessageSource, level: QWebPageMessageLevel, message: string, lineNumber: cint, sourceID: string): void =

  fcQWebPage_consoleMessageReceived(self.h, cint(source), cint(level), struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

proc miqt_exec_callback_QWebPage_consoleMessageReceived(slot: int, source: cint, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string) {.exportc.} =
  type Cb = proc(source: QWebPageMessageSource, level: QWebPageMessageLevel, message: string, lineNumber: cint, sourceID: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QWebPageMessageSource(source)

  let slotval2 = QWebPageMessageLevel(level)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval3 = vmessagex_ret

  let slotval4 = lineNumber

  let vsourceID_ms = sourceID
  let vsourceIDx_ret = string.fromBytes(toOpenArrayByte(vsourceID_ms.data, 0, int(vsourceID_ms.len)-1))
  c_free(vsourceID_ms.data)
  let slotval5 = vsourceIDx_ret


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)

proc onconsoleMessageReceived*(self: QWebPage, slot: proc(source: QWebPageMessageSource, level: QWebPageMessageLevel, message: string, lineNumber: cint, sourceID: string)) =
  type Cb = proc(source: QWebPageMessageSource, level: QWebPageMessageLevel, message: string, lineNumber: cint, sourceID: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_consoleMessageReceived(self.h, cast[int](addr tmp[]))
proc recentlyAudibleChanged*(self: QWebPage, recentlyAudible: bool): void =

  fcQWebPage_recentlyAudibleChanged(self.h, recentlyAudible)

proc miqt_exec_callback_QWebPage_recentlyAudibleChanged(slot: int, recentlyAudible: bool) {.exportc.} =
  type Cb = proc(recentlyAudible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = recentlyAudible


  nimfunc[](slotval1)

proc onrecentlyAudibleChanged*(self: QWebPage, slot: proc(recentlyAudible: bool)) =
  type Cb = proc(recentlyAudible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebPage_connect_recentlyAudibleChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebPage, s: cstring, c: cstring): string =

  let v_ms = fcQWebPage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebPage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebPage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebPage, s: cstring, c: cstring): string =

  let v_ms = fcQWebPage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebPage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebPage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText2*(self: QWebPage, subString: string, options: QWebPageFindFlag): bool =

  fcQWebPage_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc callVirtualBase_metacall(self: QWebPage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebPage_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebPagemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebPage, slot: proc(super: QWebPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_metacall(self: ptr cQWebPage, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebPage_metacall ".} =
  type Cb = proc(super: QWebPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebPage(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_triggerAction(self: QWebPage, action: QWebPageWebAction, checked: bool): void =


  fQWebPage_virtualbase_triggerAction(self.h, cint(action), checked)

type QWebPagetriggerActionBase* = proc(action: QWebPageWebAction, checked: bool): void
proc ontriggerAction*(self: QWebPage, slot: proc(super: QWebPagetriggerActionBase, action: QWebPageWebAction, checked: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagetriggerActionBase, action: QWebPageWebAction, checked: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_triggerAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_triggerAction(self: ptr cQWebPage, slot: int, action: cint, checked: bool): void {.exportc: "miqt_exec_callback_QWebPage_triggerAction ".} =
  type Cb = proc(super: QWebPagetriggerActionBase, action: QWebPageWebAction, checked: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: QWebPageWebAction, checked: bool): auto =
    callVirtualBase_triggerAction(QWebPage(h: self), action, checked)
  let slotval1 = QWebPageWebAction(action)

  let slotval2 = checked


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_event(self: QWebPage, param1: gen_qcoreevent.QEvent): bool =


  fQWebPage_virtualbase_event(self.h, param1.h)

type QWebPageeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebPage, slot: proc(super: QWebPageeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPageeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_event(self: ptr cQWebPage, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebPage_event ".} =
  type Cb = proc(super: QWebPageeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebPage(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_extension(self: QWebPage, extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool =


  fQWebPage_virtualbase_extension(self.h, cint(extension), option.h, output.h)

type QWebPageextensionBase* = proc(extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool
proc onextension*(self: QWebPage, slot: proc(super: QWebPageextensionBase, extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPageextensionBase, extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_extension(self: ptr cQWebPage, slot: int, extension: cint, option: pointer, output: pointer): bool {.exportc: "miqt_exec_callback_QWebPage_extension ".} =
  type Cb = proc(super: QWebPageextensionBase, extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QWebPageExtension, option: QWebPageExtensionOption, output: QWebPageExtensionReturn): auto =
    callVirtualBase_extension(QWebPage(h: self), extension, option, output)
  let slotval1 = QWebPageExtension(extension)

  let slotval2 = QWebPageExtensionOption(h: option)

  let slotval3 = QWebPageExtensionReturn(h: output)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QWebPage, extension: QWebPageExtension): bool =


  fQWebPage_virtualbase_supportsExtension(self.h, cint(extension))

type QWebPagesupportsExtensionBase* = proc(extension: QWebPageExtension): bool
proc onsupportsExtension*(self: QWebPage, slot: proc(super: QWebPagesupportsExtensionBase, extension: QWebPageExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPagesupportsExtensionBase, extension: QWebPageExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_supportsExtension(self: ptr cQWebPage, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QWebPage_supportsExtension ".} =
  type Cb = proc(super: QWebPagesupportsExtensionBase, extension: QWebPageExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QWebPageExtension): auto =
    callVirtualBase_supportsExtension(QWebPage(h: self), extension)
  let slotval1 = QWebPageExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_shouldInterruptJavaScript(self: QWebPage, ): bool =


  fQWebPage_virtualbase_shouldInterruptJavaScript(self.h)

type QWebPageshouldInterruptJavaScriptBase* = proc(): bool
proc onshouldInterruptJavaScript*(self: QWebPage, slot: proc(super: QWebPageshouldInterruptJavaScriptBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPageshouldInterruptJavaScriptBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_shouldInterruptJavaScript(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_shouldInterruptJavaScript(self: ptr cQWebPage, slot: int): bool {.exportc: "miqt_exec_callback_QWebPage_shouldInterruptJavaScript ".} =
  type Cb = proc(super: QWebPageshouldInterruptJavaScriptBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shouldInterruptJavaScript(QWebPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_createWindow(self: QWebPage, typeVal: QWebPageWebWindowType): QWebPage =


  QWebPage(h: fQWebPage_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebPagecreateWindowBase* = proc(typeVal: QWebPageWebWindowType): QWebPage
proc oncreateWindow*(self: QWebPage, slot: proc(super: QWebPagecreateWindowBase, typeVal: QWebPageWebWindowType): QWebPage) =
  # TODO check subclass
  type Cb = proc(super: QWebPagecreateWindowBase, typeVal: QWebPageWebWindowType): QWebPage
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_createWindow(self: ptr cQWebPage, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebPage_createWindow ".} =
  type Cb = proc(super: QWebPagecreateWindowBase, typeVal: QWebPageWebWindowType): QWebPage
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: QWebPageWebWindowType): auto =
    callVirtualBase_createWindow(QWebPage(h: self), typeVal)
  let slotval1 = QWebPageWebWindowType(typeVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_createPlugin(self: QWebPage, classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject.QObject =

  var paramNames_CArray = newSeq[struct_miqt_string](len(paramNames))
  for i in 0..<len(paramNames):
    paramNames_CArray[i] = struct_miqt_string(data: paramNames[i], len: csize_t(len(paramNames[i])))

  var paramValues_CArray = newSeq[struct_miqt_string](len(paramValues))
  for i in 0..<len(paramValues):
    paramValues_CArray[i] = struct_miqt_string(data: paramValues[i], len: csize_t(len(paramValues[i])))


  gen_qobject.QObject(h: fQWebPage_virtualbase_createPlugin(self.h, struct_miqt_string(data: classid, len: csize_t(len(classid))), url.h, struct_miqt_array(len: csize_t(len(paramNames)), data: if len(paramNames) == 0: nil else: addr(paramNames_CArray[0])), struct_miqt_array(len: csize_t(len(paramValues)), data: if len(paramValues) == 0: nil else: addr(paramValues_CArray[0]))))

type QWebPagecreatePluginBase* = proc(classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject.QObject
proc oncreatePlugin*(self: QWebPage, slot: proc(super: QWebPagecreatePluginBase, classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QWebPagecreatePluginBase, classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_createPlugin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_createPlugin(self: ptr cQWebPage, slot: int, classid: struct_miqt_string, url: pointer, paramNames: struct_miqt_array, paramValues: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QWebPage_createPlugin ".} =
  type Cb = proc(super: QWebPagecreatePluginBase, classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(classid: string, url: gen_qurl.QUrl, paramNames: seq[string], paramValues: seq[string]): auto =
    callVirtualBase_createPlugin(QWebPage(h: self), classid, url, paramNames, paramValues)
  let vclassid_ms = classid
  let vclassidx_ret = string.fromBytes(toOpenArrayByte(vclassid_ms.data, 0, int(vclassid_ms.len)-1))
  c_free(vclassid_ms.data)
  let slotval1 = vclassidx_ret

  let slotval2 = gen_qurl.QUrl(h: url)

  var vparamNames_ma = paramNames
  var vparamNamesx_ret = newSeq[string](int(vparamNames_ma.len))
  let vparamNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vparamNames_ma.data)
  for i in 0 ..< vparamNames_ma.len:
    let vparamNames_lv_ms = vparamNames_outCast[i]
    let vparamNames_lvx_ret = string.fromBytes(toOpenArrayByte(vparamNames_lv_ms.data, 0, int(vparamNames_lv_ms.len)-1))
    c_free(vparamNames_lv_ms.data)
    vparamNamesx_ret[i] = vparamNames_lvx_ret
  let slotval3 = vparamNamesx_ret

  var vparamValues_ma = paramValues
  var vparamValuesx_ret = newSeq[string](int(vparamValues_ma.len))
  let vparamValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vparamValues_ma.data)
  for i in 0 ..< vparamValues_ma.len:
    let vparamValues_lv_ms = vparamValues_outCast[i]
    let vparamValues_lvx_ret = string.fromBytes(toOpenArrayByte(vparamValues_lv_ms.data, 0, int(vparamValues_lv_ms.len)-1))
    c_free(vparamValues_lv_ms.data)
    vparamValuesx_ret[i] = vparamValues_lvx_ret
  let slotval4 = vparamValuesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_acceptNavigationRequest(self: QWebPage, frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): bool =


  fQWebPage_virtualbase_acceptNavigationRequest(self.h, frame.h, request.h, cint(typeVal))

type QWebPageacceptNavigationRequestBase* = proc(frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): bool
proc onacceptNavigationRequest*(self: QWebPage, slot: proc(super: QWebPageacceptNavigationRequestBase, frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPageacceptNavigationRequestBase, frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_acceptNavigationRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_acceptNavigationRequest(self: ptr cQWebPage, slot: int, frame: pointer, request: pointer, typeVal: cint): bool {.exportc: "miqt_exec_callback_QWebPage_acceptNavigationRequest ".} =
  type Cb = proc(super: QWebPageacceptNavigationRequestBase, frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(frame: gen_qwebframe.QWebFrame, request: gen_qnetworkrequest.QNetworkRequest, typeVal: QWebPageNavigationType): auto =
    callVirtualBase_acceptNavigationRequest(QWebPage(h: self), frame, request, typeVal)
  let slotval1 = gen_qwebframe.QWebFrame(h: frame)

  let slotval2 = gen_qnetworkrequest.QNetworkRequest(h: request)

  let slotval3 = QWebPageNavigationType(typeVal)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_chooseFile(self: QWebPage, originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): string =


  let v_ms = fQWebPage_virtualbase_chooseFile(self.h, originatingFrame.h, struct_miqt_string(data: oldFile, len: csize_t(len(oldFile))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebPagechooseFileBase* = proc(originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): string
proc onchooseFile*(self: QWebPage, slot: proc(super: QWebPagechooseFileBase, originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): string) =
  # TODO check subclass
  type Cb = proc(super: QWebPagechooseFileBase, originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_chooseFile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_chooseFile(self: ptr cQWebPage, slot: int, originatingFrame: pointer, oldFile: struct_miqt_string): struct_miqt_string {.exportc: "miqt_exec_callback_QWebPage_chooseFile ".} =
  type Cb = proc(super: QWebPagechooseFileBase, originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(originatingFrame: gen_qwebframe.QWebFrame, oldFile: string): auto =
    callVirtualBase_chooseFile(QWebPage(h: self), originatingFrame, oldFile)
  let slotval1 = gen_qwebframe.QWebFrame(h: originatingFrame)

  let voldFile_ms = oldFile
  let voldFilex_ret = string.fromBytes(toOpenArrayByte(voldFile_ms.data, 0, int(voldFile_ms.len)-1))
  c_free(voldFile_ms.data)
  let slotval2 = voldFilex_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_javaScriptAlert(self: QWebPage, originatingFrame: gen_qwebframe.QWebFrame, msg: string): void =


  fQWebPage_virtualbase_javaScriptAlert(self.h, originatingFrame.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

type QWebPagejavaScriptAlertBase* = proc(originatingFrame: gen_qwebframe.QWebFrame, msg: string): void
proc onjavaScriptAlert*(self: QWebPage, slot: proc(super: QWebPagejavaScriptAlertBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagejavaScriptAlertBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_javaScriptAlert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_javaScriptAlert(self: ptr cQWebPage, slot: int, originatingFrame: pointer, msg: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebPage_javaScriptAlert ".} =
  type Cb = proc(super: QWebPagejavaScriptAlertBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(originatingFrame: gen_qwebframe.QWebFrame, msg: string): auto =
    callVirtualBase_javaScriptAlert(QWebPage(h: self), originatingFrame, msg)
  let slotval1 = gen_qwebframe.QWebFrame(h: originatingFrame)

  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_javaScriptConfirm(self: QWebPage, originatingFrame: gen_qwebframe.QWebFrame, msg: string): bool =


  fQWebPage_virtualbase_javaScriptConfirm(self.h, originatingFrame.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

type QWebPagejavaScriptConfirmBase* = proc(originatingFrame: gen_qwebframe.QWebFrame, msg: string): bool
proc onjavaScriptConfirm*(self: QWebPage, slot: proc(super: QWebPagejavaScriptConfirmBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPagejavaScriptConfirmBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_javaScriptConfirm(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_javaScriptConfirm(self: ptr cQWebPage, slot: int, originatingFrame: pointer, msg: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QWebPage_javaScriptConfirm ".} =
  type Cb = proc(super: QWebPagejavaScriptConfirmBase, originatingFrame: gen_qwebframe.QWebFrame, msg: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(originatingFrame: gen_qwebframe.QWebFrame, msg: string): auto =
    callVirtualBase_javaScriptConfirm(QWebPage(h: self), originatingFrame, msg)
  let slotval1 = gen_qwebframe.QWebFrame(h: originatingFrame)

  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_javaScriptConsoleMessage(self: QWebPage, message: string, lineNumber: cint, sourceID: string): void =


  fQWebPage_virtualbase_javaScriptConsoleMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

type QWebPagejavaScriptConsoleMessageBase* = proc(message: string, lineNumber: cint, sourceID: string): void
proc onjavaScriptConsoleMessage*(self: QWebPage, slot: proc(super: QWebPagejavaScriptConsoleMessageBase, message: string, lineNumber: cint, sourceID: string): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagejavaScriptConsoleMessageBase, message: string, lineNumber: cint, sourceID: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_javaScriptConsoleMessage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_javaScriptConsoleMessage(self: ptr cQWebPage, slot: int, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebPage_javaScriptConsoleMessage ".} =
  type Cb = proc(super: QWebPagejavaScriptConsoleMessageBase, message: string, lineNumber: cint, sourceID: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(message: string, lineNumber: cint, sourceID: string): auto =
    callVirtualBase_javaScriptConsoleMessage(QWebPage(h: self), message, lineNumber, sourceID)
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  let slotval2 = lineNumber

  let vsourceID_ms = sourceID
  let vsourceIDx_ret = string.fromBytes(toOpenArrayByte(vsourceID_ms.data, 0, int(vsourceID_ms.len)-1))
  c_free(vsourceID_ms.data)
  let slotval3 = vsourceIDx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_userAgentForUrl(self: QWebPage, url: gen_qurl.QUrl): string =


  let v_ms = fQWebPage_virtualbase_userAgentForUrl(self.h, url.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebPageuserAgentForUrlBase* = proc(url: gen_qurl.QUrl): string
proc onuserAgentForUrl*(self: QWebPage, slot: proc(super: QWebPageuserAgentForUrlBase, url: gen_qurl.QUrl): string) =
  # TODO check subclass
  type Cb = proc(super: QWebPageuserAgentForUrlBase, url: gen_qurl.QUrl): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_userAgentForUrl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_userAgentForUrl(self: ptr cQWebPage, slot: int, url: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QWebPage_userAgentForUrl ".} =
  type Cb = proc(super: QWebPageuserAgentForUrlBase, url: gen_qurl.QUrl): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(url: gen_qurl.QUrl): auto =
    callVirtualBase_userAgentForUrl(QWebPage(h: self), url)
  let slotval1 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_eventFilter(self: QWebPage, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebPage_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebPageeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebPage, slot: proc(super: QWebPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_eventFilter(self: ptr cQWebPage, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebPage_eventFilter ".} =
  type Cb = proc(super: QWebPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebPage(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebPage, event: gen_qcoreevent.QTimerEvent): void =


  fQWebPage_virtualbase_timerEvent(self.h, event.h)

type QWebPagetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebPage, slot: proc(super: QWebPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_timerEvent(self: ptr cQWebPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPage_timerEvent ".} =
  type Cb = proc(super: QWebPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebPage(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebPage, event: gen_qcoreevent.QChildEvent): void =


  fQWebPage_virtualbase_childEvent(self.h, event.h)

type QWebPagechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebPage, slot: proc(super: QWebPagechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_childEvent(self: ptr cQWebPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPage_childEvent ".} =
  type Cb = proc(super: QWebPagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebPage(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebPage, event: gen_qcoreevent.QEvent): void =


  fQWebPage_virtualbase_customEvent(self.h, event.h)

type QWebPagecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebPage, slot: proc(super: QWebPagecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_customEvent(self: ptr cQWebPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPage_customEvent ".} =
  type Cb = proc(super: QWebPagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebPage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebPage, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebPage_virtualbase_connectNotify(self.h, signal.h)

type QWebPageconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebPage, slot: proc(super: QWebPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_connectNotify(self: ptr cQWebPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPage_connectNotify ".} =
  type Cb = proc(super: QWebPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebPage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebPage, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebPage_virtualbase_disconnectNotify(self.h, signal.h)

type QWebPagedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebPage, slot: proc(super: QWebPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPage_disconnectNotify(self: ptr cQWebPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPage_disconnectNotify ".} =
  type Cb = proc(super: QWebPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebPage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWebPage) =
  fcQWebPage_delete(self.h)

func init*(T: type QWebPageViewportAttributes, h: ptr cQWebPageViewportAttributes): QWebPageViewportAttributes =
  T(h: h)
proc create*(T: type QWebPageViewportAttributes, ): QWebPageViewportAttributes =

  QWebPageViewportAttributes.init(fcQWebPageViewportAttributes_new())
proc create*(T: type QWebPageViewportAttributes, other: QWebPageViewportAttributes): QWebPageViewportAttributes =

  QWebPageViewportAttributes.init(fcQWebPageViewportAttributes_new2(other.h))
proc operatorAssign*(self: QWebPageViewportAttributes, other: QWebPageViewportAttributes): void =

  fcQWebPageViewportAttributes_operatorAssign(self.h, other.h)

proc initialScaleFactor*(self: QWebPageViewportAttributes, ): float64 =

  fcQWebPageViewportAttributes_initialScaleFactor(self.h)

proc minimumScaleFactor*(self: QWebPageViewportAttributes, ): float64 =

  fcQWebPageViewportAttributes_minimumScaleFactor(self.h)

proc maximumScaleFactor*(self: QWebPageViewportAttributes, ): float64 =

  fcQWebPageViewportAttributes_maximumScaleFactor(self.h)

proc devicePixelRatio*(self: QWebPageViewportAttributes, ): float64 =

  fcQWebPageViewportAttributes_devicePixelRatio(self.h)

proc isUserScalable*(self: QWebPageViewportAttributes, ): bool =

  fcQWebPageViewportAttributes_isUserScalable(self.h)

proc isValid*(self: QWebPageViewportAttributes, ): bool =

  fcQWebPageViewportAttributes_isValid(self.h)

proc size*(self: QWebPageViewportAttributes, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQWebPageViewportAttributes_size(self.h))

proc delete*(self: QWebPageViewportAttributes) =
  fcQWebPageViewportAttributes_delete(self.h)

func init*(T: type QWebPageExtensionOption, h: ptr cQWebPageExtensionOption): QWebPageExtensionOption =
  T(h: h)
proc create*(T: type QWebPageExtensionOption, param1: QWebPageExtensionOption): QWebPageExtensionOption =

  QWebPageExtensionOption.init(fcQWebPageExtensionOption_new(param1.h))
proc delete*(self: QWebPageExtensionOption) =
  fcQWebPageExtensionOption_delete(self.h)

func init*(T: type QWebPageExtensionReturn, h: ptr cQWebPageExtensionReturn): QWebPageExtensionReturn =
  T(h: h)
proc create*(T: type QWebPageExtensionReturn, param1: QWebPageExtensionReturn): QWebPageExtensionReturn =

  QWebPageExtensionReturn.init(fcQWebPageExtensionReturn_new(param1.h))
proc create*(T: type QWebPageExtensionReturn, ): QWebPageExtensionReturn =

  QWebPageExtensionReturn.init(fcQWebPageExtensionReturn_new2())
proc delete*(self: QWebPageExtensionReturn) =
  fcQWebPageExtensionReturn_delete(self.h)

func init*(T: type QWebPageChooseMultipleFilesExtensionOption, h: ptr cQWebPageChooseMultipleFilesExtensionOption): QWebPageChooseMultipleFilesExtensionOption =
  T(h: h)
proc delete*(self: QWebPageChooseMultipleFilesExtensionOption) =
  fcQWebPageChooseMultipleFilesExtensionOption_delete(self.h)

func init*(T: type QWebPageChooseMultipleFilesExtensionReturn, h: ptr cQWebPageChooseMultipleFilesExtensionReturn): QWebPageChooseMultipleFilesExtensionReturn =
  T(h: h)
proc delete*(self: QWebPageChooseMultipleFilesExtensionReturn) =
  fcQWebPageChooseMultipleFilesExtensionReturn_delete(self.h)

func init*(T: type QWebPageErrorPageExtensionOption, h: ptr cQWebPageErrorPageExtensionOption): QWebPageErrorPageExtensionOption =
  T(h: h)
proc create*(T: type QWebPageErrorPageExtensionOption, param1: QWebPageErrorPageExtensionOption): QWebPageErrorPageExtensionOption =

  QWebPageErrorPageExtensionOption.init(fcQWebPageErrorPageExtensionOption_new(param1.h))
proc operatorAssign*(self: QWebPageErrorPageExtensionOption, param1: QWebPageErrorPageExtensionOption): void =

  fcQWebPageErrorPageExtensionOption_operatorAssign(self.h, param1.h)

proc delete*(self: QWebPageErrorPageExtensionOption) =
  fcQWebPageErrorPageExtensionOption_delete(self.h)

func init*(T: type QWebPageErrorPageExtensionReturn, h: ptr cQWebPageErrorPageExtensionReturn): QWebPageErrorPageExtensionReturn =
  T(h: h)
proc create*(T: type QWebPageErrorPageExtensionReturn, ): QWebPageErrorPageExtensionReturn =

  QWebPageErrorPageExtensionReturn.init(fcQWebPageErrorPageExtensionReturn_new())
proc create*(T: type QWebPageErrorPageExtensionReturn, param1: QWebPageErrorPageExtensionReturn): QWebPageErrorPageExtensionReturn =

  QWebPageErrorPageExtensionReturn.init(fcQWebPageErrorPageExtensionReturn_new2(param1.h))
proc operatorAssign*(self: QWebPageErrorPageExtensionReturn, param1: QWebPageErrorPageExtensionReturn): void =

  fcQWebPageErrorPageExtensionReturn_operatorAssign(self.h, param1.h)

proc delete*(self: QWebPageErrorPageExtensionReturn) =
  fcQWebPageErrorPageExtensionReturn_delete(self.h)
