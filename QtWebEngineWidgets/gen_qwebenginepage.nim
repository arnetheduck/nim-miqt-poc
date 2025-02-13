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

const cflags = gorge("pkg-config --cflags Qt5WebEngineWidgets")
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
  gen_qauthenticator_types,
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qicon_types,
  gen_qmenu_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpagelayout_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qwebchannel_types,
  gen_qwebenginecertificateerror_types,
  gen_qwebengineclientcertificateselection_types,
  gen_qwebenginecontextmenudata_types,
  gen_qwebenginefindtextresult_types,
  gen_qwebenginefullscreenrequest_types,
  gen_qwebenginehistory_types,
  gen_qwebenginehttprequest_types,
  gen_qwebengineprofile_types,
  gen_qwebenginequotarequest_types,
  gen_qwebengineregisterprotocolhandlerrequest_types,
  gen_qwebenginescriptcollection_types,
  gen_qwebenginesettings_types,
  gen_qwebengineurlrequestinterceptor_types,
  gen_qwidget_types
export
  gen_qauthenticator_types,
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qicon_types,
  gen_qmenu_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpagelayout_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qwebchannel_types,
  gen_qwebenginecertificateerror_types,
  gen_qwebengineclientcertificateselection_types,
  gen_qwebenginecontextmenudata_types,
  gen_qwebenginefindtextresult_types,
  gen_qwebenginefullscreenrequest_types,
  gen_qwebenginehistory_types,
  gen_qwebenginehttprequest_types,
  gen_qwebengineprofile_types,
  gen_qwebenginequotarequest_types,
  gen_qwebengineregisterprotocolhandlerrequest_types,
  gen_qwebenginescriptcollection_types,
  gen_qwebenginesettings_types,
  gen_qwebengineurlrequestinterceptor_types,
  gen_qwidget_types

type cQWebEnginePage*{.exportc: "QWebEnginePage", incompleteStruct.} = object

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
proc fcQWebEnginePage_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadStarted".}
proc fcQWebEnginePage_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEnginePage_loadProgress".}
proc fcQWebEnginePage_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadProgress".}
proc fcQWebEnginePage_loadFinished(self: pointer, ok: bool): void {.importc: "QWebEnginePage_loadFinished".}
proc fcQWebEnginePage_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_loadFinished".}
proc fcQWebEnginePage_linkHovered(self: pointer, url: struct_miqt_string): void {.importc: "QWebEnginePage_linkHovered".}
proc fcQWebEnginePage_connect_linkHovered(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_linkHovered".}
proc fcQWebEnginePage_selectionChanged(self: pointer, ): void {.importc: "QWebEnginePage_selectionChanged".}
proc fcQWebEnginePage_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_selectionChanged".}
proc fcQWebEnginePage_geometryChangeRequested(self: pointer, geom: pointer): void {.importc: "QWebEnginePage_geometryChangeRequested".}
proc fcQWebEnginePage_connect_geometryChangeRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_geometryChangeRequested".}
proc fcQWebEnginePage_windowCloseRequested(self: pointer, ): void {.importc: "QWebEnginePage_windowCloseRequested".}
proc fcQWebEnginePage_connect_windowCloseRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_windowCloseRequested".}
proc fcQWebEnginePage_featurePermissionRequested(self: pointer, securityOrigin: pointer, feature: cint): void {.importc: "QWebEnginePage_featurePermissionRequested".}
proc fcQWebEnginePage_connect_featurePermissionRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_featurePermissionRequested".}
proc fcQWebEnginePage_featurePermissionRequestCanceled(self: pointer, securityOrigin: pointer, feature: cint): void {.importc: "QWebEnginePage_featurePermissionRequestCanceled".}
proc fcQWebEnginePage_connect_featurePermissionRequestCanceled(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_featurePermissionRequestCanceled".}
proc fcQWebEnginePage_fullScreenRequested(self: pointer, fullScreenRequest: pointer): void {.importc: "QWebEnginePage_fullScreenRequested".}
proc fcQWebEnginePage_connect_fullScreenRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_fullScreenRequested".}
proc fcQWebEnginePage_quotaRequested(self: pointer, quotaRequest: pointer): void {.importc: "QWebEnginePage_quotaRequested".}
proc fcQWebEnginePage_connect_quotaRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_quotaRequested".}
proc fcQWebEnginePage_registerProtocolHandlerRequested(self: pointer, request: pointer): void {.importc: "QWebEnginePage_registerProtocolHandlerRequested".}
proc fcQWebEnginePage_connect_registerProtocolHandlerRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_registerProtocolHandlerRequested".}
proc fcQWebEnginePage_selectClientCertificate(self: pointer, clientCertSelection: pointer): void {.importc: "QWebEnginePage_selectClientCertificate".}
proc fcQWebEnginePage_connect_selectClientCertificate(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_selectClientCertificate".}
proc fcQWebEnginePage_authenticationRequired(self: pointer, requestUrl: pointer, authenticator: pointer): void {.importc: "QWebEnginePage_authenticationRequired".}
proc fcQWebEnginePage_connect_authenticationRequired(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_authenticationRequired".}
proc fcQWebEnginePage_proxyAuthenticationRequired(self: pointer, requestUrl: pointer, authenticator: pointer, proxyHost: struct_miqt_string): void {.importc: "QWebEnginePage_proxyAuthenticationRequired".}
proc fcQWebEnginePage_connect_proxyAuthenticationRequired(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_proxyAuthenticationRequired".}
proc fcQWebEnginePage_renderProcessTerminated(self: pointer, terminationStatus: cint, exitCode: cint): void {.importc: "QWebEnginePage_renderProcessTerminated".}
proc fcQWebEnginePage_connect_renderProcessTerminated(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_renderProcessTerminated".}
proc fcQWebEnginePage_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEnginePage_titleChanged".}
proc fcQWebEnginePage_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_titleChanged".}
proc fcQWebEnginePage_urlChanged(self: pointer, url: pointer): void {.importc: "QWebEnginePage_urlChanged".}
proc fcQWebEnginePage_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_urlChanged".}
proc fcQWebEnginePage_iconUrlChanged(self: pointer, url: pointer): void {.importc: "QWebEnginePage_iconUrlChanged".}
proc fcQWebEnginePage_connect_iconUrlChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_iconUrlChanged".}
proc fcQWebEnginePage_iconChanged(self: pointer, icon: pointer): void {.importc: "QWebEnginePage_iconChanged".}
proc fcQWebEnginePage_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_iconChanged".}
proc fcQWebEnginePage_scrollPositionChanged(self: pointer, position: pointer): void {.importc: "QWebEnginePage_scrollPositionChanged".}
proc fcQWebEnginePage_connect_scrollPositionChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_scrollPositionChanged".}
proc fcQWebEnginePage_contentsSizeChanged(self: pointer, size: pointer): void {.importc: "QWebEnginePage_contentsSizeChanged".}
proc fcQWebEnginePage_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_contentsSizeChanged".}
proc fcQWebEnginePage_audioMutedChanged(self: pointer, muted: bool): void {.importc: "QWebEnginePage_audioMutedChanged".}
proc fcQWebEnginePage_connect_audioMutedChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_audioMutedChanged".}
proc fcQWebEnginePage_recentlyAudibleChanged(self: pointer, recentlyAudible: bool): void {.importc: "QWebEnginePage_recentlyAudibleChanged".}
proc fcQWebEnginePage_connect_recentlyAudibleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_recentlyAudibleChanged".}
proc fcQWebEnginePage_renderProcessPidChanged(self: pointer, pid: clonglong): void {.importc: "QWebEnginePage_renderProcessPidChanged".}
proc fcQWebEnginePage_connect_renderProcessPidChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_renderProcessPidChanged".}
proc fcQWebEnginePage_pdfPrintingFinished(self: pointer, filePath: struct_miqt_string, success: bool): void {.importc: "QWebEnginePage_pdfPrintingFinished".}
proc fcQWebEnginePage_connect_pdfPrintingFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_pdfPrintingFinished".}
proc fcQWebEnginePage_printRequested(self: pointer, ): void {.importc: "QWebEnginePage_printRequested".}
proc fcQWebEnginePage_connect_printRequested(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_printRequested".}
proc fcQWebEnginePage_visibleChanged(self: pointer, visible: bool): void {.importc: "QWebEnginePage_visibleChanged".}
proc fcQWebEnginePage_connect_visibleChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_visibleChanged".}
proc fcQWebEnginePage_lifecycleStateChanged(self: pointer, state: cint): void {.importc: "QWebEnginePage_lifecycleStateChanged".}
proc fcQWebEnginePage_connect_lifecycleStateChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_lifecycleStateChanged".}
proc fcQWebEnginePage_recommendedStateChanged(self: pointer, state: cint): void {.importc: "QWebEnginePage_recommendedStateChanged".}
proc fcQWebEnginePage_connect_recommendedStateChanged(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_recommendedStateChanged".}
proc fcQWebEnginePage_findTextFinished(self: pointer, resultVal: pointer): void {.importc: "QWebEnginePage_findTextFinished".}
proc fcQWebEnginePage_connect_findTextFinished(self: pointer, slot: int) {.importc: "QWebEnginePage_connect_findTextFinished".}
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
type cQWebEnginePageVTable = object
  destructor*: proc(vtbl: ptr cQWebEnginePageVTable, self: ptr cQWebEnginePage) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  triggerAction*: proc(vtbl, self: pointer, action: cint, checked: bool): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  chooseFiles*: proc(vtbl, self: pointer, mode: cint, oldFiles: struct_miqt_array, acceptedMimeTypes: struct_miqt_array): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  javaScriptAlert*: proc(vtbl, self: pointer, securityOrigin: pointer, msg: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  javaScriptConfirm*: proc(vtbl, self: pointer, securityOrigin: pointer, msg: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  javaScriptConsoleMessage*: proc(vtbl, self: pointer, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  certificateError*: proc(vtbl, self: pointer, certificateError: pointer): bool {.cdecl, raises: [], gcsafe.}
  acceptNavigationRequest*: proc(vtbl, self: pointer, url: pointer, typeVal: cint, isMainFrame: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebEnginePage_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebEnginePage_virtualbase_metaObject".}
proc fcQWebEnginePage_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEnginePage_virtualbase_metacast".}
proc fcQWebEnginePage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEnginePage_virtualbase_metacall".}
proc fcQWebEnginePage_virtualbase_triggerAction(self: pointer, action: cint, checked: bool): void {.importc: "QWebEnginePage_virtualbase_triggerAction".}
proc fcQWebEnginePage_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWebEnginePage_virtualbase_event".}
proc fcQWebEnginePage_virtualbase_createWindow(self: pointer, typeVal: cint): pointer {.importc: "QWebEnginePage_virtualbase_createWindow".}
proc fcQWebEnginePage_virtualbase_chooseFiles(self: pointer, mode: cint, oldFiles: struct_miqt_array, acceptedMimeTypes: struct_miqt_array): struct_miqt_array {.importc: "QWebEnginePage_virtualbase_chooseFiles".}
proc fcQWebEnginePage_virtualbase_javaScriptAlert(self: pointer, securityOrigin: pointer, msg: struct_miqt_string): void {.importc: "QWebEnginePage_virtualbase_javaScriptAlert".}
proc fcQWebEnginePage_virtualbase_javaScriptConfirm(self: pointer, securityOrigin: pointer, msg: struct_miqt_string): bool {.importc: "QWebEnginePage_virtualbase_javaScriptConfirm".}
proc fcQWebEnginePage_virtualbase_javaScriptConsoleMessage(self: pointer, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.importc: "QWebEnginePage_virtualbase_javaScriptConsoleMessage".}
proc fcQWebEnginePage_virtualbase_certificateError(self: pointer, certificateError: pointer): bool {.importc: "QWebEnginePage_virtualbase_certificateError".}
proc fcQWebEnginePage_virtualbase_acceptNavigationRequest(self: pointer, url: pointer, typeVal: cint, isMainFrame: bool): bool {.importc: "QWebEnginePage_virtualbase_acceptNavigationRequest".}
proc fcQWebEnginePage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEnginePage_virtualbase_eventFilter".}
proc fcQWebEnginePage_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEnginePage_virtualbase_timerEvent".}
proc fcQWebEnginePage_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEnginePage_virtualbase_childEvent".}
proc fcQWebEnginePage_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEnginePage_virtualbase_customEvent".}
proc fcQWebEnginePage_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEnginePage_virtualbase_connectNotify".}
proc fcQWebEnginePage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEnginePage_virtualbase_disconnectNotify".}
proc fcQWebEnginePage_new(vtbl: pointer, ): ptr cQWebEnginePage {.importc: "QWebEnginePage_new".}
proc fcQWebEnginePage_new2(vtbl: pointer, profile: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new2".}
proc fcQWebEnginePage_new3(vtbl: pointer, parent: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new3".}
proc fcQWebEnginePage_new4(vtbl: pointer, profile: pointer, parent: pointer): ptr cQWebEnginePage {.importc: "QWebEnginePage_new4".}
proc fcQWebEnginePage_staticMetaObject(): pointer {.importc: "QWebEnginePage_staticMetaObject".}
proc fcQWebEnginePage_delete(self: pointer) {.importc: "QWebEnginePage_delete".}

proc metaObject*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEnginePage_metaObject(self.h))

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

proc history*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginehistory_types.QWebEngineHistory =
  gen_qwebenginehistory_types.QWebEngineHistory(h: fcQWebEnginePage_history(self.h))

proc setView*(self: gen_qwebenginepage_types.QWebEnginePage, view: gen_qwidget_types.QWidget): void =
  fcQWebEnginePage_setView(self.h, view.h)

proc view*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWebEnginePage_view(self.h))

proc hasSelection*(self: gen_qwebenginepage_types.QWebEnginePage, ): bool =
  fcQWebEnginePage_hasSelection(self.h)

proc selectedText*(self: gen_qwebenginepage_types.QWebEnginePage, ): string =
  let v_ms = fcQWebEnginePage_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc profile*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEnginePage_profile(self.h))

proc triggerAction*(self: gen_qwebenginepage_types.QWebEnginePage, action: cint, checked: bool): void =
  fcQWebEnginePage_triggerAction(self.h, cint(action), checked)

proc replaceMisspelledWord*(self: gen_qwebenginepage_types.QWebEnginePage, replacement: string): void =
  fcQWebEnginePage_replaceMisspelledWord(self.h, struct_miqt_string(data: replacement, len: csize_t(len(replacement))))

proc event*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebEnginePage_event(self.h, param1.h)

proc findText*(self: gen_qwebenginepage_types.QWebEnginePage, subString: string): void =
  fcQWebEnginePage_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc createStandardContextMenu*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQWebEnginePage_createStandardContextMenu(self.h))

proc setFeaturePermission*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, feature: cint, policy: cint): void =
  fcQWebEnginePage_setFeaturePermission(self.h, securityOrigin.h, cint(feature), cint(policy))

proc load*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_load(self.h, url.h)

proc load*(self: gen_qwebenginepage_types.QWebEnginePage, request: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): void =
  fcQWebEnginePage_loadWithRequest(self.h, request.h)

proc download*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl): void =
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

proc setUrl*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_setUrl(self.h, url.h)

proc url*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEnginePage_url(self.h))

proc requestedUrl*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEnginePage_requestedUrl(self.h))

proc iconUrl*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEnginePage_iconUrl(self.h))

proc icon*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebEnginePage_icon(self.h))

proc zoomFactor*(self: gen_qwebenginepage_types.QWebEnginePage, ): float64 =
  fcQWebEnginePage_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebenginepage_types.QWebEnginePage, factor: float64): void =
  fcQWebEnginePage_setZoomFactor(self.h, factor)

proc scrollPosition*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWebEnginePage_scrollPosition(self.h))

proc contentsSize*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQWebEnginePage_contentsSize(self.h))

proc runJavaScript*(self: gen_qwebenginepage_types.QWebEnginePage, scriptSource: string): void =
  fcQWebEnginePage_runJavaScript(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource))))

proc runJavaScript*(self: gen_qwebenginepage_types.QWebEnginePage, scriptSource: string, worldId: cuint): void =
  fcQWebEnginePage_runJavaScript2(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource))), worldId)

proc scripts*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginescriptcollection_types.QWebEngineScriptCollection =
  gen_qwebenginescriptcollection_types.QWebEngineScriptCollection(h: fcQWebEnginePage_scripts(self.h))

proc settings*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginesettings_types.QWebEngineSettings =
  gen_qwebenginesettings_types.QWebEngineSettings(h: fcQWebEnginePage_settings(self.h))

proc webChannel*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebchannel_types.QWebChannel =
  gen_qwebchannel_types.QWebChannel(h: fcQWebEnginePage_webChannel(self.h))

proc setWebChannel*(self: gen_qwebenginepage_types.QWebEnginePage, webChannel: gen_qwebchannel_types.QWebChannel): void =
  fcQWebEnginePage_setWebChannel(self.h, webChannel.h)

proc setWebChannel*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qwebchannel_types.QWebChannel, worldId: cuint): void =
  fcQWebEnginePage_setWebChannel2(self.h, param1.h, worldId)

proc backgroundColor*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQWebEnginePage_backgroundColor(self.h))

proc setBackgroundColor*(self: gen_qwebenginepage_types.QWebEnginePage, color: gen_qcolor_types.QColor): void =
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

proc setUrlRequestInterceptor*(self: gen_qwebenginepage_types.QWebEnginePage, interceptor: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): void =
  fcQWebEnginePage_setUrlRequestInterceptor(self.h, interceptor.h)

proc contextMenuData*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData =
  gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData(h: fcQWebEnginePage_contextMenuData(self.h))

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

type QWebEnginePageloadStartedSlot* = proc()
proc miqt_exec_callback_cQWebEnginePage_loadStarted(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_loadStarted".} =
  let nimfunc = cast[ptr QWebEnginePageloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEnginePage_loadStarted_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_loadStarted_release".} =
  let nimfunc = cast[ref QWebEnginePageloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageloadStartedSlot) =
  var tmp = new QWebEnginePageloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_loadStarted(self.h, cast[int](addr tmp[]))

proc loadProgress*(self: gen_qwebenginepage_types.QWebEnginePage, progress: cint): void =
  fcQWebEnginePage_loadProgress(self.h, progress)

type QWebEnginePageloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_cQWebEnginePage_loadProgress(slot: int, progress: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_loadProgress".} =
  let nimfunc = cast[ptr QWebEnginePageloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_loadProgress_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_loadProgress_release".} =
  let nimfunc = cast[ref QWebEnginePageloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageloadProgressSlot) =
  var tmp = new QWebEnginePageloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_loadProgress(self.h, cast[int](addr tmp[]))

proc loadFinished*(self: gen_qwebenginepage_types.QWebEnginePage, ok: bool): void =
  fcQWebEnginePage_loadFinished(self.h, ok)

type QWebEnginePageloadFinishedSlot* = proc(ok: bool)
proc miqt_exec_callback_cQWebEnginePage_loadFinished(slot: int, ok: bool) {.exportc: "miqt_exec_callback_QWebEnginePage_loadFinished".} =
  let nimfunc = cast[ptr QWebEnginePageloadFinishedSlot](cast[pointer](slot))
  let slotval1 = ok

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_loadFinished_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_loadFinished_release".} =
  let nimfunc = cast[ref QWebEnginePageloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageloadFinishedSlot) =
  var tmp = new QWebEnginePageloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_loadFinished(self.h, cast[int](addr tmp[]))

proc linkHovered*(self: gen_qwebenginepage_types.QWebEnginePage, url: string): void =
  fcQWebEnginePage_linkHovered(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

type QWebEnginePagelinkHoveredSlot* = proc(url: string)
proc miqt_exec_callback_cQWebEnginePage_linkHovered(slot: int, url: struct_miqt_string) {.exportc: "miqt_exec_callback_QWebEnginePage_linkHovered".} =
  let nimfunc = cast[ptr QWebEnginePagelinkHoveredSlot](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_linkHovered_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_linkHovered_release".} =
  let nimfunc = cast[ref QWebEnginePagelinkHoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkHovered*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagelinkHoveredSlot) =
  var tmp = new QWebEnginePagelinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_linkHovered(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =
  fcQWebEnginePage_selectionChanged(self.h)

type QWebEnginePageselectionChangedSlot* = proc()
proc miqt_exec_callback_cQWebEnginePage_selectionChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_selectionChanged".} =
  let nimfunc = cast[ptr QWebEnginePageselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEnginePage_selectionChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_selectionChanged_release".} =
  let nimfunc = cast[ref QWebEnginePageselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageselectionChangedSlot) =
  var tmp = new QWebEnginePageselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc geometryChangeRequested*(self: gen_qwebenginepage_types.QWebEnginePage, geom: gen_qrect_types.QRect): void =
  fcQWebEnginePage_geometryChangeRequested(self.h, geom.h)

type QWebEnginePagegeometryChangeRequestedSlot* = proc(geom: gen_qrect_types.QRect)
proc miqt_exec_callback_cQWebEnginePage_geometryChangeRequested(slot: int, geom: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_geometryChangeRequested".} =
  let nimfunc = cast[ptr QWebEnginePagegeometryChangeRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geom)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_geometryChangeRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_geometryChangeRequested_release".} =
  let nimfunc = cast[ref QWebEnginePagegeometryChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometryChangeRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagegeometryChangeRequestedSlot) =
  var tmp = new QWebEnginePagegeometryChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_geometryChangeRequested(self.h, cast[int](addr tmp[]))

proc windowCloseRequested*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =
  fcQWebEnginePage_windowCloseRequested(self.h)

type QWebEnginePagewindowCloseRequestedSlot* = proc()
proc miqt_exec_callback_cQWebEnginePage_windowCloseRequested(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_windowCloseRequested".} =
  let nimfunc = cast[ptr QWebEnginePagewindowCloseRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEnginePage_windowCloseRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_windowCloseRequested_release".} =
  let nimfunc = cast[ref QWebEnginePagewindowCloseRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowCloseRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagewindowCloseRequestedSlot) =
  var tmp = new QWebEnginePagewindowCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_windowCloseRequested(self.h, cast[int](addr tmp[]))

proc featurePermissionRequested*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, feature: cint): void =
  fcQWebEnginePage_featurePermissionRequested(self.h, securityOrigin.h, cint(feature))

type QWebEnginePagefeaturePermissionRequestedSlot* = proc(securityOrigin: gen_qurl_types.QUrl, feature: cint)
proc miqt_exec_callback_cQWebEnginePage_featurePermissionRequested(slot: int, securityOrigin: pointer, feature: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_featurePermissionRequested".} =
  let nimfunc = cast[ptr QWebEnginePagefeaturePermissionRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: securityOrigin)

  let slotval2 = cint(feature)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEnginePage_featurePermissionRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_featurePermissionRequested_release".} =
  let nimfunc = cast[ref QWebEnginePagefeaturePermissionRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfeaturePermissionRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagefeaturePermissionRequestedSlot) =
  var tmp = new QWebEnginePagefeaturePermissionRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_featurePermissionRequested(self.h, cast[int](addr tmp[]))

proc featurePermissionRequestCanceled*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, feature: cint): void =
  fcQWebEnginePage_featurePermissionRequestCanceled(self.h, securityOrigin.h, cint(feature))

type QWebEnginePagefeaturePermissionRequestCanceledSlot* = proc(securityOrigin: gen_qurl_types.QUrl, feature: cint)
proc miqt_exec_callback_cQWebEnginePage_featurePermissionRequestCanceled(slot: int, securityOrigin: pointer, feature: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_featurePermissionRequestCanceled".} =
  let nimfunc = cast[ptr QWebEnginePagefeaturePermissionRequestCanceledSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: securityOrigin)

  let slotval2 = cint(feature)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEnginePage_featurePermissionRequestCanceled_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_featurePermissionRequestCanceled_release".} =
  let nimfunc = cast[ref QWebEnginePagefeaturePermissionRequestCanceledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfeaturePermissionRequestCanceled*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagefeaturePermissionRequestCanceledSlot) =
  var tmp = new QWebEnginePagefeaturePermissionRequestCanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_featurePermissionRequestCanceled(self.h, cast[int](addr tmp[]))

proc fullScreenRequested*(self: gen_qwebenginepage_types.QWebEnginePage, fullScreenRequest: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): void =
  fcQWebEnginePage_fullScreenRequested(self.h, fullScreenRequest.h)

type QWebEnginePagefullScreenRequestedSlot* = proc(fullScreenRequest: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest)
proc miqt_exec_callback_cQWebEnginePage_fullScreenRequested(slot: int, fullScreenRequest: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_fullScreenRequested".} =
  let nimfunc = cast[ptr QWebEnginePagefullScreenRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest(h: fullScreenRequest)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_fullScreenRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_fullScreenRequested_release".} =
  let nimfunc = cast[ref QWebEnginePagefullScreenRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagefullScreenRequestedSlot) =
  var tmp = new QWebEnginePagefullScreenRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_fullScreenRequested(self.h, cast[int](addr tmp[]))

proc quotaRequested*(self: gen_qwebenginepage_types.QWebEnginePage, quotaRequest: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): void =
  fcQWebEnginePage_quotaRequested(self.h, quotaRequest.h)

type QWebEnginePagequotaRequestedSlot* = proc(quotaRequest: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest)
proc miqt_exec_callback_cQWebEnginePage_quotaRequested(slot: int, quotaRequest: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_quotaRequested".} =
  let nimfunc = cast[ptr QWebEnginePagequotaRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginequotarequest_types.QWebEngineQuotaRequest(h: quotaRequest)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_quotaRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_quotaRequested_release".} =
  let nimfunc = cast[ref QWebEnginePagequotaRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onquotaRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagequotaRequestedSlot) =
  var tmp = new QWebEnginePagequotaRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_quotaRequested(self.h, cast[int](addr tmp[]))

proc registerProtocolHandlerRequested*(self: gen_qwebenginepage_types.QWebEnginePage, request: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): void =
  fcQWebEnginePage_registerProtocolHandlerRequested(self.h, request.h)

type QWebEnginePageregisterProtocolHandlerRequestedSlot* = proc(request: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest)
proc miqt_exec_callback_cQWebEnginePage_registerProtocolHandlerRequested(slot: int, request: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_registerProtocolHandlerRequested".} =
  let nimfunc = cast[ptr QWebEnginePageregisterProtocolHandlerRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest(h: request)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_registerProtocolHandlerRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_registerProtocolHandlerRequested_release".} =
  let nimfunc = cast[ref QWebEnginePageregisterProtocolHandlerRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onregisterProtocolHandlerRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageregisterProtocolHandlerRequestedSlot) =
  var tmp = new QWebEnginePageregisterProtocolHandlerRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_registerProtocolHandlerRequested(self.h, cast[int](addr tmp[]))

proc selectClientCertificate*(self: gen_qwebenginepage_types.QWebEnginePage, clientCertSelection: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): void =
  fcQWebEnginePage_selectClientCertificate(self.h, clientCertSelection.h)

type QWebEnginePageselectClientCertificateSlot* = proc(clientCertSelection: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection)
proc miqt_exec_callback_cQWebEnginePage_selectClientCertificate(slot: int, clientCertSelection: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_selectClientCertificate".} =
  let nimfunc = cast[ptr QWebEnginePageselectClientCertificateSlot](cast[pointer](slot))
  let slotval1 = gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection(h: clientCertSelection)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_selectClientCertificate_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_selectClientCertificate_release".} =
  let nimfunc = cast[ref QWebEnginePageselectClientCertificateSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectClientCertificate*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageselectClientCertificateSlot) =
  var tmp = new QWebEnginePageselectClientCertificateSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_selectClientCertificate(self.h, cast[int](addr tmp[]))

proc authenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, requestUrl: gen_qurl_types.QUrl, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQWebEnginePage_authenticationRequired(self.h, requestUrl.h, authenticator.h)

type QWebEnginePageauthenticationRequiredSlot* = proc(requestUrl: gen_qurl_types.QUrl, authenticator: gen_qauthenticator_types.QAuthenticator)
proc miqt_exec_callback_cQWebEnginePage_authenticationRequired(slot: int, requestUrl: pointer, authenticator: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_authenticationRequired".} =
  let nimfunc = cast[ptr QWebEnginePageauthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: requestUrl)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEnginePage_authenticationRequired_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_authenticationRequired_release".} =
  let nimfunc = cast[ref QWebEnginePageauthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onauthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageauthenticationRequiredSlot) =
  var tmp = new QWebEnginePageauthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_authenticationRequired(self.h, cast[int](addr tmp[]))

proc proxyAuthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, requestUrl: gen_qurl_types.QUrl, authenticator: gen_qauthenticator_types.QAuthenticator, proxyHost: string): void =
  fcQWebEnginePage_proxyAuthenticationRequired(self.h, requestUrl.h, authenticator.h, struct_miqt_string(data: proxyHost, len: csize_t(len(proxyHost))))

type QWebEnginePageproxyAuthenticationRequiredSlot* = proc(requestUrl: gen_qurl_types.QUrl, authenticator: gen_qauthenticator_types.QAuthenticator, proxyHost: string)
proc miqt_exec_callback_cQWebEnginePage_proxyAuthenticationRequired(slot: int, requestUrl: pointer, authenticator: pointer, proxyHost: struct_miqt_string) {.exportc: "miqt_exec_callback_QWebEnginePage_proxyAuthenticationRequired".} =
  let nimfunc = cast[ptr QWebEnginePageproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: requestUrl)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  let vproxyHost_ms = proxyHost
  let vproxyHostx_ret = string.fromBytes(toOpenArrayByte(vproxyHost_ms.data, 0, int(vproxyHost_ms.len)-1))
  c_free(vproxyHost_ms.data)
  let slotval3 = vproxyHostx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQWebEnginePage_proxyAuthenticationRequired_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_proxyAuthenticationRequired_release".} =
  let nimfunc = cast[ref QWebEnginePageproxyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onproxyAuthenticationRequired*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageproxyAuthenticationRequiredSlot) =
  var tmp = new QWebEnginePageproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc renderProcessTerminated*(self: gen_qwebenginepage_types.QWebEnginePage, terminationStatus: cint, exitCode: cint): void =
  fcQWebEnginePage_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

type QWebEnginePagerenderProcessTerminatedSlot* = proc(terminationStatus: cint, exitCode: cint)
proc miqt_exec_callback_cQWebEnginePage_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_renderProcessTerminated".} =
  let nimfunc = cast[ptr QWebEnginePagerenderProcessTerminatedSlot](cast[pointer](slot))
  let slotval1 = cint(terminationStatus)

  let slotval2 = exitCode

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEnginePage_renderProcessTerminated_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_renderProcessTerminated_release".} =
  let nimfunc = cast[ref QWebEnginePagerenderProcessTerminatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrenderProcessTerminated*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagerenderProcessTerminatedSlot) =
  var tmp = new QWebEnginePagerenderProcessTerminatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]))

proc titleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, title: string): void =
  fcQWebEnginePage_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebEnginePagetitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_cQWebEnginePage_titleChanged(slot: int, title: struct_miqt_string) {.exportc: "miqt_exec_callback_QWebEnginePage_titleChanged".} =
  let nimfunc = cast[ptr QWebEnginePagetitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_titleChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_titleChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagetitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontitleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagetitleChangedSlot) =
  var tmp = new QWebEnginePagetitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_titleChanged(self.h, cast[int](addr tmp[]))

proc urlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_urlChanged(self.h, url.h)

type QWebEnginePageurlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebEnginePage_urlChanged(slot: int, url: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_urlChanged".} =
  let nimfunc = cast[ptr QWebEnginePageurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_urlChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_urlChanged_release".} =
  let nimfunc = cast[ref QWebEnginePageurlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onurlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageurlChangedSlot) =
  var tmp = new QWebEnginePageurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_urlChanged(self.h, cast[int](addr tmp[]))

proc iconUrlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_iconUrlChanged(self.h, url.h)

type QWebEnginePageiconUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebEnginePage_iconUrlChanged(slot: int, url: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_iconUrlChanged".} =
  let nimfunc = cast[ptr QWebEnginePageiconUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_iconUrlChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_iconUrlChanged_release".} =
  let nimfunc = cast[ref QWebEnginePageiconUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconUrlChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageiconUrlChangedSlot) =
  var tmp = new QWebEnginePageiconUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_iconUrlChanged(self.h, cast[int](addr tmp[]))

proc iconChanged*(self: gen_qwebenginepage_types.QWebEnginePage, icon: gen_qicon_types.QIcon): void =
  fcQWebEnginePage_iconChanged(self.h, icon.h)

type QWebEnginePageiconChangedSlot* = proc(icon: gen_qicon_types.QIcon)
proc miqt_exec_callback_cQWebEnginePage_iconChanged(slot: int, icon: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_iconChanged".} =
  let nimfunc = cast[ptr QWebEnginePageiconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: icon)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_iconChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_iconChanged_release".} =
  let nimfunc = cast[ref QWebEnginePageiconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageiconChangedSlot) =
  var tmp = new QWebEnginePageiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_iconChanged(self.h, cast[int](addr tmp[]))

proc scrollPositionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, position: gen_qpoint_types.QPointF): void =
  fcQWebEnginePage_scrollPositionChanged(self.h, position.h)

type QWebEnginePagescrollPositionChangedSlot* = proc(position: gen_qpoint_types.QPointF)
proc miqt_exec_callback_cQWebEnginePage_scrollPositionChanged(slot: int, position: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_scrollPositionChanged".} =
  let nimfunc = cast[ptr QWebEnginePagescrollPositionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: position)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_scrollPositionChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_scrollPositionChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagescrollPositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscrollPositionChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagescrollPositionChangedSlot) =
  var tmp = new QWebEnginePagescrollPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_scrollPositionChanged(self.h, cast[int](addr tmp[]))

proc contentsSizeChanged*(self: gen_qwebenginepage_types.QWebEnginePage, size: gen_qsize_types.QSizeF): void =
  fcQWebEnginePage_contentsSizeChanged(self.h, size.h)

type QWebEnginePagecontentsSizeChangedSlot* = proc(size: gen_qsize_types.QSizeF)
proc miqt_exec_callback_cQWebEnginePage_contentsSizeChanged(slot: int, size: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_contentsSizeChanged".} =
  let nimfunc = cast[ptr QWebEnginePagecontentsSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: size)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_contentsSizeChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_contentsSizeChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagecontentsSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsSizeChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagecontentsSizeChangedSlot) =
  var tmp = new QWebEnginePagecontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))

proc audioMutedChanged*(self: gen_qwebenginepage_types.QWebEnginePage, muted: bool): void =
  fcQWebEnginePage_audioMutedChanged(self.h, muted)

type QWebEnginePageaudioMutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQWebEnginePage_audioMutedChanged(slot: int, muted: bool) {.exportc: "miqt_exec_callback_QWebEnginePage_audioMutedChanged".} =
  let nimfunc = cast[ptr QWebEnginePageaudioMutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_audioMutedChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_audioMutedChanged_release".} =
  let nimfunc = cast[ref QWebEnginePageaudioMutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioMutedChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageaudioMutedChangedSlot) =
  var tmp = new QWebEnginePageaudioMutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_audioMutedChanged(self.h, cast[int](addr tmp[]))

proc recentlyAudibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, recentlyAudible: bool): void =
  fcQWebEnginePage_recentlyAudibleChanged(self.h, recentlyAudible)

type QWebEnginePagerecentlyAudibleChangedSlot* = proc(recentlyAudible: bool)
proc miqt_exec_callback_cQWebEnginePage_recentlyAudibleChanged(slot: int, recentlyAudible: bool) {.exportc: "miqt_exec_callback_QWebEnginePage_recentlyAudibleChanged".} =
  let nimfunc = cast[ptr QWebEnginePagerecentlyAudibleChangedSlot](cast[pointer](slot))
  let slotval1 = recentlyAudible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_recentlyAudibleChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_recentlyAudibleChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagerecentlyAudibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecentlyAudibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagerecentlyAudibleChangedSlot) =
  var tmp = new QWebEnginePagerecentlyAudibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_recentlyAudibleChanged(self.h, cast[int](addr tmp[]))

proc renderProcessPidChanged*(self: gen_qwebenginepage_types.QWebEnginePage, pid: clonglong): void =
  fcQWebEnginePage_renderProcessPidChanged(self.h, pid)

type QWebEnginePagerenderProcessPidChangedSlot* = proc(pid: clonglong)
proc miqt_exec_callback_cQWebEnginePage_renderProcessPidChanged(slot: int, pid: clonglong) {.exportc: "miqt_exec_callback_QWebEnginePage_renderProcessPidChanged".} =
  let nimfunc = cast[ptr QWebEnginePagerenderProcessPidChangedSlot](cast[pointer](slot))
  let slotval1 = pid

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_renderProcessPidChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_renderProcessPidChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagerenderProcessPidChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrenderProcessPidChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagerenderProcessPidChangedSlot) =
  var tmp = new QWebEnginePagerenderProcessPidChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_renderProcessPidChanged(self.h, cast[int](addr tmp[]))

proc pdfPrintingFinished*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, success: bool): void =
  fcQWebEnginePage_pdfPrintingFinished(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), success)

type QWebEnginePagepdfPrintingFinishedSlot* = proc(filePath: string, success: bool)
proc miqt_exec_callback_cQWebEnginePage_pdfPrintingFinished(slot: int, filePath: struct_miqt_string, success: bool) {.exportc: "miqt_exec_callback_QWebEnginePage_pdfPrintingFinished".} =
  let nimfunc = cast[ptr QWebEnginePagepdfPrintingFinishedSlot](cast[pointer](slot))
  let vfilePath_ms = filePath
  let vfilePathx_ret = string.fromBytes(toOpenArrayByte(vfilePath_ms.data, 0, int(vfilePath_ms.len)-1))
  c_free(vfilePath_ms.data)
  let slotval1 = vfilePathx_ret

  let slotval2 = success

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebEnginePage_pdfPrintingFinished_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_pdfPrintingFinished_release".} =
  let nimfunc = cast[ref QWebEnginePagepdfPrintingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpdfPrintingFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagepdfPrintingFinishedSlot) =
  var tmp = new QWebEnginePagepdfPrintingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_pdfPrintingFinished(self.h, cast[int](addr tmp[]))

proc printRequested*(self: gen_qwebenginepage_types.QWebEnginePage, ): void =
  fcQWebEnginePage_printRequested(self.h)

type QWebEnginePageprintRequestedSlot* = proc()
proc miqt_exec_callback_cQWebEnginePage_printRequested(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_printRequested".} =
  let nimfunc = cast[ptr QWebEnginePageprintRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEnginePage_printRequested_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_printRequested_release".} =
  let nimfunc = cast[ref QWebEnginePageprintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintRequested*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePageprintRequestedSlot) =
  var tmp = new QWebEnginePageprintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_printRequested(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, visible: bool): void =
  fcQWebEnginePage_visibleChanged(self.h, visible)

type QWebEnginePagevisibleChangedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQWebEnginePage_visibleChanged(slot: int, visible: bool) {.exportc: "miqt_exec_callback_QWebEnginePage_visibleChanged".} =
  let nimfunc = cast[ptr QWebEnginePagevisibleChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_visibleChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_visibleChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagevisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagevisibleChangedSlot) =
  var tmp = new QWebEnginePagevisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc lifecycleStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, state: cint): void =
  fcQWebEnginePage_lifecycleStateChanged(self.h, cint(state))

type QWebEnginePagelifecycleStateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQWebEnginePage_lifecycleStateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_lifecycleStateChanged".} =
  let nimfunc = cast[ptr QWebEnginePagelifecycleStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_lifecycleStateChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_lifecycleStateChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagelifecycleStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlifecycleStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagelifecycleStateChangedSlot) =
  var tmp = new QWebEnginePagelifecycleStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_lifecycleStateChanged(self.h, cast[int](addr tmp[]))

proc recommendedStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, state: cint): void =
  fcQWebEnginePage_recommendedStateChanged(self.h, cint(state))

type QWebEnginePagerecommendedStateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQWebEnginePage_recommendedStateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QWebEnginePage_recommendedStateChanged".} =
  let nimfunc = cast[ptr QWebEnginePagerecommendedStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_recommendedStateChanged_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_recommendedStateChanged_release".} =
  let nimfunc = cast[ref QWebEnginePagerecommendedStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecommendedStateChanged*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagerecommendedStateChangedSlot) =
  var tmp = new QWebEnginePagerecommendedStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_recommendedStateChanged(self.h, cast[int](addr tmp[]))

proc findTextFinished*(self: gen_qwebenginepage_types.QWebEnginePage, resultVal: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult): void =
  fcQWebEnginePage_findTextFinished(self.h, resultVal.h)

type QWebEnginePagefindTextFinishedSlot* = proc(resultVal: gen_qwebenginefindtextresult_types.QWebEngineFindTextResult)
proc miqt_exec_callback_cQWebEnginePage_findTextFinished(slot: int, resultVal: pointer) {.exportc: "miqt_exec_callback_QWebEnginePage_findTextFinished".} =
  let nimfunc = cast[ptr QWebEnginePagefindTextFinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginefindtextresult_types.QWebEngineFindTextResult(h: resultVal)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebEnginePage_findTextFinished_release(slot: int) {.exportc: "miqt_exec_callback_QWebEnginePage_findTextFinished_release".} =
  let nimfunc = cast[ref QWebEnginePagefindTextFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfindTextFinished*(self: gen_qwebenginepage_types.QWebEnginePage, slot: QWebEnginePagefindTextFinishedSlot) =
  var tmp = new QWebEnginePagefindTextFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEnginePage_connect_findTextFinished(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring): string =
  let v_ms = fcQWebEnginePage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEnginePage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring): string =
  let v_ms = fcQWebEnginePage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginepage_types.QWebEnginePage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEnginePage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText*(self: gen_qwebenginepage_types.QWebEnginePage, subString: string, options: cint): void =
  fcQWebEnginePage_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc download*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl, filename: string): void =
  fcQWebEnginePage_download2(self.h, url.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc setHtml*(self: gen_qwebenginepage_types.QWebEnginePage, html: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qwebenginepage_types.QWebEnginePage, data: seq[byte], mimeType: string): void =
  fcQWebEnginePage_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qwebenginepage_types.QWebEnginePage, data: seq[byte], mimeType: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebEnginePage_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc save*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, format: cint): void =
  fcQWebEnginePage_save2(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), cint(format))

proc printToPdf*(self: gen_qwebenginepage_types.QWebEnginePage, filePath: string, layout: gen_qpagelayout_types.QPageLayout): void =
  fcQWebEnginePage_printToPdf2(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), layout.h)

type QWebEnginePagemetaObjectProc* = proc(self: QWebEnginePage): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebEnginePagemetacastProc* = proc(self: QWebEnginePage, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebEnginePagemetacallProc* = proc(self: QWebEnginePage, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebEnginePagetriggerActionProc* = proc(self: QWebEnginePage, action: cint, checked: bool): void {.raises: [], gcsafe.}
type QWebEnginePageeventProc* = proc(self: QWebEnginePage, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEnginePagecreateWindowProc* = proc(self: QWebEnginePage, typeVal: cint): gen_qwebenginepage_types.QWebEnginePage {.raises: [], gcsafe.}
type QWebEnginePagechooseFilesProc* = proc(self: QWebEnginePage, mode: cint, oldFiles: seq[string], acceptedMimeTypes: seq[string]): seq[string] {.raises: [], gcsafe.}
type QWebEnginePagejavaScriptAlertProc* = proc(self: QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, msg: string): void {.raises: [], gcsafe.}
type QWebEnginePagejavaScriptConfirmProc* = proc(self: QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, msg: string): bool {.raises: [], gcsafe.}
type QWebEnginePagejavaScriptConsoleMessageProc* = proc(self: QWebEnginePage, level: cint, message: string, lineNumber: cint, sourceID: string): void {.raises: [], gcsafe.}
type QWebEnginePagecertificateErrorProc* = proc(self: QWebEnginePage, certificateError: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool {.raises: [], gcsafe.}
type QWebEnginePageacceptNavigationRequestProc* = proc(self: QWebEnginePage, url: gen_qurl_types.QUrl, typeVal: cint, isMainFrame: bool): bool {.raises: [], gcsafe.}
type QWebEnginePageeventFilterProc* = proc(self: QWebEnginePage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEnginePagetimerEventProc* = proc(self: QWebEnginePage, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebEnginePagechildEventProc* = proc(self: QWebEnginePage, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebEnginePagecustomEventProc* = proc(self: QWebEnginePage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEnginePageconnectNotifyProc* = proc(self: QWebEnginePage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEnginePagedisconnectNotifyProc* = proc(self: QWebEnginePage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEnginePageVTable* = object
  vtbl: cQWebEnginePageVTable
  metaObject*: QWebEnginePagemetaObjectProc
  metacast*: QWebEnginePagemetacastProc
  metacall*: QWebEnginePagemetacallProc
  triggerAction*: QWebEnginePagetriggerActionProc
  event*: QWebEnginePageeventProc
  createWindow*: QWebEnginePagecreateWindowProc
  chooseFiles*: QWebEnginePagechooseFilesProc
  javaScriptAlert*: QWebEnginePagejavaScriptAlertProc
  javaScriptConfirm*: QWebEnginePagejavaScriptConfirmProc
  javaScriptConsoleMessage*: QWebEnginePagejavaScriptConsoleMessageProc
  certificateError*: QWebEnginePagecertificateErrorProc
  acceptNavigationRequest*: QWebEnginePageacceptNavigationRequestProc
  eventFilter*: QWebEnginePageeventFilterProc
  timerEvent*: QWebEnginePagetimerEventProc
  childEvent*: QWebEnginePagechildEventProc
  customEvent*: QWebEnginePagecustomEventProc
  connectNotify*: QWebEnginePageconnectNotifyProc
  disconnectNotify*: QWebEnginePagedisconnectNotifyProc
proc QWebEnginePagemetaObject*(self: gen_qwebenginepage_types.QWebEnginePage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEnginePage_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebEnginePage_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebEnginePagemetacast*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cstring): pointer =
  fcQWebEnginePage_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebEnginePage_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEnginePagemetacall*(self: gen_qwebenginepage_types.QWebEnginePage, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEnginePage_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebEnginePage_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEnginePagetriggerAction*(self: gen_qwebenginepage_types.QWebEnginePage, action: cint, checked: bool): void =
  fcQWebEnginePage_virtualbase_triggerAction(self.h, cint(action), checked)

proc miqt_exec_callback_cQWebEnginePage_triggerAction(vtbl: pointer, self: pointer, action: cint, checked: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = cint(action)
  let slotval2 = checked
  vtbl[].triggerAction(self, slotval1, slotval2)

proc QWebEnginePageevent*(self: gen_qwebenginepage_types.QWebEnginePage, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebEnginePage_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWebEnginePage_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEnginePagecreateWindow*(self: gen_qwebenginepage_types.QWebEnginePage, typeVal: cint): gen_qwebenginepage_types.QWebEnginePage =
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_virtualbase_createWindow(self.h, cint(typeVal)))

proc miqt_exec_callback_cQWebEnginePage_createWindow(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = cint(typeVal)
  let virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.h

proc QWebEnginePagechooseFiles*(self: gen_qwebenginepage_types.QWebEnginePage, mode: cint, oldFiles: seq[string], acceptedMimeTypes: seq[string]): seq[string] =
  var oldFiles_CArray = newSeq[struct_miqt_string](len(oldFiles))
  for i in 0..<len(oldFiles):
    oldFiles_CArray[i] = struct_miqt_string(data: oldFiles[i], len: csize_t(len(oldFiles[i])))

  var acceptedMimeTypes_CArray = newSeq[struct_miqt_string](len(acceptedMimeTypes))
  for i in 0..<len(acceptedMimeTypes):
    acceptedMimeTypes_CArray[i] = struct_miqt_string(data: acceptedMimeTypes[i], len: csize_t(len(acceptedMimeTypes[i])))

  var v_ma = fcQWebEnginePage_virtualbase_chooseFiles(self.h, cint(mode), struct_miqt_array(len: csize_t(len(oldFiles)), data: if len(oldFiles) == 0: nil else: addr(oldFiles_CArray[0])), struct_miqt_array(len: csize_t(len(acceptedMimeTypes)), data: if len(acceptedMimeTypes) == 0: nil else: addr(acceptedMimeTypes_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQWebEnginePage_chooseFiles(vtbl: pointer, self: pointer, mode: cint, oldFiles: struct_miqt_array, acceptedMimeTypes: struct_miqt_array): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
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
  let virtualReturn = vtbl[].chooseFiles(self, slotval1, slotval2, slotval3)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QWebEnginePagejavaScriptAlert*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, msg: string): void =
  fcQWebEnginePage_virtualbase_javaScriptAlert(self.h, securityOrigin.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc miqt_exec_callback_cQWebEnginePage_javaScriptAlert(vtbl: pointer, self: pointer, securityOrigin: pointer, msg: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: securityOrigin)
  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret
  vtbl[].javaScriptAlert(self, slotval1, slotval2)

proc QWebEnginePagejavaScriptConfirm*(self: gen_qwebenginepage_types.QWebEnginePage, securityOrigin: gen_qurl_types.QUrl, msg: string): bool =
  fcQWebEnginePage_virtualbase_javaScriptConfirm(self.h, securityOrigin.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc miqt_exec_callback_cQWebEnginePage_javaScriptConfirm(vtbl: pointer, self: pointer, securityOrigin: pointer, msg: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: securityOrigin)
  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret
  let virtualReturn = vtbl[].javaScriptConfirm(self, slotval1, slotval2)
  virtualReturn

proc QWebEnginePagejavaScriptConsoleMessage*(self: gen_qwebenginepage_types.QWebEnginePage, level: cint, message: string, lineNumber: cint, sourceID: string): void =
  fcQWebEnginePage_virtualbase_javaScriptConsoleMessage(self.h, cint(level), struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

proc miqt_exec_callback_cQWebEnginePage_javaScriptConsoleMessage(vtbl: pointer, self: pointer, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
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
  vtbl[].javaScriptConsoleMessage(self, slotval1, slotval2, slotval3, slotval4)

proc QWebEnginePagecertificateError*(self: gen_qwebenginepage_types.QWebEnginePage, certificateError: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool =
  fcQWebEnginePage_virtualbase_certificateError(self.h, certificateError.h)

proc miqt_exec_callback_cQWebEnginePage_certificateError(vtbl: pointer, self: pointer, certificateError: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qwebenginecertificateerror_types.QWebEngineCertificateError(h: certificateError)
  let virtualReturn = vtbl[].certificateError(self, slotval1)
  virtualReturn

proc QWebEnginePageacceptNavigationRequest*(self: gen_qwebenginepage_types.QWebEnginePage, url: gen_qurl_types.QUrl, typeVal: cint, isMainFrame: bool): bool =
  fcQWebEnginePage_virtualbase_acceptNavigationRequest(self.h, url.h, cint(typeVal), isMainFrame)

proc miqt_exec_callback_cQWebEnginePage_acceptNavigationRequest(vtbl: pointer, self: pointer, url: pointer, typeVal: cint, isMainFrame: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  let slotval2 = cint(typeVal)
  let slotval3 = isMainFrame
  let virtualReturn = vtbl[].acceptNavigationRequest(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEnginePageeventFilter*(self: gen_qwebenginepage_types.QWebEnginePage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEnginePage_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebEnginePage_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEnginePagetimerEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEnginePage_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEnginePage_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebEnginePagechildEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEnginePage_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEnginePage_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebEnginePagecustomEvent*(self: gen_qwebenginepage_types.QWebEnginePage, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEnginePage_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEnginePage_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebEnginePageconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEnginePage_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEnginePage_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebEnginePagedisconnectNotify*(self: gen_qwebenginepage_types.QWebEnginePage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEnginePage_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEnginePage_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEnginePageVTable](vtbl)
  let self = QWebEnginePage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qwebenginepage_types.QWebEnginePage,
    vtbl: ref QWebEnginePageVTable = nil): gen_qwebenginepage_types.QWebEnginePage =
  let vtbl = if vtbl == nil: new QWebEnginePageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEnginePageVTable, _: ptr cQWebEnginePage) {.cdecl.} =
    let vtbl = cast[ref QWebEnginePageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEnginePage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEnginePage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEnginePage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebEnginePage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEnginePage_event
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEnginePage_createWindow
  if not isNil(vtbl.chooseFiles):
    vtbl[].vtbl.chooseFiles = miqt_exec_callback_cQWebEnginePage_chooseFiles
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebEnginePage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebEnginePage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebEnginePage_javaScriptConsoleMessage
  if not isNil(vtbl.certificateError):
    vtbl[].vtbl.certificateError = miqt_exec_callback_cQWebEnginePage_certificateError
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebEnginePage_acceptNavigationRequest
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEnginePage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEnginePage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEnginePage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEnginePage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEnginePage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEnginePage_disconnectNotify
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_new(addr(vtbl[]), ))

proc create*(T: type gen_qwebenginepage_types.QWebEnginePage,
    profile: gen_qwebengineprofile_types.QWebEngineProfile,
    vtbl: ref QWebEnginePageVTable = nil): gen_qwebenginepage_types.QWebEnginePage =
  let vtbl = if vtbl == nil: new QWebEnginePageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEnginePageVTable, _: ptr cQWebEnginePage) {.cdecl.} =
    let vtbl = cast[ref QWebEnginePageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEnginePage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEnginePage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEnginePage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebEnginePage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEnginePage_event
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEnginePage_createWindow
  if not isNil(vtbl.chooseFiles):
    vtbl[].vtbl.chooseFiles = miqt_exec_callback_cQWebEnginePage_chooseFiles
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebEnginePage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebEnginePage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebEnginePage_javaScriptConsoleMessage
  if not isNil(vtbl.certificateError):
    vtbl[].vtbl.certificateError = miqt_exec_callback_cQWebEnginePage_certificateError
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebEnginePage_acceptNavigationRequest
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEnginePage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEnginePage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEnginePage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEnginePage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEnginePage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEnginePage_disconnectNotify
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_new2(addr(vtbl[]), profile.h))

proc create*(T: type gen_qwebenginepage_types.QWebEnginePage,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebEnginePageVTable = nil): gen_qwebenginepage_types.QWebEnginePage =
  let vtbl = if vtbl == nil: new QWebEnginePageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEnginePageVTable, _: ptr cQWebEnginePage) {.cdecl.} =
    let vtbl = cast[ref QWebEnginePageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEnginePage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEnginePage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEnginePage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebEnginePage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEnginePage_event
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEnginePage_createWindow
  if not isNil(vtbl.chooseFiles):
    vtbl[].vtbl.chooseFiles = miqt_exec_callback_cQWebEnginePage_chooseFiles
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebEnginePage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebEnginePage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebEnginePage_javaScriptConsoleMessage
  if not isNil(vtbl.certificateError):
    vtbl[].vtbl.certificateError = miqt_exec_callback_cQWebEnginePage_certificateError
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebEnginePage_acceptNavigationRequest
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEnginePage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEnginePage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEnginePage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEnginePage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEnginePage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEnginePage_disconnectNotify
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qwebenginepage_types.QWebEnginePage,
    profile: gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qobject_types.QObject,
    vtbl: ref QWebEnginePageVTable = nil): gen_qwebenginepage_types.QWebEnginePage =
  let vtbl = if vtbl == nil: new QWebEnginePageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebEnginePageVTable, _: ptr cQWebEnginePage) {.cdecl.} =
    let vtbl = cast[ref QWebEnginePageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEnginePage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEnginePage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEnginePage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebEnginePage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEnginePage_event
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebEnginePage_createWindow
  if not isNil(vtbl.chooseFiles):
    vtbl[].vtbl.chooseFiles = miqt_exec_callback_cQWebEnginePage_chooseFiles
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebEnginePage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebEnginePage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebEnginePage_javaScriptConsoleMessage
  if not isNil(vtbl.certificateError):
    vtbl[].vtbl.certificateError = miqt_exec_callback_cQWebEnginePage_certificateError
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebEnginePage_acceptNavigationRequest
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEnginePage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEnginePage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEnginePage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEnginePage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEnginePage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEnginePage_disconnectNotify
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEnginePage_new4(addr(vtbl[]), profile.h, parent.h))

proc staticMetaObject*(_: type gen_qwebenginepage_types.QWebEnginePage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEnginePage_staticMetaObject())
proc delete*(self: gen_qwebenginepage_types.QWebEnginePage) =
  fcQWebEnginePage_delete(self.h)
