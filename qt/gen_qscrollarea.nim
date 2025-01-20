import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qscrollarea.cpp", cflags).}


import gen_qscrollarea_types
export gen_qscrollarea_types

import
  gen_qabstractscrollarea,
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
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
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
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQScrollArea*{.exportc: "QScrollArea", incompleteStruct.} = object

proc fcQScrollArea_new(parent: pointer): ptr cQScrollArea {.importc: "QScrollArea_new".}
proc fcQScrollArea_new2(): ptr cQScrollArea {.importc: "QScrollArea_new2".}
proc fcQScrollArea_metaObject(self: pointer, ): pointer {.importc: "QScrollArea_metaObject".}
proc fcQScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollArea_metacast".}
proc fcQScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollArea_metacall".}
proc fcQScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QScrollArea_tr".}
proc fcQScrollArea_trUtf8(s: cstring): struct_miqt_string {.importc: "QScrollArea_trUtf8".}
proc fcQScrollArea_widget(self: pointer, ): pointer {.importc: "QScrollArea_widget".}
proc fcQScrollArea_setWidget(self: pointer, widget: pointer): void {.importc: "QScrollArea_setWidget".}
proc fcQScrollArea_takeWidget(self: pointer, ): pointer {.importc: "QScrollArea_takeWidget".}
proc fcQScrollArea_widgetResizable(self: pointer, ): bool {.importc: "QScrollArea_widgetResizable".}
proc fcQScrollArea_setWidgetResizable(self: pointer, resizable: bool): void {.importc: "QScrollArea_setWidgetResizable".}
proc fcQScrollArea_sizeHint(self: pointer, ): pointer {.importc: "QScrollArea_sizeHint".}
proc fcQScrollArea_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QScrollArea_focusNextPrevChild".}
proc fcQScrollArea_alignment(self: pointer, ): cint {.importc: "QScrollArea_alignment".}
proc fcQScrollArea_setAlignment(self: pointer, alignment: cint): void {.importc: "QScrollArea_setAlignment".}
proc fcQScrollArea_ensureVisible(self: pointer, x: cint, y: cint): void {.importc: "QScrollArea_ensureVisible".}
proc fcQScrollArea_ensureWidgetVisible(self: pointer, childWidget: pointer): void {.importc: "QScrollArea_ensureWidgetVisible".}
proc fcQScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollArea_tr2".}
proc fcQScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollArea_tr3".}
proc fcQScrollArea_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollArea_trUtf82".}
proc fcQScrollArea_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollArea_trUtf83".}
proc fcQScrollArea_ensureVisible3(self: pointer, x: cint, y: cint, xmargin: cint): void {.importc: "QScrollArea_ensureVisible3".}
proc fcQScrollArea_ensureVisible4(self: pointer, x: cint, y: cint, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureVisible4".}
proc fcQScrollArea_ensureWidgetVisible2(self: pointer, childWidget: pointer, xmargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible2".}
proc fcQScrollArea_ensureWidgetVisible3(self: pointer, childWidget: pointer, xmargin: cint, ymargin: cint): void {.importc: "QScrollArea_ensureWidgetVisible3".}
proc fQScrollArea_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_metaObject".}
proc fcQScrollArea_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metaObject".}
proc fQScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QScrollArea_virtualbase_metacast".}
proc fcQScrollArea_override_virtual_metacast(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metacast".}
proc fQScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScrollArea_virtualbase_metacall".}
proc fcQScrollArea_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metacall".}
proc fQScrollArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_sizeHint".}
proc fcQScrollArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_sizeHint".}
proc fQScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QScrollArea_virtualbase_focusNextPrevChild".}
proc fcQScrollArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusNextPrevChild".}
proc fQScrollArea_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QScrollArea_virtualbase_event".}
proc fcQScrollArea_override_virtual_event(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_event".}
proc fQScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QScrollArea_virtualbase_eventFilter".}
proc fcQScrollArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_eventFilter".}
proc fQScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_resizeEvent".}
proc fcQScrollArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_resizeEvent".}
proc fQScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QScrollArea_virtualbase_scrollContentsBy".}
proc fcQScrollArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_scrollContentsBy".}
proc fQScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_viewportSizeHint".}
proc fcQScrollArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_viewportSizeHint".}
proc fQScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_minimumSizeHint".}
proc fcQScrollArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_minimumSizeHint".}
proc fQScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QScrollArea_virtualbase_setupViewport".}
proc fcQScrollArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_setupViewport".}
proc fQScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QScrollArea_virtualbase_viewportEvent".}
proc fcQScrollArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_viewportEvent".}
proc fQScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_paintEvent".}
proc fcQScrollArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_paintEvent".}
proc fQScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mousePressEvent".}
proc fcQScrollArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mousePressEvent".}
proc fQScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQScrollArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseReleaseEvent".}
proc fQScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseDoubleClickEvent".}
proc fQScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_mouseMoveEvent".}
proc fcQScrollArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_mouseMoveEvent".}
proc fQScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_wheelEvent".}
proc fcQScrollArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_wheelEvent".}
proc fQScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_contextMenuEvent".}
proc fcQScrollArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_contextMenuEvent".}
proc fQScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragEnterEvent".}
proc fcQScrollArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragEnterEvent".}
proc fQScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragMoveEvent".}
proc fcQScrollArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragMoveEvent".}
proc fQScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dragLeaveEvent".}
proc fcQScrollArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dragLeaveEvent".}
proc fQScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_dropEvent".}
proc fcQScrollArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_dropEvent".}
proc fQScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_keyPressEvent".}
proc fcQScrollArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_keyPressEvent".}
proc fQScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_changeEvent".}
proc fcQScrollArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_changeEvent".}
proc fQScrollArea_virtualbase_devType(self: pointer, ): cint{.importc: "QScrollArea_virtualbase_devType".}
proc fcQScrollArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_devType".}
proc fQScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QScrollArea_virtualbase_setVisible".}
proc fcQScrollArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_setVisible".}
proc fQScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QScrollArea_virtualbase_heightForWidth".}
proc fcQScrollArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_heightForWidth".}
proc fQScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QScrollArea_virtualbase_hasHeightForWidth".}
proc fcQScrollArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_hasHeightForWidth".}
proc fQScrollArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_paintEngine".}
proc fcQScrollArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_paintEngine".}
proc fQScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_keyReleaseEvent".}
proc fcQScrollArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_keyReleaseEvent".}
proc fQScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_focusInEvent".}
proc fcQScrollArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusInEvent".}
proc fQScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_focusOutEvent".}
proc fcQScrollArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_focusOutEvent".}
proc fQScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_enterEvent".}
proc fcQScrollArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_enterEvent".}
proc fQScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_leaveEvent".}
proc fcQScrollArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_leaveEvent".}
proc fQScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_moveEvent".}
proc fcQScrollArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_moveEvent".}
proc fQScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_closeEvent".}
proc fcQScrollArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_closeEvent".}
proc fQScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_tabletEvent".}
proc fcQScrollArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_tabletEvent".}
proc fQScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_actionEvent".}
proc fcQScrollArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_actionEvent".}
proc fQScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_showEvent".}
proc fcQScrollArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_showEvent".}
proc fQScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_hideEvent".}
proc fcQScrollArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_hideEvent".}
proc fQScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QScrollArea_virtualbase_nativeEvent".}
proc fcQScrollArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_nativeEvent".}
proc fQScrollArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QScrollArea_virtualbase_metric".}
proc fcQScrollArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_metric".}
proc fQScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QScrollArea_virtualbase_initPainter".}
proc fcQScrollArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_initPainter".}
proc fQScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QScrollArea_virtualbase_redirected".}
proc fcQScrollArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_redirected".}
proc fQScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QScrollArea_virtualbase_sharedPainter".}
proc fcQScrollArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_sharedPainter".}
proc fQScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QScrollArea_virtualbase_inputMethodEvent".}
proc fcQScrollArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_inputMethodEvent".}
proc fQScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QScrollArea_virtualbase_inputMethodQuery".}
proc fcQScrollArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_inputMethodQuery".}
proc fQScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_timerEvent".}
proc fcQScrollArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_timerEvent".}
proc fQScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_childEvent".}
proc fcQScrollArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_childEvent".}
proc fQScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScrollArea_virtualbase_customEvent".}
proc fcQScrollArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_customEvent".}
proc fQScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScrollArea_virtualbase_connectNotify".}
proc fcQScrollArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_connectNotify".}
proc fQScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScrollArea_virtualbase_disconnectNotify".}
proc fcQScrollArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScrollArea_override_virtual_disconnectNotify".}
proc fcQScrollArea_staticMetaObject(): pointer {.importc: "QScrollArea_staticMetaObject".}
proc fcQScrollArea_delete(self: pointer) {.importc: "QScrollArea_delete".}


func init*(T: type QScrollArea, h: ptr cQScrollArea): QScrollArea =
  T(h: h)
proc create*(T: type QScrollArea, parent: gen_qwidget.QWidget): QScrollArea =

  QScrollArea.init(fcQScrollArea_new(parent.h))
proc create*(T: type QScrollArea, ): QScrollArea =

  QScrollArea.init(fcQScrollArea_new2())
proc metaObject*(self: QScrollArea, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQScrollArea_metaObject(self.h))

proc metacast*(self: QScrollArea, param1: cstring): pointer =

  fcQScrollArea_metacast(self.h, param1)

proc metacall*(self: QScrollArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQScrollArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QScrollArea, s: cstring): string =

  let v_ms = fcQScrollArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QScrollArea, s: cstring): string =

  let v_ms = fcQScrollArea_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc widget*(self: QScrollArea, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQScrollArea_widget(self.h))

proc setWidget*(self: QScrollArea, widget: gen_qwidget.QWidget): void =

  fcQScrollArea_setWidget(self.h, widget.h)

proc takeWidget*(self: QScrollArea, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQScrollArea_takeWidget(self.h))

proc widgetResizable*(self: QScrollArea, ): bool =

  fcQScrollArea_widgetResizable(self.h)

proc setWidgetResizable*(self: QScrollArea, resizable: bool): void =

  fcQScrollArea_setWidgetResizable(self.h, resizable)

proc sizeHint*(self: QScrollArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScrollArea_sizeHint(self.h))

proc focusNextPrevChild*(self: QScrollArea, next: bool): bool =

  fcQScrollArea_focusNextPrevChild(self.h, next)

proc alignment*(self: QScrollArea, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQScrollArea_alignment(self.h))

proc setAlignment*(self: QScrollArea, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQScrollArea_setAlignment(self.h, cint(alignment))

proc ensureVisible*(self: QScrollArea, x: cint, y: cint): void =

  fcQScrollArea_ensureVisible(self.h, x, y)

proc ensureWidgetVisible*(self: QScrollArea, childWidget: gen_qwidget.QWidget): void =

  fcQScrollArea_ensureWidgetVisible(self.h, childWidget.h)

proc tr2*(_: type QScrollArea, s: cstring, c: cstring): string =

  let v_ms = fcQScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QScrollArea, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QScrollArea, s: cstring, c: cstring): string =

  let v_ms = fcQScrollArea_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QScrollArea, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScrollArea_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ensureVisible3*(self: QScrollArea, x: cint, y: cint, xmargin: cint): void =

  fcQScrollArea_ensureVisible3(self.h, x, y, xmargin)

proc ensureVisible4*(self: QScrollArea, x: cint, y: cint, xmargin: cint, ymargin: cint): void =

  fcQScrollArea_ensureVisible4(self.h, x, y, xmargin, ymargin)

proc ensureWidgetVisible2*(self: QScrollArea, childWidget: gen_qwidget.QWidget, xmargin: cint): void =

  fcQScrollArea_ensureWidgetVisible2(self.h, childWidget.h, xmargin)

proc ensureWidgetVisible3*(self: QScrollArea, childWidget: gen_qwidget.QWidget, xmargin: cint, ymargin: cint): void =

  fcQScrollArea_ensureWidgetVisible3(self.h, childWidget.h, xmargin, ymargin)

proc callVirtualBase_metaObject(self: QScrollArea, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQScrollArea_virtualbase_metaObject(self.h))

type QScrollAreametaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QScrollArea, slot: proc(super: QScrollAreametaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreametaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metaObject(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_metaObject ".} =
  type Cb = proc(super: QScrollAreametaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QScrollArea, param1: cstring): pointer =


  fQScrollArea_virtualbase_metacast(self.h, param1)

type QScrollAreametacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QScrollArea, slot: proc(super: QScrollAreametacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreametacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metacast(self: ptr cQScrollArea, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QScrollArea_metacast ".} =
  type Cb = proc(super: QScrollAreametacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QScrollArea(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QScrollArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScrollAreametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QScrollArea, slot: proc(super: QScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metacall(self: ptr cQScrollArea, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScrollArea_metacall ".} =
  type Cb = proc(super: QScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QScrollArea(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQScrollArea_virtualbase_sizeHint(self.h))

type QScrollAreasizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QScrollArea, slot: proc(super: QScrollAreasizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreasizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_sizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_sizeHint ".} =
  type Cb = proc(super: QScrollAreasizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QScrollArea, next: bool): bool =


  fQScrollArea_virtualbase_focusNextPrevChild(self.h, next)

type QScrollAreafocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QScrollArea, slot: proc(super: QScrollAreafocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreafocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusNextPrevChild(self: ptr cQScrollArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QScrollArea_focusNextPrevChild ".} =
  type Cb = proc(super: QScrollAreafocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QScrollArea(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QScrollArea, param1: gen_qcoreevent.QEvent): bool =


  fQScrollArea_virtualbase_event(self.h, param1.h)

type QScrollAreaeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QScrollArea, slot: proc(super: QScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_event(self: ptr cQScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_event ".} =
  type Cb = proc(super: QScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QScrollArea, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QScrollAreaeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QScrollArea, slot: proc(super: QScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_eventFilter(self: ptr cQScrollArea, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_eventFilter ".} =
  type Cb = proc(super: QScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QScrollArea(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QScrollArea, param1: gen_qevent.QResizeEvent): void =


  fQScrollArea_virtualbase_resizeEvent(self.h, param1.h)

type QScrollArearesizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QScrollArea, slot: proc(super: QScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_resizeEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_resizeEvent ".} =
  type Cb = proc(super: QScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QScrollArea, dx: cint, dy: cint): void =


  fQScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QScrollAreascrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QScrollArea, slot: proc(super: QScrollAreascrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreascrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_scrollContentsBy(self: ptr cQScrollArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QScrollArea_scrollContentsBy ".} =
  type Cb = proc(super: QScrollAreascrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QScrollArea(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewportSizeHint(self: QScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQScrollArea_virtualbase_viewportSizeHint(self.h))

type QScrollAreaviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QScrollArea, slot: proc(super: QScrollAreaviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_viewportSizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_viewportSizeHint ".} =
  type Cb = proc(super: QScrollAreaviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQScrollArea_virtualbase_minimumSizeHint(self.h))

type QScrollAreaminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QScrollArea, slot: proc(super: QScrollAreaminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_minimumSizeHint(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_minimumSizeHint ".} =
  type Cb = proc(super: QScrollAreaminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QScrollArea, viewport: gen_qwidget.QWidget): void =


  fQScrollArea_virtualbase_setupViewport(self.h, viewport.h)

type QScrollAreasetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QScrollArea, slot: proc(super: QScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_setupViewport(self: ptr cQScrollArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_setupViewport ".} =
  type Cb = proc(super: QScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QScrollArea(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportEvent(self: QScrollArea, param1: gen_qcoreevent.QEvent): bool =


  fQScrollArea_virtualbase_viewportEvent(self.h, param1.h)

type QScrollAreaviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QScrollArea, slot: proc(super: QScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_viewportEvent(self: ptr cQScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QScrollArea_viewportEvent ".} =
  type Cb = proc(super: QScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QScrollArea, param1: gen_qevent.QPaintEvent): void =


  fQScrollArea_virtualbase_paintEvent(self.h, param1.h)

type QScrollAreapaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QScrollArea, slot: proc(super: QScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_paintEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_paintEvent ".} =
  type Cb = proc(super: QScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

type QScrollAreamousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QScrollArea, slot: proc(super: QScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mousePressEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mousePressEvent ".} =
  type Cb = proc(super: QScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QScrollAreamouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QScrollArea, slot: proc(super: QScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseReleaseEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseReleaseEvent ".} =
  type Cb = proc(super: QScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QScrollAreamouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QScrollArea, slot: proc(super: QScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseDoubleClickEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QScrollAreamouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QScrollArea, slot: proc(super: QScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_mouseMoveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_mouseMoveEvent ".} =
  type Cb = proc(super: QScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QScrollArea, param1: gen_qevent.QWheelEvent): void =


  fQScrollArea_virtualbase_wheelEvent(self.h, param1.h)

type QScrollAreawheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QScrollArea, slot: proc(super: QScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_wheelEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_wheelEvent ".} =
  type Cb = proc(super: QScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QScrollArea, param1: gen_qevent.QContextMenuEvent): void =


  fQScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QScrollAreacontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QScrollArea, slot: proc(super: QScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_contextMenuEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_contextMenuEvent ".} =
  type Cb = proc(super: QScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QScrollArea, param1: gen_qevent.QDragEnterEvent): void =


  fQScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QScrollAreadragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QScrollArea, slot: proc(super: QScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragEnterEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragEnterEvent ".} =
  type Cb = proc(super: QScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QScrollArea, param1: gen_qevent.QDragMoveEvent): void =


  fQScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QScrollAreadragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QScrollArea, slot: proc(super: QScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragMoveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragMoveEvent ".} =
  type Cb = proc(super: QScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QScrollArea, param1: gen_qevent.QDragLeaveEvent): void =


  fQScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QScrollAreadragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QScrollArea, slot: proc(super: QScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dragLeaveEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dragLeaveEvent ".} =
  type Cb = proc(super: QScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QScrollArea, param1: gen_qevent.QDropEvent): void =


  fQScrollArea_virtualbase_dropEvent(self.h, param1.h)

type QScrollAreadropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QScrollArea, slot: proc(super: QScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_dropEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_dropEvent ".} =
  type Cb = proc(super: QScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QScrollArea, param1: gen_qevent.QKeyEvent): void =


  fQScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

type QScrollAreakeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QScrollArea, slot: proc(super: QScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_keyPressEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_keyPressEvent ".} =
  type Cb = proc(super: QScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QScrollArea, param1: gen_qcoreevent.QEvent): void =


  fQScrollArea_virtualbase_changeEvent(self.h, param1.h)

type QScrollAreachangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QScrollArea, slot: proc(super: QScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_changeEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_changeEvent ".} =
  type Cb = proc(super: QScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QScrollArea, ): cint =


  fQScrollArea_virtualbase_devType(self.h)

type QScrollAreadevTypeBase* = proc(): cint
proc ondevType*(self: QScrollArea, slot: proc(super: QScrollAreadevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_devType(self: ptr cQScrollArea, slot: int): cint {.exportc: "miqt_exec_callback_QScrollArea_devType ".} =
  type Cb = proc(super: QScrollAreadevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QScrollArea, visible: bool): void =


  fQScrollArea_virtualbase_setVisible(self.h, visible)

type QScrollAreasetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QScrollArea, slot: proc(super: QScrollAreasetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreasetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_setVisible(self: ptr cQScrollArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QScrollArea_setVisible ".} =
  type Cb = proc(super: QScrollAreasetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QScrollArea(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QScrollArea, param1: cint): cint =


  fQScrollArea_virtualbase_heightForWidth(self.h, param1)

type QScrollAreaheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QScrollArea, slot: proc(super: QScrollAreaheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_heightForWidth(self: ptr cQScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollArea_heightForWidth ".} =
  type Cb = proc(super: QScrollAreaheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QScrollArea(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QScrollArea, ): bool =


  fQScrollArea_virtualbase_hasHeightForWidth(self.h)

type QScrollAreahasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QScrollArea, slot: proc(super: QScrollAreahasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreahasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_hasHeightForWidth(self: ptr cQScrollArea, slot: int): bool {.exportc: "miqt_exec_callback_QScrollArea_hasHeightForWidth ".} =
  type Cb = proc(super: QScrollAreahasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QScrollArea, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQScrollArea_virtualbase_paintEngine(self.h))

type QScrollAreapaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QScrollArea, slot: proc(super: QScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_paintEngine(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_paintEngine ".} =
  type Cb = proc(super: QScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QScrollArea, event: gen_qevent.QKeyEvent): void =


  fQScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QScrollAreakeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QScrollArea, slot: proc(super: QScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_keyReleaseEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_keyReleaseEvent ".} =
  type Cb = proc(super: QScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QScrollArea, event: gen_qevent.QFocusEvent): void =


  fQScrollArea_virtualbase_focusInEvent(self.h, event.h)

type QScrollAreafocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QScrollArea, slot: proc(super: QScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusInEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_focusInEvent ".} =
  type Cb = proc(super: QScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QScrollArea, event: gen_qevent.QFocusEvent): void =


  fQScrollArea_virtualbase_focusOutEvent(self.h, event.h)

type QScrollAreafocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QScrollArea, slot: proc(super: QScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_focusOutEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_focusOutEvent ".} =
  type Cb = proc(super: QScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QScrollArea, event: gen_qcoreevent.QEvent): void =


  fQScrollArea_virtualbase_enterEvent(self.h, event.h)

type QScrollAreaenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QScrollArea, slot: proc(super: QScrollAreaenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_enterEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_enterEvent ".} =
  type Cb = proc(super: QScrollAreaenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QScrollArea, event: gen_qcoreevent.QEvent): void =


  fQScrollArea_virtualbase_leaveEvent(self.h, event.h)

type QScrollArealeaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QScrollArea, slot: proc(super: QScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_leaveEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_leaveEvent ".} =
  type Cb = proc(super: QScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QScrollArea, event: gen_qevent.QMoveEvent): void =


  fQScrollArea_virtualbase_moveEvent(self.h, event.h)

type QScrollAreamoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QScrollArea, slot: proc(super: QScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_moveEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_moveEvent ".} =
  type Cb = proc(super: QScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QScrollArea, event: gen_qevent.QCloseEvent): void =


  fQScrollArea_virtualbase_closeEvent(self.h, event.h)

type QScrollAreacloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QScrollArea, slot: proc(super: QScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_closeEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_closeEvent ".} =
  type Cb = proc(super: QScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QScrollArea, event: gen_qevent.QTabletEvent): void =


  fQScrollArea_virtualbase_tabletEvent(self.h, event.h)

type QScrollAreatabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QScrollArea, slot: proc(super: QScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_tabletEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_tabletEvent ".} =
  type Cb = proc(super: QScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QScrollArea, event: gen_qevent.QActionEvent): void =


  fQScrollArea_virtualbase_actionEvent(self.h, event.h)

type QScrollAreaactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QScrollArea, slot: proc(super: QScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_actionEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_actionEvent ".} =
  type Cb = proc(super: QScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QScrollArea, event: gen_qevent.QShowEvent): void =


  fQScrollArea_virtualbase_showEvent(self.h, event.h)

type QScrollAreashowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QScrollArea, slot: proc(super: QScrollAreashowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreashowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_showEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_showEvent ".} =
  type Cb = proc(super: QScrollAreashowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QScrollArea, event: gen_qevent.QHideEvent): void =


  fQScrollArea_virtualbase_hideEvent(self.h, event.h)

type QScrollAreahideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QScrollArea, slot: proc(super: QScrollAreahideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreahideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_hideEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_hideEvent ".} =
  type Cb = proc(super: QScrollAreahideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QScrollAreanativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QScrollArea, slot: proc(super: QScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_nativeEvent(self: ptr cQScrollArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QScrollArea_nativeEvent ".} =
  type Cb = proc(super: QScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QScrollArea(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QScrollArea, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQScrollArea_virtualbase_metric(self.h, cint(param1))

type QScrollAreametricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QScrollArea, slot: proc(super: QScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_metric(self: ptr cQScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollArea_metric ".} =
  type Cb = proc(super: QScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QScrollArea(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QScrollArea, painter: gen_qpainter.QPainter): void =


  fQScrollArea_virtualbase_initPainter(self.h, painter.h)

type QScrollAreainitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QScrollArea, slot: proc(super: QScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_initPainter(self: ptr cQScrollArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_initPainter ".} =
  type Cb = proc(super: QScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QScrollArea(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QScrollArea, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQScrollArea_virtualbase_redirected(self.h, offset.h))

type QScrollArearedirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QScrollArea, slot: proc(super: QScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_redirected(self: ptr cQScrollArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QScrollArea_redirected ".} =
  type Cb = proc(super: QScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QScrollArea(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QScrollArea, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQScrollArea_virtualbase_sharedPainter(self.h))

type QScrollAreasharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QScrollArea, slot: proc(super: QScrollAreasharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreasharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_sharedPainter(self: ptr cQScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollArea_sharedPainter ".} =
  type Cb = proc(super: QScrollAreasharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QScrollArea, param1: gen_qevent.QInputMethodEvent): void =


  fQScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QScrollAreainputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QScrollArea, slot: proc(super: QScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_inputMethodEvent(self: ptr cQScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_inputMethodEvent ".} =
  type Cb = proc(super: QScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QScrollArea, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QScrollAreainputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QScrollArea, slot: proc(super: QScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_inputMethodQuery(self: ptr cQScrollArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QScrollArea_inputMethodQuery ".} =
  type Cb = proc(super: QScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QScrollArea(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_timerEvent(self: QScrollArea, event: gen_qcoreevent.QTimerEvent): void =


  fQScrollArea_virtualbase_timerEvent(self.h, event.h)

type QScrollAreatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QScrollArea, slot: proc(super: QScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_timerEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_timerEvent ".} =
  type Cb = proc(super: QScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QScrollArea, event: gen_qcoreevent.QChildEvent): void =


  fQScrollArea_virtualbase_childEvent(self.h, event.h)

type QScrollAreachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QScrollArea, slot: proc(super: QScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_childEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_childEvent ".} =
  type Cb = proc(super: QScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QScrollArea, event: gen_qcoreevent.QEvent): void =


  fQScrollArea_virtualbase_customEvent(self.h, event.h)

type QScrollAreacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QScrollArea, slot: proc(super: QScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_customEvent(self: ptr cQScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_customEvent ".} =
  type Cb = proc(super: QScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QScrollArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQScrollArea_virtualbase_connectNotify(self.h, signal.h)

type QScrollAreaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QScrollArea, slot: proc(super: QScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_connectNotify(self: ptr cQScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_connectNotify ".} =
  type Cb = proc(super: QScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QScrollArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QScrollArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

type QScrollAreadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QScrollArea, slot: proc(super: QScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollArea_disconnectNotify(self: ptr cQScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollArea_disconnectNotify ".} =
  type Cb = proc(super: QScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QScrollArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QScrollArea): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQScrollArea_staticMetaObject())
proc delete*(self: QScrollArea) =
  fcQScrollArea_delete(self.h)
