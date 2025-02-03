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
{.compile("gen_qwebview.cpp", cflags).}


import gen_qwebview_types
export gen_qwebview_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwebhistory,
  gen_qwebpage,
  gen_qwebsettings,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwebhistory,
  gen_qwebpage,
  gen_qwebsettings,
  gen_qwidget

type cQWebView*{.exportc: "QWebView", incompleteStruct.} = object

proc fcQWebView_new(parent: pointer): ptr cQWebView {.importc: "QWebView_new".}
proc fcQWebView_new2(): ptr cQWebView {.importc: "QWebView_new2".}
proc fcQWebView_metaObject(self: pointer, ): pointer {.importc: "QWebView_metaObject".}
proc fcQWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebView_metacast".}
proc fcQWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebView_metacall".}
proc fcQWebView_tr(s: cstring): struct_miqt_string {.importc: "QWebView_tr".}
proc fcQWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebView_trUtf8".}
proc fcQWebView_page(self: pointer, ): pointer {.importc: "QWebView_page".}
proc fcQWebView_setPage(self: pointer, page: pointer): void {.importc: "QWebView_setPage".}
proc fcQWebView_load(self: pointer, url: pointer): void {.importc: "QWebView_load".}
proc fcQWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebView_loadWithRequest".}
proc fcQWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebView_setHtml".}
proc fcQWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebView_setContent".}
proc fcQWebView_history(self: pointer, ): pointer {.importc: "QWebView_history".}
proc fcQWebView_settings(self: pointer, ): pointer {.importc: "QWebView_settings".}
proc fcQWebView_title(self: pointer, ): struct_miqt_string {.importc: "QWebView_title".}
proc fcQWebView_setUrl(self: pointer, url: pointer): void {.importc: "QWebView_setUrl".}
proc fcQWebView_url(self: pointer, ): pointer {.importc: "QWebView_url".}
proc fcQWebView_icon(self: pointer, ): pointer {.importc: "QWebView_icon".}
proc fcQWebView_hasSelection(self: pointer, ): bool {.importc: "QWebView_hasSelection".}
proc fcQWebView_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebView_selectedText".}
proc fcQWebView_selectedHtml(self: pointer, ): struct_miqt_string {.importc: "QWebView_selectedHtml".}
proc fcQWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebView_pageAction".}
proc fcQWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebView_triggerPageAction".}
proc fcQWebView_isModified(self: pointer, ): bool {.importc: "QWebView_isModified".}
proc fcQWebView_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebView_inputMethodQuery".}
proc fcQWebView_sizeHint(self: pointer, ): pointer {.importc: "QWebView_sizeHint".}
proc fcQWebView_zoomFactor(self: pointer, ): float64 {.importc: "QWebView_zoomFactor".}
proc fcQWebView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebView_setZoomFactor".}
proc fcQWebView_setTextSizeMultiplier(self: pointer, factor: float64): void {.importc: "QWebView_setTextSizeMultiplier".}
proc fcQWebView_textSizeMultiplier(self: pointer, ): float64 {.importc: "QWebView_textSizeMultiplier".}
proc fcQWebView_renderHints(self: pointer, ): cint {.importc: "QWebView_renderHints".}
proc fcQWebView_setRenderHints(self: pointer, hints: cint): void {.importc: "QWebView_setRenderHints".}
proc fcQWebView_setRenderHint(self: pointer, hint: cint): void {.importc: "QWebView_setRenderHint".}
proc fcQWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QWebView_findText".}
proc fcQWebView_event(self: pointer, param1: pointer): bool {.importc: "QWebView_event".}
proc fcQWebView_stop(self: pointer, ): void {.importc: "QWebView_stop".}
proc fcQWebView_back(self: pointer, ): void {.importc: "QWebView_back".}
proc fcQWebView_forward(self: pointer, ): void {.importc: "QWebView_forward".}
proc fcQWebView_reload(self: pointer, ): void {.importc: "QWebView_reload".}
proc fcQWebView_print(self: pointer, param1: pointer): void {.importc: "QWebView_print".}
proc fcQWebView_loadStarted(self: pointer, ): void {.importc: "QWebView_loadStarted".}
proc fQWebView_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebView_connect_loadStarted".}
proc fcQWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebView_loadProgress".}
proc fQWebView_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebView_connect_loadProgress".}
proc fcQWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebView_loadFinished".}
proc fQWebView_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebView_connect_loadFinished".}
proc fcQWebView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebView_titleChanged".}
proc fQWebView_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebView_connect_titleChanged".}
proc fcQWebView_statusBarMessage(self: pointer, text: struct_miqt_string): void {.importc: "QWebView_statusBarMessage".}
proc fQWebView_connect_statusBarMessage(self: pointer, slot: int) {.importc: "QWebView_connect_statusBarMessage".}
proc fcQWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QWebView_linkClicked".}
proc fQWebView_connect_linkClicked(self: pointer, slot: int) {.importc: "QWebView_connect_linkClicked".}
proc fcQWebView_selectionChanged(self: pointer, ): void {.importc: "QWebView_selectionChanged".}
proc fQWebView_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebView_connect_selectionChanged".}
proc fcQWebView_iconChanged(self: pointer, ): void {.importc: "QWebView_iconChanged".}
proc fQWebView_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebView_connect_iconChanged".}
proc fcQWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebView_urlChanged".}
proc fQWebView_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebView_connect_urlChanged".}
proc fcQWebView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebView_tr2".}
proc fcQWebView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebView_tr3".}
proc fcQWebView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebView_trUtf82".}
proc fcQWebView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebView_trUtf83".}
proc fcQWebView_load2(self: pointer, request: pointer, operation: cint): void {.importc: "QWebView_load2".}
proc fcQWebView_load3(self: pointer, request: pointer, operation: cint, body: struct_miqt_string): void {.importc: "QWebView_load3".}
proc fcQWebView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebView_setHtml2".}
proc fcQWebView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebView_setContent2".}
proc fcQWebView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebView_setContent3".}
proc fcQWebView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QWebView_triggerPageAction2".}
proc fcQWebView_setRenderHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QWebView_setRenderHint2".}
proc fcQWebView_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QWebView_findText2".}
proc fQWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebView_virtualbase_metacall".}
proc fcQWebView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebView_override_virtual_metacall".}
proc fQWebView_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QWebView_virtualbase_inputMethodQuery".}
proc fcQWebView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebView_override_virtual_inputMethodQuery".}
proc fQWebView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebView_virtualbase_sizeHint".}
proc fcQWebView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebView_override_virtual_sizeHint".}
proc fQWebView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebView_virtualbase_event".}
proc fcQWebView_override_virtual_event(self: pointer, slot: int) {.importc: "QWebView_override_virtual_event".}
proc fQWebView_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_resizeEvent".}
proc fcQWebView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_resizeEvent".}
proc fQWebView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_paintEvent".}
proc fcQWebView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_paintEvent".}
proc fQWebView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebView_virtualbase_createWindow".}
proc fcQWebView_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebView_override_virtual_createWindow".}
proc fQWebView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_changeEvent".}
proc fcQWebView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_changeEvent".}
proc fQWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseMoveEvent".}
proc fcQWebView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseMoveEvent".}
proc fQWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mousePressEvent".}
proc fcQWebView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mousePressEvent".}
proc fQWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseDoubleClickEvent".}
proc fQWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_mouseReleaseEvent".}
proc fcQWebView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_mouseReleaseEvent".}
proc fQWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_contextMenuEvent".}
proc fcQWebView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_contextMenuEvent".}
proc fQWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_wheelEvent".}
proc fcQWebView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_wheelEvent".}
proc fQWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_keyPressEvent".}
proc fcQWebView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_keyPressEvent".}
proc fQWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_keyReleaseEvent".}
proc fcQWebView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_keyReleaseEvent".}
proc fQWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragEnterEvent".}
proc fcQWebView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragEnterEvent".}
proc fQWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragLeaveEvent".}
proc fcQWebView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragLeaveEvent".}
proc fQWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dragMoveEvent".}
proc fcQWebView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dragMoveEvent".}
proc fQWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_dropEvent".}
proc fcQWebView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_dropEvent".}
proc fQWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_focusInEvent".}
proc fcQWebView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusInEvent".}
proc fQWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_focusOutEvent".}
proc fcQWebView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusOutEvent".}
proc fQWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebView_virtualbase_inputMethodEvent".}
proc fcQWebView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_inputMethodEvent".}
proc fQWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebView_virtualbase_focusNextPrevChild".}
proc fcQWebView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebView_override_virtual_focusNextPrevChild".}
proc fQWebView_virtualbase_devType(self: pointer, ): cint{.importc: "QWebView_virtualbase_devType".}
proc fcQWebView_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebView_override_virtual_devType".}
proc fQWebView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebView_virtualbase_setVisible".}
proc fcQWebView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebView_override_virtual_setVisible".}
proc fQWebView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebView_virtualbase_minimumSizeHint".}
proc fcQWebView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebView_override_virtual_minimumSizeHint".}
proc fQWebView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebView_virtualbase_heightForWidth".}
proc fcQWebView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebView_override_virtual_heightForWidth".}
proc fQWebView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebView_virtualbase_hasHeightForWidth".}
proc fcQWebView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebView_override_virtual_hasHeightForWidth".}
proc fQWebView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebView_virtualbase_paintEngine".}
proc fcQWebView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebView_override_virtual_paintEngine".}
proc fQWebView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_enterEvent".}
proc fcQWebView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_enterEvent".}
proc fQWebView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_leaveEvent".}
proc fcQWebView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_leaveEvent".}
proc fQWebView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_moveEvent".}
proc fcQWebView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_moveEvent".}
proc fQWebView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_closeEvent".}
proc fcQWebView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_closeEvent".}
proc fQWebView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_tabletEvent".}
proc fcQWebView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_tabletEvent".}
proc fQWebView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_actionEvent".}
proc fcQWebView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_actionEvent".}
proc fQWebView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_showEvent".}
proc fcQWebView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_showEvent".}
proc fQWebView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_hideEvent".}
proc fcQWebView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_hideEvent".}
proc fQWebView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWebView_virtualbase_nativeEvent".}
proc fcQWebView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_nativeEvent".}
proc fQWebView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebView_virtualbase_metric".}
proc fcQWebView_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebView_override_virtual_metric".}
proc fQWebView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebView_virtualbase_initPainter".}
proc fcQWebView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_initPainter".}
proc fQWebView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebView_virtualbase_redirected".}
proc fcQWebView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebView_override_virtual_redirected".}
proc fQWebView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebView_virtualbase_sharedPainter".}
proc fcQWebView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_sharedPainter".}
proc fQWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebView_virtualbase_eventFilter".}
proc fcQWebView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebView_override_virtual_eventFilter".}
proc fQWebView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_timerEvent".}
proc fcQWebView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_timerEvent".}
proc fQWebView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_childEvent".}
proc fcQWebView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_childEvent".}
proc fQWebView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebView_virtualbase_customEvent".}
proc fcQWebView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebView_override_virtual_customEvent".}
proc fQWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebView_virtualbase_connectNotify".}
proc fcQWebView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebView_override_virtual_connectNotify".}
proc fQWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebView_virtualbase_disconnectNotify".}
proc fcQWebView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebView_override_virtual_disconnectNotify".}
proc fcQWebView_delete(self: pointer) {.importc: "QWebView_delete".}


func init*(T: type QWebView, h: ptr cQWebView): QWebView =
  T(h: h)
proc create*(T: type QWebView, parent: gen_qwidget.QWidget): QWebView =

  QWebView.init(fcQWebView_new(parent.h))
proc create*(T: type QWebView, ): QWebView =

  QWebView.init(fcQWebView_new2())
proc metaObject*(self: QWebView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebView_metaObject(self.h))

proc metacast*(self: QWebView, param1: cstring): pointer =

  fcQWebView_metacast(self.h, param1)

proc metacall*(self: QWebView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebView, s: cstring): string =

  let v_ms = fcQWebView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebView, s: cstring): string =

  let v_ms = fcQWebView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: QWebView, ): gen_qwebpage.QWebPage =

  gen_qwebpage.QWebPage(h: fcQWebView_page(self.h))

proc setPage*(self: QWebView, page: gen_qwebpage.QWebPage): void =

  fcQWebView_setPage(self.h, page.h)

proc load*(self: QWebView, url: gen_qurl.QUrl): void =

  fcQWebView_load(self.h, url.h)

proc loadWithRequest*(self: QWebView, request: gen_qnetworkrequest.QNetworkRequest): void =

  fcQWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: QWebView, html: string): void =

  fcQWebView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: QWebView, data: seq[byte]): void =

  fcQWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: QWebView, ): gen_qwebhistory.QWebHistory =

  gen_qwebhistory.QWebHistory(h: fcQWebView_history(self.h))

proc settings*(self: QWebView, ): gen_qwebsettings.QWebSettings =

  gen_qwebsettings.QWebSettings(h: fcQWebView_settings(self.h))

proc title*(self: QWebView, ): string =

  let v_ms = fcQWebView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: QWebView, url: gen_qurl.QUrl): void =

  fcQWebView_setUrl(self.h, url.h)

proc url*(self: QWebView, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebView_url(self.h))

proc icon*(self: QWebView, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWebView_icon(self.h))

proc hasSelection*(self: QWebView, ): bool =

  fcQWebView_hasSelection(self.h)

proc selectedText*(self: QWebView, ): string =

  let v_ms = fcQWebView_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedHtml*(self: QWebView, ): string =

  let v_ms = fcQWebView_selectedHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: QWebView, action: gen_qwebpage.QWebPageWebAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWebView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: QWebView, action: gen_qwebpage.QWebPageWebAction): void =

  fcQWebView_triggerPageAction(self.h, cint(action))

proc isModified*(self: QWebView, ): bool =

  fcQWebView_isModified(self.h)

proc inputMethodQuery*(self: QWebView, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWebView_inputMethodQuery(self.h, cint(property)))

proc sizeHint*(self: QWebView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWebView_sizeHint(self.h))

proc zoomFactor*(self: QWebView, ): float64 =

  fcQWebView_zoomFactor(self.h)

proc setZoomFactor*(self: QWebView, factor: float64): void =

  fcQWebView_setZoomFactor(self.h, factor)

proc setTextSizeMultiplier*(self: QWebView, factor: float64): void =

  fcQWebView_setTextSizeMultiplier(self.h, factor)

proc textSizeMultiplier*(self: QWebView, ): float64 =

  fcQWebView_textSizeMultiplier(self.h)

proc renderHints*(self: QWebView, ): gen_qpainter.QPainterRenderHint =

  gen_qpainter.QPainterRenderHint(fcQWebView_renderHints(self.h))

proc setRenderHints*(self: QWebView, hints: gen_qpainter.QPainterRenderHint): void =

  fcQWebView_setRenderHints(self.h, cint(hints))

proc setRenderHint*(self: QWebView, hint: gen_qpainter.QPainterRenderHint): void =

  fcQWebView_setRenderHint(self.h, cint(hint))

proc findText*(self: QWebView, subString: string): bool =

  fcQWebView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc event*(self: QWebView, param1: gen_qcoreevent.QEvent): bool =

  fcQWebView_event(self.h, param1.h)

proc stop*(self: QWebView, ): void =

  fcQWebView_stop(self.h)

proc back*(self: QWebView, ): void =

  fcQWebView_back(self.h)

proc forward*(self: QWebView, ): void =

  fcQWebView_forward(self.h)

proc reload*(self: QWebView, ): void =

  fcQWebView_reload(self.h)

proc print*(self: QWebView, param1: gen_qprinter.QPrinter): void =

  fcQWebView_print(self.h, param1.h)

proc loadStarted*(self: QWebView, ): void =

  fcQWebView_loadStarted(self.h)

proc miqt_exec_callback_QWebView_loadStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadStarted*(self: QWebView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_loadStarted(self.h, cast[int](addr tmp[]))
proc loadProgress*(self: QWebView, progress: cint): void =

  fcQWebView_loadProgress(self.h, progress)

proc miqt_exec_callback_QWebView_loadProgress(slot: int, progress: cint) {.exportc.} =
  type Cb = proc(progress: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onloadProgress*(self: QWebView, slot: proc(progress: cint)) =
  type Cb = proc(progress: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_loadProgress(self.h, cast[int](addr tmp[]))
proc loadFinished*(self: QWebView, param1: bool): void =

  fcQWebView_loadFinished(self.h, param1)

proc miqt_exec_callback_QWebView_loadFinished(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onloadFinished*(self: QWebView, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_loadFinished(self.h, cast[int](addr tmp[]))
proc titleChanged*(self: QWebView, title: string): void =

  fcQWebView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc miqt_exec_callback_QWebView_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  type Cb = proc(title: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret


  nimfunc[](slotval1)

proc ontitleChanged*(self: QWebView, slot: proc(title: string)) =
  type Cb = proc(title: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_titleChanged(self.h, cast[int](addr tmp[]))
proc statusBarMessage*(self: QWebView, text: string): void =

  fcQWebView_statusBarMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QWebView_statusBarMessage(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc onstatusBarMessage*(self: QWebView, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]))
proc linkClicked*(self: QWebView, param1: gen_qurl.QUrl): void =

  fcQWebView_linkClicked(self.h, param1.h)

proc miqt_exec_callback_QWebView_linkClicked(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onlinkClicked*(self: QWebView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_linkClicked(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QWebView, ): void =

  fcQWebView_selectionChanged(self.h)

proc miqt_exec_callback_QWebView_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QWebView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc iconChanged*(self: QWebView, ): void =

  fcQWebView_iconChanged(self.h)

proc miqt_exec_callback_QWebView_iconChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oniconChanged*(self: QWebView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_iconChanged(self.h, cast[int](addr tmp[]))
proc urlChanged*(self: QWebView, param1: gen_qurl.QUrl): void =

  fcQWebView_urlChanged(self.h, param1.h)

proc miqt_exec_callback_QWebView_urlChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onurlChanged*(self: QWebView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebView_connect_urlChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebView, s: cstring, c: cstring): string =

  let v_ms = fcQWebView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebView, s: cstring, c: cstring): string =

  let v_ms = fcQWebView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load2*(self: QWebView, request: gen_qnetworkrequest.QNetworkRequest, operation: gen_qnetworkaccessmanager.QNetworkAccessManagerOperation): void =

  fcQWebView_load2(self.h, request.h, cint(operation))

proc load3*(self: QWebView, request: gen_qnetworkrequest.QNetworkRequest, operation: gen_qnetworkaccessmanager.QNetworkAccessManagerOperation, body: seq[byte]): void =

  fcQWebView_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml2*(self: QWebView, html: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent2*(self: QWebView, data: seq[byte], mimeType: string): void =

  fcQWebView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent3*(self: QWebView, data: seq[byte], mimeType: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction2*(self: QWebView, action: gen_qwebpage.QWebPageWebAction, checked: bool): void =

  fcQWebView_triggerPageAction2(self.h, cint(action), checked)

proc setRenderHint2*(self: QWebView, hint: gen_qpainter.QPainterRenderHint, enabled: bool): void =

  fcQWebView_setRenderHint2(self.h, cint(hint), enabled)

proc findText2*(self: QWebView, subString: string, options: gen_qwebpage.QWebPageFindFlag): bool =

  fcQWebView_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc callVirtualBase_metacall(self: QWebView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebView, slot: proc(super: QWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_metacall(self: ptr cQWebView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebView_metacall ".} =
  type Cb = proc(super: QWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QWebView, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWebView_virtualbase_inputMethodQuery(self.h, cint(property)))

type QWebViewinputMethodQueryBase* = proc(property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWebView, slot: proc(super: QWebViewinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWebViewinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_inputMethodQuery(self: ptr cQWebView, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QWebView_inputMethodQuery ".} =
  type Cb = proc(super: QWebViewinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(property: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWebView(h: self), property)
  let slotval1 = gen_qnamespace.InputMethodQuery(property)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QWebView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebView_virtualbase_sizeHint(self.h))

type QWebViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWebView, slot: proc(super: QWebViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_sizeHint(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_sizeHint ".} =
  type Cb = proc(super: QWebViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QWebView, param1: gen_qcoreevent.QEvent): bool =


  fQWebView_virtualbase_event(self.h, param1.h)

type QWebVieweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebView, slot: proc(super: QWebVieweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_event(self: ptr cQWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebView_event ".} =
  type Cb = proc(super: QWebVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QWebView, param1: gen_qevent.QResizeEvent): void =


  fQWebView_virtualbase_resizeEvent(self.h, param1.h)

type QWebViewresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWebView, slot: proc(super: QWebViewresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_resizeEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_resizeEvent ".} =
  type Cb = proc(super: QWebViewresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWebView, param1: gen_qevent.QPaintEvent): void =


  fQWebView_virtualbase_paintEvent(self.h, param1.h)

type QWebViewpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWebView, slot: proc(super: QWebViewpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_paintEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_paintEvent ".} =
  type Cb = proc(super: QWebViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_createWindow(self: QWebView, typeVal: gen_qwebpage.QWebPageWebWindowType): QWebView =


  QWebView(h: fQWebView_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebViewcreateWindowBase* = proc(typeVal: gen_qwebpage.QWebPageWebWindowType): QWebView
proc oncreateWindow*(self: QWebView, slot: proc(super: QWebViewcreateWindowBase, typeVal: gen_qwebpage.QWebPageWebWindowType): QWebView) =
  # TODO check subclass
  type Cb = proc(super: QWebViewcreateWindowBase, typeVal: gen_qwebpage.QWebPageWebWindowType): QWebView
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_createWindow(self: ptr cQWebView, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebView_createWindow ".} =
  type Cb = proc(super: QWebViewcreateWindowBase, typeVal: gen_qwebpage.QWebPageWebWindowType): QWebView
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: gen_qwebpage.QWebPageWebWindowType): auto =
    callVirtualBase_createWindow(QWebView(h: self), typeVal)
  let slotval1 = gen_qwebpage.QWebPageWebWindowType(typeVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: QWebView, param1: gen_qcoreevent.QEvent): void =


  fQWebView_virtualbase_changeEvent(self.h, param1.h)

type QWebViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWebView, slot: proc(super: QWebViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_changeEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_changeEvent ".} =
  type Cb = proc(super: QWebViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWebView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWebView, param1: gen_qevent.QMouseEvent): void =


  fQWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QWebViewmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWebView, slot: proc(super: QWebViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseMoveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseMoveEvent ".} =
  type Cb = proc(super: QWebViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QWebView, param1: gen_qevent.QMouseEvent): void =


  fQWebView_virtualbase_mousePressEvent(self.h, param1.h)

type QWebViewmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWebView, slot: proc(super: QWebViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mousePressEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mousePressEvent ".} =
  type Cb = proc(super: QWebViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWebView, param1: gen_qevent.QMouseEvent): void =


  fQWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QWebViewmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWebView, slot: proc(super: QWebViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseDoubleClickEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWebViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWebView, param1: gen_qevent.QMouseEvent): void =


  fQWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QWebViewmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWebView, slot: proc(super: QWebViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_mouseReleaseEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_mouseReleaseEvent ".} =
  type Cb = proc(super: QWebViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QWebView, param1: gen_qevent.QContextMenuEvent): void =


  fQWebView_virtualbase_contextMenuEvent(self.h, param1.h)

type QWebViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWebView, slot: proc(super: QWebViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_contextMenuEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_contextMenuEvent ".} =
  type Cb = proc(super: QWebViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWebView, param1: gen_qevent.QWheelEvent): void =


  fQWebView_virtualbase_wheelEvent(self.h, param1.h)

type QWebViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWebView, slot: proc(super: QWebViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_wheelEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_wheelEvent ".} =
  type Cb = proc(super: QWebViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QWebView, param1: gen_qevent.QKeyEvent): void =


  fQWebView_virtualbase_keyPressEvent(self.h, param1.h)

type QWebViewkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWebView, slot: proc(super: QWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_keyPressEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_keyPressEvent ".} =
  type Cb = proc(super: QWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWebView, param1: gen_qevent.QKeyEvent): void =


  fQWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QWebViewkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWebView, slot: proc(super: QWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_keyReleaseEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_keyReleaseEvent ".} =
  type Cb = proc(super: QWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWebView, param1: gen_qevent.QDragEnterEvent): void =


  fQWebView_virtualbase_dragEnterEvent(self.h, param1.h)

type QWebViewdragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWebView, slot: proc(super: QWebViewdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragEnterEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragEnterEvent ".} =
  type Cb = proc(super: QWebViewdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWebView, param1: gen_qevent.QDragLeaveEvent): void =


  fQWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

type QWebViewdragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWebView, slot: proc(super: QWebViewdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragLeaveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragLeaveEvent ".} =
  type Cb = proc(super: QWebViewdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWebView, param1: gen_qevent.QDragMoveEvent): void =


  fQWebView_virtualbase_dragMoveEvent(self.h, param1.h)

type QWebViewdragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWebView, slot: proc(super: QWebViewdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dragMoveEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dragMoveEvent ".} =
  type Cb = proc(super: QWebViewdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWebView, param1: gen_qevent.QDropEvent): void =


  fQWebView_virtualbase_dropEvent(self.h, param1.h)

type QWebViewdropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWebView, slot: proc(super: QWebViewdropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_dropEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_dropEvent ".} =
  type Cb = proc(super: QWebViewdropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWebView, param1: gen_qevent.QFocusEvent): void =


  fQWebView_virtualbase_focusInEvent(self.h, param1.h)

type QWebViewfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWebView, slot: proc(super: QWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusInEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_focusInEvent ".} =
  type Cb = proc(super: QWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWebView, param1: gen_qevent.QFocusEvent): void =


  fQWebView_virtualbase_focusOutEvent(self.h, param1.h)

type QWebViewfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWebView, slot: proc(super: QWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusOutEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_focusOutEvent ".} =
  type Cb = proc(super: QWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QWebView, param1: gen_qevent.QInputMethodEvent): void =


  fQWebView_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebViewinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWebView, slot: proc(super: QWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_inputMethodEvent(self: ptr cQWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebView_inputMethodEvent ".} =
  type Cb = proc(super: QWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWebView(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QWebView, next: bool): bool =


  fQWebView_virtualbase_focusNextPrevChild(self.h, next)

type QWebViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWebView, slot: proc(super: QWebViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_focusNextPrevChild(self: ptr cQWebView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebView_focusNextPrevChild ".} =
  type Cb = proc(super: QWebViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWebView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QWebView, ): cint =


  fQWebView_virtualbase_devType(self.h)

type QWebViewdevTypeBase* = proc(): cint
proc ondevType*(self: QWebView, slot: proc(super: QWebViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_devType(self: ptr cQWebView, slot: int): cint {.exportc: "miqt_exec_callback_QWebView_devType ".} =
  type Cb = proc(super: QWebViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWebView, visible: bool): void =


  fQWebView_virtualbase_setVisible(self.h, visible)

type QWebViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWebView, slot: proc(super: QWebViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_setVisible(self: ptr cQWebView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebView_setVisible ".} =
  type Cb = proc(super: QWebViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWebView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QWebView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebView_virtualbase_minimumSizeHint(self.h))

type QWebViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWebView, slot: proc(super: QWebViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_minimumSizeHint(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_minimumSizeHint ".} =
  type Cb = proc(super: QWebViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWebView, param1: cint): cint =


  fQWebView_virtualbase_heightForWidth(self.h, param1)

type QWebViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWebView, slot: proc(super: QWebViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_heightForWidth(self: ptr cQWebView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebView_heightForWidth ".} =
  type Cb = proc(super: QWebViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWebView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWebView, ): bool =


  fQWebView_virtualbase_hasHeightForWidth(self.h)

type QWebViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWebView, slot: proc(super: QWebViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_hasHeightForWidth(self: ptr cQWebView, slot: int): bool {.exportc: "miqt_exec_callback_QWebView_hasHeightForWidth ".} =
  type Cb = proc(super: QWebViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWebView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWebView_virtualbase_paintEngine(self.h))

type QWebViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWebView, slot: proc(super: QWebViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWebViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_paintEngine(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_paintEngine ".} =
  type Cb = proc(super: QWebViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_enterEvent(self: QWebView, event: gen_qcoreevent.QEvent): void =


  fQWebView_virtualbase_enterEvent(self.h, event.h)

type QWebViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWebView, slot: proc(super: QWebViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_enterEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_enterEvent ".} =
  type Cb = proc(super: QWebViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWebView, event: gen_qcoreevent.QEvent): void =


  fQWebView_virtualbase_leaveEvent(self.h, event.h)

type QWebViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWebView, slot: proc(super: QWebViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_leaveEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_leaveEvent ".} =
  type Cb = proc(super: QWebViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWebView, event: gen_qevent.QMoveEvent): void =


  fQWebView_virtualbase_moveEvent(self.h, event.h)

type QWebViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWebView, slot: proc(super: QWebViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_moveEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_moveEvent ".} =
  type Cb = proc(super: QWebViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWebView, event: gen_qevent.QCloseEvent): void =


  fQWebView_virtualbase_closeEvent(self.h, event.h)

type QWebViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWebView, slot: proc(super: QWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_closeEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_closeEvent ".} =
  type Cb = proc(super: QWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWebView, event: gen_qevent.QTabletEvent): void =


  fQWebView_virtualbase_tabletEvent(self.h, event.h)

type QWebViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWebView, slot: proc(super: QWebViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_tabletEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_tabletEvent ".} =
  type Cb = proc(super: QWebViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWebView, event: gen_qevent.QActionEvent): void =


  fQWebView_virtualbase_actionEvent(self.h, event.h)

type QWebViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWebView, slot: proc(super: QWebViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_actionEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_actionEvent ".} =
  type Cb = proc(super: QWebViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWebView, event: gen_qevent.QShowEvent): void =


  fQWebView_virtualbase_showEvent(self.h, event.h)

type QWebViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWebView, slot: proc(super: QWebViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_showEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_showEvent ".} =
  type Cb = proc(super: QWebViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWebView, event: gen_qevent.QHideEvent): void =


  fQWebView_virtualbase_hideEvent(self.h, event.h)

type QWebViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWebView, slot: proc(super: QWebViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_hideEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_hideEvent ".} =
  type Cb = proc(super: QWebViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWebView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWebView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWebView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWebView, slot: proc(super: QWebViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_nativeEvent(self: ptr cQWebView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWebView_nativeEvent ".} =
  type Cb = proc(super: QWebViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWebView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QWebView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWebView_virtualbase_metric(self.h, cint(param1))

type QWebViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWebView, slot: proc(super: QWebViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_metric(self: ptr cQWebView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebView_metric ".} =
  type Cb = proc(super: QWebViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWebView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWebView, painter: gen_qpainter.QPainter): void =


  fQWebView_virtualbase_initPainter(self.h, painter.h)

type QWebViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWebView, slot: proc(super: QWebViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_initPainter(self: ptr cQWebView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebView_initPainter ".} =
  type Cb = proc(super: QWebViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWebView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWebView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWebView_virtualbase_redirected(self.h, offset.h))

type QWebViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWebView, slot: proc(super: QWebViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWebViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_redirected(self: ptr cQWebView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebView_redirected ".} =
  type Cb = proc(super: QWebViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWebView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWebView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWebView_virtualbase_sharedPainter(self.h))

type QWebViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWebView, slot: proc(super: QWebViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWebViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_sharedPainter(self: ptr cQWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebView_sharedPainter ".} =
  type Cb = proc(super: QWebViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_eventFilter(self: QWebView, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebVieweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebView, slot: proc(super: QWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_eventFilter(self: ptr cQWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebView_eventFilter ".} =
  type Cb = proc(super: QWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebView(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebView, event: gen_qcoreevent.QTimerEvent): void =


  fQWebView_virtualbase_timerEvent(self.h, event.h)

type QWebViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebView, slot: proc(super: QWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_timerEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_timerEvent ".} =
  type Cb = proc(super: QWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebView, event: gen_qcoreevent.QChildEvent): void =


  fQWebView_virtualbase_childEvent(self.h, event.h)

type QWebViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebView, slot: proc(super: QWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_childEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_childEvent ".} =
  type Cb = proc(super: QWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebView, event: gen_qcoreevent.QEvent): void =


  fQWebView_virtualbase_customEvent(self.h, event.h)

type QWebViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebView, slot: proc(super: QWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_customEvent(self: ptr cQWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebView_customEvent ".} =
  type Cb = proc(super: QWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebView, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebView_virtualbase_connectNotify(self.h, signal.h)

type QWebViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebView, slot: proc(super: QWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_connectNotify(self: ptr cQWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebView_connectNotify ".} =
  type Cb = proc(super: QWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebView, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebView_virtualbase_disconnectNotify(self.h, signal.h)

type QWebViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebView, slot: proc(super: QWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebView_disconnectNotify(self: ptr cQWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebView_disconnectNotify ".} =
  type Cb = proc(super: QWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWebView) =
  fcQWebView_delete(self.h)
