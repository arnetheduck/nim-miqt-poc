import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qprintpreviewwidget.cpp", cflags).}


type QPrintPreviewWidgetViewMode* = cint
const
  QPrintPreviewWidgetSinglePageView* = 0
  QPrintPreviewWidgetFacingPagesView* = 1
  QPrintPreviewWidgetAllPagesView* = 2



type QPrintPreviewWidgetZoomMode* = cint
const
  QPrintPreviewWidgetCustomZoom* = 0
  QPrintPreviewWidgetFitToWidth* = 1
  QPrintPreviewWidgetFitInView* = 2



import gen_qprintpreviewwidget_types
export gen_qprintpreviewwidget_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQPrintPreviewWidget*{.exportc: "QPrintPreviewWidget", incompleteStruct.} = object

proc fcQPrintPreviewWidget_new(parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new".}
proc fcQPrintPreviewWidget_new2(printer: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new2".}
proc fcQPrintPreviewWidget_new3(): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new3".}
proc fcQPrintPreviewWidget_new4(printer: pointer, parent: pointer): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new4".}
proc fcQPrintPreviewWidget_new5(printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new5".}
proc fcQPrintPreviewWidget_new6(parent: pointer, flags: cint): ptr cQPrintPreviewWidget {.importc: "QPrintPreviewWidget_new6".}
proc fcQPrintPreviewWidget_metaObject(self: pointer, ): pointer {.importc: "QPrintPreviewWidget_metaObject".}
proc fcQPrintPreviewWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewWidget_metacast".}
proc fcQPrintPreviewWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewWidget_metacall".}
proc fcQPrintPreviewWidget_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr".}
proc fcQPrintPreviewWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf8".}
proc fcQPrintPreviewWidget_zoomFactor(self: pointer, ): float64 {.importc: "QPrintPreviewWidget_zoomFactor".}
proc fcQPrintPreviewWidget_orientation(self: pointer, ): cint {.importc: "QPrintPreviewWidget_orientation".}
proc fcQPrintPreviewWidget_viewMode(self: pointer, ): cint {.importc: "QPrintPreviewWidget_viewMode".}
proc fcQPrintPreviewWidget_zoomMode(self: pointer, ): cint {.importc: "QPrintPreviewWidget_zoomMode".}
proc fcQPrintPreviewWidget_currentPage(self: pointer, ): cint {.importc: "QPrintPreviewWidget_currentPage".}
proc fcQPrintPreviewWidget_pageCount(self: pointer, ): cint {.importc: "QPrintPreviewWidget_pageCount".}
proc fcQPrintPreviewWidget_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewWidget_setVisible".}
proc fcQPrintPreviewWidget_print(self: pointer, ): void {.importc: "QPrintPreviewWidget_print".}
proc fcQPrintPreviewWidget_zoomIn(self: pointer, ): void {.importc: "QPrintPreviewWidget_zoomIn".}
proc fcQPrintPreviewWidget_zoomOut(self: pointer, ): void {.importc: "QPrintPreviewWidget_zoomOut".}
proc fcQPrintPreviewWidget_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QPrintPreviewWidget_setZoomFactor".}
proc fcQPrintPreviewWidget_setOrientation(self: pointer, orientation: cint): void {.importc: "QPrintPreviewWidget_setOrientation".}
proc fcQPrintPreviewWidget_setViewMode(self: pointer, viewMode: cint): void {.importc: "QPrintPreviewWidget_setViewMode".}
proc fcQPrintPreviewWidget_setZoomMode(self: pointer, zoomMode: cint): void {.importc: "QPrintPreviewWidget_setZoomMode".}
proc fcQPrintPreviewWidget_setCurrentPage(self: pointer, pageNumber: cint): void {.importc: "QPrintPreviewWidget_setCurrentPage".}
proc fcQPrintPreviewWidget_fitToWidth(self: pointer, ): void {.importc: "QPrintPreviewWidget_fitToWidth".}
proc fcQPrintPreviewWidget_fitInView(self: pointer, ): void {.importc: "QPrintPreviewWidget_fitInView".}
proc fcQPrintPreviewWidget_setLandscapeOrientation(self: pointer, ): void {.importc: "QPrintPreviewWidget_setLandscapeOrientation".}
proc fcQPrintPreviewWidget_setPortraitOrientation(self: pointer, ): void {.importc: "QPrintPreviewWidget_setPortraitOrientation".}
proc fcQPrintPreviewWidget_setSinglePageViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setSinglePageViewMode".}
proc fcQPrintPreviewWidget_setFacingPagesViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setFacingPagesViewMode".}
proc fcQPrintPreviewWidget_setAllPagesViewMode(self: pointer, ): void {.importc: "QPrintPreviewWidget_setAllPagesViewMode".}
proc fcQPrintPreviewWidget_updatePreview(self: pointer, ): void {.importc: "QPrintPreviewWidget_updatePreview".}
proc fcQPrintPreviewWidget_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewWidget_paintRequested".}
proc fQPrintPreviewWidget_connect_paintRequested(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_connect_paintRequested".}
proc fcQPrintPreviewWidget_previewChanged(self: pointer, ): void {.importc: "QPrintPreviewWidget_previewChanged".}
proc fQPrintPreviewWidget_connect_previewChanged(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_connect_previewChanged".}
proc fcQPrintPreviewWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_tr2".}
proc fcQPrintPreviewWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewWidget_tr3".}
proc fcQPrintPreviewWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf82".}
proc fcQPrintPreviewWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewWidget_trUtf83".}
proc fcQPrintPreviewWidget_zoomIn1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomIn1".}
proc fcQPrintPreviewWidget_zoomOut1(self: pointer, zoom: float64): void {.importc: "QPrintPreviewWidget_zoomOut1".}
proc fQPrintPreviewWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_metaObject".}
proc fcQPrintPreviewWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metaObject".}
proc fQPrintPreviewWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPrintPreviewWidget_virtualbase_metacast".}
proc fcQPrintPreviewWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metacast".}
proc fQPrintPreviewWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPrintPreviewWidget_virtualbase_metacall".}
proc fcQPrintPreviewWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metacall".}
proc fQPrintPreviewWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintPreviewWidget_virtualbase_setVisible".}
proc fcQPrintPreviewWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_setVisible".}
proc fQPrintPreviewWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintPreviewWidget_virtualbase_devType".}
proc fcQPrintPreviewWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_devType".}
proc fQPrintPreviewWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_sizeHint".}
proc fcQPrintPreviewWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_sizeHint".}
proc fQPrintPreviewWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_minimumSizeHint".}
proc fQPrintPreviewWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintPreviewWidget_virtualbase_heightForWidth".}
proc fcQPrintPreviewWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_heightForWidth".}
proc fQPrintPreviewWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintPreviewWidget_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_hasHeightForWidth".}
proc fQPrintPreviewWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_paintEngine".}
proc fcQPrintPreviewWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_paintEngine".}
proc fQPrintPreviewWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintPreviewWidget_virtualbase_event".}
proc fcQPrintPreviewWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_event".}
proc fQPrintPreviewWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mousePressEvent".}
proc fcQPrintPreviewWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mousePressEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseReleaseEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseDoubleClickEvent".}
proc fQPrintPreviewWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_mouseMoveEvent".}
proc fQPrintPreviewWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_wheelEvent".}
proc fcQPrintPreviewWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_wheelEvent".}
proc fQPrintPreviewWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_keyPressEvent".}
proc fcQPrintPreviewWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_keyPressEvent".}
proc fQPrintPreviewWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_keyReleaseEvent".}
proc fQPrintPreviewWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_focusInEvent".}
proc fcQPrintPreviewWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusInEvent".}
proc fQPrintPreviewWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_focusOutEvent".}
proc fcQPrintPreviewWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusOutEvent".}
proc fQPrintPreviewWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_enterEvent".}
proc fcQPrintPreviewWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_enterEvent".}
proc fQPrintPreviewWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_leaveEvent".}
proc fcQPrintPreviewWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_leaveEvent".}
proc fQPrintPreviewWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_paintEvent".}
proc fcQPrintPreviewWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_paintEvent".}
proc fQPrintPreviewWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_moveEvent".}
proc fcQPrintPreviewWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_moveEvent".}
proc fQPrintPreviewWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_resizeEvent".}
proc fcQPrintPreviewWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_resizeEvent".}
proc fQPrintPreviewWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_closeEvent".}
proc fcQPrintPreviewWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_closeEvent".}
proc fQPrintPreviewWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_contextMenuEvent".}
proc fQPrintPreviewWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_tabletEvent".}
proc fcQPrintPreviewWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_tabletEvent".}
proc fQPrintPreviewWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_actionEvent".}
proc fcQPrintPreviewWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_actionEvent".}
proc fQPrintPreviewWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragEnterEvent".}
proc fQPrintPreviewWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragMoveEvent".}
proc fQPrintPreviewWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dragLeaveEvent".}
proc fQPrintPreviewWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_dropEvent".}
proc fcQPrintPreviewWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_dropEvent".}
proc fQPrintPreviewWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_showEvent".}
proc fcQPrintPreviewWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_showEvent".}
proc fQPrintPreviewWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_hideEvent".}
proc fcQPrintPreviewWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_hideEvent".}
proc fQPrintPreviewWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPrintPreviewWidget_virtualbase_nativeEvent".}
proc fcQPrintPreviewWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_nativeEvent".}
proc fQPrintPreviewWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_changeEvent".}
proc fcQPrintPreviewWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_changeEvent".}
proc fQPrintPreviewWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintPreviewWidget_virtualbase_metric".}
proc fcQPrintPreviewWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_metric".}
proc fQPrintPreviewWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_initPainter".}
proc fcQPrintPreviewWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_initPainter".}
proc fQPrintPreviewWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintPreviewWidget_virtualbase_redirected".}
proc fcQPrintPreviewWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_redirected".}
proc fQPrintPreviewWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintPreviewWidget_virtualbase_sharedPainter".}
proc fcQPrintPreviewWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_sharedPainter".}
proc fQPrintPreviewWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_inputMethodEvent".}
proc fQPrintPreviewWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintPreviewWidget_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_inputMethodQuery".}
proc fQPrintPreviewWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintPreviewWidget_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_focusNextPrevChild".}
proc fQPrintPreviewWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPrintPreviewWidget_virtualbase_eventFilter".}
proc fcQPrintPreviewWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_eventFilter".}
proc fQPrintPreviewWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_timerEvent".}
proc fcQPrintPreviewWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_timerEvent".}
proc fQPrintPreviewWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_childEvent".}
proc fcQPrintPreviewWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_childEvent".}
proc fQPrintPreviewWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_customEvent".}
proc fcQPrintPreviewWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_customEvent".}
proc fQPrintPreviewWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_connectNotify".}
proc fcQPrintPreviewWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_connectNotify".}
proc fQPrintPreviewWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewWidget_virtualbase_disconnectNotify".}
proc fcQPrintPreviewWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewWidget_override_virtual_disconnectNotify".}
proc fcQPrintPreviewWidget_staticMetaObject(): pointer {.importc: "QPrintPreviewWidget_staticMetaObject".}
proc fcQPrintPreviewWidget_delete(self: pointer) {.importc: "QPrintPreviewWidget_delete".}


func init*(T: type QPrintPreviewWidget, h: ptr cQPrintPreviewWidget): QPrintPreviewWidget =
  T(h: h)
proc create*(T: type QPrintPreviewWidget, parent: gen_qwidget.QWidget): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new(parent.h))
proc create2*(T: type QPrintPreviewWidget, printer: gen_qprinter.QPrinter): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new2(printer.h))
proc create*(T: type QPrintPreviewWidget, ): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new3())
proc create*(T: type QPrintPreviewWidget, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new4(printer.h, parent.h))
proc create*(T: type QPrintPreviewWidget, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new5(printer.h, parent.h, cint(flags)))
proc create*(T: type QPrintPreviewWidget, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QPrintPreviewWidget =

  QPrintPreviewWidget.init(fcQPrintPreviewWidget_new6(parent.h, cint(flags)))
proc metaObject*(self: QPrintPreviewWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPrintPreviewWidget_metaObject(self.h))

proc metacast*(self: QPrintPreviewWidget, param1: cstring): pointer =

  fcQPrintPreviewWidget_metacast(self.h, param1)

proc metacall*(self: QPrintPreviewWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPrintPreviewWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPrintPreviewWidget, s: cstring): string =

  let v_ms = fcQPrintPreviewWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPrintPreviewWidget, s: cstring): string =

  let v_ms = fcQPrintPreviewWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc zoomFactor*(self: QPrintPreviewWidget, ): float64 =

  fcQPrintPreviewWidget_zoomFactor(self.h)

proc orientation*(self: QPrintPreviewWidget, ): gen_qprinter.QPrinterOrientation =

  gen_qprinter.QPrinterOrientation(fcQPrintPreviewWidget_orientation(self.h))

proc viewMode*(self: QPrintPreviewWidget, ): QPrintPreviewWidgetViewMode =

  QPrintPreviewWidgetViewMode(fcQPrintPreviewWidget_viewMode(self.h))

proc zoomMode*(self: QPrintPreviewWidget, ): QPrintPreviewWidgetZoomMode =

  QPrintPreviewWidgetZoomMode(fcQPrintPreviewWidget_zoomMode(self.h))

proc currentPage*(self: QPrintPreviewWidget, ): cint =

  fcQPrintPreviewWidget_currentPage(self.h)

proc pageCount*(self: QPrintPreviewWidget, ): cint =

  fcQPrintPreviewWidget_pageCount(self.h)

proc setVisible*(self: QPrintPreviewWidget, visible: bool): void =

  fcQPrintPreviewWidget_setVisible(self.h, visible)

proc print*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_print(self.h)

proc zoomIn*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_zoomIn(self.h)

proc zoomOut*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_zoomOut(self.h)

proc setZoomFactor*(self: QPrintPreviewWidget, zoomFactor: float64): void =

  fcQPrintPreviewWidget_setZoomFactor(self.h, zoomFactor)

proc setOrientation*(self: QPrintPreviewWidget, orientation: gen_qprinter.QPrinterOrientation): void =

  fcQPrintPreviewWidget_setOrientation(self.h, cint(orientation))

proc setViewMode*(self: QPrintPreviewWidget, viewMode: QPrintPreviewWidgetViewMode): void =

  fcQPrintPreviewWidget_setViewMode(self.h, cint(viewMode))

proc setZoomMode*(self: QPrintPreviewWidget, zoomMode: QPrintPreviewWidgetZoomMode): void =

  fcQPrintPreviewWidget_setZoomMode(self.h, cint(zoomMode))

proc setCurrentPage*(self: QPrintPreviewWidget, pageNumber: cint): void =

  fcQPrintPreviewWidget_setCurrentPage(self.h, pageNumber)

proc fitToWidth*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_fitToWidth(self.h)

proc fitInView*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_fitInView(self.h)

proc setLandscapeOrientation*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_setLandscapeOrientation(self.h)

proc setPortraitOrientation*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_setPortraitOrientation(self.h)

proc setSinglePageViewMode*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_setSinglePageViewMode(self.h)

proc setFacingPagesViewMode*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_setFacingPagesViewMode(self.h)

proc setAllPagesViewMode*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_setAllPagesViewMode(self.h)

proc updatePreview*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_updatePreview(self.h)

proc paintRequested*(self: QPrintPreviewWidget, printer: gen_qprinter.QPrinter): void =

  fcQPrintPreviewWidget_paintRequested(self.h, printer.h)

proc miqt_exec_callback_QPrintPreviewWidget_paintRequested(slot: int, printer: pointer) {.exportc.} =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qprinter.QPrinter(h: printer)


  nimfunc[](slotval1)

proc onpaintRequested*(self: QPrintPreviewWidget, slot: proc(printer: gen_qprinter.QPrinter)) =
  type Cb = proc(printer: gen_qprinter.QPrinter)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPrintPreviewWidget_connect_paintRequested(self.h, cast[int](addr tmp[]))
proc previewChanged*(self: QPrintPreviewWidget, ): void =

  fcQPrintPreviewWidget_previewChanged(self.h)

proc miqt_exec_callback_QPrintPreviewWidget_previewChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpreviewChanged*(self: QPrintPreviewWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPrintPreviewWidget_connect_previewChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QPrintPreviewWidget, s: cstring, c: cstring): string =

  let v_ms = fcQPrintPreviewWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPrintPreviewWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPrintPreviewWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPrintPreviewWidget, s: cstring, c: cstring): string =

  let v_ms = fcQPrintPreviewWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPrintPreviewWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPrintPreviewWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc zoomIn1*(self: QPrintPreviewWidget, zoom: float64): void =

  fcQPrintPreviewWidget_zoomIn1(self.h, zoom)

proc zoomOut1*(self: QPrintPreviewWidget, zoom: float64): void =

  fcQPrintPreviewWidget_zoomOut1(self.h, zoom)

proc callVirtualBase_metaObject(self: QPrintPreviewWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPrintPreviewWidget_virtualbase_metaObject(self.h))

type QPrintPreviewWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metaObject(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metaObject ".} =
  type Cb = proc(super: QPrintPreviewWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPrintPreviewWidget, param1: cstring): pointer =


  fQPrintPreviewWidget_virtualbase_metacast(self.h, param1)

type QPrintPreviewWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metacast(self: ptr cQPrintPreviewWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metacast ".} =
  type Cb = proc(super: QPrintPreviewWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPrintPreviewWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPrintPreviewWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPrintPreviewWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPrintPreviewWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metacall(self: ptr cQPrintPreviewWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metacall ".} =
  type Cb = proc(super: QPrintPreviewWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPrintPreviewWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QPrintPreviewWidget, visible: bool): void =


  fQPrintPreviewWidget_virtualbase_setVisible(self.h, visible)

type QPrintPreviewWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_setVisible(self: ptr cQPrintPreviewWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_setVisible ".} =
  type Cb = proc(super: QPrintPreviewWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QPrintPreviewWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QPrintPreviewWidget, ): cint =


  fQPrintPreviewWidget_virtualbase_devType(self.h)

type QPrintPreviewWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_devType(self: ptr cQPrintPreviewWidget, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_devType ".} =
  type Cb = proc(super: QPrintPreviewWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_sizeHint(self: QPrintPreviewWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintPreviewWidget_virtualbase_sizeHint(self.h))

type QPrintPreviewWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_sizeHint(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_sizeHint ".} =
  type Cb = proc(super: QPrintPreviewWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QPrintPreviewWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQPrintPreviewWidget_virtualbase_minimumSizeHint(self.h))

type QPrintPreviewWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_minimumSizeHint(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_minimumSizeHint ".} =
  type Cb = proc(super: QPrintPreviewWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QPrintPreviewWidget, param1: cint): cint =


  fQPrintPreviewWidget_virtualbase_heightForWidth(self.h, param1)

type QPrintPreviewWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_heightForWidth(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_heightForWidth ".} =
  type Cb = proc(super: QPrintPreviewWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QPrintPreviewWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QPrintPreviewWidget, ): bool =


  fQPrintPreviewWidget_virtualbase_hasHeightForWidth(self.h)

type QPrintPreviewWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_hasHeightForWidth(self: ptr cQPrintPreviewWidget, slot: int): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QPrintPreviewWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPrintPreviewWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPrintPreviewWidget_virtualbase_paintEngine(self.h))

type QPrintPreviewWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_paintEngine(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_paintEngine ".} =
  type Cb = proc(super: QPrintPreviewWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QPrintPreviewWidget, event: gen_qcoreevent.QEvent): bool =


  fQPrintPreviewWidget_virtualbase_event(self.h, event.h)

type QPrintPreviewWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_event(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_event ".} =
  type Cb = proc(super: QPrintPreviewWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QPrintPreviewWidget, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewWidget_virtualbase_mousePressEvent(self.h, event.h)

type QPrintPreviewWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mousePressEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mousePressEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QPrintPreviewWidget, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintPreviewWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseReleaseEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QPrintPreviewWidget, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintPreviewWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseDoubleClickEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QPrintPreviewWidget, event: gen_qevent.QMouseEvent): void =


  fQPrintPreviewWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintPreviewWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_mouseMoveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QPrintPreviewWidget, event: gen_qevent.QWheelEvent): void =


  fQPrintPreviewWidget_virtualbase_wheelEvent(self.h, event.h)

type QPrintPreviewWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_wheelEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_wheelEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QPrintPreviewWidget, event: gen_qevent.QKeyEvent): void =


  fQPrintPreviewWidget_virtualbase_keyPressEvent(self.h, event.h)

type QPrintPreviewWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_keyPressEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_keyPressEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QPrintPreviewWidget, event: gen_qevent.QKeyEvent): void =


  fQPrintPreviewWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintPreviewWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_keyReleaseEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QPrintPreviewWidget, event: gen_qevent.QFocusEvent): void =


  fQPrintPreviewWidget_virtualbase_focusInEvent(self.h, event.h)

type QPrintPreviewWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusInEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusInEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QPrintPreviewWidget, event: gen_qevent.QFocusEvent): void =


  fQPrintPreviewWidget_virtualbase_focusOutEvent(self.h, event.h)

type QPrintPreviewWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusOutEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusOutEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QPrintPreviewWidget, event: gen_qcoreevent.QEvent): void =


  fQPrintPreviewWidget_virtualbase_enterEvent(self.h, event.h)

type QPrintPreviewWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_enterEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_enterEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QPrintPreviewWidget, event: gen_qcoreevent.QEvent): void =


  fQPrintPreviewWidget_virtualbase_leaveEvent(self.h, event.h)

type QPrintPreviewWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_leaveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_leaveEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QPrintPreviewWidget, event: gen_qevent.QPaintEvent): void =


  fQPrintPreviewWidget_virtualbase_paintEvent(self.h, event.h)

type QPrintPreviewWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_paintEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_paintEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QPrintPreviewWidget, event: gen_qevent.QMoveEvent): void =


  fQPrintPreviewWidget_virtualbase_moveEvent(self.h, event.h)

type QPrintPreviewWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_moveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_moveEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QPrintPreviewWidget, event: gen_qevent.QResizeEvent): void =


  fQPrintPreviewWidget_virtualbase_resizeEvent(self.h, event.h)

type QPrintPreviewWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_resizeEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_resizeEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QPrintPreviewWidget, event: gen_qevent.QCloseEvent): void =


  fQPrintPreviewWidget_virtualbase_closeEvent(self.h, event.h)

type QPrintPreviewWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_closeEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_closeEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QPrintPreviewWidget, event: gen_qevent.QContextMenuEvent): void =


  fQPrintPreviewWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QPrintPreviewWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_contextMenuEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_contextMenuEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QPrintPreviewWidget, event: gen_qevent.QTabletEvent): void =


  fQPrintPreviewWidget_virtualbase_tabletEvent(self.h, event.h)

type QPrintPreviewWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_tabletEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_tabletEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QPrintPreviewWidget, event: gen_qevent.QActionEvent): void =


  fQPrintPreviewWidget_virtualbase_actionEvent(self.h, event.h)

type QPrintPreviewWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_actionEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_actionEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QPrintPreviewWidget, event: gen_qevent.QDragEnterEvent): void =


  fQPrintPreviewWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintPreviewWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragEnterEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragEnterEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QPrintPreviewWidget, event: gen_qevent.QDragMoveEvent): void =


  fQPrintPreviewWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintPreviewWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragMoveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragMoveEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QPrintPreviewWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQPrintPreviewWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintPreviewWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dragLeaveEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QPrintPreviewWidget, event: gen_qevent.QDropEvent): void =


  fQPrintPreviewWidget_virtualbase_dropEvent(self.h, event.h)

type QPrintPreviewWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_dropEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_dropEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QPrintPreviewWidget, event: gen_qevent.QShowEvent): void =


  fQPrintPreviewWidget_virtualbase_showEvent(self.h, event.h)

type QPrintPreviewWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_showEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_showEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QPrintPreviewWidget, event: gen_qevent.QHideEvent): void =


  fQPrintPreviewWidget_virtualbase_hideEvent(self.h, event.h)

type QPrintPreviewWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_hideEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_hideEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QPrintPreviewWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQPrintPreviewWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintPreviewWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_nativeEvent(self: ptr cQPrintPreviewWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_nativeEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QPrintPreviewWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QPrintPreviewWidget, param1: gen_qcoreevent.QEvent): void =


  fQPrintPreviewWidget_virtualbase_changeEvent(self.h, param1.h)

type QPrintPreviewWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_changeEvent(self: ptr cQPrintPreviewWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_changeEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QPrintPreviewWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QPrintPreviewWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPrintPreviewWidget_virtualbase_metric(self.h, cint(param1))

type QPrintPreviewWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_metric(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewWidget_metric ".} =
  type Cb = proc(super: QPrintPreviewWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPrintPreviewWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPrintPreviewWidget, painter: gen_qpainter.QPainter): void =


  fQPrintPreviewWidget_virtualbase_initPainter(self.h, painter.h)

type QPrintPreviewWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_initPainter(self: ptr cQPrintPreviewWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_initPainter ".} =
  type Cb = proc(super: QPrintPreviewWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPrintPreviewWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPrintPreviewWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPrintPreviewWidget_virtualbase_redirected(self.h, offset.h))

type QPrintPreviewWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_redirected(self: ptr cQPrintPreviewWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_redirected ".} =
  type Cb = proc(super: QPrintPreviewWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPrintPreviewWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPrintPreviewWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPrintPreviewWidget_virtualbase_sharedPainter(self.h))

type QPrintPreviewWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_sharedPainter(self: ptr cQPrintPreviewWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_sharedPainter ".} =
  type Cb = proc(super: QPrintPreviewWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPrintPreviewWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QPrintPreviewWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQPrintPreviewWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintPreviewWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_inputMethodEvent(self: ptr cQPrintPreviewWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_inputMethodEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QPrintPreviewWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QPrintPreviewWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPrintPreviewWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintPreviewWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_inputMethodQuery(self: ptr cQPrintPreviewWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintPreviewWidget_inputMethodQuery ".} =
  type Cb = proc(super: QPrintPreviewWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QPrintPreviewWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QPrintPreviewWidget, next: bool): bool =


  fQPrintPreviewWidget_virtualbase_focusNextPrevChild(self.h, next)

type QPrintPreviewWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_focusNextPrevChild(self: ptr cQPrintPreviewWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QPrintPreviewWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QPrintPreviewWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPrintPreviewWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPrintPreviewWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPrintPreviewWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_eventFilter(self: ptr cQPrintPreviewWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewWidget_eventFilter ".} =
  type Cb = proc(super: QPrintPreviewWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPrintPreviewWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPrintPreviewWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQPrintPreviewWidget_virtualbase_timerEvent(self.h, event.h)

type QPrintPreviewWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_timerEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_timerEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPrintPreviewWidget, event: gen_qcoreevent.QChildEvent): void =


  fQPrintPreviewWidget_virtualbase_childEvent(self.h, event.h)

type QPrintPreviewWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_childEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_childEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPrintPreviewWidget, event: gen_qcoreevent.QEvent): void =


  fQPrintPreviewWidget_virtualbase_customEvent(self.h, event.h)

type QPrintPreviewWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_customEvent(self: ptr cQPrintPreviewWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_customEvent ".} =
  type Cb = proc(super: QPrintPreviewWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPrintPreviewWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPrintPreviewWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintPreviewWidget_virtualbase_connectNotify(self.h, signal.h)

type QPrintPreviewWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_connectNotify(self: ptr cQPrintPreviewWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_connectNotify ".} =
  type Cb = proc(super: QPrintPreviewWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPrintPreviewWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPrintPreviewWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQPrintPreviewWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintPreviewWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPrintPreviewWidget, slot: proc(super: QPrintPreviewWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintPreviewWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewWidget_disconnectNotify(self: ptr cQPrintPreviewWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewWidget_disconnectNotify ".} =
  type Cb = proc(super: QPrintPreviewWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPrintPreviewWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPrintPreviewWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPrintPreviewWidget_staticMetaObject())
proc delete*(self: QPrintPreviewWidget) =
  fcQPrintPreviewWidget_delete(self.h)
