import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qstackedwidget.cpp", cflags).}


import gen_qstackedwidget_types
export gen_qstackedwidget_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQStackedWidget*{.exportc: "QStackedWidget", incompleteStruct.} = object

proc fcQStackedWidget_new(parent: pointer): ptr cQStackedWidget {.importc: "QStackedWidget_new".}
proc fcQStackedWidget_new2(): ptr cQStackedWidget {.importc: "QStackedWidget_new2".}
proc fcQStackedWidget_metaObject(self: pointer, ): pointer {.importc: "QStackedWidget_metaObject".}
proc fcQStackedWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_metacast".}
proc fcQStackedWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_metacall".}
proc fcQStackedWidget_tr(s: cstring): struct_miqt_string {.importc: "QStackedWidget_tr".}
proc fcQStackedWidget_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedWidget_addWidget".}
proc fcQStackedWidget_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedWidget_insertWidget".}
proc fcQStackedWidget_removeWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_removeWidget".}
proc fcQStackedWidget_currentWidget(self: pointer, ): pointer {.importc: "QStackedWidget_currentWidget".}
proc fcQStackedWidget_currentIndex(self: pointer, ): cint {.importc: "QStackedWidget_currentIndex".}
proc fcQStackedWidget_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedWidget_indexOf".}
proc fcQStackedWidget_widget(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_widget".}
proc fcQStackedWidget_count(self: pointer, ): cint {.importc: "QStackedWidget_count".}
proc fcQStackedWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedWidget_setCurrentIndex".}
proc fcQStackedWidget_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_setCurrentWidget".}
proc fcQStackedWidget_currentChanged(self: pointer, param1: cint): void {.importc: "QStackedWidget_currentChanged".}
proc fQStackedWidget_connect_currentChanged(self: pointer, slot: int) {.importc: "QStackedWidget_connect_currentChanged".}
proc fcQStackedWidget_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedWidget_widgetRemoved".}
proc fQStackedWidget_connect_widgetRemoved(self: pointer, slot: int) {.importc: "QStackedWidget_connect_widgetRemoved".}
proc fcQStackedWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_tr2".}
proc fcQStackedWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_tr3".}
proc fQStackedWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_metaObject".}
proc fcQStackedWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metaObject".}
proc fQStackedWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStackedWidget_virtualbase_metacast".}
proc fcQStackedWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metacast".}
proc fQStackedWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStackedWidget_virtualbase_metacall".}
proc fcQStackedWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metacall".}
proc fQStackedWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QStackedWidget_virtualbase_event".}
proc fcQStackedWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_event".}
proc fQStackedWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_sizeHint".}
proc fcQStackedWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_sizeHint".}
proc fQStackedWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_paintEvent".}
proc fcQStackedWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_paintEvent".}
proc fQStackedWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_changeEvent".}
proc fcQStackedWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_changeEvent".}
proc fQStackedWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QStackedWidget_virtualbase_initStyleOption".}
proc fcQStackedWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_initStyleOption".}
proc fQStackedWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QStackedWidget_virtualbase_devType".}
proc fcQStackedWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_devType".}
proc fQStackedWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QStackedWidget_virtualbase_setVisible".}
proc fcQStackedWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_setVisible".}
proc fQStackedWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_minimumSizeHint".}
proc fcQStackedWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_minimumSizeHint".}
proc fQStackedWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QStackedWidget_virtualbase_heightForWidth".}
proc fcQStackedWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_heightForWidth".}
proc fQStackedWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStackedWidget_virtualbase_hasHeightForWidth".}
proc fcQStackedWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_hasHeightForWidth".}
proc fQStackedWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_paintEngine".}
proc fcQStackedWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_paintEngine".}
proc fQStackedWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mousePressEvent".}
proc fcQStackedWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mousePressEvent".}
proc fQStackedWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseReleaseEvent".}
proc fcQStackedWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseReleaseEvent".}
proc fQStackedWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQStackedWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseDoubleClickEvent".}
proc fQStackedWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_mouseMoveEvent".}
proc fcQStackedWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_mouseMoveEvent".}
proc fQStackedWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_wheelEvent".}
proc fcQStackedWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_wheelEvent".}
proc fQStackedWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_keyPressEvent".}
proc fcQStackedWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_keyPressEvent".}
proc fQStackedWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_keyReleaseEvent".}
proc fcQStackedWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_keyReleaseEvent".}
proc fQStackedWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_focusInEvent".}
proc fcQStackedWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusInEvent".}
proc fQStackedWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_focusOutEvent".}
proc fcQStackedWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusOutEvent".}
proc fQStackedWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_enterEvent".}
proc fcQStackedWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_enterEvent".}
proc fQStackedWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_leaveEvent".}
proc fcQStackedWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_leaveEvent".}
proc fQStackedWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_moveEvent".}
proc fcQStackedWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_moveEvent".}
proc fQStackedWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_resizeEvent".}
proc fcQStackedWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_resizeEvent".}
proc fQStackedWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_closeEvent".}
proc fcQStackedWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_closeEvent".}
proc fQStackedWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_contextMenuEvent".}
proc fcQStackedWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_contextMenuEvent".}
proc fQStackedWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_tabletEvent".}
proc fcQStackedWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_tabletEvent".}
proc fQStackedWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_actionEvent".}
proc fcQStackedWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_actionEvent".}
proc fQStackedWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragEnterEvent".}
proc fcQStackedWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragEnterEvent".}
proc fQStackedWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragMoveEvent".}
proc fcQStackedWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragMoveEvent".}
proc fQStackedWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dragLeaveEvent".}
proc fcQStackedWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dragLeaveEvent".}
proc fQStackedWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_dropEvent".}
proc fcQStackedWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_dropEvent".}
proc fQStackedWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_showEvent".}
proc fcQStackedWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_showEvent".}
proc fQStackedWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_hideEvent".}
proc fcQStackedWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_hideEvent".}
proc fQStackedWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QStackedWidget_virtualbase_nativeEvent".}
proc fcQStackedWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_nativeEvent".}
proc fQStackedWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QStackedWidget_virtualbase_metric".}
proc fcQStackedWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_metric".}
proc fQStackedWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QStackedWidget_virtualbase_initPainter".}
proc fcQStackedWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_initPainter".}
proc fQStackedWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QStackedWidget_virtualbase_redirected".}
proc fcQStackedWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_redirected".}
proc fQStackedWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QStackedWidget_virtualbase_sharedPainter".}
proc fcQStackedWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_sharedPainter".}
proc fQStackedWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QStackedWidget_virtualbase_inputMethodEvent".}
proc fcQStackedWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_inputMethodEvent".}
proc fQStackedWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QStackedWidget_virtualbase_inputMethodQuery".}
proc fcQStackedWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_inputMethodQuery".}
proc fQStackedWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QStackedWidget_virtualbase_focusNextPrevChild".}
proc fcQStackedWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_focusNextPrevChild".}
proc fQStackedWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStackedWidget_virtualbase_eventFilter".}
proc fcQStackedWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_eventFilter".}
proc fQStackedWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_timerEvent".}
proc fcQStackedWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_timerEvent".}
proc fQStackedWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_childEvent".}
proc fcQStackedWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_childEvent".}
proc fQStackedWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStackedWidget_virtualbase_customEvent".}
proc fcQStackedWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_customEvent".}
proc fQStackedWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStackedWidget_virtualbase_connectNotify".}
proc fcQStackedWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_connectNotify".}
proc fQStackedWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStackedWidget_virtualbase_disconnectNotify".}
proc fcQStackedWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStackedWidget_override_virtual_disconnectNotify".}
proc fcQStackedWidget_staticMetaObject(): pointer {.importc: "QStackedWidget_staticMetaObject".}
proc fcQStackedWidget_delete(self: pointer) {.importc: "QStackedWidget_delete".}


func init*(T: type QStackedWidget, h: ptr cQStackedWidget): QStackedWidget =
  T(h: h)
proc create*(T: type QStackedWidget, parent: gen_qwidget.QWidget): QStackedWidget =

  QStackedWidget.init(fcQStackedWidget_new(parent.h))
proc create*(T: type QStackedWidget, ): QStackedWidget =

  QStackedWidget.init(fcQStackedWidget_new2())
proc metaObject*(self: QStackedWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStackedWidget_metaObject(self.h))

proc metacast*(self: QStackedWidget, param1: cstring): pointer =

  fcQStackedWidget_metacast(self.h, param1)

proc metacall*(self: QStackedWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStackedWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStackedWidget, s: cstring): string =

  let v_ms = fcQStackedWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: QStackedWidget, w: gen_qwidget.QWidget): cint =

  fcQStackedWidget_addWidget(self.h, w.h)

proc insertWidget*(self: QStackedWidget, index: cint, w: gen_qwidget.QWidget): cint =

  fcQStackedWidget_insertWidget(self.h, index, w.h)

proc removeWidget*(self: QStackedWidget, w: gen_qwidget.QWidget): void =

  fcQStackedWidget_removeWidget(self.h, w.h)

proc currentWidget*(self: QStackedWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQStackedWidget_currentWidget(self.h))

proc currentIndex*(self: QStackedWidget, ): cint =

  fcQStackedWidget_currentIndex(self.h)

proc indexOf*(self: QStackedWidget, param1: gen_qwidget.QWidget): cint =

  fcQStackedWidget_indexOf(self.h, param1.h)

proc widget*(self: QStackedWidget, param1: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQStackedWidget_widget(self.h, param1))

proc count*(self: QStackedWidget, ): cint =

  fcQStackedWidget_count(self.h)

proc setCurrentIndex*(self: QStackedWidget, index: cint): void =

  fcQStackedWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: QStackedWidget, w: gen_qwidget.QWidget): void =

  fcQStackedWidget_setCurrentWidget(self.h, w.h)

proc currentChanged*(self: QStackedWidget, param1: cint): void =

  fcQStackedWidget_currentChanged(self.h, param1)

proc miqt_exec_callback_QStackedWidget_currentChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QStackedWidget, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStackedWidget_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc widgetRemoved*(self: QStackedWidget, index: cint): void =

  fcQStackedWidget_widgetRemoved(self.h, index)

proc miqt_exec_callback_QStackedWidget_widgetRemoved(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc onwidgetRemoved*(self: QStackedWidget, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStackedWidget_connect_widgetRemoved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QStackedWidget, s: cstring, c: cstring): string =

  let v_ms = fcQStackedWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStackedWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStackedWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QStackedWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQStackedWidget_virtualbase_metaObject(self.h))

type QStackedWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QStackedWidget, slot: proc(super: QStackedWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metaObject(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_metaObject ".} =
  type Cb = proc(super: QStackedWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QStackedWidget, param1: cstring): pointer =


  fQStackedWidget_virtualbase_metacast(self.h, param1)

type QStackedWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QStackedWidget, slot: proc(super: QStackedWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metacast(self: ptr cQStackedWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStackedWidget_metacast ".} =
  type Cb = proc(super: QStackedWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QStackedWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QStackedWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStackedWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStackedWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStackedWidget, slot: proc(super: QStackedWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metacall(self: ptr cQStackedWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStackedWidget_metacall ".} =
  type Cb = proc(super: QStackedWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStackedWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QStackedWidget, e: gen_qcoreevent.QEvent): bool =


  fQStackedWidget_virtualbase_event(self.h, e.h)

type QStackedWidgeteventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStackedWidget, slot: proc(super: QStackedWidgeteventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_event(self: ptr cQStackedWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QStackedWidget_event ".} =
  type Cb = proc(super: QStackedWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStackedWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QStackedWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStackedWidget_virtualbase_sizeHint(self.h))

type QStackedWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QStackedWidget, slot: proc(super: QStackedWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_sizeHint(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_sizeHint ".} =
  type Cb = proc(super: QStackedWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QStackedWidget, param1: gen_qevent.QPaintEvent): void =


  fQStackedWidget_virtualbase_paintEvent(self.h, param1.h)

type QStackedWidgetpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_paintEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_paintEvent ".} =
  type Cb = proc(super: QStackedWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QStackedWidget(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QStackedWidget, param1: gen_qcoreevent.QEvent): void =


  fQStackedWidget_virtualbase_changeEvent(self.h, param1.h)

type QStackedWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_changeEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_changeEvent ".} =
  type Cb = proc(super: QStackedWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QStackedWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QStackedWidget, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQStackedWidget_virtualbase_initStyleOption(self.h, option.h)

type QStackedWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QStackedWidget, slot: proc(super: QStackedWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_initStyleOption(self: ptr cQStackedWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_initStyleOption ".} =
  type Cb = proc(super: QStackedWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QStackedWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QStackedWidget, ): cint =


  fQStackedWidget_virtualbase_devType(self.h)

type QStackedWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QStackedWidget, slot: proc(super: QStackedWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_devType(self: ptr cQStackedWidget, slot: int): cint {.exportc: "miqt_exec_callback_QStackedWidget_devType ".} =
  type Cb = proc(super: QStackedWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QStackedWidget, visible: bool): void =


  fQStackedWidget_virtualbase_setVisible(self.h, visible)

type QStackedWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QStackedWidget, slot: proc(super: QStackedWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_setVisible(self: ptr cQStackedWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QStackedWidget_setVisible ".} =
  type Cb = proc(super: QStackedWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QStackedWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QStackedWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStackedWidget_virtualbase_minimumSizeHint(self.h))

type QStackedWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QStackedWidget, slot: proc(super: QStackedWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_minimumSizeHint(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_minimumSizeHint ".} =
  type Cb = proc(super: QStackedWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QStackedWidget, param1: cint): cint =


  fQStackedWidget_virtualbase_heightForWidth(self.h, param1)

type QStackedWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QStackedWidget, slot: proc(super: QStackedWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_heightForWidth(self: ptr cQStackedWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedWidget_heightForWidth ".} =
  type Cb = proc(super: QStackedWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QStackedWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QStackedWidget, ): bool =


  fQStackedWidget_virtualbase_hasHeightForWidth(self.h)

type QStackedWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QStackedWidget, slot: proc(super: QStackedWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_hasHeightForWidth(self: ptr cQStackedWidget, slot: int): bool {.exportc: "miqt_exec_callback_QStackedWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QStackedWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QStackedWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQStackedWidget_virtualbase_paintEngine(self.h))

type QStackedWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QStackedWidget, slot: proc(super: QStackedWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_paintEngine(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_paintEngine ".} =
  type Cb = proc(super: QStackedWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QStackedWidget, event: gen_qevent.QMouseEvent): void =


  fQStackedWidget_virtualbase_mousePressEvent(self.h, event.h)

type QStackedWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mousePressEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mousePressEvent ".} =
  type Cb = proc(super: QStackedWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QStackedWidget, event: gen_qevent.QMouseEvent): void =


  fQStackedWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QStackedWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseReleaseEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QStackedWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QStackedWidget, event: gen_qevent.QMouseEvent): void =


  fQStackedWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QStackedWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseDoubleClickEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QStackedWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QStackedWidget, event: gen_qevent.QMouseEvent): void =


  fQStackedWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QStackedWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_mouseMoveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QStackedWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QStackedWidget, event: gen_qevent.QWheelEvent): void =


  fQStackedWidget_virtualbase_wheelEvent(self.h, event.h)

type QStackedWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_wheelEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_wheelEvent ".} =
  type Cb = proc(super: QStackedWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QStackedWidget, event: gen_qevent.QKeyEvent): void =


  fQStackedWidget_virtualbase_keyPressEvent(self.h, event.h)

type QStackedWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_keyPressEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_keyPressEvent ".} =
  type Cb = proc(super: QStackedWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QStackedWidget, event: gen_qevent.QKeyEvent): void =


  fQStackedWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QStackedWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_keyReleaseEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QStackedWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QStackedWidget, event: gen_qevent.QFocusEvent): void =


  fQStackedWidget_virtualbase_focusInEvent(self.h, event.h)

type QStackedWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusInEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_focusInEvent ".} =
  type Cb = proc(super: QStackedWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QStackedWidget, event: gen_qevent.QFocusEvent): void =


  fQStackedWidget_virtualbase_focusOutEvent(self.h, event.h)

type QStackedWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusOutEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_focusOutEvent ".} =
  type Cb = proc(super: QStackedWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QStackedWidget, event: gen_qevent.QEnterEvent): void =


  fQStackedWidget_virtualbase_enterEvent(self.h, event.h)

type QStackedWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_enterEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_enterEvent ".} =
  type Cb = proc(super: QStackedWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QStackedWidget, event: gen_qcoreevent.QEvent): void =


  fQStackedWidget_virtualbase_leaveEvent(self.h, event.h)

type QStackedWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_leaveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_leaveEvent ".} =
  type Cb = proc(super: QStackedWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QStackedWidget, event: gen_qevent.QMoveEvent): void =


  fQStackedWidget_virtualbase_moveEvent(self.h, event.h)

type QStackedWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_moveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_moveEvent ".} =
  type Cb = proc(super: QStackedWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QStackedWidget, event: gen_qevent.QResizeEvent): void =


  fQStackedWidget_virtualbase_resizeEvent(self.h, event.h)

type QStackedWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_resizeEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_resizeEvent ".} =
  type Cb = proc(super: QStackedWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QStackedWidget, event: gen_qevent.QCloseEvent): void =


  fQStackedWidget_virtualbase_closeEvent(self.h, event.h)

type QStackedWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_closeEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_closeEvent ".} =
  type Cb = proc(super: QStackedWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QStackedWidget, event: gen_qevent.QContextMenuEvent): void =


  fQStackedWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QStackedWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_contextMenuEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_contextMenuEvent ".} =
  type Cb = proc(super: QStackedWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QStackedWidget, event: gen_qevent.QTabletEvent): void =


  fQStackedWidget_virtualbase_tabletEvent(self.h, event.h)

type QStackedWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_tabletEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_tabletEvent ".} =
  type Cb = proc(super: QStackedWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QStackedWidget, event: gen_qevent.QActionEvent): void =


  fQStackedWidget_virtualbase_actionEvent(self.h, event.h)

type QStackedWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_actionEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_actionEvent ".} =
  type Cb = proc(super: QStackedWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QStackedWidget, event: gen_qevent.QDragEnterEvent): void =


  fQStackedWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QStackedWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragEnterEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragEnterEvent ".} =
  type Cb = proc(super: QStackedWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QStackedWidget, event: gen_qevent.QDragMoveEvent): void =


  fQStackedWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QStackedWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragMoveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragMoveEvent ".} =
  type Cb = proc(super: QStackedWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QStackedWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQStackedWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QStackedWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dragLeaveEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QStackedWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QStackedWidget, event: gen_qevent.QDropEvent): void =


  fQStackedWidget_virtualbase_dropEvent(self.h, event.h)

type QStackedWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_dropEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_dropEvent ".} =
  type Cb = proc(super: QStackedWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QStackedWidget, event: gen_qevent.QShowEvent): void =


  fQStackedWidget_virtualbase_showEvent(self.h, event.h)

type QStackedWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_showEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_showEvent ".} =
  type Cb = proc(super: QStackedWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QStackedWidget, event: gen_qevent.QHideEvent): void =


  fQStackedWidget_virtualbase_hideEvent(self.h, event.h)

type QStackedWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_hideEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_hideEvent ".} =
  type Cb = proc(super: QStackedWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QStackedWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQStackedWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QStackedWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_nativeEvent(self: ptr cQStackedWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QStackedWidget_nativeEvent ".} =
  type Cb = proc(super: QStackedWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QStackedWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QStackedWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQStackedWidget_virtualbase_metric(self.h, cint(param1))

type QStackedWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QStackedWidget, slot: proc(super: QStackedWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_metric(self: ptr cQStackedWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedWidget_metric ".} =
  type Cb = proc(super: QStackedWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QStackedWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QStackedWidget, painter: gen_qpainter.QPainter): void =


  fQStackedWidget_virtualbase_initPainter(self.h, painter.h)

type QStackedWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QStackedWidget, slot: proc(super: QStackedWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_initPainter(self: ptr cQStackedWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_initPainter ".} =
  type Cb = proc(super: QStackedWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QStackedWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QStackedWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQStackedWidget_virtualbase_redirected(self.h, offset.h))

type QStackedWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QStackedWidget, slot: proc(super: QStackedWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_redirected(self: ptr cQStackedWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QStackedWidget_redirected ".} =
  type Cb = proc(super: QStackedWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QStackedWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QStackedWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQStackedWidget_virtualbase_sharedPainter(self.h))

type QStackedWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QStackedWidget, slot: proc(super: QStackedWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_sharedPainter(self: ptr cQStackedWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedWidget_sharedPainter ".} =
  type Cb = proc(super: QStackedWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QStackedWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QStackedWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQStackedWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QStackedWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_inputMethodEvent(self: ptr cQStackedWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_inputMethodEvent ".} =
  type Cb = proc(super: QStackedWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QStackedWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QStackedWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStackedWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QStackedWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QStackedWidget, slot: proc(super: QStackedWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_inputMethodQuery(self: ptr cQStackedWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedWidget_inputMethodQuery ".} =
  type Cb = proc(super: QStackedWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QStackedWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QStackedWidget, next: bool): bool =


  fQStackedWidget_virtualbase_focusNextPrevChild(self.h, next)

type QStackedWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QStackedWidget, slot: proc(super: QStackedWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_focusNextPrevChild(self: ptr cQStackedWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QStackedWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QStackedWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QStackedWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStackedWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStackedWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStackedWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStackedWidget, slot: proc(super: QStackedWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_eventFilter(self: ptr cQStackedWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedWidget_eventFilter ".} =
  type Cb = proc(super: QStackedWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStackedWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStackedWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQStackedWidget_virtualbase_timerEvent(self.h, event.h)

type QStackedWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_timerEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_timerEvent ".} =
  type Cb = proc(super: QStackedWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStackedWidget, event: gen_qcoreevent.QChildEvent): void =


  fQStackedWidget_virtualbase_childEvent(self.h, event.h)

type QStackedWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_childEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_childEvent ".} =
  type Cb = proc(super: QStackedWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStackedWidget, event: gen_qcoreevent.QEvent): void =


  fQStackedWidget_virtualbase_customEvent(self.h, event.h)

type QStackedWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStackedWidget, slot: proc(super: QStackedWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_customEvent(self: ptr cQStackedWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_customEvent ".} =
  type Cb = proc(super: QStackedWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStackedWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStackedWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQStackedWidget_virtualbase_connectNotify(self.h, signal.h)

type QStackedWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStackedWidget, slot: proc(super: QStackedWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_connectNotify(self: ptr cQStackedWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_connectNotify ".} =
  type Cb = proc(super: QStackedWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStackedWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStackedWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQStackedWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QStackedWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStackedWidget, slot: proc(super: QStackedWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedWidget_disconnectNotify(self: ptr cQStackedWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedWidget_disconnectNotify ".} =
  type Cb = proc(super: QStackedWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStackedWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStackedWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStackedWidget_staticMetaObject())
proc delete*(self: QStackedWidget) =
  fcQStackedWidget_delete(self.h)
