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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets")
{.compile("gen_qwebframe.cpp", cflags).}


type QWebFrameValueOwnershipEnum* = distinct cint
template QtOwnership*(_: type QWebFrameValueOwnershipEnum): untyped = 0
template ScriptOwnership*(_: type QWebFrameValueOwnershipEnum): untyped = 1
template AutoOwnership*(_: type QWebFrameValueOwnershipEnum): untyped = 2


type QWebFrameRenderLayerEnum* = distinct cint
template ContentsLayer*(_: type QWebFrameRenderLayerEnum): untyped = 16
template ScrollBarLayer*(_: type QWebFrameRenderLayerEnum): untyped = 32
template PanIconLayer*(_: type QWebFrameRenderLayerEnum): untyped = 64
template AllLayers*(_: type QWebFrameRenderLayerEnum): untyped = 255


import gen_qwebframe_types
export gen_qwebframe_types

import
  gen_qcoreevent_types,
  gen_qicon_types,
  gen_qnetworkrequest_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qprinter_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qwebelement_types,
  gen_qwebpage_types,
  gen_qwebsecurityorigin_types
export
  gen_qcoreevent_types,
  gen_qicon_types,
  gen_qnetworkrequest_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qprinter_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qwebelement_types,
  gen_qwebpage_types,
  gen_qwebsecurityorigin_types

type cQWebHitTestResult*{.exportc: "QWebHitTestResult", incompleteStruct.} = object
type cQWebFrame*{.exportc: "QWebFrame", incompleteStruct.} = object

proc fcQWebHitTestResult_new(): ptr cQWebHitTestResult {.importc: "QWebHitTestResult_new".}
proc fcQWebHitTestResult_new2(other: pointer): ptr cQWebHitTestResult {.importc: "QWebHitTestResult_new2".}
proc fcQWebHitTestResult_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebHitTestResult_operatorAssign".}
proc fcQWebHitTestResult_isNull(self: pointer, ): bool {.importc: "QWebHitTestResult_isNull".}
proc fcQWebHitTestResult_pos(self: pointer, ): pointer {.importc: "QWebHitTestResult_pos".}
proc fcQWebHitTestResult_boundingRect(self: pointer, ): pointer {.importc: "QWebHitTestResult_boundingRect".}
proc fcQWebHitTestResult_enclosingBlockElement(self: pointer, ): pointer {.importc: "QWebHitTestResult_enclosingBlockElement".}
proc fcQWebHitTestResult_title(self: pointer, ): struct_miqt_string {.importc: "QWebHitTestResult_title".}
proc fcQWebHitTestResult_linkText(self: pointer, ): struct_miqt_string {.importc: "QWebHitTestResult_linkText".}
proc fcQWebHitTestResult_linkUrl(self: pointer, ): pointer {.importc: "QWebHitTestResult_linkUrl".}
proc fcQWebHitTestResult_linkTitle(self: pointer, ): pointer {.importc: "QWebHitTestResult_linkTitle".}
proc fcQWebHitTestResult_linkTitleString(self: pointer, ): struct_miqt_string {.importc: "QWebHitTestResult_linkTitleString".}
proc fcQWebHitTestResult_linkTargetFrame(self: pointer, ): pointer {.importc: "QWebHitTestResult_linkTargetFrame".}
proc fcQWebHitTestResult_linkElement(self: pointer, ): pointer {.importc: "QWebHitTestResult_linkElement".}
proc fcQWebHitTestResult_alternateText(self: pointer, ): struct_miqt_string {.importc: "QWebHitTestResult_alternateText".}
proc fcQWebHitTestResult_imageUrl(self: pointer, ): pointer {.importc: "QWebHitTestResult_imageUrl".}
proc fcQWebHitTestResult_pixmap(self: pointer, ): pointer {.importc: "QWebHitTestResult_pixmap".}
proc fcQWebHitTestResult_mediaUrl(self: pointer, ): pointer {.importc: "QWebHitTestResult_mediaUrl".}
proc fcQWebHitTestResult_isContentEditable(self: pointer, ): bool {.importc: "QWebHitTestResult_isContentEditable".}
proc fcQWebHitTestResult_isContentSelected(self: pointer, ): bool {.importc: "QWebHitTestResult_isContentSelected".}
proc fcQWebHitTestResult_element(self: pointer, ): pointer {.importc: "QWebHitTestResult_element".}
proc fcQWebHitTestResult_frame(self: pointer, ): pointer {.importc: "QWebHitTestResult_frame".}
proc fcQWebHitTestResult_delete(self: pointer) {.importc: "QWebHitTestResult_delete".}
proc fcQWebFrame_metaObject(self: pointer, ): pointer {.importc: "QWebFrame_metaObject".}
proc fcQWebFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebFrame_metacast".}
proc fcQWebFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebFrame_metacall".}
proc fcQWebFrame_tr(s: cstring): struct_miqt_string {.importc: "QWebFrame_tr".}
proc fcQWebFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebFrame_trUtf8".}
proc fcQWebFrame_page(self: pointer, ): pointer {.importc: "QWebFrame_page".}
proc fcQWebFrame_load(self: pointer, url: pointer): void {.importc: "QWebFrame_load".}
proc fcQWebFrame_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebFrame_loadWithRequest".}
proc fcQWebFrame_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebFrame_setHtml".}
proc fcQWebFrame_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebFrame_setContent".}
proc fcQWebFrame_addToJavaScriptWindowObject(self: pointer, name: struct_miqt_string, objectVal: pointer): void {.importc: "QWebFrame_addToJavaScriptWindowObject".}
proc fcQWebFrame_toHtml(self: pointer, ): struct_miqt_string {.importc: "QWebFrame_toHtml".}
proc fcQWebFrame_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QWebFrame_toPlainText".}
proc fcQWebFrame_title(self: pointer, ): struct_miqt_string {.importc: "QWebFrame_title".}
proc fcQWebFrame_setUrl(self: pointer, url: pointer): void {.importc: "QWebFrame_setUrl".}
proc fcQWebFrame_url(self: pointer, ): pointer {.importc: "QWebFrame_url".}
proc fcQWebFrame_requestedUrl(self: pointer, ): pointer {.importc: "QWebFrame_requestedUrl".}
proc fcQWebFrame_baseUrl(self: pointer, ): pointer {.importc: "QWebFrame_baseUrl".}
proc fcQWebFrame_icon(self: pointer, ): pointer {.importc: "QWebFrame_icon".}
proc fcQWebFrame_frameName(self: pointer, ): struct_miqt_string {.importc: "QWebFrame_frameName".}
proc fcQWebFrame_parentFrame(self: pointer, ): pointer {.importc: "QWebFrame_parentFrame".}
proc fcQWebFrame_childFrames(self: pointer, ): struct_miqt_array {.importc: "QWebFrame_childFrames".}
proc fcQWebFrame_scrollBarPolicy(self: pointer, orientation: cint): cint {.importc: "QWebFrame_scrollBarPolicy".}
proc fcQWebFrame_setScrollBarPolicy(self: pointer, orientation: cint, policy: cint): void {.importc: "QWebFrame_setScrollBarPolicy".}
proc fcQWebFrame_setScrollBarValue(self: pointer, orientation: cint, value: cint): void {.importc: "QWebFrame_setScrollBarValue".}
proc fcQWebFrame_scrollBarValue(self: pointer, orientation: cint): cint {.importc: "QWebFrame_scrollBarValue".}
proc fcQWebFrame_scrollBarMinimum(self: pointer, orientation: cint): cint {.importc: "QWebFrame_scrollBarMinimum".}
proc fcQWebFrame_scrollBarMaximum(self: pointer, orientation: cint): cint {.importc: "QWebFrame_scrollBarMaximum".}
proc fcQWebFrame_scrollBarGeometry(self: pointer, orientation: cint): pointer {.importc: "QWebFrame_scrollBarGeometry".}
proc fcQWebFrame_scroll(self: pointer, param1: cint, param2: cint): void {.importc: "QWebFrame_scroll".}
proc fcQWebFrame_scrollPosition(self: pointer, ): pointer {.importc: "QWebFrame_scrollPosition".}
proc fcQWebFrame_setScrollPosition(self: pointer, pos: pointer): void {.importc: "QWebFrame_setScrollPosition".}
proc fcQWebFrame_scrollToAnchor(self: pointer, anchor: struct_miqt_string): void {.importc: "QWebFrame_scrollToAnchor".}
proc fcQWebFrame_render(self: pointer, param1: pointer): void {.importc: "QWebFrame_render".}
proc fcQWebFrame_render2(self: pointer, param1: pointer, layer: cint): void {.importc: "QWebFrame_render2".}
proc fcQWebFrame_setTextSizeMultiplier(self: pointer, factor: float64): void {.importc: "QWebFrame_setTextSizeMultiplier".}
proc fcQWebFrame_textSizeMultiplier(self: pointer, ): float64 {.importc: "QWebFrame_textSizeMultiplier".}
proc fcQWebFrame_zoomFactor(self: pointer, ): float64 {.importc: "QWebFrame_zoomFactor".}
proc fcQWebFrame_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebFrame_setZoomFactor".}
proc fcQWebFrame_hasFocus(self: pointer, ): bool {.importc: "QWebFrame_hasFocus".}
proc fcQWebFrame_setFocus(self: pointer, ): void {.importc: "QWebFrame_setFocus".}
proc fcQWebFrame_pos(self: pointer, ): pointer {.importc: "QWebFrame_pos".}
proc fcQWebFrame_geometry(self: pointer, ): pointer {.importc: "QWebFrame_geometry".}
proc fcQWebFrame_contentsSize(self: pointer, ): pointer {.importc: "QWebFrame_contentsSize".}
proc fcQWebFrame_documentElement(self: pointer, ): pointer {.importc: "QWebFrame_documentElement".}
proc fcQWebFrame_ownerElement(self: pointer, ): pointer {.importc: "QWebFrame_ownerElement".}
proc fcQWebFrame_findAllElements(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebFrame_findAllElements".}
proc fcQWebFrame_findFirstElement(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebFrame_findFirstElement".}
proc fcQWebFrame_hitTestContent(self: pointer, pos: pointer): pointer {.importc: "QWebFrame_hitTestContent".}
proc fcQWebFrame_event(self: pointer, param1: pointer): bool {.importc: "QWebFrame_event".}
proc fcQWebFrame_securityOrigin(self: pointer, ): pointer {.importc: "QWebFrame_securityOrigin".}
proc fcQWebFrame_evaluateJavaScript(self: pointer, scriptSource: struct_miqt_string): pointer {.importc: "QWebFrame_evaluateJavaScript".}
proc fcQWebFrame_print(self: pointer, printer: pointer): void {.importc: "QWebFrame_print".}
proc fcQWebFrame_javaScriptWindowObjectCleared(self: pointer, ): void {.importc: "QWebFrame_javaScriptWindowObjectCleared".}
proc fQWebFrame_connect_javaScriptWindowObjectCleared(self: pointer, slot: int) {.importc: "QWebFrame_connect_javaScriptWindowObjectCleared".}
proc fcQWebFrame_provisionalLoad(self: pointer, ): void {.importc: "QWebFrame_provisionalLoad".}
proc fQWebFrame_connect_provisionalLoad(self: pointer, slot: int) {.importc: "QWebFrame_connect_provisionalLoad".}
proc fcQWebFrame_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebFrame_titleChanged".}
proc fQWebFrame_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebFrame_connect_titleChanged".}
proc fcQWebFrame_urlChanged(self: pointer, url: pointer): void {.importc: "QWebFrame_urlChanged".}
proc fQWebFrame_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebFrame_connect_urlChanged".}
proc fcQWebFrame_initialLayoutCompleted(self: pointer, ): void {.importc: "QWebFrame_initialLayoutCompleted".}
proc fQWebFrame_connect_initialLayoutCompleted(self: pointer, slot: int) {.importc: "QWebFrame_connect_initialLayoutCompleted".}
proc fcQWebFrame_iconChanged(self: pointer, ): void {.importc: "QWebFrame_iconChanged".}
proc fQWebFrame_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebFrame_connect_iconChanged".}
proc fcQWebFrame_contentsSizeChanged(self: pointer, size: pointer): void {.importc: "QWebFrame_contentsSizeChanged".}
proc fQWebFrame_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QWebFrame_connect_contentsSizeChanged".}
proc fcQWebFrame_loadStarted(self: pointer, ): void {.importc: "QWebFrame_loadStarted".}
proc fQWebFrame_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebFrame_connect_loadStarted".}
proc fcQWebFrame_loadFinished(self: pointer, ok: bool): void {.importc: "QWebFrame_loadFinished".}
proc fQWebFrame_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebFrame_connect_loadFinished".}
proc fcQWebFrame_pageChanged(self: pointer, ): void {.importc: "QWebFrame_pageChanged".}
proc fQWebFrame_connect_pageChanged(self: pointer, slot: int) {.importc: "QWebFrame_connect_pageChanged".}
proc fcQWebFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebFrame_tr2".}
proc fcQWebFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebFrame_tr3".}
proc fcQWebFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebFrame_trUtf82".}
proc fcQWebFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebFrame_trUtf83".}
proc fcQWebFrame_load2(self: pointer, request: pointer, operation: cint): void {.importc: "QWebFrame_load2".}
proc fcQWebFrame_load3(self: pointer, request: pointer, operation: cint, body: struct_miqt_string): void {.importc: "QWebFrame_load3".}
proc fcQWebFrame_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebFrame_setHtml2".}
proc fcQWebFrame_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebFrame_setContent2".}
proc fcQWebFrame_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebFrame_setContent3".}
proc fcQWebFrame_addToJavaScriptWindowObject3(self: pointer, name: struct_miqt_string, objectVal: pointer, ownership: cint): void {.importc: "QWebFrame_addToJavaScriptWindowObject3".}
proc fcQWebFrame_render22(self: pointer, param1: pointer, clip: pointer): void {.importc: "QWebFrame_render22".}
proc fcQWebFrame_render3(self: pointer, param1: pointer, layer: cint, clip: pointer): void {.importc: "QWebFrame_render3".}


func init*(T: type gen_qwebframe_types.QWebHitTestResult, h: ptr cQWebHitTestResult): gen_qwebframe_types.QWebHitTestResult =
  T(h: h)
proc create*(T: type gen_qwebframe_types.QWebHitTestResult, ): gen_qwebframe_types.QWebHitTestResult =
  gen_qwebframe_types.QWebHitTestResult.init(fcQWebHitTestResult_new())

proc create*(T: type gen_qwebframe_types.QWebHitTestResult, other: gen_qwebframe_types.QWebHitTestResult): gen_qwebframe_types.QWebHitTestResult =
  gen_qwebframe_types.QWebHitTestResult.init(fcQWebHitTestResult_new2(other.h))

proc operatorAssign*(self: gen_qwebframe_types.QWebHitTestResult, other: gen_qwebframe_types.QWebHitTestResult): void =
  fcQWebHitTestResult_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qwebframe_types.QWebHitTestResult, ): bool =
  fcQWebHitTestResult_isNull(self.h)

proc pos*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWebHitTestResult_pos(self.h))

proc boundingRect*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWebHitTestResult_boundingRect(self.h))

proc enclosingBlockElement*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebHitTestResult_enclosingBlockElement(self.h))

proc title*(self: gen_qwebframe_types.QWebHitTestResult, ): string =
  let v_ms = fcQWebHitTestResult_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkText*(self: gen_qwebframe_types.QWebHitTestResult, ): string =
  let v_ms = fcQWebHitTestResult_linkText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkUrl*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHitTestResult_linkUrl(self.h))

proc linkTitle*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHitTestResult_linkTitle(self.h))

proc linkTitleString*(self: gen_qwebframe_types.QWebHitTestResult, ): string =
  let v_ms = fcQWebHitTestResult_linkTitleString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkTargetFrame*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebHitTestResult_linkTargetFrame(self.h))

proc linkElement*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebHitTestResult_linkElement(self.h))

proc alternateText*(self: gen_qwebframe_types.QWebHitTestResult, ): string =
  let v_ms = fcQWebHitTestResult_alternateText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageUrl*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHitTestResult_imageUrl(self.h))

proc pixmap*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWebHitTestResult_pixmap(self.h))

proc mediaUrl*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebHitTestResult_mediaUrl(self.h))

proc isContentEditable*(self: gen_qwebframe_types.QWebHitTestResult, ): bool =
  fcQWebHitTestResult_isContentEditable(self.h)

proc isContentSelected*(self: gen_qwebframe_types.QWebHitTestResult, ): bool =
  fcQWebHitTestResult_isContentSelected(self.h)

proc element*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebHitTestResult_element(self.h))

proc frame*(self: gen_qwebframe_types.QWebHitTestResult, ): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebHitTestResult_frame(self.h))

proc delete*(self: gen_qwebframe_types.QWebHitTestResult) =
  fcQWebHitTestResult_delete(self.h)

func init*(T: type gen_qwebframe_types.QWebFrame, h: ptr cQWebFrame): gen_qwebframe_types.QWebFrame =
  T(h: h)
proc metaObject*(self: gen_qwebframe_types.QWebFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebFrame_metaObject(self.h))

proc metacast*(self: gen_qwebframe_types.QWebFrame, param1: cstring): pointer =
  fcQWebFrame_metacast(self.h, param1)

proc metacall*(self: gen_qwebframe_types.QWebFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebframe_types.QWebFrame, s: cstring): string =
  let v_ms = fcQWebFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebframe_types.QWebFrame, s: cstring): string =
  let v_ms = fcQWebFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: gen_qwebframe_types.QWebFrame, ): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebFrame_page(self.h))

proc load*(self: gen_qwebframe_types.QWebFrame, url: gen_qurl_types.QUrl): void =
  fcQWebFrame_load(self.h, url.h)

proc load*(self: gen_qwebframe_types.QWebFrame, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQWebFrame_loadWithRequest(self.h, request.h)

proc setHtml*(self: gen_qwebframe_types.QWebFrame, html: string): void =
  fcQWebFrame_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: gen_qwebframe_types.QWebFrame, data: seq[byte]): void =
  fcQWebFrame_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addToJavaScriptWindowObject*(self: gen_qwebframe_types.QWebFrame, name: string, objectVal: gen_qobject_types.QObject): void =
  fcQWebFrame_addToJavaScriptWindowObject(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), objectVal.h)

proc toHtml*(self: gen_qwebframe_types.QWebFrame, ): string =
  let v_ms = fcQWebFrame_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toPlainText*(self: gen_qwebframe_types.QWebFrame, ): string =
  let v_ms = fcQWebFrame_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc title*(self: gen_qwebframe_types.QWebFrame, ): string =
  let v_ms = fcQWebFrame_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: gen_qwebframe_types.QWebFrame, url: gen_qurl_types.QUrl): void =
  fcQWebFrame_setUrl(self.h, url.h)

proc url*(self: gen_qwebframe_types.QWebFrame, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebFrame_url(self.h))

proc requestedUrl*(self: gen_qwebframe_types.QWebFrame, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebFrame_requestedUrl(self.h))

proc baseUrl*(self: gen_qwebframe_types.QWebFrame, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebFrame_baseUrl(self.h))

proc icon*(self: gen_qwebframe_types.QWebFrame, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebFrame_icon(self.h))

proc frameName*(self: gen_qwebframe_types.QWebFrame, ): string =
  let v_ms = fcQWebFrame_frameName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parentFrame*(self: gen_qwebframe_types.QWebFrame, ): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebFrame_parentFrame(self.h))

proc childFrames*(self: gen_qwebframe_types.QWebFrame, ): seq[gen_qwebframe_types.QWebFrame] =
  var v_ma = fcQWebFrame_childFrames(self.h)
  var vx_ret = newSeq[gen_qwebframe_types.QWebFrame](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebframe_types.QWebFrame(h: v_outCast[i])
  vx_ret

proc scrollBarPolicy*(self: gen_qwebframe_types.QWebFrame, orientation: cint): cint =
  cint(fcQWebFrame_scrollBarPolicy(self.h, cint(orientation)))

proc setScrollBarPolicy*(self: gen_qwebframe_types.QWebFrame, orientation: cint, policy: cint): void =
  fcQWebFrame_setScrollBarPolicy(self.h, cint(orientation), cint(policy))

proc setScrollBarValue*(self: gen_qwebframe_types.QWebFrame, orientation: cint, value: cint): void =
  fcQWebFrame_setScrollBarValue(self.h, cint(orientation), value)

proc scrollBarValue*(self: gen_qwebframe_types.QWebFrame, orientation: cint): cint =
  fcQWebFrame_scrollBarValue(self.h, cint(orientation))

proc scrollBarMinimum*(self: gen_qwebframe_types.QWebFrame, orientation: cint): cint =
  fcQWebFrame_scrollBarMinimum(self.h, cint(orientation))

proc scrollBarMaximum*(self: gen_qwebframe_types.QWebFrame, orientation: cint): cint =
  fcQWebFrame_scrollBarMaximum(self.h, cint(orientation))

proc scrollBarGeometry*(self: gen_qwebframe_types.QWebFrame, orientation: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWebFrame_scrollBarGeometry(self.h, cint(orientation)))

proc scroll*(self: gen_qwebframe_types.QWebFrame, param1: cint, param2: cint): void =
  fcQWebFrame_scroll(self.h, param1, param2)

proc scrollPosition*(self: gen_qwebframe_types.QWebFrame, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWebFrame_scrollPosition(self.h))

proc setScrollPosition*(self: gen_qwebframe_types.QWebFrame, pos: gen_qpoint_types.QPoint): void =
  fcQWebFrame_setScrollPosition(self.h, pos.h)

proc scrollToAnchor*(self: gen_qwebframe_types.QWebFrame, anchor: string): void =
  fcQWebFrame_scrollToAnchor(self.h, struct_miqt_string(data: anchor, len: csize_t(len(anchor))))

proc render*(self: gen_qwebframe_types.QWebFrame, param1: gen_qpainter_types.QPainter): void =
  fcQWebFrame_render(self.h, param1.h)

proc render*(self: gen_qwebframe_types.QWebFrame, param1: gen_qpainter_types.QPainter, layer: cint): void =
  fcQWebFrame_render2(self.h, param1.h, cint(layer))

proc setTextSizeMultiplier*(self: gen_qwebframe_types.QWebFrame, factor: float64): void =
  fcQWebFrame_setTextSizeMultiplier(self.h, factor)

proc textSizeMultiplier*(self: gen_qwebframe_types.QWebFrame, ): float64 =
  fcQWebFrame_textSizeMultiplier(self.h)

proc zoomFactor*(self: gen_qwebframe_types.QWebFrame, ): float64 =
  fcQWebFrame_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qwebframe_types.QWebFrame, factor: float64): void =
  fcQWebFrame_setZoomFactor(self.h, factor)

proc hasFocus*(self: gen_qwebframe_types.QWebFrame, ): bool =
  fcQWebFrame_hasFocus(self.h)

proc setFocus*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_setFocus(self.h)

proc pos*(self: gen_qwebframe_types.QWebFrame, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWebFrame_pos(self.h))

proc geometry*(self: gen_qwebframe_types.QWebFrame, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWebFrame_geometry(self.h))

proc contentsSize*(self: gen_qwebframe_types.QWebFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebFrame_contentsSize(self.h))

proc documentElement*(self: gen_qwebframe_types.QWebFrame, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebFrame_documentElement(self.h))

proc ownerElement*(self: gen_qwebframe_types.QWebFrame, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebFrame_ownerElement(self.h))

proc findAllElements*(self: gen_qwebframe_types.QWebFrame, selectorQuery: string): gen_qwebelement_types.QWebElementCollection =
  gen_qwebelement_types.QWebElementCollection(h: fcQWebFrame_findAllElements(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))))

proc findFirstElement*(self: gen_qwebframe_types.QWebFrame, selectorQuery: string): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebFrame_findFirstElement(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))))

proc hitTestContent*(self: gen_qwebframe_types.QWebFrame, pos: gen_qpoint_types.QPoint): gen_qwebframe_types.QWebHitTestResult =
  gen_qwebframe_types.QWebHitTestResult(h: fcQWebFrame_hitTestContent(self.h, pos.h))

proc event*(self: gen_qwebframe_types.QWebFrame, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebFrame_event(self.h, param1.h)

proc securityOrigin*(self: gen_qwebframe_types.QWebFrame, ): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: fcQWebFrame_securityOrigin(self.h))

proc evaluateJavaScript*(self: gen_qwebframe_types.QWebFrame, scriptSource: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebFrame_evaluateJavaScript(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource)))))

proc print*(self: gen_qwebframe_types.QWebFrame, printer: gen_qprinter_types.QPrinter): void =
  fcQWebFrame_print(self.h, printer.h)

proc javaScriptWindowObjectCleared*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_javaScriptWindowObjectCleared(self.h)

type QWebFramejavaScriptWindowObjectClearedSlot* = proc()
proc miqt_exec_callback_QWebFrame_javaScriptWindowObjectCleared(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFramejavaScriptWindowObjectClearedSlot](cast[pointer](slot))
  nimfunc[]()

proc onjavaScriptWindowObjectCleared*(self: gen_qwebframe_types.QWebFrame, slot: QWebFramejavaScriptWindowObjectClearedSlot) =
  var tmp = new QWebFramejavaScriptWindowObjectClearedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_javaScriptWindowObjectCleared(self.h, cast[int](addr tmp[]))

proc provisionalLoad*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_provisionalLoad(self.h)

type QWebFrameprovisionalLoadSlot* = proc()
proc miqt_exec_callback_QWebFrame_provisionalLoad(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameprovisionalLoadSlot](cast[pointer](slot))
  nimfunc[]()

proc onprovisionalLoad*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameprovisionalLoadSlot) =
  var tmp = new QWebFrameprovisionalLoadSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_provisionalLoad(self.h, cast[int](addr tmp[]))

proc titleChanged*(self: gen_qwebframe_types.QWebFrame, title: string): void =
  fcQWebFrame_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWebFrametitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_QWebFrame_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWebFrametitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc ontitleChanged*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrametitleChangedSlot) =
  var tmp = new QWebFrametitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_titleChanged(self.h, cast[int](addr tmp[]))

proc urlChanged*(self: gen_qwebframe_types.QWebFrame, url: gen_qurl_types.QUrl): void =
  fcQWebFrame_urlChanged(self.h, url.h)

type QWebFrameurlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QWebFrame_urlChanged(slot: int, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameurlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc onurlChanged*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameurlChangedSlot) =
  var tmp = new QWebFrameurlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_urlChanged(self.h, cast[int](addr tmp[]))

proc initialLayoutCompleted*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_initialLayoutCompleted(self.h)

type QWebFrameinitialLayoutCompletedSlot* = proc()
proc miqt_exec_callback_QWebFrame_initialLayoutCompleted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameinitialLayoutCompletedSlot](cast[pointer](slot))
  nimfunc[]()

proc oninitialLayoutCompleted*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameinitialLayoutCompletedSlot) =
  var tmp = new QWebFrameinitialLayoutCompletedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_initialLayoutCompleted(self.h, cast[int](addr tmp[]))

proc iconChanged*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_iconChanged(self.h)

type QWebFrameiconChangedSlot* = proc()
proc miqt_exec_callback_QWebFrame_iconChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameiconChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oniconChanged*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameiconChangedSlot) =
  var tmp = new QWebFrameiconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_iconChanged(self.h, cast[int](addr tmp[]))

proc contentsSizeChanged*(self: gen_qwebframe_types.QWebFrame, size: gen_qsize_types.QSize): void =
  fcQWebFrame_contentsSizeChanged(self.h, size.h)

type QWebFramecontentsSizeChangedSlot* = proc(size: gen_qsize_types.QSize)
proc miqt_exec_callback_QWebFrame_contentsSizeChanged(slot: int, size: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebFramecontentsSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  nimfunc[](slotval1)

proc oncontentsSizeChanged*(self: gen_qwebframe_types.QWebFrame, slot: QWebFramecontentsSizeChangedSlot) =
  var tmp = new QWebFramecontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))

proc loadStarted*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_loadStarted(self.h)

type QWebFrameloadStartedSlot* = proc()
proc miqt_exec_callback_QWebFrame_loadStarted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloadStarted*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameloadStartedSlot) =
  var tmp = new QWebFrameloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_loadStarted(self.h, cast[int](addr tmp[]))

proc loadFinished*(self: gen_qwebframe_types.QWebFrame, ok: bool): void =
  fcQWebFrame_loadFinished(self.h, ok)

type QWebFrameloadFinishedSlot* = proc(ok: bool)
proc miqt_exec_callback_QWebFrame_loadFinished(slot: int, ok: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebFrameloadFinishedSlot](cast[pointer](slot))
  let slotval1 = ok

  nimfunc[](slotval1)

proc onloadFinished*(self: gen_qwebframe_types.QWebFrame, slot: QWebFrameloadFinishedSlot) =
  var tmp = new QWebFrameloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_loadFinished(self.h, cast[int](addr tmp[]))

proc pageChanged*(self: gen_qwebframe_types.QWebFrame, ): void =
  fcQWebFrame_pageChanged(self.h)

type QWebFramepageChangedSlot* = proc()
proc miqt_exec_callback_QWebFrame_pageChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebFramepageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpageChanged*(self: gen_qwebframe_types.QWebFrame, slot: QWebFramepageChangedSlot) =
  var tmp = new QWebFramepageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebFrame_connect_pageChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebframe_types.QWebFrame, s: cstring, c: cstring): string =
  let v_ms = fcQWebFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebframe_types.QWebFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebframe_types.QWebFrame, s: cstring, c: cstring): string =
  let v_ms = fcQWebFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebframe_types.QWebFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qwebframe_types.QWebFrame, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint): void =
  fcQWebFrame_load2(self.h, request.h, cint(operation))

proc load*(self: gen_qwebframe_types.QWebFrame, request: gen_qnetworkrequest_types.QNetworkRequest, operation: cint, body: seq[byte]): void =
  fcQWebFrame_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml*(self: gen_qwebframe_types.QWebFrame, html: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebFrame_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent*(self: gen_qwebframe_types.QWebFrame, data: seq[byte], mimeType: string): void =
  fcQWebFrame_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent*(self: gen_qwebframe_types.QWebFrame, data: seq[byte], mimeType: string, baseUrl: gen_qurl_types.QUrl): void =
  fcQWebFrame_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc addToJavaScriptWindowObject*(self: gen_qwebframe_types.QWebFrame, name: string, objectVal: gen_qobject_types.QObject, ownership: cint): void =
  fcQWebFrame_addToJavaScriptWindowObject3(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), objectVal.h, cint(ownership))

proc render*(self: gen_qwebframe_types.QWebFrame, param1: gen_qpainter_types.QPainter, clip: gen_qregion_types.QRegion): void =
  fcQWebFrame_render22(self.h, param1.h, clip.h)

proc render*(self: gen_qwebframe_types.QWebFrame, param1: gen_qpainter_types.QPainter, layer: cint, clip: gen_qregion_types.QRegion): void =
  fcQWebFrame_render3(self.h, param1.h, cint(layer), clip.h)

