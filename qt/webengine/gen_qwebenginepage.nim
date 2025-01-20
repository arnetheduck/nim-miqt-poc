import Qt5WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginepage.cpp", cflags).}


type QWebEnginePageWebActionEnum* = distinct cint
template NoWebAction*(_: type QWebEnginePageWebActionEnum): untyped = -1
template Back*(_: type QWebEnginePageWebActionEnum): untyped = 0
template Forward*(_: type QWebEnginePageWebActionEnum): untyped = 1
template Stop*(_: type QWebEnginePageWebActionEnum): untyped = 2
template Reload*(_: type QWebEnginePageWebActionEnum): untyped = 3
template Cut*(_: type QWebEnginePageWebActionEnum): untyped = 4
template Copy*(_: type QWebEnginePageWebActionEnum): untyped = 5
template Paste*(_: type QWebEnginePageWebActionEnum): untyped = 6
template Undo*(_: type QWebEnginePageWebActionEnum): untyped = 7
template Redo*(_: type QWebEnginePageWebActionEnum): untyped = 8
template SelectAll*(_: type QWebEnginePageWebActionEnum): untyped = 9
template ReloadAndBypassCache*(_: type QWebEnginePageWebActionEnum): untyped = 10
template PasteAndMatchStyle*(_: type QWebEnginePageWebActionEnum): untyped = 11
template OpenLinkInThisWindow*(_: type QWebEnginePageWebActionEnum): untyped = 12
template OpenLinkInNewWindow*(_: type QWebEnginePageWebActionEnum): untyped = 13
template OpenLinkInNewTab*(_: type QWebEnginePageWebActionEnum): untyped = 14
template CopyLinkToClipboard*(_: type QWebEnginePageWebActionEnum): untyped = 15
template DownloadLinkToDisk*(_: type QWebEnginePageWebActionEnum): untyped = 16
template CopyImageToClipboard*(_: type QWebEnginePageWebActionEnum): untyped = 17
template CopyImageUrlToClipboard*(_: type QWebEnginePageWebActionEnum): untyped = 18
template DownloadImageToDisk*(_: type QWebEnginePageWebActionEnum): untyped = 19
template CopyMediaUrlToClipboard*(_: type QWebEnginePageWebActionEnum): untyped = 20
template ToggleMediaControls*(_: type QWebEnginePageWebActionEnum): untyped = 21
template ToggleMediaLoop*(_: type QWebEnginePageWebActionEnum): untyped = 22
template ToggleMediaPlayPause*(_: type QWebEnginePageWebActionEnum): untyped = 23
template ToggleMediaMute*(_: type QWebEnginePageWebActionEnum): untyped = 24
template DownloadMediaToDisk*(_: type QWebEnginePageWebActionEnum): untyped = 25
template InspectElement*(_: type QWebEnginePageWebActionEnum): untyped = 26
template ExitFullScreen*(_: type QWebEnginePageWebActionEnum): untyped = 27
template RequestClose*(_: type QWebEnginePageWebActionEnum): untyped = 28
template Unselect*(_: type QWebEnginePageWebActionEnum): untyped = 29
template SavePage*(_: type QWebEnginePageWebActionEnum): untyped = 30
template OpenLinkInNewBackgroundTab*(_: type QWebEnginePageWebActionEnum): untyped = 31
template ViewSource*(_: type QWebEnginePageWebActionEnum): untyped = 32
template ToggleBold*(_: type QWebEnginePageWebActionEnum): untyped = 33
template ToggleItalic*(_: type QWebEnginePageWebActionEnum): untyped = 34
template ToggleUnderline*(_: type QWebEnginePageWebActionEnum): untyped = 35
template ToggleStrikethrough*(_: type QWebEnginePageWebActionEnum): untyped = 36
template AlignLeft*(_: type QWebEnginePageWebActionEnum): untyped = 37
template AlignCenter*(_: type QWebEnginePageWebActionEnum): untyped = 38
template AlignRight*(_: type QWebEnginePageWebActionEnum): untyped = 39
template AlignJustified*(_: type QWebEnginePageWebActionEnum): untyped = 40
template Indent*(_: type QWebEnginePageWebActionEnum): untyped = 41
template Outdent*(_: type QWebEnginePageWebActionEnum): untyped = 42
template InsertOrderedList*(_: type QWebEnginePageWebActionEnum): untyped = 43
template InsertUnorderedList*(_: type QWebEnginePageWebActionEnum): untyped = 44
template WebActionCount*(_: type QWebEnginePageWebActionEnum): untyped = 45


type QWebEnginePageFindFlagEnum* = distinct cint
template FindBackward*(_: type QWebEnginePageFindFlagEnum): untyped = 1
template FindCaseSensitively*(_: type QWebEnginePageFindFlagEnum): untyped = 2


type QWebEnginePageWebWindowTypeEnum* = distinct cint
template WebBrowserWindow*(_: type QWebEnginePageWebWindowTypeEnum): untyped = 0
template WebBrowserTab*(_: type QWebEnginePageWebWindowTypeEnum): untyped = 1
template WebDialog*(_: type QWebEnginePageWebWindowTypeEnum): untyped = 2
template WebBrowserBackgroundTab*(_: type QWebEnginePageWebWindowTypeEnum): untyped = 3


type QWebEnginePagePermissionPolicyEnum* = distinct cint
template PermissionUnknown*(_: type QWebEnginePagePermissionPolicyEnum): untyped = 0
template PermissionGrantedByUser*(_: type QWebEnginePagePermissionPolicyEnum): untyped = 1
template PermissionDeniedByUser*(_: type QWebEnginePagePermissionPolicyEnum): untyped = 2


type QWebEnginePageNavigationTypeEnum* = distinct cint
template NavigationTypeLinkClicked*(_: type QWebEnginePageNavigationTypeEnum): untyped = 0
template NavigationTypeTyped*(_: type QWebEnginePageNavigationTypeEnum): untyped = 1
template NavigationTypeFormSubmitted*(_: type QWebEnginePageNavigationTypeEnum): untyped = 2
template NavigationTypeBackForward*(_: type QWebEnginePageNavigationTypeEnum): untyped = 3
template NavigationTypeReload*(_: type QWebEnginePageNavigationTypeEnum): untyped = 4
template NavigationTypeOther*(_: type QWebEnginePageNavigationTypeEnum): untyped = 5
template NavigationTypeRedirect*(_: type QWebEnginePageNavigationTypeEnum): untyped = 6


type QWebEnginePageFeatureEnum* = distinct cint
template Notifications*(_: type QWebEnginePageFeatureEnum): untyped = 0
template Geolocation*(_: type QWebEnginePageFeatureEnum): untyped = 1
template MediaAudioCapture*(_: type QWebEnginePageFeatureEnum): untyped = 2
template MediaVideoCapture*(_: type QWebEnginePageFeatureEnum): untyped = 3
template MediaAudioVideoCapture*(_: type QWebEnginePageFeatureEnum): untyped = 4
template MouseLock*(_: type QWebEnginePageFeatureEnum): untyped = 5
template DesktopVideoCapture*(_: type QWebEnginePageFeatureEnum): untyped = 6
template DesktopAudioVideoCapture*(_: type QWebEnginePageFeatureEnum): untyped = 7


type QWebEnginePageFileSelectionModeEnum* = distinct cint
template FileSelectOpen*(_: type QWebEnginePageFileSelectionModeEnum): untyped = 0
template FileSelectOpenMultiple*(_: type QWebEnginePageFileSelectionModeEnum): untyped = 1


type QWebEnginePageJavaScriptConsoleMessageLevelEnum* = distinct cint
template InfoMessageLevel*(_: type QWebEnginePageJavaScriptConsoleMessageLevelEnum): untyped = 0
template WarningMessageLevel*(_: type QWebEnginePageJavaScriptConsoleMessageLevelEnum): untyped = 1
template ErrorMessageLevel*(_: type QWebEnginePageJavaScriptConsoleMessageLevelEnum): untyped = 2


type QWebEnginePageRenderProcessTerminationStatusEnum* = distinct cint
template NormalTerminationStatus*(_: type QWebEnginePageRenderProcessTerminationStatusEnum): untyped = 0
template AbnormalTerminationStatus*(_: type QWebEnginePageRenderProcessTerminationStatusEnum): untyped = 1
template CrashedTerminationStatus*(_: type QWebEnginePageRenderProcessTerminationStatusEnum): untyped = 2
template KilledTerminationStatus*(_: type QWebEnginePageRenderProcessTerminationStatusEnum): untyped = 3


type QWebEnginePageLifecycleStateEnum* = distinct cint
template Active*(_: type QWebEnginePageLifecycleStateEnum): untyped = 0
template Frozen*(_: type QWebEnginePageLifecycleStateEnum): untyped = 1
template Discarded*(_: type QWebEnginePageLifecycleStateEnum): untyped = 2


import gen_qwebenginepage_types
export gen_qwebenginepage_types

import
  gen_qaction,
  gen_qauthenticator,
  gen_qcolor,
  gen_qcoreevent,
  gen_qicon,
  gen_qmenu,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagelayout,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qurl,
  gen_qwebchannel,
  gen_qwebenginecertificateerror,
  gen_qwebengineclientcertificateselection,
  gen_qwebenginecontextmenudata,
  gen_qwebenginefindtextresult,
  gen_qwebenginefullscreenrequest,
  gen_qwebenginehistory,
  gen_qwebenginehttprequest,
  gen_qwebengineprofile,
  gen_qwebenginequotarequest,
  gen_qwebengineregisterprotocolhandlerrequest,
  gen_qwebenginescriptcollection,
  gen_qwebenginesettings,
  gen_qwebengineurlrequestinterceptor,
  gen_qwidget
export
  gen_qaction,
  gen_qauthenticator,
  gen_qcolor,
  gen_qcoreevent,
  gen_qicon,
  gen_qmenu,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagelayout,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qurl,
  gen_qwebchannel,
  gen_qwebenginecertificateerror,
  gen_qwebengineclientcertificateselection,
  gen_qwebenginecontextmenudata,
  gen_qwebenginefindtextresult,
  gen_qwebenginefullscreenrequest,
  gen_qwebenginehistory,
  gen_qwebenginehttprequest,
  gen_qwebengineprofile,
  gen_qwebenginequotarequest,
  gen_qwebengineregisterprotocolhandlerrequest,
  gen_qwebenginescriptcollection,
  gen_qwebenginesettings,
  gen_qwebengineurlrequestinterceptor,
  gen_qwidget

type cQWebEnginePage*{.exportc: "QWebEnginePage", incompleteStruct.} = object

proc fcQWebEnginePage_new(): ptr cQWebEnginePage {.importc: "QWebEnginePage_new".}
proc fcQWebEnginePage_new2(profile: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new2".}
proc fcQWebEnginePage_new3(parent: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new3".}
proc fcQWebEnginePage_new4(profile: pointer, parent: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new4".}
proc fcQWebEnginePage_metaObject(self: pointer, ): pointer {.importc: "QWebEnginePage_metaObject".}
proc fcQWebEnginePage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEnginePage_metacast".}
proc fcQWebEnginePage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEnginePage_metacall".}
proc fcQWebEnginePage_tr(s: cstring): struct_miqt_string {.importc: "QWebEnginePage_tr".}
proc fcQWebEnginePage_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEnginePage_trUtf8".}
proc fcQWebEnginePage_history(self: pointer, ): pointer {.importc: "QWebEnginePage_history".}
proc fcQWebEnginePage_setView(self: pointer, view: pointer): void {.importc: "QWebEnginePage_setView".}
proc fcQWebEnginePage_view(self: pointer, ): pointer {.importc: "QWebEnginePage_view".}
proc fcQWebEnginePage_hasSelection(self: pointer, ): bool {.importc: "QWebEnginePage_hasSelection".}
proc fcQWebEnginePage_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEnginePage_selectedText".}
proc fcQWebEnginePage_profile(self: pointer, ): pointer {.importc: "QWebEnginePage_profile".}
proc fcQWebEnginePage_action(self: pointer, action: cint): pointer {.importc: "QWebEnginePage_action".}
proc fcQWebEnginePage_triggerAction(self: pointer, action: cint, checked: bool): void {.importc: "QWebEnginePage_triggerAction".}
proc fcQWebEnginePage_replaceMisspelledWord(self: pointer, replacement: struct_miqt_string): void {.importc: "QWebEnginePage_replaceMisspelledWord".}
proc fcQWebEnginePage_event(self: pointer, param1: pointer): bool {.importc: "QWebEnginePage_event".}
proc fcQWebEnginePage_findText(self: pointer, subString: struct_miqt_string): void {.importc: "QWebEnginePage_findText".}
proc fcQWebEnginePage_createStandardContextMenu(self: pointer, ): pointer {.importc: "QWebEnginePage_createStandardContextMenu".}
proc fcQWebEnginePage_setFeaturePermission(self: pointer, securityOrigin: pointer, feature: cint, policy: cint): void {.importc: "QWebEnginePage_setFeaturePermission".}
proc fcQWebEnginePage_load(self: pointer, url: pointer): void {.importc: "QWebEnginePage_load".}
proc fcQWebEnginePage_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebEnginePage_loadWithRequest".}
proc fcQWebEnginePage_download(self: pointer, url: pointer): void {.importc: "QWebEnginePage_download".}
proc fcQWebEnginePage_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebEnginePage_setHtml".}
proc fcQWebEnginePage_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebEnginePage_setContent".}
proc fcQWebEnginePage_title(self: pointer, ): struct_miqt_string {.importc: "QWebEnginePage_title".}
proc fcQWebEnginePage_setUrl(self: pointer, url: pointer): void {.importc: "QWebEnginePage_setUrl".}
proc fcQWebEnginePage_url(self: pointer, ): pointer {.importc: "QWebEnginePage_url".}
proc fcQWebEnginePage_requestedUrl(self: pointer, ): pointer {.importc: "QWebEnginePage_requestedUrl".}
proc fcQWebEnginePage_iconUrl(self: pointer, ): pointer {.importc: "QWebEnginePage_iconUrl".}
proc fcQWebEnginePage_icon(self: pointer, ): pointer {.importc: "QWebEnginePage_icon".}
proc fcQWebEnginePage_zoomFactor(self: pointer, ): float64 {.importc: "QWebEnginePage_zoomFactor".}
proc fcQWebEnginePage_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebEnginePage_setZoomFactor".}
proc fcQWebEnginePage_scrollPosition(self: pointer, ): pointer {.importc: "QWebEnginePage_scrollPosition".}
proc fcQWebEnginePage_contentsSize(self: pointer, ): pointer {.importc: "QWebEnginePage_contentsSize".}
proc fcQWebEnginePage_runJavaScript(self: pointer, scriptSource: struct_miqt_string): void {.importc: "QWebEnginePage_runJavaScript".}
proc fcQWebEnginePage_runJavaScript2(self: pointer, scriptSource: struct_miqt_string, worldId: cuint): void {.importc: "QWebEnginePage_runJavaScript2".}
proc fcQWebEnginePage_scripts(self: pointer, ): pointer {.importc: "QWebEnginePage_scripts".}
proc fcQWebEnginePage_settings(self: pointer, ): pointer {.importc: "QWebEnginePage_settings".}
proc fcQWebEnginePage_webChannel(self: pointer, ): pointer {.importc: "QWebEnginePage_webChannel".}
proc fcQWebEnginePage_setWebChannel(self: pointer, webChannel: pointer): void {.importc: "QWebEnginePage_setWebChannel".}
proc fcQWebEnginePage_setWebChannel2(self: pointer, param1: pointer, worldId: cuint): void {.importc: "QWebEnginePage_setWebChannel2".}
proc fcQWebEnginePage_backgroundColor(self: pointer, ): pointer {.importc: "QWebEnginePage_backgroundColor".}
proc fcQWebEnginePage_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QWebEnginePage_setBackgroundColor".}
proc fcQWebEnginePage_save(self: pointer, filePath: struct_miqt_string): void {.importc: "QWebEnginePage_save".}
proc fcQWebEnginePage_isAudioMuted(self: pointer, ): bool {.importc: "QWebEnginePage_isAudioMuted".}
proc fcQWebEnginePage_setAudioMuted(self: pointer, muted: bool): void {.importc: "QWebEnginePage_setAudioMuted".}
proc fcQWebEnginePage_recentlyAudible(self: pointer, ): bool {.importc: "QWebEnginePage_recentlyAudible".}
proc fcQWebEnginePage_renderProcessPid(self: pointer, ): clonglong {.importc: "QWebEnginePage_renderProcessPid".}
proc fcQWebEnginePage_printToPdf(self: pointer, filePath: struct_miqt_string): void {.importc: "QWebEnginePage_printToPdf".}
proc fcQWebEnginePage_setInspectedPage(self: pointer, page: pointer): void {.importc: "QWebEnginePage_setInspectedPage".}
proc fcQWebEnginePage_inspectedPage(self: pointer, ): pointer {.importc: "QWebEnginePage_inspectedPage".}
proc fcQWebEnginePage_setDevToolsPage(self: pointer, page: pointer): void {.importc: "QWebEnginePage_setDevToolsPage".}
proc fcQWebEnginePage_devToolsPage(self: pointer, ): pointer {.importc: "QWebEnginePage_devToolsPage".}
proc fcQWebEnginePage_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QWebEnginePage_setUrlRequestInterceptor".}
proc fcQWebEnginePage_contextMenuData(self: pointer, ): pointer {.importc: "QWebEnginePage_contextMenuData".}
proc fcQWebEnginePage_lifecycleState(self: pointer, ): cint {.importc: "QWebEnginePage_lifecycleState".}
proc fcQWebEnginePage_setLifecycleState(self: pointer, state: cint): void {.importc: "QWebEnginePage_setLifecycleState".}
proc fcQWebEnginePage_recommendedState(self: pointer, ): cint {.importc: "QWebEnginePage_recommendedState".}
proc fcQWebEnginePage_isVisible(self: pointer, ): bool {.importc: "QWebEnginePage_isVisible".}
proc fcQWebEnginePage_setVisible(self: pointer, visible: bool): void {.importc: "QWebEnginePage_setVisible".}
proc fcQWebEnginePage_loadStarted(self: pointer, ): void {.importc: "QWebEnginePage_loadStarted".}
proc fQWebEnginePage_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadStarted".}
proc fcQWebEnginePage_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEnginePage_loadProgress".}
proc fQWebEnginePage_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadProgress".}
proc fcQWebEnginePage_loadFinished(self: pointer, ok: bool): void {.importc: "QWebEnginePage_loadFinished".}
proc fQWebEnginePage_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadFinished".}
proc fcQWebEnginePage_linkHovered(self: pointer, url: struct_miqt_string): void {.importc: "QWebEnginePage_linkHovered".}
proc fQWebEnginePage_connect_linkHovered(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_linkHovered".}
proc fcQWebEnginePage_selectionChanged(self: pointer, ): void {.importc: "QWebEnginePage_selectionChanged".}
proc fQWebEnginePage_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_selectionChanged".}
proc fcQWebEnginePage_geometryChangeRequested(self: pointer, geom: pointer): void {.importc: "QWebEnginePage_geometryChangeRequested".}
proc fQWebEnginePage_connect_geometryChangeRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_geometryChangeRequested".}
proc fcQWebEnginePage_windowCloseRequested(self: pointer, ): void {.importc: "QWebEnginePage_windowCloseRequested".}
proc fQWebEnginePage_connect_windowCloseRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_windowCloseRequested".}
proc fcQWebEnginePage_featurePermissionRequested(self: pointer, securityOrigin: pointer, feature: cint): void {.importc: "QWebEnginePage_featurePermissionRequested".}
proc fQWebEnginePage_connect_featurePermissionRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_featurePermissionRequested".}
proc fcQWebEnginePage_featurePermissionRequestCanceled(self: pointer, securityOrigin: pointer, feature: cint): void {.importc: "QWebEnginePage_featurePermissionRequestCanceled".}
proc fQWebEnginePage_connect_featurePermissionRequestCanceled(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_featurePermissionRequestCanceled".}
proc fcQWebEnginePage_fullScreenRequested(self: pointer, fullScreenRequest: pointer): void {.importc: "QWebEnginePage_fullScreenRequested".}
proc fQWebEnginePage_connect_fullScreenRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_fullScreenRequested".}
proc fcQWebEnginePage_quotaRequested(self: pointer, quotaRequest: pointer): void {.importc: "QWebEnginePage_quotaRequested".}
proc fQWebEnginePage_connect_quotaRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_quotaRequested".}
proc fcQWebEnginePage_registerProtocolHandlerRequested(self: pointer, request: pointer): void {.importc: "QWebEnginePage_registerProtocolHandlerRequested".}
proc fQWebEnginePage_connect_registerProtocolHandlerRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_registerProtocolHandlerRequested".}
proc fcQWebEnginePage_selectClientCertificate(self: pointer, clientCertSelection: pointer): void {.importc: "QWebEnginePage_selectClientCertificate".}
proc fQWebEnginePage_connect_selectClientCertificate(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_selectClientCertificate".}
proc fcQWebEnginePage_authenticationRequired(self: pointer, requestUrl: pointer, authenticator: pointer): void {.importc: "QWebEnginePage_authenticationRequired".}
proc fQWebEnginePage_connect_authenticationRequired(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_authenticationRequired".}
proc fcQWebEnginePage_proxyAuthenticationRequired(self: pointer, requestUrl: pointer, authenticator: pointer, proxyHost: struct_miqt_string): void {.importc: "QWebEnginePage_proxyAuthenticationRequired".}
proc fQWebEnginePage_connect_proxyAuthenticationRequired(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_proxyAuthenticationRequired".}
proc fcQWebEnginePage_renderProcessTerminated(self: pointer, terminationStatus: cint, exitCode: cint): void {.importc: "QWebEnginePage_renderProcessTerminated".}
proc fQWebEnginePage_connect_renderProcessTerminated(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_renderProcessTerminated".}
proc fcQWebEnginePage_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEnginePage_titleChanged".}
proc fQWebEnginePage_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_titleChanged".}
proc fcQWebEnginePage_urlChanged(self: pointer, url: pointer): void {.importc: "QWebEnginePage_urlChanged".}
proc fQWebEnginePage_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_urlChanged".}
proc fcQWebEnginePage_iconUrlChanged(self: pointer, url: pointer): void {.importc: "QWebEnginePage_iconUrlChanged".}
proc fQWebEnginePage_connect_iconUrlChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_iconUrlChanged".}
proc fcQWebEnginePage_iconChanged(self: pointer, icon: pointer): void {.importc: "QWebEnginePage_iconChanged".}
proc fQWebEnginePage_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_iconChanged".}
proc fcQWebEnginePage_scrollPositionChanged(self: pointer, position: pointer): void {.importc: "QWebEnginePage_scrollPositionChanged".}
proc fQWebEnginePage_connect_scrollPositionChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_scrollPositionChanged".}
proc fcQWebEnginePage_contentsSizeChanged(self: pointer, size: pointer): void {.importc: "QWebEnginePage_contentsSizeChanged".}
proc fQWebEnginePage_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_contentsSizeChanged".}
proc fcQWebEnginePage_audioMutedChanged(self: pointer, muted: bool): void {.importc: "QWebEnginePage_audioMutedChanged".}
proc fQWebEnginePage_connect_audioMutedChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_audioMutedChanged".}
proc fcQWebEnginePage_recentlyAudibleChanged(self: pointer, recentlyAudible: bool): void {.importc: "QWebEnginePage_recentlyAudibleChanged".}
proc fQWebEnginePage_connect_recentlyAudibleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_recentlyAudibleChanged".}
proc fcQWebEnginePage_renderProcessPidChanged(self: pointer, pid: clonglong): void {.importc: "QWebEnginePage_renderProcessPidChanged".}
proc fQWebEnginePage_connect_renderProcessPidChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_renderProcessPidChanged".}
proc fcQWebEnginePage_pdfPrintingFinished(self: pointer, filePath: struct_miqt_string, success: bool): void {.importc: "QWebEnginePage_pdfPrintingFinished".}
proc fQWebEnginePage_connect_pdfPrintingFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_pdfPrintingFinished".}
proc fcQWebEnginePage_printRequested(self: pointer, ): void {.importc: "QWebEnginePage_printRequested".}
proc fQWebEnginePage_connect_printRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_printRequested".}
proc fcQWebEnginePage_visibleChanged(self: pointer, visible: bool): void {.importc: "QWebEnginePage_visibleChanged".}
proc fQWebEnginePage_connect_visibleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_visibleChanged".}
proc fcQWebEnginePage_lifecycleStateChanged(self: pointer, state: cint): void {.importc: "QWebEnginePage_lifecycleStateChanged".}
proc fQWebEnginePage_connect_lifecycleStateChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_lifecycleStateChanged".}
proc fcQWebEnginePage_recommendedStateChanged(self: pointer, state: cint): void {.importc: "QWebEnginePage_recommendedStateChanged".}
proc fQWebEnginePage_connect_recommendedStateChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_recommendedStateChanged".}
proc fcQWebEnginePage_findTextFinished(self: pointer, resultVal: pointer): void {.importc: "QWebEnginePage_findTextFinished".}
proc fQWebEnginePage_connect_findTextFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_findTextFinished".}
proc fcQWebEnginePage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEnginePage_tr2".}
proc fcQWebEnginePage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEnginePage_tr3".}
proc fcQWebEnginePage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEnginePage_trUtf82".}
proc fcQWebEnginePage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEnginePage_trUtf83".}
proc fcQWebEnginePage_findText2(self: pointer, subString: struct_miqt_string, options: cint): void {.importc: "QWebEnginePage_findText2".}
proc fcQWebEnginePage_download2(self: pointer, url: pointer, filename: struct_miqt_string): void {.importc: "QWebEnginePage_download2".}
proc fcQWebEnginePage_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEnginePage_setHtml2".}
proc fcQWebEnginePage_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebEnginePage_setContent2".}
proc fcQWebEnginePage_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEnginePage_setContent3".}
proc fcQWebEnginePage_save2(self: pointer, filePath: struct_miqt_string, format: cint): void {.importc: "QWebEnginePage_save2".}
proc fcQWebEnginePage_printToPdf2(self: pointer, filePath: struct_miqt_string, layout: pointer): void {.importc: "QWebEnginePage_printToPdf2".}
proc fQWebEnginePage_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebEnginePage_virtualbase_metaObject".}
proc fcQWebEnginePage_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_metaObject".}
proc fQWebEnginePage_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebEnginePage_virtualbase_metacast".}
proc fcQWebEnginePage_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_metacast".}
proc fQWebEnginePage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEnginePage_virtualbase_metacall".}
proc fcQWebEnginePage_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_metacall".}
proc fQWebEnginePage_virtualbase_triggerAction(self: pointer, action: cint, checked: bool): void{.importc: "QWebEnginePage_virtualbase_triggerAction".}
proc fcQWebEnginePage_override_virtual_triggerAction(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_triggerAction".}
proc fQWebEnginePage_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebEnginePage_virtualbase_event".}
proc fcQWebEnginePage_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_event".}
proc fQWebEnginePage_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebEnginePage_virtualbase_createWindow".}
proc fcQWebEnginePage_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_createWindow".}
proc fQWebEnginePage_virtualbase_chooseFiles(self: pointer, mode: cint, oldFiles: struct_miqt_array, acceptedMimeTypes: struct_miqt_array): struct_miqt_array{.importc: "QWebEnginePage_virtualbase_chooseFiles".}
proc fcQWebEnginePage_override_virtual_chooseFiles(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_chooseFiles".}
proc fQWebEnginePage_virtualbase_javaScriptAlert(self: pointer, securityOrigin: pointer, msg: struct_miqt_string): void{.importc: "QWebEnginePage_virtualbase_javaScriptAlert".}
proc fcQWebEnginePage_override_virtual_javaScriptAlert(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_javaScriptAlert".}
proc fQWebEnginePage_virtualbase_javaScriptConfirm(self: pointer, securityOrigin: pointer, msg: struct_miqt_string): bool{.importc: "QWebEnginePage_virtualbase_javaScriptConfirm".}
proc fcQWebEnginePage_override_virtual_javaScriptConfirm(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_javaScriptConfirm".}
proc fQWebEnginePage_virtualbase_javaScriptConsoleMessage(self: pointer, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void{.importc: "QWebEnginePage_virtualbase_javaScriptConsoleMessage".}
proc fcQWebEnginePage_override_virtual_javaScriptConsoleMessage(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_javaScriptConsoleMessage".}
proc fQWebEnginePage_virtualbase_certificateError(self: pointer, certificateError: pointer): bool{.importc: "QWebEnginePage_virtualbase_certificateError".}
proc fcQWebEnginePage_override_virtual_certificateError(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_certificateError".}
proc fQWebEnginePage_virtualbase_acceptNavigationRequest(self: pointer, url: pointer, typeVal: cint, isMainFrame: bool): bool{.importc: "QWebEnginePage_virtualbase_acceptNavigationRequest".}
proc fcQWebEnginePage_override_virtual_acceptNavigationRequest(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_acceptNavigationRequest".}
proc fQWebEnginePage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEnginePage_virtualbase_eventFilter".}
proc fcQWebEnginePage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_eventFilter".}
proc fQWebEnginePage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEnginePage_virtualbase_timerEvent".}
proc fcQWebEnginePage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_timerEvent".}
proc fQWebEnginePage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEnginePage_virtualbase_childEvent".}
proc fcQWebEnginePage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_childEvent".}
proc fQWebEnginePage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEnginePage_virtualbase_customEvent".}
proc fcQWebEnginePage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_customEvent".}
proc fQWebEnginePage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEnginePage_virtualbase_connectNotify".}
proc fcQWebEnginePage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_connectNotify".}
proc fQWebEnginePage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEnginePage_virtualbase_disconnectNotify".}
proc fcQWebEnginePage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEnginePage_override_virtual_disconnectNotify".}
proc fcQWebEnginePage_staticMetaObject(): pointer {.importc: "QWebEnginePage_staticMetaObject".}
proc fcQWebEnginePage_delete(self: pointer) {.importc: "QWebEnginePage_delete".}


func init*(T: type gen_qwebenginepage_types.QWebEnginePage, h: ptr cQWebEnginePage): gen_qwebenginepage_types.QWebEnginePage =
  T(h: h)
proc create*(T: type gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage.init(fcQWebEnginePage_new())
proc create*(T: type gen_qwebenginepage_types.QWebEnginePage, profile: gen_qwebengineprofile.QWebEngineProfile): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage.init(fcQWebEnginePage_new2(profile.h))
proc create2*(T: type gen_qwebenginepage_types.QWebEnginePage, parent: gen_qobject.QObject): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage.init(fcQWebEnginePage_new3(parent.h))
proc create*(T: type gen_qwebenginepage_types.QWebEnginePage, profile: gen_qwebengineprofile.QWebEngineProfile, parent: gen_qobject.QObject): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage.init(fcQWebEnginePage_new4(profile.h, parent.h))
proc metaObject*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEnginePage_metaObject(self.h))

proc metacast*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cstring): pointer =

  fcQWebEnginePage_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cint, param2: cint, param3: pointer): cint =

  fcQWebEnginePage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring): string =

  let v_ms = fcQWebEnginePage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring): string =

  let v_ms = fcQWebEnginePage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc history*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginehistory.QWebEngineHistory =

  gen_qwebenginehistory.QWebEngineHistory(h: fcQWebEnginePage_history(self.h))

proc setView*(self: gen_qwebenginepage_types.QWebEnginePage, view: gen_qwidget.QWidget): void =

  fcQWebEnginePage_setView(self.h, view.h)

proc view*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWebEnginePage_view(self.h))

proc hasSelection*(self: gen_qwebenginepage_types.QWebEnginePage, ): bool =

  fcQWebEnginePage_hasSelection(self.h)

proc selectedText*(self: gen_qwebenginepage_types.QWebEnginePage, ): string =

  let v_ms = fcQWebEnginePage_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc profile*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebengineprofile.QWebEngineProfile =

  gen_qwebengineprofile.QWebEngineProfile(h: fcQWebEnginePage_profile(self.h))

proc action*(self: gen_qwebenginepage_types.QWebEnginePage, action: cint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWebEnginePage_action(self.h, cint(action)))

proc triggerAction*(self: gen_qwebenginepage_types.QWebEnginePage, action: cint, checked: bool): void =

  fcQWebEnginePage_triggerAction(self.h, cint(action), checked)

proc replaceMisspelledWord*(self: gen_qwebenginepage_types.QWebEnginePage, replacement: string): void =

  fcQWebEnginePage_replaceMisspelledWord(self.h, struct_miqt_string(data: replacement, len: csize_t(len(replacement))))

proc event*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qcoreevent.QEvent): bool =

  fcQWebEnginePage_event(self.h, param1.h)

proc findText*(self: gen_qwebenginepage_types.QWebEnginePage, subString: string): void =

  fcQWebEnginePage_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc createStandardContextMenu*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQWebEnginePage_createStandardContextMenu(self.h))

proc setFeaturePermission*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl.QUrl, feature: cint, policy: cint): void =

  fcQWebEnginePage_setFeaturePermission(self.h, securityOrigin.h, cint(feature), cint(policy))

proc load*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl): void =

  fcQWebEnginePage_load(self.h, url.h)

proc loadWithRequest*(self: gen_qwebenginepage_types.QWebEnginePage, request: gen_qwebenginehttprequest.QWebEngineHttpRequest): void =

  fcQWebEnginePage_loadWithRequest(self.h, request.h)

proc download*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl): void =

  fcQWebEnginePage_download(self.h, url.h)

proc setHtml*(self: gen_qwebenginepage_types.QWebEnginePage, html: string): void =

  fcQWebEnginePage_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qwebenginepage_types.QWebEnginePage, data: seq[byte]): void =

  fcQWebEnginePage_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc title*(self: gen_qwebenginepage_types.QWebEnginePage, ): string =

  let v_ms = fcQWebEnginePage_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl): void =

  fcQWebEnginePage_setUrl(self.h, url.h)

proc url*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEnginePage_url(self.h))

proc requestedUrl*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEnginePage_requestedUrl(self.h))

proc iconUrl*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEnginePage_iconUrl(self.h))

proc icon*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWebEnginePage_icon(self.h))

proc zoomFactor*(self: gen_qwebenginepage_types.QWebEnginePage, ): float64 =

  fcQWebEnginePage_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebenginepage_types.QWebEnginePage, factor: float64): void =

  fcQWebEnginePage_setZoomFactor(self.h, factor)

proc scrollPosition*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQWebEnginePage_scrollPosition(self.h))

proc contentsSize*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQWebEnginePage_contentsSize(self.h))

proc runJavaScript*(self: gen_qwebenginepage_types.QWebEnginePage, scriptSource: string): void =

  fcQWebEnginePage_runJavaScript(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource))))

proc runJavaScript2*(self: gen_qwebenginepage_types.QWebEnginePage, scriptSource: string, worldId: cuint): void =

  fcQWebEnginePage_runJavaScript2(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource))), worldId)

proc scripts*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginescriptcollection.QWebEngineScriptCollection =

  gen_qwebenginescriptcollection.QWebEngineScriptCollection(h: fcQWebEnginePage_scripts(self.h))

proc settings*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginesettings.QWebEngineSettings =

  gen_qwebenginesettings.QWebEngineSettings(h: fcQWebEnginePage_settings(self.h))

proc webChannel*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebchannel.QWebChannel =

  gen_qwebchannel.QWebChannel(h: fcQWebEnginePage_webChannel(self.h))

proc setWebChannel*(self: gen_qwebenginepage_types.QWebEnginePage, webChannel: gen_qwebchannel.QWebChannel): void =

  fcQWebEnginePage_setWebChannel(self.h, webChannel.h)

proc setWebChannel2*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qwebchannel.QWebChannel, worldId: cuint): void =

  fcQWebEnginePage_setWebChannel2(self.h, param1.h, worldId)

proc backgroundColor*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQWebEnginePage_backgroundColor(self.h))

proc setBackgroundColor*(self: gen_qwebenginepage_types.QWebEnginePage, color: gen_qcolor.QColor): void =

  fcQWebEnginePage_setBackgroundColor(self.h, color.h)

proc save*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string): void =

  fcQWebEnginePage_save(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc isAudioMuted*(self: gen_qwebenginepage_types.QWebEnginePage, ): bool =

  fcQWebEnginePage_isAudioMuted(self.h)

proc setAudioMuted*(self: gen_qwebenginepage_types.QWebEnginePage, muted: bool): void =

  fcQWebEnginePage_setAudioMuted(self.h, muted)

proc recentlyAudible*(self: gen_qwebenginepage_types.QWebEnginePage, ): bool =

  fcQWebEnginePage_recentlyAudible(self.h)

proc renderProcessPid*(self: gen_qwebenginepage_types.QWebEnginePage, ): clonglong =

  fcQWebEnginePage_renderProcessPid(self.h)

proc printToPdf*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string): void =

  fcQWebEnginePage_printToPdf(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc setInspectedPage*(self: gen_qwebenginepage_types.QWebEnginePage, page: gen_qwebenginepage_types.QWebEnginePage): void =

  fcQWebEnginePage_setInspectedPage(self.h, page.h)

proc inspectedPage*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_inspectedPage(self.h))

proc setDevToolsPage*(self: gen_qwebenginepage_types.QWebEnginePage, page: gen_qwebenginepage_types.QWebEnginePage): void =

  fcQWebEnginePage_setDevToolsPage(self.h, page.h)

proc devToolsPage*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_devToolsPage(self.h))

proc setUrlRequestInterceptor*(self: gen_qwebenginepage_types.QWebEnginePage, interceptor: gen_qwebengineurlrequestinterceptor.QWebEngineUrlRequestInterceptor): void =

  fcQWebEnginePage_setUrlRequestInterceptor(self.h, interceptor.h)

proc contextMenuData*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginecontextmenudata.QWebEngineContextMenuData =

  gen_qwebenginecontextmenudata.QWebEngineContextMenuData(h: fcQWebEnginePage_contextMenuData(self.h))

proc lifecycleState*(self: gen_qwebenginepage_types.QWebEnginePage, ): cint =

  cint(fcQWebEnginePage_lifecycleState(self.h))

proc setLifecycleState*(self: gen_qwebenginepage_types.QWebEnginePage, state: cint): void =

  fcQWebEnginePage_setLifecycleState(self.h, cint(state))

proc recommendedState*(self: gen_qwebenginepage_types.QWebEnginePage, ): cint =

  cint(fcQWebEnginePage_recommendedState(self.h))

proc isVisible*(self: gen_qwebenginepage_types.QWebEnginePage, ): bool =

  fcQWebEnginePage_isVisible(self.h)

proc setVisible*(self: gen_qwebenginepage_types.QWebEnginePage, visible: bool): void =

  fcQWebEnginePage_setVisible(self.h, visible)

proc loadStarted*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =

  fcQWebEnginePage_loadStarted(self.h)

proc miqt_exec_callback_QWebEnginePage_loadStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadStarted*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_loadStarted(self.h, cast[int](addr tmp[]))
proc loadProgress*(self: gen_qwebenginepage_types.QWebEnginePage, progress: cint): void =

  fcQWebEnginePage_loadProgress(self.h, progress)

proc miqt_exec_callback_QWebEnginePage_loadProgress(slot: int, progress: cint) {.exportc.} =
  type Cb = proc(progress: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onloadProgress*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(progress: cint)) =
  type Cb = proc(progress: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_loadProgress(self.h, cast[int](addr tmp[]))
proc loadFinished*(self: gen_qwebenginepage_types.QWebEnginePage, ok: bool): void =

  fcQWebEnginePage_loadFinished(self.h, ok)

proc miqt_exec_callback_QWebEnginePage_loadFinished(slot: int, ok: bool) {.exportc.} =
  type Cb = proc(ok: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ok


  nimfunc[](slotval1)

proc onloadFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(ok: bool)) =
  type Cb = proc(ok: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_loadFinished(self.h, cast[int](addr tmp[]))
proc linkHovered*(self: gen_qwebenginepage_types.QWebEnginePage, url: string): void =

  fcQWebEnginePage_linkHovered(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc miqt_exec_callback_QWebEnginePage_linkHovered(slot: int, url: struct_miqt_string) {.exportc.} =
  type Cb = proc(url: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret


  nimfunc[](slotval1)

proc onlinkHovered*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(url: string)) =
  type Cb = proc(url: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_linkHovered(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =

  fcQWebEnginePage_selectionChanged(self.h)

proc miqt_exec_callback_QWebEnginePage_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc geometryChangeRequested*(self: gen_qwebenginepage_types.QWebEnginePage, geom: gen_qrect.QRect): void =

  fcQWebEnginePage_geometryChangeRequested(self.h, geom.h)

proc miqt_exec_callback_QWebEnginePage_geometryChangeRequested(slot: int, geom: pointer) {.exportc.} =
  type Cb = proc(geom: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: geom)


  nimfunc[](slotval1)

proc ongeometryChangeRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(geom: gen_qrect.QRect)) =
  type Cb = proc(geom: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_geometryChangeRequested(self.h, cast[int](addr tmp[]))
proc windowCloseRequested*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =

  fcQWebEnginePage_windowCloseRequested(self.h)

proc miqt_exec_callback_QWebEnginePage_windowCloseRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onwindowCloseRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_windowCloseRequested(self.h, cast[int](addr tmp[]))
proc featurePermissionRequested*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl.QUrl, feature: cint): void =

  fcQWebEnginePage_featurePermissionRequested(self.h, securityOrigin.h, cint(feature))

proc miqt_exec_callback_QWebEnginePage_featurePermissionRequested(slot: int, securityOrigin: pointer, feature: cint) {.exportc.} =
  type Cb = proc(securityOrigin: gen_qurl.QUrl, feature: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: securityOrigin)

  let slotval2 = cint(feature)


  nimfunc[](slotval1, slotval2)

proc onfeaturePermissionRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(securityOrigin: gen_qurl.QUrl, feature: cint)) =
  type Cb = proc(securityOrigin: gen_qurl.QUrl, feature: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_featurePermissionRequested(self.h, cast[int](addr tmp[]))
proc featurePermissionRequestCanceled*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl.QUrl, feature: cint): void =

  fcQWebEnginePage_featurePermissionRequestCanceled(self.h, securityOrigin.h, cint(feature))

proc miqt_exec_callback_QWebEnginePage_featurePermissionRequestCanceled(slot: int, securityOrigin: pointer, feature: cint) {.exportc.} =
  type Cb = proc(securityOrigin: gen_qurl.QUrl, feature: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: securityOrigin)

  let slotval2 = cint(feature)


  nimfunc[](slotval1, slotval2)

proc onfeaturePermissionRequestCanceled*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(securityOrigin: gen_qurl.QUrl, feature: cint)) =
  type Cb = proc(securityOrigin: gen_qurl.QUrl, feature: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_featurePermissionRequestCanceled(self.h, cast[int](addr tmp[]))
proc fullScreenRequested*(self: gen_qwebenginepage_types.QWebEnginePage, fullScreenRequest: gen_qwebenginefullscreenrequest.QWebEngineFullScreenRequest): void =

  fcQWebEnginePage_fullScreenRequested(self.h, fullScreenRequest.h)

proc miqt_exec_callback_QWebEnginePage_fullScreenRequested(slot: int, fullScreenRequest: pointer) {.exportc.} =
  type Cb = proc(fullScreenRequest: gen_qwebenginefullscreenrequest.QWebEngineFullScreenRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebenginefullscreenrequest.QWebEngineFullScreenRequest(h: fullScreenRequest)


  nimfunc[](slotval1)

proc onfullScreenRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(fullScreenRequest: gen_qwebenginefullscreenrequest.QWebEngineFullScreenRequest)) =
  type Cb = proc(fullScreenRequest: gen_qwebenginefullscreenrequest.QWebEngineFullScreenRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_fullScreenRequested(self.h, cast[int](addr tmp[]))
proc quotaRequested*(self: gen_qwebenginepage_types.QWebEnginePage, quotaRequest: gen_qwebenginequotarequest.QWebEngineQuotaRequest): void =

  fcQWebEnginePage_quotaRequested(self.h, quotaRequest.h)

proc miqt_exec_callback_QWebEnginePage_quotaRequested(slot: int, quotaRequest: pointer) {.exportc.} =
  type Cb = proc(quotaRequest: gen_qwebenginequotarequest.QWebEngineQuotaRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebenginequotarequest.QWebEngineQuotaRequest(h: quotaRequest)


  nimfunc[](slotval1)

proc onquotaRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(quotaRequest: gen_qwebenginequotarequest.QWebEngineQuotaRequest)) =
  type Cb = proc(quotaRequest: gen_qwebenginequotarequest.QWebEngineQuotaRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_quotaRequested(self.h, cast[int](addr tmp[]))
proc registerProtocolHandlerRequested*(self: gen_qwebenginepage_types.QWebEnginePage, request: gen_qwebengineregisterprotocolhandlerrequest.QWebEngineRegisterProtocolHandlerRequest): void =

  fcQWebEnginePage_registerProtocolHandlerRequested(self.h, request.h)

proc miqt_exec_callback_QWebEnginePage_registerProtocolHandlerRequested(slot: int, request: pointer) {.exportc.} =
  type Cb = proc(request: gen_qwebengineregisterprotocolhandlerrequest.QWebEngineRegisterProtocolHandlerRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebengineregisterprotocolhandlerrequest.QWebEngineRegisterProtocolHandlerRequest(h: request)


  nimfunc[](slotval1)

proc onregisterProtocolHandlerRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(request: gen_qwebengineregisterprotocolhandlerrequest.QWebEngineRegisterProtocolHandlerRequest)) =
  type Cb = proc(request: gen_qwebengineregisterprotocolhandlerrequest.QWebEngineRegisterProtocolHandlerRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_registerProtocolHandlerRequested(self.h, cast[int](addr tmp[]))
proc selectClientCertificate*(self: gen_qwebenginepage_types.QWebEnginePage, clientCertSelection: gen_qwebengineclientcertificateselection.QWebEngineClientCertificateSelection): void =

  fcQWebEnginePage_selectClientCertificate(self.h, clientCertSelection.h)

proc miqt_exec_callback_QWebEnginePage_selectClientCertificate(slot: int, clientCertSelection: pointer) {.exportc.} =
  type Cb = proc(clientCertSelection: gen_qwebengineclientcertificateselection.QWebEngineClientCertificateSelection)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebengineclientcertificateselection.QWebEngineClientCertificateSelection(h: clientCertSelection)


  nimfunc[](slotval1)

proc onselectClientCertificate*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(clientCertSelection: gen_qwebengineclientcertificateselection.QWebEngineClientCertificateSelection)) =
  type Cb = proc(clientCertSelection: gen_qwebengineclientcertificateselection.QWebEngineClientCertificateSelection)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_selectClientCertificate(self.h, cast[int](addr tmp[]))
proc authenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator): void =

  fcQWebEnginePage_authenticationRequired(self.h, requestUrl.h, authenticator.h)

proc miqt_exec_callback_QWebEnginePage_authenticationRequired(slot: int, requestUrl: pointer, authenticator: pointer) {.exportc.} =
  type Cb = proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: requestUrl)

  let slotval2 = gen_qauthenticator.QAuthenticator(h: authenticator)


  nimfunc[](slotval1, slotval2)

proc onauthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator)) =
  type Cb = proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_authenticationRequired(self.h, cast[int](addr tmp[]))
proc proxyAuthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator, proxyHost: string): void =

  fcQWebEnginePage_proxyAuthenticationRequired(self.h, requestUrl.h, authenticator.h, struct_miqt_string(data: proxyHost, len: csize_t(len(proxyHost))))

proc miqt_exec_callback_QWebEnginePage_proxyAuthenticationRequired(slot: int, requestUrl: pointer, authenticator: pointer, proxyHost: struct_miqt_string) {.exportc.} =
  type Cb = proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator, proxyHost: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: requestUrl)

  let slotval2 = gen_qauthenticator.QAuthenticator(h: authenticator)

  let vproxyHost_ms = proxyHost
  let vproxyHostx_ret = string.fromBytes(toOpenArrayByte(vproxyHost_ms.data, 0, int(vproxyHost_ms.len)-1))
  c_free(vproxyHost_ms.data)
  let slotval3 = vproxyHostx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onproxyAuthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator, proxyHost: string)) =
  type Cb = proc(requestUrl: gen_qurl.QUrl, authenticator: gen_qauthenticator.QAuthenticator, proxyHost: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc renderProcessTerminated*(self: gen_qwebenginepage_types.QWebEnginePage, terminationStatus: cint, exitCode: cint): void =

  fcQWebEnginePage_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

proc miqt_exec_callback_QWebEnginePage_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.exportc.} =
  type Cb = proc(terminationStatus: cint, exitCode: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(terminationStatus)

  let slotval2 = exitCode


  nimfunc[](slotval1, slotval2)

proc onrenderProcessTerminated*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(terminationStatus: cint, exitCode: cint)) =
  type Cb = proc(terminationStatus: cint, exitCode: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]))
proc titleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, title: string): void =

  fcQWebEnginePage_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc miqt_exec_callback_QWebEnginePage_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  type Cb = proc(title: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret


  nimfunc[](slotval1)

proc ontitleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(title: string)) =
  type Cb = proc(title: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_titleChanged(self.h, cast[int](addr tmp[]))
proc urlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl): void =

  fcQWebEnginePage_urlChanged(self.h, url.h)

proc miqt_exec_callback_QWebEnginePage_urlChanged(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onurlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_urlChanged(self.h, cast[int](addr tmp[]))
proc iconUrlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl): void =

  fcQWebEnginePage_iconUrlChanged(self.h, url.h)

proc miqt_exec_callback_QWebEnginePage_iconUrlChanged(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc oniconUrlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_iconUrlChanged(self.h, cast[int](addr tmp[]))
proc iconChanged*(self: gen_qwebenginepage_types.QWebEnginePage, icon: gen_qicon.QIcon): void =

  fcQWebEnginePage_iconChanged(self.h, icon.h)

proc miqt_exec_callback_QWebEnginePage_iconChanged(slot: int, icon: pointer) {.exportc.} =
  type Cb = proc(icon: gen_qicon.QIcon)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qicon.QIcon(h: icon)


  nimfunc[](slotval1)

proc oniconChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(icon: gen_qicon.QIcon)) =
  type Cb = proc(icon: gen_qicon.QIcon)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_iconChanged(self.h, cast[int](addr tmp[]))
proc scrollPositionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, position: gen_qpoint.QPointF): void =

  fcQWebEnginePage_scrollPositionChanged(self.h, position.h)

proc miqt_exec_callback_QWebEnginePage_scrollPositionChanged(slot: int, position: pointer) {.exportc.} =
  type Cb = proc(position: gen_qpoint.QPointF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPointF(h: position)


  nimfunc[](slotval1)

proc onscrollPositionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(position: gen_qpoint.QPointF)) =
  type Cb = proc(position: gen_qpoint.QPointF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_scrollPositionChanged(self.h, cast[int](addr tmp[]))
proc contentsSizeChanged*(self: gen_qwebenginepage_types.QWebEnginePage, size: gen_qsize.QSizeF): void =

  fcQWebEnginePage_contentsSizeChanged(self.h, size.h)

proc miqt_exec_callback_QWebEnginePage_contentsSizeChanged(slot: int, size: pointer) {.exportc.} =
  type Cb = proc(size: gen_qsize.QSizeF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](slotval1)

proc oncontentsSizeChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(size: gen_qsize.QSizeF)) =
  type Cb = proc(size: gen_qsize.QSizeF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))
proc audioMutedChanged*(self: gen_qwebenginepage_types.QWebEnginePage, muted: bool): void =

  fcQWebEnginePage_audioMutedChanged(self.h, muted)

proc miqt_exec_callback_QWebEnginePage_audioMutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onaudioMutedChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_audioMutedChanged(self.h, cast[int](addr tmp[]))
proc recentlyAudibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, recentlyAudible: bool): void =

  fcQWebEnginePage_recentlyAudibleChanged(self.h, recentlyAudible)

proc miqt_exec_callback_QWebEnginePage_recentlyAudibleChanged(slot: int, recentlyAudible: bool) {.exportc.} =
  type Cb = proc(recentlyAudible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = recentlyAudible


  nimfunc[](slotval1)

proc onrecentlyAudibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(recentlyAudible: bool)) =
  type Cb = proc(recentlyAudible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_recentlyAudibleChanged(self.h, cast[int](addr tmp[]))
proc renderProcessPidChanged*(self: gen_qwebenginepage_types.QWebEnginePage, pid: clonglong): void =

  fcQWebEnginePage_renderProcessPidChanged(self.h, pid)

proc miqt_exec_callback_QWebEnginePage_renderProcessPidChanged(slot: int, pid: clonglong) {.exportc.} =
  type Cb = proc(pid: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = pid


  nimfunc[](slotval1)

proc onrenderProcessPidChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(pid: clonglong)) =
  type Cb = proc(pid: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_renderProcessPidChanged(self.h, cast[int](addr tmp[]))
proc pdfPrintingFinished*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, success: bool): void =

  fcQWebEnginePage_pdfPrintingFinished(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), success)

proc miqt_exec_callback_QWebEnginePage_pdfPrintingFinished(slot: int, filePath: struct_miqt_string, success: bool) {.exportc.} =
  type Cb = proc(filePath: string, success: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(toOpenArrayByte(vfilePath_ms.data, 0, int(vfilePath_ms.len)-1))
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  let slotval2 = success


  nimfunc[](slotval1, slotval2)

proc onpdfPrintingFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(filePath: string, success: bool)) =
  type Cb = proc(filePath: string, success: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_pdfPrintingFinished(self.h, cast[int](addr tmp[]))
proc printRequested*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =

  fcQWebEnginePage_printRequested(self.h)

proc miqt_exec_callback_QWebEnginePage_printRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onprintRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_printRequested(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, visible: bool): void =

  fcQWebEnginePage_visibleChanged(self.h, visible)

proc miqt_exec_callback_QWebEnginePage_visibleChanged(slot: int, visible: bool) {.exportc.} =
  type Cb = proc(visible: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)

proc onvisibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(visible: bool)) =
  type Cb = proc(visible: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc lifecycleStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, state: cint): void =

  fcQWebEnginePage_lifecycleStateChanged(self.h, cint(state))

proc miqt_exec_callback_QWebEnginePage_lifecycleStateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(state)


  nimfunc[](slotval1)

proc onlifecycleStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(state: cint)) =
  type Cb = proc(state: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_lifecycleStateChanged(self.h, cast[int](addr tmp[]))
proc recommendedStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, state: cint): void =

  fcQWebEnginePage_recommendedStateChanged(self.h, cint(state))

proc miqt_exec_callback_QWebEnginePage_recommendedStateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(state)


  nimfunc[](slotval1)

proc onrecommendedStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(state: cint)) =
  type Cb = proc(state: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_recommendedStateChanged(self.h, cast[int](addr tmp[]))
proc findTextFinished*(self: gen_qwebenginepage_types.QWebEnginePage, resultVal: gen_qwebenginefindtextresult.QWebEngineFindTextResult): void =

  fcQWebEnginePage_findTextFinished(self.h, resultVal.h)

proc miqt_exec_callback_QWebEnginePage_findTextFinished(slot: int, resultVal: pointer) {.exportc.} =
  type Cb = proc(resultVal: gen_qwebenginefindtextresult.QWebEngineFindTextResult)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebenginefindtextresult.QWebEngineFindTextResult(h: resultVal)


  nimfunc[](slotval1)

proc onfindTextFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: proc(resultVal: gen_qwebenginefindtextresult.QWebEngineFindTextResult)) =
  type Cb = proc(resultVal: gen_qwebenginefindtextresult.QWebEngineFindTextResult)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEnginePage_connect_findTextFinished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring): string =

  let v_ms = fcQWebEnginePage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEnginePage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring): string =

  let v_ms = fcQWebEnginePage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEnginePage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText2*(self: gen_qwebenginepage_types.QWebEnginePage, subString: string, options: cint): void =

  fcQWebEnginePage_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc download2*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl, filename: string): void =

  fcQWebEnginePage_download2(self.h, url.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc setHtml2*(self: gen_qwebenginepage_types.QWebEnginePage, html: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebEnginePage_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent2*(self: gen_qwebenginepage_types.QWebEnginePage, data: seq[byte], mimeType: string): void =

  fcQWebEnginePage_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent3*(self: gen_qwebenginepage_types.QWebEnginePage, data: seq[byte], mimeType: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebEnginePage_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc save2*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, format: cint): void =

  fcQWebEnginePage_save2(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), cint(format))

proc printToPdf2*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, layout: gen_qpagelayout.QPageLayout): void =

  fcQWebEnginePage_printToPdf2(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), layout.h)

proc QWebEnginePagemetaObject*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQWebEnginePage_virtualbase_metaObject(self.h))

type QWebEnginePagemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagemetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_metaObject(self: ptr cQWebEnginePage, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEnginePage_metaObject ".} =
  var nimfunc = cast[ptr QWebEnginePagemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEnginePagemetacast*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cstring): pointer =

  fQWebEnginePage_virtualbase_metacast(self.h, param1)

type QWebEnginePagemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagemetacastProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_metacast(self: ptr cQWebEnginePage, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebEnginePage_metacast ".} =
  var nimfunc = cast[ptr QWebEnginePagemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEnginePagemetacall*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cint, param2: cint, param3: pointer): cint =

  fQWebEnginePage_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEnginePagemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagemetacallProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_metacall(self: ptr cQWebEnginePage, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEnginePage_metacall ".} =
  var nimfunc = cast[ptr QWebEnginePagemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebEnginePagetriggerAction*(self: gen_qwebenginepage_types.QWebEnginePage, action: cint, checked: bool): void =

  fQWebEnginePage_virtualbase_triggerAction(self.h, cint(action), checked)

type QWebEnginePagetriggerActionProc* = proc(action: cint, checked: bool): void
proc ontriggerAction*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagetriggerActionProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagetriggerActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_triggerAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_triggerAction(self: ptr cQWebEnginePage, slot: int, action: cint, checked: bool): void {.exportc: "miqt_exec_callback_QWebEnginePage_triggerAction ".} =
  var nimfunc = cast[ptr QWebEnginePagetriggerActionProc](cast[pointer](slot))
  let slotval1 = cint(action)

  let slotval2 = checked


  nimfunc[](slotval1, slotval2)
proc QWebEnginePageevent*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qcoreevent.QEvent): bool =

  fQWebEnginePage_virtualbase_event(self.h, param1.h)

type QWebEnginePageeventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageeventProc) =
  # TODO check subclass
  var tmp = new QWebEnginePageeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_event(self: ptr cQWebEnginePage, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebEnginePage_event ".} =
  var nimfunc = cast[ptr QWebEnginePageeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEnginePagecreateWindow*(self: gen_qwebenginepage_types.QWebEnginePage, typeVal: cint): gen_qwebenginepage_types.QWebEnginePage =

  gen_qwebenginepage_types.QWebEnginePage(h: fQWebEnginePage_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebEnginePagecreateWindowProc* = proc(typeVal: cint): gen_qwebenginepage_types.QWebEnginePage
proc oncreateWindow*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagecreateWindowProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagecreateWindowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_createWindow(self: ptr cQWebEnginePage, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebEnginePage_createWindow ".} =
  var nimfunc = cast[ptr QWebEnginePagecreateWindowProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWebEnginePagechooseFiles*(self: gen_qwebenginepage_types.QWebEnginePage, mode: cint, oldFiles: seq[string], acceptedMimeTypes: seq[string]): seq[string] =

  var oldFiles_CArray = newSeq[struct_miqt_string](len(oldFiles))
  for i in 0..<len(oldFiles):
    oldFiles_CArray[i] = struct_miqt_string(data: oldFiles[i], len: csize_t(len(oldFiles[i])))

  var acceptedMimeTypes_CArray = newSeq[struct_miqt_string](len(acceptedMimeTypes))
  for i in 0..<len(acceptedMimeTypes):
    acceptedMimeTypes_CArray[i] = struct_miqt_string(data: acceptedMimeTypes[i], len: csize_t(len(acceptedMimeTypes[i])))

  var v_ma = fQWebEnginePage_virtualbase_chooseFiles(self.h, cint(mode), struct_miqt_array(len: csize_t(len(oldFiles)), data: if len(oldFiles) == 0: nil else: addr(oldFiles_CArray[0])), struct_miqt_array(len: csize_t(len(acceptedMimeTypes)), data: if len(acceptedMimeTypes) == 0: nil else: addr(acceptedMimeTypes_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QWebEnginePagechooseFilesProc* = proc(mode: cint, oldFiles: seq[string], acceptedMimeTypes: seq[string]): seq[string]
proc onchooseFiles*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagechooseFilesProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagechooseFilesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_chooseFiles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_chooseFiles(self: ptr cQWebEnginePage, slot: int, mode: cint, oldFiles: struct_miqt_array, acceptedMimeTypes: struct_miqt_array): struct_miqt_array {.exportc: "miqt_exec_callback_QWebEnginePage_chooseFiles ".} =
  var nimfunc = cast[ptr QWebEnginePagechooseFilesProc](cast[pointer](slot))
  let slotval1 = cint(mode)

  var voldFiles_ma = oldFiles
  var voldFilesx_ret = newSeq[string](int(voldFiles_ma.len))
  let voldFiles_outCast = cast[ptr UncheckedArray[struct_miqt_string]](voldFiles_ma.data)
  for i in 0 ..< voldFiles_ma.len:
    let voldFiles_lv_ms = voldFiles_outCast[i]
    let voldFiles_lvx_ret = string.fromBytes(toOpenArrayByte(voldFiles_lv_ms.data, 0, int(voldFiles_lv_ms.len)-1))
    c_free(voldFiles_lv_ms.data)
    voldFilesx_ret[i] = voldFiles_lvx_ret
  let slotval2 = voldFilesx_ret

  var vacceptedMimeTypes_ma = acceptedMimeTypes
  var vacceptedMimeTypesx_ret = newSeq[string](int(vacceptedMimeTypes_ma.len))
  let vacceptedMimeTypes_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vacceptedMimeTypes_ma.data)
  for i in 0 ..< vacceptedMimeTypes_ma.len:
    let vacceptedMimeTypes_lv_ms = vacceptedMimeTypes_outCast[i]
    let vacceptedMimeTypes_lvx_ret = string.fromBytes(toOpenArrayByte(vacceptedMimeTypes_lv_ms.data, 0, int(vacceptedMimeTypes_lv_ms.len)-1))
    c_free(vacceptedMimeTypes_lv_ms.data)
    vacceptedMimeTypesx_ret[i] = vacceptedMimeTypes_lvx_ret
  let slotval3 = vacceptedMimeTypesx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QWebEnginePagejavaScriptAlert*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl.QUrl, msg: string): void =

  fQWebEnginePage_virtualbase_javaScriptAlert(self.h, securityOrigin.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

type QWebEnginePagejavaScriptAlertProc* = proc(securityOrigin: gen_qurl.QUrl, msg: string): void
proc onjavaScriptAlert*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagejavaScriptAlertProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagejavaScriptAlertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_javaScriptAlert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_javaScriptAlert(self: ptr cQWebEnginePage, slot: int, securityOrigin: pointer, msg: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebEnginePage_javaScriptAlert ".} =
  var nimfunc = cast[ptr QWebEnginePagejavaScriptAlertProc](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: securityOrigin)

  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret


  nimfunc[](slotval1, slotval2)
proc QWebEnginePagejavaScriptConfirm*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl.QUrl, msg: string): bool =

  fQWebEnginePage_virtualbase_javaScriptConfirm(self.h, securityOrigin.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

type QWebEnginePagejavaScriptConfirmProc* = proc(securityOrigin: gen_qurl.QUrl, msg: string): bool
proc onjavaScriptConfirm*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagejavaScriptConfirmProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagejavaScriptConfirmProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_javaScriptConfirm(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_javaScriptConfirm(self: ptr cQWebEnginePage, slot: int, securityOrigin: pointer, msg: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QWebEnginePage_javaScriptConfirm ".} =
  var nimfunc = cast[ptr QWebEnginePagejavaScriptConfirmProc](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: securityOrigin)

  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEnginePagejavaScriptConsoleMessage*(self: gen_qwebenginepage_types.QWebEnginePage, level: cint, message: string, lineNumber: cint, sourceID: string): void =

  fQWebEnginePage_virtualbase_javaScriptConsoleMessage(self.h, cint(level), struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

type QWebEnginePagejavaScriptConsoleMessageProc* = proc(level: cint, message: string, lineNumber: cint, sourceID: string): void
proc onjavaScriptConsoleMessage*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagejavaScriptConsoleMessageProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagejavaScriptConsoleMessageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_javaScriptConsoleMessage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_javaScriptConsoleMessage(self: ptr cQWebEnginePage, slot: int, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebEnginePage_javaScriptConsoleMessage ".} =
  var nimfunc = cast[ptr QWebEnginePagejavaScriptConsoleMessageProc](cast[pointer](slot))
  let slotval1 = cint(level)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval2 = vmessagex_ret

  let slotval3 = lineNumber

  let vsourceID_ms = sourceID
  let vsourceIDx_ret = string.fromBytes(toOpenArrayByte(vsourceID_ms.data, 0, int(vsourceID_ms.len)-1))
  c_free(vsourceID_ms.data)
  let slotval4 = vsourceIDx_ret


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QWebEnginePagecertificateError*(self: gen_qwebenginepage_types.QWebEnginePage, certificateError: gen_qwebenginecertificateerror.QWebEngineCertificateError): bool =

  fQWebEnginePage_virtualbase_certificateError(self.h, certificateError.h)

type QWebEnginePagecertificateErrorProc* = proc(certificateError: gen_qwebenginecertificateerror.QWebEngineCertificateError): bool
proc oncertificateError*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagecertificateErrorProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagecertificateErrorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_certificateError(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_certificateError(self: ptr cQWebEnginePage, slot: int, certificateError: pointer): bool {.exportc: "miqt_exec_callback_QWebEnginePage_certificateError ".} =
  var nimfunc = cast[ptr QWebEnginePagecertificateErrorProc](cast[pointer](slot))
  let slotval1 = gen_qwebenginecertificateerror.QWebEngineCertificateError(h: certificateError)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEnginePageacceptNavigationRequest*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl.QUrl, typeVal: cint, isMainFrame: bool): bool =

  fQWebEnginePage_virtualbase_acceptNavigationRequest(self.h, url.h, cint(typeVal), isMainFrame)

type QWebEnginePageacceptNavigationRequestProc* = proc(url: gen_qurl.QUrl, typeVal: cint, isMainFrame: bool): bool
proc onacceptNavigationRequest*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageacceptNavigationRequestProc) =
  # TODO check subclass
  var tmp = new QWebEnginePageacceptNavigationRequestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_acceptNavigationRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_acceptNavigationRequest(self: ptr cQWebEnginePage, slot: int, url: pointer, typeVal: cint, isMainFrame: bool): bool {.exportc: "miqt_exec_callback_QWebEnginePage_acceptNavigationRequest ".} =
  var nimfunc = cast[ptr QWebEnginePageacceptNavigationRequestProc](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)

  let slotval2 = cint(typeVal)

  let slotval3 = isMainFrame


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebEnginePageeventFilter*(self: gen_qwebenginepage_types.QWebEnginePage, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQWebEnginePage_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEnginePageeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageeventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEnginePageeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_eventFilter(self: ptr cQWebEnginePage, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEnginePage_eventFilter ".} =
  var nimfunc = cast[ptr QWebEnginePageeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEnginePagetimerEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent.QTimerEvent): void =

  fQWebEnginePage_virtualbase_timerEvent(self.h, event.h)

type QWebEnginePagetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagetimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_timerEvent(self: ptr cQWebEnginePage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEnginePage_timerEvent ".} =
  var nimfunc = cast[ptr QWebEnginePagetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEnginePagechildEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent.QChildEvent): void =

  fQWebEnginePage_virtualbase_childEvent(self.h, event.h)

type QWebEnginePagechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagechildEventProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_childEvent(self: ptr cQWebEnginePage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEnginePage_childEvent ".} =
  var nimfunc = cast[ptr QWebEnginePagechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEnginePagecustomEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent.QEvent): void =

  fQWebEnginePage_virtualbase_customEvent(self.h, event.h)

type QWebEnginePagecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagecustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_customEvent(self: ptr cQWebEnginePage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEnginePage_customEvent ".} =
  var nimfunc = cast[ptr QWebEnginePagecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEnginePageconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, signal: gen_qmetaobject.QMetaMethod): void =

  fQWebEnginePage_virtualbase_connectNotify(self.h, signal.h)

type QWebEnginePageconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEnginePageconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_connectNotify(self: ptr cQWebEnginePage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEnginePage_connectNotify ".} =
  var nimfunc = cast[ptr QWebEnginePageconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEnginePagedisconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, signal: gen_qmetaobject.QMetaMethod): void =

  fQWebEnginePage_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEnginePagedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEnginePagedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEnginePage_disconnectNotify(self: ptr cQWebEnginePage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEnginePage_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEnginePagedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebenginepage_types.QWebEnginePage): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEnginePage_staticMetaObject())
proc delete*(self: gen_qwebenginepage_types.QWebEnginePage) =
  fcQWebEnginePage_delete(self.h)
