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
{.compile("gen_qwebengineview.cpp", cflags).}


import gen_qwebengineview_types
export gen_qwebengineview_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwebenginehistory,
  gen_qwebenginehttprequest,
  gen_qwebenginepage,
  gen_qwebenginesettings,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwebenginehistory,
  gen_qwebenginehttprequest,
  gen_qwebenginepage,
  gen_qwebenginesettings,
  gen_qwidget

type cQWebEngineView*{.exportc: "QWebEngineView", incompleteStruct.} = object

proc fcQWebEngineView_new(parent: pointer): ptr cQWebEngineView {.importc: "QWebEngineView_new".}
proc fcQWebEngineView_new2(): ptr cQWebEngineView {.importc: "QWebEngineView_new2".}
proc fcQWebEngineView_metaObject(self: pointer, ): pointer {.importc: "QWebEngineView_metaObject".}
proc fcQWebEngineView_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineView_metacast".}
proc fcQWebEngineView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineView_metacall".}
proc fcQWebEngineView_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineView_tr".}
proc fcQWebEngineView_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineView_trUtf8".}
proc fcQWebEngineView_page(self: pointer, ): pointer {.importc: "QWebEngineView_page".}
proc fcQWebEngineView_setPage(self: pointer, page: pointer): void {.importc: "QWebEngineView_setPage".}
proc fcQWebEngineView_load(self: pointer, url: pointer): void {.importc: "QWebEngineView_load".}
proc fcQWebEngineView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QWebEngineView_loadWithRequest".}
proc fcQWebEngineView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QWebEngineView_setHtml".}
proc fcQWebEngineView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QWebEngineView_setContent".}
proc fcQWebEngineView_history(self: pointer, ): pointer {.importc: "QWebEngineView_history".}
proc fcQWebEngineView_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineView_title".}
proc fcQWebEngineView_setUrl(self: pointer, url: pointer): void {.importc: "QWebEngineView_setUrl".}
proc fcQWebEngineView_url(self: pointer, ): pointer {.importc: "QWebEngineView_url".}
proc fcQWebEngineView_iconUrl(self: pointer, ): pointer {.importc: "QWebEngineView_iconUrl".}
proc fcQWebEngineView_icon(self: pointer, ): pointer {.importc: "QWebEngineView_icon".}
proc fcQWebEngineView_hasSelection(self: pointer, ): bool {.importc: "QWebEngineView_hasSelection".}
proc fcQWebEngineView_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineView_selectedText".}
proc fcQWebEngineView_pageAction(self: pointer, action: cint): pointer {.importc: "QWebEngineView_pageAction".}
proc fcQWebEngineView_triggerPageAction(self: pointer, action: cint): void {.importc: "QWebEngineView_triggerPageAction".}
proc fcQWebEngineView_zoomFactor(self: pointer, ): float64 {.importc: "QWebEngineView_zoomFactor".}
proc fcQWebEngineView_setZoomFactor(self: pointer, factor: float64): void {.importc: "QWebEngineView_setZoomFactor".}
proc fcQWebEngineView_findText(self: pointer, subString: struct_miqt_string): void {.importc: "QWebEngineView_findText".}
proc fcQWebEngineView_sizeHint(self: pointer, ): pointer {.importc: "QWebEngineView_sizeHint".}
proc fcQWebEngineView_settings(self: pointer, ): pointer {.importc: "QWebEngineView_settings".}
proc fcQWebEngineView_stop(self: pointer, ): void {.importc: "QWebEngineView_stop".}
proc fcQWebEngineView_back(self: pointer, ): void {.importc: "QWebEngineView_back".}
proc fcQWebEngineView_forward(self: pointer, ): void {.importc: "QWebEngineView_forward".}
proc fcQWebEngineView_reload(self: pointer, ): void {.importc: "QWebEngineView_reload".}
proc fcQWebEngineView_loadStarted(self: pointer, ): void {.importc: "QWebEngineView_loadStarted".}
proc fQWebEngineView_connect_loadStarted(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadStarted".}
proc fcQWebEngineView_loadProgress(self: pointer, progress: cint): void {.importc: "QWebEngineView_loadProgress".}
proc fQWebEngineView_connect_loadProgress(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadProgress".}
proc fcQWebEngineView_loadFinished(self: pointer, param1: bool): void {.importc: "QWebEngineView_loadFinished".}
proc fQWebEngineView_connect_loadFinished(self: pointer, slot: int) {.importc: "QWebEngineView_connect_loadFinished".}
proc fcQWebEngineView_titleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWebEngineView_titleChanged".}
proc fQWebEngineView_connect_titleChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_titleChanged".}
proc fcQWebEngineView_selectionChanged(self: pointer, ): void {.importc: "QWebEngineView_selectionChanged".}
proc fQWebEngineView_connect_selectionChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_selectionChanged".}
proc fcQWebEngineView_urlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_urlChanged".}
proc fQWebEngineView_connect_urlChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_urlChanged".}
proc fcQWebEngineView_iconUrlChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconUrlChanged".}
proc fQWebEngineView_connect_iconUrlChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_iconUrlChanged".}
proc fcQWebEngineView_iconChanged(self: pointer, param1: pointer): void {.importc: "QWebEngineView_iconChanged".}
proc fQWebEngineView_connect_iconChanged(self: pointer, slot: int) {.importc: "QWebEngineView_connect_iconChanged".}
proc fcQWebEngineView_renderProcessTerminated(self: pointer, terminationStatus: cint, exitCode: cint): void {.importc: "QWebEngineView_renderProcessTerminated".}
proc fQWebEngineView_connect_renderProcessTerminated(self: pointer, slot: int) {.importc: "QWebEngineView_connect_renderProcessTerminated".}
proc fcQWebEngineView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineView_tr2".}
proc fcQWebEngineView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineView_tr3".}
proc fcQWebEngineView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineView_trUtf82".}
proc fcQWebEngineView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineView_trUtf83".}
proc fcQWebEngineView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setHtml2".}
proc fcQWebEngineView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QWebEngineView_setContent2".}
proc fcQWebEngineView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QWebEngineView_setContent3".}
proc fcQWebEngineView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QWebEngineView_triggerPageAction2".}
proc fcQWebEngineView_findText2(self: pointer, subString: struct_miqt_string, options: cint): void {.importc: "QWebEngineView_findText2".}
proc fQWebEngineView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineView_virtualbase_metacall".}
proc fcQWebEngineView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_metacall".}
proc fQWebEngineView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_sizeHint".}
proc fcQWebEngineView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_sizeHint".}
proc fQWebEngineView_virtualbase_createWindow(self: pointer, typeVal: cint): pointer{.importc: "QWebEngineView_virtualbase_createWindow".}
proc fcQWebEngineView_override_virtual_createWindow(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_createWindow".}
proc fQWebEngineView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_contextMenuEvent".}
proc fcQWebEngineView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_contextMenuEvent".}
proc fQWebEngineView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebEngineView_virtualbase_event".}
proc fcQWebEngineView_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_event".}
proc fQWebEngineView_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_showEvent".}
proc fcQWebEngineView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_showEvent".}
proc fQWebEngineView_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_hideEvent".}
proc fcQWebEngineView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_hideEvent".}
proc fQWebEngineView_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_closeEvent".}
proc fcQWebEngineView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_closeEvent".}
proc fQWebEngineView_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragEnterEvent".}
proc fcQWebEngineView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragEnterEvent".}
proc fQWebEngineView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragLeaveEvent".}
proc fcQWebEngineView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragLeaveEvent".}
proc fQWebEngineView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dragMoveEvent".}
proc fcQWebEngineView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dragMoveEvent".}
proc fQWebEngineView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QWebEngineView_virtualbase_dropEvent".}
proc fcQWebEngineView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_dropEvent".}
proc fQWebEngineView_virtualbase_devType(self: pointer, ): cint{.importc: "QWebEngineView_virtualbase_devType".}
proc fcQWebEngineView_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_devType".}
proc fQWebEngineView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebEngineView_virtualbase_setVisible".}
proc fcQWebEngineView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_setVisible".}
proc fQWebEngineView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_minimumSizeHint".}
proc fcQWebEngineView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_minimumSizeHint".}
proc fQWebEngineView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebEngineView_virtualbase_heightForWidth".}
proc fcQWebEngineView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_heightForWidth".}
proc fQWebEngineView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebEngineView_virtualbase_hasHeightForWidth".}
proc fcQWebEngineView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_hasHeightForWidth".}
proc fQWebEngineView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_paintEngine".}
proc fcQWebEngineView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_paintEngine".}
proc fQWebEngineView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mousePressEvent".}
proc fcQWebEngineView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mousePressEvent".}
proc fQWebEngineView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseReleaseEvent".}
proc fcQWebEngineView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseReleaseEvent".}
proc fQWebEngineView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseDoubleClickEvent".}
proc fcQWebEngineView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseDoubleClickEvent".}
proc fQWebEngineView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_mouseMoveEvent".}
proc fcQWebEngineView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_mouseMoveEvent".}
proc fQWebEngineView_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_wheelEvent".}
proc fcQWebEngineView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_wheelEvent".}
proc fQWebEngineView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_keyPressEvent".}
proc fcQWebEngineView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_keyPressEvent".}
proc fQWebEngineView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_keyReleaseEvent".}
proc fcQWebEngineView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_keyReleaseEvent".}
proc fQWebEngineView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_focusInEvent".}
proc fcQWebEngineView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusInEvent".}
proc fQWebEngineView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_focusOutEvent".}
proc fcQWebEngineView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusOutEvent".}
proc fQWebEngineView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_enterEvent".}
proc fcQWebEngineView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_enterEvent".}
proc fQWebEngineView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_leaveEvent".}
proc fcQWebEngineView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_leaveEvent".}
proc fQWebEngineView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_paintEvent".}
proc fcQWebEngineView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_paintEvent".}
proc fQWebEngineView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_moveEvent".}
proc fcQWebEngineView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_moveEvent".}
proc fQWebEngineView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_resizeEvent".}
proc fcQWebEngineView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_resizeEvent".}
proc fQWebEngineView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_tabletEvent".}
proc fcQWebEngineView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_tabletEvent".}
proc fQWebEngineView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_actionEvent".}
proc fcQWebEngineView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_actionEvent".}
proc fQWebEngineView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWebEngineView_virtualbase_nativeEvent".}
proc fcQWebEngineView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_nativeEvent".}
proc fQWebEngineView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_changeEvent".}
proc fcQWebEngineView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_changeEvent".}
proc fQWebEngineView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebEngineView_virtualbase_metric".}
proc fcQWebEngineView_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_metric".}
proc fQWebEngineView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebEngineView_virtualbase_initPainter".}
proc fcQWebEngineView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_initPainter".}
proc fQWebEngineView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebEngineView_virtualbase_redirected".}
proc fcQWebEngineView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_redirected".}
proc fQWebEngineView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebEngineView_virtualbase_sharedPainter".}
proc fcQWebEngineView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_sharedPainter".}
proc fQWebEngineView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebEngineView_virtualbase_inputMethodEvent".}
proc fcQWebEngineView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_inputMethodEvent".}
proc fQWebEngineView_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWebEngineView_virtualbase_inputMethodQuery".}
proc fcQWebEngineView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_inputMethodQuery".}
proc fQWebEngineView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebEngineView_virtualbase_focusNextPrevChild".}
proc fcQWebEngineView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_focusNextPrevChild".}
proc fQWebEngineView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineView_virtualbase_eventFilter".}
proc fcQWebEngineView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_eventFilter".}
proc fQWebEngineView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_timerEvent".}
proc fcQWebEngineView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_timerEvent".}
proc fQWebEngineView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_childEvent".}
proc fcQWebEngineView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_childEvent".}
proc fQWebEngineView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineView_virtualbase_customEvent".}
proc fcQWebEngineView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_customEvent".}
proc fQWebEngineView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineView_virtualbase_connectNotify".}
proc fcQWebEngineView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_connectNotify".}
proc fQWebEngineView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineView_virtualbase_disconnectNotify".}
proc fcQWebEngineView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineView_override_virtual_disconnectNotify".}
proc fcQWebEngineView_delete(self: pointer) {.importc: "QWebEngineView_delete".}


func init*(T: type QWebEngineView, h: ptr cQWebEngineView): QWebEngineView =
  T(h: h)
proc create*(T: type QWebEngineView, parent: gen_qwidget.QWidget): QWebEngineView =

  QWebEngineView.init(fcQWebEngineView_new(parent.h))
proc create*(T: type QWebEngineView, ): QWebEngineView =

  QWebEngineView.init(fcQWebEngineView_new2())
proc metaObject*(self: QWebEngineView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineView_metaObject(self.h))

proc metacast*(self: QWebEngineView, param1: cstring): pointer =

  fcQWebEngineView_metacast(self.h, param1)

proc metacall*(self: QWebEngineView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineView, s: cstring): string =

  let v_ms = fcQWebEngineView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebEngineView, s: cstring): string =

  let v_ms = fcQWebEngineView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: QWebEngineView, ): gen_qwebenginepage.QWebEnginePage =

  gen_qwebenginepage.QWebEnginePage(h: fcQWebEngineView_page(self.h))

proc setPage*(self: QWebEngineView, page: gen_qwebenginepage.QWebEnginePage): void =

  fcQWebEngineView_setPage(self.h, page.h)

proc load*(self: QWebEngineView, url: gen_qurl.QUrl): void =

  fcQWebEngineView_load(self.h, url.h)

proc loadWithRequest*(self: QWebEngineView, request: gen_qwebenginehttprequest.QWebEngineHttpRequest): void =

  fcQWebEngineView_loadWithRequest(self.h, request.h)

proc setHtml*(self: QWebEngineView, html: string): void =

  fcQWebEngineView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: QWebEngineView, data: seq[byte]): void =

  fcQWebEngineView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: QWebEngineView, ): gen_qwebenginehistory.QWebEngineHistory =

  gen_qwebenginehistory.QWebEngineHistory(h: fcQWebEngineView_history(self.h))

proc title*(self: QWebEngineView, ): string =

  let v_ms = fcQWebEngineView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUrl*(self: QWebEngineView, url: gen_qurl.QUrl): void =

  fcQWebEngineView_setUrl(self.h, url.h)

proc url*(self: QWebEngineView, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineView_url(self.h))

proc iconUrl*(self: QWebEngineView, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineView_iconUrl(self.h))

proc icon*(self: QWebEngineView, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWebEngineView_icon(self.h))

proc hasSelection*(self: QWebEngineView, ): bool =

  fcQWebEngineView_hasSelection(self.h)

proc selectedText*(self: QWebEngineView, ): string =

  let v_ms = fcQWebEngineView_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pageAction*(self: QWebEngineView, action: gen_qwebenginepage.QWebEnginePageWebAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWebEngineView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: QWebEngineView, action: gen_qwebenginepage.QWebEnginePageWebAction): void =

  fcQWebEngineView_triggerPageAction(self.h, cint(action))

proc zoomFactor*(self: QWebEngineView, ): float64 =

  fcQWebEngineView_zoomFactor(self.h)

proc setZoomFactor*(self: QWebEngineView, factor: float64): void =

  fcQWebEngineView_setZoomFactor(self.h, factor)

proc findText*(self: QWebEngineView, subString: string): void =

  fcQWebEngineView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc sizeHint*(self: QWebEngineView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWebEngineView_sizeHint(self.h))

proc settings*(self: QWebEngineView, ): gen_qwebenginesettings.QWebEngineSettings =

  gen_qwebenginesettings.QWebEngineSettings(h: fcQWebEngineView_settings(self.h))

proc stop*(self: QWebEngineView, ): void =

  fcQWebEngineView_stop(self.h)

proc back*(self: QWebEngineView, ): void =

  fcQWebEngineView_back(self.h)

proc forward*(self: QWebEngineView, ): void =

  fcQWebEngineView_forward(self.h)

proc reload*(self: QWebEngineView, ): void =

  fcQWebEngineView_reload(self.h)

proc loadStarted*(self: QWebEngineView, ): void =

  fcQWebEngineView_loadStarted(self.h)

proc miqt_exec_callback_QWebEngineView_loadStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadStarted*(self: QWebEngineView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_loadStarted(self.h, cast[int](addr tmp[]))
proc loadProgress*(self: QWebEngineView, progress: cint): void =

  fcQWebEngineView_loadProgress(self.h, progress)

proc miqt_exec_callback_QWebEngineView_loadProgress(slot: int, progress: cint) {.exportc.} =
  type Cb = proc(progress: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onloadProgress*(self: QWebEngineView, slot: proc(progress: cint)) =
  type Cb = proc(progress: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_loadProgress(self.h, cast[int](addr tmp[]))
proc loadFinished*(self: QWebEngineView, param1: bool): void =

  fcQWebEngineView_loadFinished(self.h, param1)

proc miqt_exec_callback_QWebEngineView_loadFinished(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onloadFinished*(self: QWebEngineView, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_loadFinished(self.h, cast[int](addr tmp[]))
proc titleChanged*(self: QWebEngineView, title: string): void =

  fcQWebEngineView_titleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc miqt_exec_callback_QWebEngineView_titleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  type Cb = proc(title: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret


  nimfunc[](slotval1)

proc ontitleChanged*(self: QWebEngineView, slot: proc(title: string)) =
  type Cb = proc(title: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_titleChanged(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QWebEngineView, ): void =

  fcQWebEngineView_selectionChanged(self.h)

proc miqt_exec_callback_QWebEngineView_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QWebEngineView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc urlChanged*(self: QWebEngineView, param1: gen_qurl.QUrl): void =

  fcQWebEngineView_urlChanged(self.h, param1.h)

proc miqt_exec_callback_QWebEngineView_urlChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onurlChanged*(self: QWebEngineView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_urlChanged(self.h, cast[int](addr tmp[]))
proc iconUrlChanged*(self: QWebEngineView, param1: gen_qurl.QUrl): void =

  fcQWebEngineView_iconUrlChanged(self.h, param1.h)

proc miqt_exec_callback_QWebEngineView_iconUrlChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc oniconUrlChanged*(self: QWebEngineView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_iconUrlChanged(self.h, cast[int](addr tmp[]))
proc iconChanged*(self: QWebEngineView, param1: gen_qicon.QIcon): void =

  fcQWebEngineView_iconChanged(self.h, param1.h)

proc miqt_exec_callback_QWebEngineView_iconChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qicon.QIcon)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qicon.QIcon(h: param1)


  nimfunc[](slotval1)

proc oniconChanged*(self: QWebEngineView, slot: proc(param1: gen_qicon.QIcon)) =
  type Cb = proc(param1: gen_qicon.QIcon)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_iconChanged(self.h, cast[int](addr tmp[]))
proc renderProcessTerminated*(self: QWebEngineView, terminationStatus: gen_qwebenginepage.QWebEnginePageRenderProcessTerminationStatus, exitCode: cint): void =

  fcQWebEngineView_renderProcessTerminated(self.h, cint(terminationStatus), exitCode)

proc miqt_exec_callback_QWebEngineView_renderProcessTerminated(slot: int, terminationStatus: cint, exitCode: cint) {.exportc.} =
  type Cb = proc(terminationStatus: gen_qwebenginepage.QWebEnginePageRenderProcessTerminationStatus, exitCode: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebenginepage.QWebEnginePageRenderProcessTerminationStatus(terminationStatus)

  let slotval2 = exitCode


  nimfunc[](slotval1, slotval2)

proc onrenderProcessTerminated*(self: QWebEngineView, slot: proc(terminationStatus: gen_qwebenginepage.QWebEnginePageRenderProcessTerminationStatus, exitCode: cint)) =
  type Cb = proc(terminationStatus: gen_qwebenginepage.QWebEnginePageRenderProcessTerminationStatus, exitCode: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineView_connect_renderProcessTerminated(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineView, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebEngineView, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebEngineView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml2*(self: QWebEngineView, html: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebEngineView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent2*(self: QWebEngineView, data: seq[byte], mimeType: string): void =

  fcQWebEngineView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent3*(self: QWebEngineView, data: seq[byte], mimeType: string, baseUrl: gen_qurl.QUrl): void =

  fcQWebEngineView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction2*(self: QWebEngineView, action: gen_qwebenginepage.QWebEnginePageWebAction, checked: bool): void =

  fcQWebEngineView_triggerPageAction2(self.h, cint(action), checked)

proc findText2*(self: QWebEngineView, subString: string, options: gen_qwebenginepage.QWebEnginePageFindFlag): void =

  fcQWebEngineView_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc callVirtualBase_metacall(self: QWebEngineView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebEngineView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebEngineView, slot: proc(super: QWebEngineViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_metacall(self: ptr cQWebEngineView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineView_metacall ".} =
  type Cb = proc(super: QWebEngineViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebEngineView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QWebEngineView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebEngineView_virtualbase_sizeHint(self.h))

type QWebEngineViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWebEngineView, slot: proc(super: QWebEngineViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_sizeHint(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_sizeHint ".} =
  type Cb = proc(super: QWebEngineViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_createWindow(self: QWebEngineView, typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): QWebEngineView =


  QWebEngineView(h: fQWebEngineView_virtualbase_createWindow(self.h, cint(typeVal)))

type QWebEngineViewcreateWindowBase* = proc(typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): QWebEngineView
proc oncreateWindow*(self: QWebEngineView, slot: proc(super: QWebEngineViewcreateWindowBase, typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): QWebEngineView) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewcreateWindowBase, typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): QWebEngineView
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_createWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_createWindow(self: ptr cQWebEngineView, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QWebEngineView_createWindow ".} =
  type Cb = proc(super: QWebEngineViewcreateWindowBase, typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): QWebEngineView
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: gen_qwebenginepage.QWebEnginePageWebWindowType): auto =
    callVirtualBase_createWindow(QWebEngineView(h: self), typeVal)
  let slotval1 = gen_qwebenginepage.QWebEnginePageWebWindowType(typeVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_contextMenuEvent(self: QWebEngineView, param1: gen_qevent.QContextMenuEvent): void =


  fQWebEngineView_virtualbase_contextMenuEvent(self.h, param1.h)

type QWebEngineViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_contextMenuEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_contextMenuEvent ".} =
  type Cb = proc(super: QWebEngineViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QWebEngineView, param1: gen_qcoreevent.QEvent): bool =


  fQWebEngineView_virtualbase_event(self.h, param1.h)

type QWebEngineVieweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebEngineView, slot: proc(super: QWebEngineVieweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_event(self: ptr cQWebEngineView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineView_event ".} =
  type Cb = proc(super: QWebEngineVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebEngineView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_showEvent(self: QWebEngineView, param1: gen_qevent.QShowEvent): void =


  fQWebEngineView_virtualbase_showEvent(self.h, param1.h)

type QWebEngineViewshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_showEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_showEvent ".} =
  type Cb = proc(super: QWebEngineViewshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWebEngineView, param1: gen_qevent.QHideEvent): void =


  fQWebEngineView_virtualbase_hideEvent(self.h, param1.h)

type QWebEngineViewhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_hideEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_hideEvent ".} =
  type Cb = proc(super: QWebEngineViewhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWebEngineView, param1: gen_qevent.QCloseEvent): void =


  fQWebEngineView_virtualbase_closeEvent(self.h, param1.h)

type QWebEngineViewcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_closeEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_closeEvent ".} =
  type Cb = proc(super: QWebEngineViewcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWebEngineView, e: gen_qevent.QDragEnterEvent): void =


  fQWebEngineView_virtualbase_dragEnterEvent(self.h, e.h)

type QWebEngineViewdragEnterEventBase* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragEnterEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragEnterEvent ".} =
  type Cb = proc(super: QWebEngineViewdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWebEngineView(h: self), e)
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWebEngineView, e: gen_qevent.QDragLeaveEvent): void =


  fQWebEngineView_virtualbase_dragLeaveEvent(self.h, e.h)

type QWebEngineViewdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragLeaveEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragLeaveEvent ".} =
  type Cb = proc(super: QWebEngineViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWebEngineView(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWebEngineView, e: gen_qevent.QDragMoveEvent): void =


  fQWebEngineView_virtualbase_dragMoveEvent(self.h, e.h)

type QWebEngineViewdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dragMoveEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dragMoveEvent ".} =
  type Cb = proc(super: QWebEngineViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWebEngineView(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWebEngineView, e: gen_qevent.QDropEvent): void =


  fQWebEngineView_virtualbase_dropEvent(self.h, e.h)

type QWebEngineViewdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_dropEvent(self: ptr cQWebEngineView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_dropEvent ".} =
  type Cb = proc(super: QWebEngineViewdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWebEngineView(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QWebEngineView, ): cint =


  fQWebEngineView_virtualbase_devType(self.h)

type QWebEngineViewdevTypeBase* = proc(): cint
proc ondevType*(self: QWebEngineView, slot: proc(super: QWebEngineViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_devType(self: ptr cQWebEngineView, slot: int): cint {.exportc: "miqt_exec_callback_QWebEngineView_devType ".} =
  type Cb = proc(super: QWebEngineViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWebEngineView, visible: bool): void =


  fQWebEngineView_virtualbase_setVisible(self.h, visible)

type QWebEngineViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWebEngineView, slot: proc(super: QWebEngineViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_setVisible(self: ptr cQWebEngineView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebEngineView_setVisible ".} =
  type Cb = proc(super: QWebEngineViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWebEngineView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QWebEngineView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebEngineView_virtualbase_minimumSizeHint(self.h))

type QWebEngineViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWebEngineView, slot: proc(super: QWebEngineViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_minimumSizeHint(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_minimumSizeHint ".} =
  type Cb = proc(super: QWebEngineViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWebEngineView, param1: cint): cint =


  fQWebEngineView_virtualbase_heightForWidth(self.h, param1)

type QWebEngineViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWebEngineView, slot: proc(super: QWebEngineViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_heightForWidth(self: ptr cQWebEngineView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebEngineView_heightForWidth ".} =
  type Cb = proc(super: QWebEngineViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWebEngineView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWebEngineView, ): bool =


  fQWebEngineView_virtualbase_hasHeightForWidth(self.h)

type QWebEngineViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWebEngineView, slot: proc(super: QWebEngineViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_hasHeightForWidth(self: ptr cQWebEngineView, slot: int): bool {.exportc: "miqt_exec_callback_QWebEngineView_hasHeightForWidth ".} =
  type Cb = proc(super: QWebEngineViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWebEngineView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWebEngineView_virtualbase_paintEngine(self.h))

type QWebEngineViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWebEngineView, slot: proc(super: QWebEngineViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_paintEngine(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_paintEngine ".} =
  type Cb = proc(super: QWebEngineViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QWebEngineView, event: gen_qevent.QMouseEvent): void =


  fQWebEngineView_virtualbase_mousePressEvent(self.h, event.h)

type QWebEngineViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mousePressEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mousePressEvent ".} =
  type Cb = proc(super: QWebEngineViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWebEngineView, event: gen_qevent.QMouseEvent): void =


  fQWebEngineView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWebEngineViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseReleaseEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseReleaseEvent ".} =
  type Cb = proc(super: QWebEngineViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWebEngineView, event: gen_qevent.QMouseEvent): void =


  fQWebEngineView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWebEngineViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseDoubleClickEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWebEngineViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWebEngineView, event: gen_qevent.QMouseEvent): void =


  fQWebEngineView_virtualbase_mouseMoveEvent(self.h, event.h)

type QWebEngineViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_mouseMoveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_mouseMoveEvent ".} =
  type Cb = proc(super: QWebEngineViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWebEngineView, event: gen_qevent.QWheelEvent): void =


  fQWebEngineView_virtualbase_wheelEvent(self.h, event.h)

type QWebEngineViewwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_wheelEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_wheelEvent ".} =
  type Cb = proc(super: QWebEngineViewwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QWebEngineView, event: gen_qevent.QKeyEvent): void =


  fQWebEngineView_virtualbase_keyPressEvent(self.h, event.h)

type QWebEngineViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_keyPressEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_keyPressEvent ".} =
  type Cb = proc(super: QWebEngineViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWebEngineView, event: gen_qevent.QKeyEvent): void =


  fQWebEngineView_virtualbase_keyReleaseEvent(self.h, event.h)

type QWebEngineViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_keyReleaseEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_keyReleaseEvent ".} =
  type Cb = proc(super: QWebEngineViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWebEngineView, event: gen_qevent.QFocusEvent): void =


  fQWebEngineView_virtualbase_focusInEvent(self.h, event.h)

type QWebEngineViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusInEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_focusInEvent ".} =
  type Cb = proc(super: QWebEngineViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWebEngineView, event: gen_qevent.QFocusEvent): void =


  fQWebEngineView_virtualbase_focusOutEvent(self.h, event.h)

type QWebEngineViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusOutEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_focusOutEvent ".} =
  type Cb = proc(super: QWebEngineViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QWebEngineView, event: gen_qcoreevent.QEvent): void =


  fQWebEngineView_virtualbase_enterEvent(self.h, event.h)

type QWebEngineViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_enterEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_enterEvent ".} =
  type Cb = proc(super: QWebEngineViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWebEngineView, event: gen_qcoreevent.QEvent): void =


  fQWebEngineView_virtualbase_leaveEvent(self.h, event.h)

type QWebEngineViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_leaveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_leaveEvent ".} =
  type Cb = proc(super: QWebEngineViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWebEngineView, event: gen_qevent.QPaintEvent): void =


  fQWebEngineView_virtualbase_paintEvent(self.h, event.h)

type QWebEngineViewpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_paintEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_paintEvent ".} =
  type Cb = proc(super: QWebEngineViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWebEngineView, event: gen_qevent.QMoveEvent): void =


  fQWebEngineView_virtualbase_moveEvent(self.h, event.h)

type QWebEngineViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_moveEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_moveEvent ".} =
  type Cb = proc(super: QWebEngineViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QWebEngineView, event: gen_qevent.QResizeEvent): void =


  fQWebEngineView_virtualbase_resizeEvent(self.h, event.h)

type QWebEngineViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_resizeEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_resizeEvent ".} =
  type Cb = proc(super: QWebEngineViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWebEngineView, event: gen_qevent.QTabletEvent): void =


  fQWebEngineView_virtualbase_tabletEvent(self.h, event.h)

type QWebEngineViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_tabletEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_tabletEvent ".} =
  type Cb = proc(super: QWebEngineViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWebEngineView, event: gen_qevent.QActionEvent): void =


  fQWebEngineView_virtualbase_actionEvent(self.h, event.h)

type QWebEngineViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_actionEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_actionEvent ".} =
  type Cb = proc(super: QWebEngineViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWebEngineView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWebEngineView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebEngineViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_nativeEvent(self: ptr cQWebEngineView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWebEngineView_nativeEvent ".} =
  type Cb = proc(super: QWebEngineViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWebEngineView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QWebEngineView, param1: gen_qcoreevent.QEvent): void =


  fQWebEngineView_virtualbase_changeEvent(self.h, param1.h)

type QWebEngineViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_changeEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_changeEvent ".} =
  type Cb = proc(super: QWebEngineViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QWebEngineView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWebEngineView_virtualbase_metric(self.h, cint(param1))

type QWebEngineViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWebEngineView, slot: proc(super: QWebEngineViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_metric(self: ptr cQWebEngineView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebEngineView_metric ".} =
  type Cb = proc(super: QWebEngineViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWebEngineView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWebEngineView, painter: gen_qpainter.QPainter): void =


  fQWebEngineView_virtualbase_initPainter(self.h, painter.h)

type QWebEngineViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWebEngineView, slot: proc(super: QWebEngineViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_initPainter(self: ptr cQWebEngineView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_initPainter ".} =
  type Cb = proc(super: QWebEngineViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWebEngineView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWebEngineView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWebEngineView_virtualbase_redirected(self.h, offset.h))

type QWebEngineViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWebEngineView, slot: proc(super: QWebEngineViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_redirected(self: ptr cQWebEngineView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebEngineView_redirected ".} =
  type Cb = proc(super: QWebEngineViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWebEngineView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWebEngineView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWebEngineView_virtualbase_sharedPainter(self.h))

type QWebEngineViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWebEngineView, slot: proc(super: QWebEngineViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_sharedPainter(self: ptr cQWebEngineView, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineView_sharedPainter ".} =
  type Cb = proc(super: QWebEngineViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWebEngineView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QWebEngineView, param1: gen_qevent.QInputMethodEvent): void =


  fQWebEngineView_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebEngineViewinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_inputMethodEvent(self: ptr cQWebEngineView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_inputMethodEvent ".} =
  type Cb = proc(super: QWebEngineViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWebEngineView(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QWebEngineView, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWebEngineView_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWebEngineViewinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWebEngineView, slot: proc(super: QWebEngineViewinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_inputMethodQuery(self: ptr cQWebEngineView, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWebEngineView_inputMethodQuery ".} =
  type Cb = proc(super: QWebEngineViewinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWebEngineView(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QWebEngineView, next: bool): bool =


  fQWebEngineView_virtualbase_focusNextPrevChild(self.h, next)

type QWebEngineViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWebEngineView, slot: proc(super: QWebEngineViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_focusNextPrevChild(self: ptr cQWebEngineView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebEngineView_focusNextPrevChild ".} =
  type Cb = proc(super: QWebEngineViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWebEngineView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebEngineView, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineVieweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebEngineView, slot: proc(super: QWebEngineVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_eventFilter(self: ptr cQWebEngineView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineView_eventFilter ".} =
  type Cb = proc(super: QWebEngineVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebEngineView(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebEngineView, event: gen_qcoreevent.QTimerEvent): void =


  fQWebEngineView_virtualbase_timerEvent(self.h, event.h)

type QWebEngineViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_timerEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_timerEvent ".} =
  type Cb = proc(super: QWebEngineViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebEngineView, event: gen_qcoreevent.QChildEvent): void =


  fQWebEngineView_virtualbase_childEvent(self.h, event.h)

type QWebEngineViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_childEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_childEvent ".} =
  type Cb = proc(super: QWebEngineViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebEngineView, event: gen_qcoreevent.QEvent): void =


  fQWebEngineView_virtualbase_customEvent(self.h, event.h)

type QWebEngineViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebEngineView, slot: proc(super: QWebEngineViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_customEvent(self: ptr cQWebEngineView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_customEvent ".} =
  type Cb = proc(super: QWebEngineViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebEngineView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebEngineView, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineView_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebEngineView, slot: proc(super: QWebEngineViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_connectNotify(self: ptr cQWebEngineView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_connectNotify ".} =
  type Cb = proc(super: QWebEngineViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebEngineView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebEngineView, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineView_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebEngineView, slot: proc(super: QWebEngineViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineView_disconnectNotify(self: ptr cQWebEngineView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineView_disconnectNotify ".} =
  type Cb = proc(super: QWebEngineViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebEngineView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWebEngineView) =
  fcQWebEngineView_delete(self.h)
