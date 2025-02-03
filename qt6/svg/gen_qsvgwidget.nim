import Qt6SvgWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6SvgWidgets")
{.compile("gen_qsvgwidget.cpp", cflags).}


import gen_qsvgwidget_types
export gen_qsvgwidget_types

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
  gen_qsize,
  gen_qsvgrenderer,
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
  gen_qsize,
  gen_qsvgrenderer,
  gen_qvariant,
  gen_qwidget

type cQSvgWidget*{.exportc: "QSvgWidget", incompleteStruct.} = object

proc fcQSvgWidget_new(parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new".}
proc fcQSvgWidget_new2(): ptr cQSvgWidget {.importc: "QSvgWidget_new2".}
proc fcQSvgWidget_new3(file: struct_miqt_string): ptr cQSvgWidget {.importc: "QSvgWidget_new3".}
proc fcQSvgWidget_new4(file: struct_miqt_string, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new4".}
proc fcQSvgWidget_metaObject(self: pointer, ): pointer {.importc: "QSvgWidget_metaObject".}
proc fcQSvgWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_metacast".}
proc fcQSvgWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_metacall".}
proc fcQSvgWidget_tr(s: cstring): struct_miqt_string {.importc: "QSvgWidget_tr".}
proc fcQSvgWidget_renderer(self: pointer, ): pointer {.importc: "QSvgWidget_renderer".}
proc fcQSvgWidget_sizeHint(self: pointer, ): pointer {.importc: "QSvgWidget_sizeHint".}
proc fcQSvgWidget_load(self: pointer, file: struct_miqt_string): void {.importc: "QSvgWidget_load".}
proc fcQSvgWidget_loadWithContents(self: pointer, contents: struct_miqt_string): void {.importc: "QSvgWidget_loadWithContents".}
proc fcQSvgWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_tr2".}
proc fcQSvgWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_tr3".}
proc fQSvgWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSvgWidget_virtualbase_metacall".}
proc fcQSvgWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metacall".}
proc fQSvgWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_sizeHint".}
proc fcQSvgWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_sizeHint".}
proc fQSvgWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_paintEvent".}
proc fcQSvgWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_paintEvent".}
proc fQSvgWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QSvgWidget_virtualbase_devType".}
proc fcQSvgWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_devType".}
proc fQSvgWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSvgWidget_virtualbase_setVisible".}
proc fcQSvgWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_setVisible".}
proc fQSvgWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_minimumSizeHint".}
proc fcQSvgWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_minimumSizeHint".}
proc fQSvgWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSvgWidget_virtualbase_heightForWidth".}
proc fcQSvgWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_heightForWidth".}
proc fQSvgWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSvgWidget_virtualbase_hasHeightForWidth".}
proc fcQSvgWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_hasHeightForWidth".}
proc fQSvgWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_paintEngine".}
proc fcQSvgWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_paintEngine".}
proc fQSvgWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSvgWidget_virtualbase_event".}
proc fcQSvgWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_event".}
proc fQSvgWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mousePressEvent".}
proc fcQSvgWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mousePressEvent".}
proc fQSvgWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseReleaseEvent".}
proc fcQSvgWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseReleaseEvent".}
proc fQSvgWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQSvgWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseDoubleClickEvent".}
proc fQSvgWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseMoveEvent".}
proc fcQSvgWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseMoveEvent".}
proc fQSvgWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_wheelEvent".}
proc fcQSvgWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_wheelEvent".}
proc fQSvgWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_keyPressEvent".}
proc fcQSvgWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_keyPressEvent".}
proc fQSvgWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_keyReleaseEvent".}
proc fcQSvgWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_keyReleaseEvent".}
proc fQSvgWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_focusInEvent".}
proc fcQSvgWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusInEvent".}
proc fQSvgWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_focusOutEvent".}
proc fcQSvgWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusOutEvent".}
proc fQSvgWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_enterEvent".}
proc fcQSvgWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_enterEvent".}
proc fQSvgWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_leaveEvent".}
proc fcQSvgWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_leaveEvent".}
proc fQSvgWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_moveEvent".}
proc fcQSvgWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_moveEvent".}
proc fQSvgWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_resizeEvent".}
proc fcQSvgWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_resizeEvent".}
proc fQSvgWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_closeEvent".}
proc fcQSvgWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_closeEvent".}
proc fQSvgWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_contextMenuEvent".}
proc fcQSvgWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_contextMenuEvent".}
proc fQSvgWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_tabletEvent".}
proc fcQSvgWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_tabletEvent".}
proc fQSvgWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_actionEvent".}
proc fcQSvgWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_actionEvent".}
proc fQSvgWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragEnterEvent".}
proc fcQSvgWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragEnterEvent".}
proc fQSvgWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragMoveEvent".}
proc fcQSvgWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragMoveEvent".}
proc fQSvgWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragLeaveEvent".}
proc fcQSvgWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragLeaveEvent".}
proc fQSvgWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dropEvent".}
proc fcQSvgWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dropEvent".}
proc fQSvgWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_showEvent".}
proc fcQSvgWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_showEvent".}
proc fQSvgWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_hideEvent".}
proc fcQSvgWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_hideEvent".}
proc fQSvgWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSvgWidget_virtualbase_nativeEvent".}
proc fcQSvgWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_nativeEvent".}
proc fQSvgWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSvgWidget_virtualbase_changeEvent".}
proc fcQSvgWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_changeEvent".}
proc fQSvgWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSvgWidget_virtualbase_metric".}
proc fcQSvgWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metric".}
proc fQSvgWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSvgWidget_virtualbase_initPainter".}
proc fcQSvgWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_initPainter".}
proc fQSvgWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSvgWidget_virtualbase_redirected".}
proc fcQSvgWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_redirected".}
proc fQSvgWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_sharedPainter".}
proc fcQSvgWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_sharedPainter".}
proc fQSvgWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSvgWidget_virtualbase_inputMethodEvent".}
proc fcQSvgWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_inputMethodEvent".}
proc fQSvgWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSvgWidget_virtualbase_inputMethodQuery".}
proc fcQSvgWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_inputMethodQuery".}
proc fQSvgWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSvgWidget_virtualbase_focusNextPrevChild".}
proc fcQSvgWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusNextPrevChild".}
proc fQSvgWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSvgWidget_virtualbase_eventFilter".}
proc fcQSvgWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_eventFilter".}
proc fQSvgWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_timerEvent".}
proc fcQSvgWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_timerEvent".}
proc fQSvgWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_childEvent".}
proc fcQSvgWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_childEvent".}
proc fQSvgWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_customEvent".}
proc fcQSvgWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_customEvent".}
proc fQSvgWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSvgWidget_virtualbase_connectNotify".}
proc fcQSvgWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_connectNotify".}
proc fQSvgWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSvgWidget_virtualbase_disconnectNotify".}
proc fcQSvgWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_disconnectNotify".}
proc fcQSvgWidget_delete(self: pointer) {.importc: "QSvgWidget_delete".}


func init*(T: type QSvgWidget, h: ptr cQSvgWidget): QSvgWidget =
  T(h: h)
proc create*(T: type QSvgWidget, parent: gen_qwidget.QWidget): QSvgWidget =

  QSvgWidget.init(fcQSvgWidget_new(parent.h))
proc create*(T: type QSvgWidget, ): QSvgWidget =

  QSvgWidget.init(fcQSvgWidget_new2())
proc create*(T: type QSvgWidget, file: string): QSvgWidget =

  QSvgWidget.init(fcQSvgWidget_new3(struct_miqt_string(data: file, len: csize_t(len(file)))))
proc create*(T: type QSvgWidget, file: string, parent: gen_qwidget.QWidget): QSvgWidget =

  QSvgWidget.init(fcQSvgWidget_new4(struct_miqt_string(data: file, len: csize_t(len(file))), parent.h))
proc metaObject*(self: QSvgWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSvgWidget_metaObject(self.h))

proc metacast*(self: QSvgWidget, param1: cstring): pointer =

  fcQSvgWidget_metacast(self.h, param1)

proc metacall*(self: QSvgWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSvgWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSvgWidget, s: cstring): string =

  let v_ms = fcQSvgWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc renderer*(self: QSvgWidget, ): gen_qsvgrenderer.QSvgRenderer =

  gen_qsvgrenderer.QSvgRenderer(h: fcQSvgWidget_renderer(self.h))

proc sizeHint*(self: QSvgWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSvgWidget_sizeHint(self.h))

proc load*(self: QSvgWidget, file: string): void =

  fcQSvgWidget_load(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc loadWithContents*(self: QSvgWidget, contents: seq[byte]): void =

  fcQSvgWidget_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc tr2*(_: type QSvgWidget, s: cstring, c: cstring): string =

  let v_ms = fcQSvgWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSvgWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSvgWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSvgWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSvgWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSvgWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSvgWidget, slot: proc(super: QSvgWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metacall(self: ptr cQSvgWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSvgWidget_metacall ".} =
  type Cb = proc(super: QSvgWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSvgWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QSvgWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSvgWidget_virtualbase_sizeHint(self.h))

type QSvgWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSvgWidget, slot: proc(super: QSvgWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_sizeHint(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_sizeHint ".} =
  type Cb = proc(super: QSvgWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QSvgWidget, event: gen_qevent.QPaintEvent): void =


  fQSvgWidget_virtualbase_paintEvent(self.h, event.h)

type QSvgWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_paintEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_paintEvent ".} =
  type Cb = proc(super: QSvgWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QSvgWidget, ): cint =


  fQSvgWidget_virtualbase_devType(self.h)

type QSvgWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QSvgWidget, slot: proc(super: QSvgWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_devType(self: ptr cQSvgWidget, slot: int): cint {.exportc: "miqt_exec_callback_QSvgWidget_devType ".} =
  type Cb = proc(super: QSvgWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSvgWidget, visible: bool): void =


  fQSvgWidget_virtualbase_setVisible(self.h, visible)

type QSvgWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSvgWidget, slot: proc(super: QSvgWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_setVisible(self: ptr cQSvgWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSvgWidget_setVisible ".} =
  type Cb = proc(super: QSvgWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSvgWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QSvgWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSvgWidget_virtualbase_minimumSizeHint(self.h))

type QSvgWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSvgWidget, slot: proc(super: QSvgWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_minimumSizeHint(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_minimumSizeHint ".} =
  type Cb = proc(super: QSvgWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QSvgWidget, param1: cint): cint =


  fQSvgWidget_virtualbase_heightForWidth(self.h, param1)

type QSvgWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSvgWidget, slot: proc(super: QSvgWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_heightForWidth(self: ptr cQSvgWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSvgWidget_heightForWidth ".} =
  type Cb = proc(super: QSvgWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSvgWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSvgWidget, ): bool =


  fQSvgWidget_virtualbase_hasHeightForWidth(self.h)

type QSvgWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSvgWidget, slot: proc(super: QSvgWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_hasHeightForWidth(self: ptr cQSvgWidget, slot: int): bool {.exportc: "miqt_exec_callback_QSvgWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QSvgWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSvgWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSvgWidget_virtualbase_paintEngine(self.h))

type QSvgWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSvgWidget, slot: proc(super: QSvgWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_paintEngine(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_paintEngine ".} =
  type Cb = proc(super: QSvgWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QSvgWidget, event: gen_qcoreevent.QEvent): bool =


  fQSvgWidget_virtualbase_event(self.h, event.h)

type QSvgWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSvgWidget, slot: proc(super: QSvgWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_event(self: ptr cQSvgWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgWidget_event ".} =
  type Cb = proc(super: QSvgWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSvgWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QSvgWidget, event: gen_qevent.QMouseEvent): void =


  fQSvgWidget_virtualbase_mousePressEvent(self.h, event.h)

type QSvgWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mousePressEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mousePressEvent ".} =
  type Cb = proc(super: QSvgWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSvgWidget, event: gen_qevent.QMouseEvent): void =


  fQSvgWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSvgWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseReleaseEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QSvgWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QSvgWidget, event: gen_qevent.QMouseEvent): void =


  fQSvgWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSvgWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseDoubleClickEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSvgWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSvgWidget, event: gen_qevent.QMouseEvent): void =


  fQSvgWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QSvgWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseMoveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QSvgWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSvgWidget, event: gen_qevent.QWheelEvent): void =


  fQSvgWidget_virtualbase_wheelEvent(self.h, event.h)

type QSvgWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_wheelEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_wheelEvent ".} =
  type Cb = proc(super: QSvgWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSvgWidget, event: gen_qevent.QKeyEvent): void =


  fQSvgWidget_virtualbase_keyPressEvent(self.h, event.h)

type QSvgWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_keyPressEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_keyPressEvent ".} =
  type Cb = proc(super: QSvgWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSvgWidget, event: gen_qevent.QKeyEvent): void =


  fQSvgWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QSvgWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_keyReleaseEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QSvgWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSvgWidget, event: gen_qevent.QFocusEvent): void =


  fQSvgWidget_virtualbase_focusInEvent(self.h, event.h)

type QSvgWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusInEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_focusInEvent ".} =
  type Cb = proc(super: QSvgWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSvgWidget, event: gen_qevent.QFocusEvent): void =


  fQSvgWidget_virtualbase_focusOutEvent(self.h, event.h)

type QSvgWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusOutEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_focusOutEvent ".} =
  type Cb = proc(super: QSvgWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSvgWidget, event: gen_qevent.QEnterEvent): void =


  fQSvgWidget_virtualbase_enterEvent(self.h, event.h)

type QSvgWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_enterEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_enterEvent ".} =
  type Cb = proc(super: QSvgWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSvgWidget, event: gen_qcoreevent.QEvent): void =


  fQSvgWidget_virtualbase_leaveEvent(self.h, event.h)

type QSvgWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_leaveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_leaveEvent ".} =
  type Cb = proc(super: QSvgWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSvgWidget, event: gen_qevent.QMoveEvent): void =


  fQSvgWidget_virtualbase_moveEvent(self.h, event.h)

type QSvgWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_moveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_moveEvent ".} =
  type Cb = proc(super: QSvgWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QSvgWidget, event: gen_qevent.QResizeEvent): void =


  fQSvgWidget_virtualbase_resizeEvent(self.h, event.h)

type QSvgWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_resizeEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_resizeEvent ".} =
  type Cb = proc(super: QSvgWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSvgWidget, event: gen_qevent.QCloseEvent): void =


  fQSvgWidget_virtualbase_closeEvent(self.h, event.h)

type QSvgWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_closeEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_closeEvent ".} =
  type Cb = proc(super: QSvgWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSvgWidget, event: gen_qevent.QContextMenuEvent): void =


  fQSvgWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QSvgWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_contextMenuEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_contextMenuEvent ".} =
  type Cb = proc(super: QSvgWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSvgWidget, event: gen_qevent.QTabletEvent): void =


  fQSvgWidget_virtualbase_tabletEvent(self.h, event.h)

type QSvgWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_tabletEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_tabletEvent ".} =
  type Cb = proc(super: QSvgWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSvgWidget, event: gen_qevent.QActionEvent): void =


  fQSvgWidget_virtualbase_actionEvent(self.h, event.h)

type QSvgWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_actionEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_actionEvent ".} =
  type Cb = proc(super: QSvgWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSvgWidget, event: gen_qevent.QDragEnterEvent): void =


  fQSvgWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QSvgWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragEnterEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragEnterEvent ".} =
  type Cb = proc(super: QSvgWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSvgWidget, event: gen_qevent.QDragMoveEvent): void =


  fQSvgWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QSvgWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragMoveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragMoveEvent ".} =
  type Cb = proc(super: QSvgWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSvgWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQSvgWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QSvgWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragLeaveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QSvgWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSvgWidget, event: gen_qevent.QDropEvent): void =


  fQSvgWidget_virtualbase_dropEvent(self.h, event.h)

type QSvgWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dropEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dropEvent ".} =
  type Cb = proc(super: QSvgWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSvgWidget, event: gen_qevent.QShowEvent): void =


  fQSvgWidget_virtualbase_showEvent(self.h, event.h)

type QSvgWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_showEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_showEvent ".} =
  type Cb = proc(super: QSvgWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSvgWidget, event: gen_qevent.QHideEvent): void =


  fQSvgWidget_virtualbase_hideEvent(self.h, event.h)

type QSvgWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_hideEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_hideEvent ".} =
  type Cb = proc(super: QSvgWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSvgWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQSvgWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSvgWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_nativeEvent(self: ptr cQSvgWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSvgWidget_nativeEvent ".} =
  type Cb = proc(super: QSvgWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QSvgWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QSvgWidget, param1: gen_qcoreevent.QEvent): void =


  fQSvgWidget_virtualbase_changeEvent(self.h, param1.h)

type QSvgWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_changeEvent(self: ptr cQSvgWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_changeEvent ".} =
  type Cb = proc(super: QSvgWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSvgWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QSvgWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSvgWidget_virtualbase_metric(self.h, cint(param1))

type QSvgWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSvgWidget, slot: proc(super: QSvgWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metric(self: ptr cQSvgWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSvgWidget_metric ".} =
  type Cb = proc(super: QSvgWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSvgWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSvgWidget, painter: gen_qpainter.QPainter): void =


  fQSvgWidget_virtualbase_initPainter(self.h, painter.h)

type QSvgWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSvgWidget, slot: proc(super: QSvgWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_initPainter(self: ptr cQSvgWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_initPainter ".} =
  type Cb = proc(super: QSvgWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSvgWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSvgWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSvgWidget_virtualbase_redirected(self.h, offset.h))

type QSvgWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSvgWidget, slot: proc(super: QSvgWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_redirected(self: ptr cQSvgWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSvgWidget_redirected ".} =
  type Cb = proc(super: QSvgWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSvgWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSvgWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSvgWidget_virtualbase_sharedPainter(self.h))

type QSvgWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSvgWidget, slot: proc(super: QSvgWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_sharedPainter(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_sharedPainter ".} =
  type Cb = proc(super: QSvgWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSvgWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSvgWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQSvgWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QSvgWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_inputMethodEvent(self: ptr cQSvgWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_inputMethodEvent ".} =
  type Cb = proc(super: QSvgWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSvgWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSvgWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSvgWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSvgWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSvgWidget, slot: proc(super: QSvgWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_inputMethodQuery(self: ptr cQSvgWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSvgWidget_inputMethodQuery ".} =
  type Cb = proc(super: QSvgWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSvgWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSvgWidget, next: bool): bool =


  fQSvgWidget_virtualbase_focusNextPrevChild(self.h, next)

type QSvgWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSvgWidget, slot: proc(super: QSvgWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusNextPrevChild(self: ptr cQSvgWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSvgWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QSvgWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSvgWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSvgWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSvgWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSvgWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSvgWidget, slot: proc(super: QSvgWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_eventFilter(self: ptr cQSvgWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgWidget_eventFilter ".} =
  type Cb = proc(super: QSvgWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSvgWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSvgWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQSvgWidget_virtualbase_timerEvent(self.h, event.h)

type QSvgWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_timerEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_timerEvent ".} =
  type Cb = proc(super: QSvgWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSvgWidget, event: gen_qcoreevent.QChildEvent): void =


  fQSvgWidget_virtualbase_childEvent(self.h, event.h)

type QSvgWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_childEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_childEvent ".} =
  type Cb = proc(super: QSvgWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSvgWidget, event: gen_qcoreevent.QEvent): void =


  fQSvgWidget_virtualbase_customEvent(self.h, event.h)

type QSvgWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSvgWidget, slot: proc(super: QSvgWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_customEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_customEvent ".} =
  type Cb = proc(super: QSvgWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSvgWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSvgWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQSvgWidget_virtualbase_connectNotify(self.h, signal.h)

type QSvgWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSvgWidget, slot: proc(super: QSvgWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_connectNotify(self: ptr cQSvgWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_connectNotify ".} =
  type Cb = proc(super: QSvgWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSvgWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSvgWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQSvgWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QSvgWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSvgWidget, slot: proc(super: QSvgWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_disconnectNotify(self: ptr cQSvgWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_disconnectNotify ".} =
  type Cb = proc(super: QSvgWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSvgWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSvgWidget) =
  fcQSvgWidget_delete(self.h)
