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
{.compile("gen_qrubberband.cpp", cflags).}


type QRubberBandShape* = cint
const
  QRubberBandLine* = 0
  QRubberBandRectangle* = 1



import gen_qrubberband_types
export gen_qrubberband_types

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
  gen_qrect,
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
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQRubberBand*{.exportc: "QRubberBand", incompleteStruct.} = object

proc fcQRubberBand_new(param1: cint): ptr cQRubberBand {.importc: "QRubberBand_new".}
proc fcQRubberBand_new2(param1: cint, param2: pointer): ptr cQRubberBand {.importc: "QRubberBand_new2".}
proc fcQRubberBand_metaObject(self: pointer, ): pointer {.importc: "QRubberBand_metaObject".}
proc fcQRubberBand_metacast(self: pointer, param1: cstring): pointer {.importc: "QRubberBand_metacast".}
proc fcQRubberBand_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRubberBand_metacall".}
proc fcQRubberBand_tr(s: cstring): struct_miqt_string {.importc: "QRubberBand_tr".}
proc fcQRubberBand_trUtf8(s: cstring): struct_miqt_string {.importc: "QRubberBand_trUtf8".}
proc fcQRubberBand_shape(self: pointer, ): cint {.importc: "QRubberBand_shape".}
proc fcQRubberBand_setGeometry(self: pointer, r: pointer): void {.importc: "QRubberBand_setGeometry".}
proc fcQRubberBand_setGeometry2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QRubberBand_setGeometry2".}
proc fcQRubberBand_move(self: pointer, x: cint, y: cint): void {.importc: "QRubberBand_move".}
proc fcQRubberBand_moveWithQPoint(self: pointer, p: pointer): void {.importc: "QRubberBand_moveWithQPoint".}
proc fcQRubberBand_resize(self: pointer, w: cint, h: cint): void {.importc: "QRubberBand_resize".}
proc fcQRubberBand_resizeWithQSize(self: pointer, s: pointer): void {.importc: "QRubberBand_resizeWithQSize".}
proc fcQRubberBand_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRubberBand_tr2".}
proc fcQRubberBand_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRubberBand_tr3".}
proc fcQRubberBand_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRubberBand_trUtf82".}
proc fcQRubberBand_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRubberBand_trUtf83".}
proc fQRubberBand_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_metaObject".}
proc fcQRubberBand_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_metaObject".}
proc fQRubberBand_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QRubberBand_virtualbase_metacast".}
proc fcQRubberBand_override_virtual_metacast(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_metacast".}
proc fQRubberBand_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRubberBand_virtualbase_metacall".}
proc fcQRubberBand_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_metacall".}
proc fQRubberBand_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QRubberBand_virtualbase_event".}
proc fcQRubberBand_override_virtual_event(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_event".}
proc fQRubberBand_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_paintEvent".}
proc fcQRubberBand_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_paintEvent".}
proc fQRubberBand_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_changeEvent".}
proc fcQRubberBand_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_changeEvent".}
proc fQRubberBand_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_showEvent".}
proc fcQRubberBand_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_showEvent".}
proc fQRubberBand_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_resizeEvent".}
proc fcQRubberBand_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_resizeEvent".}
proc fQRubberBand_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_moveEvent".}
proc fcQRubberBand_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_moveEvent".}
proc fQRubberBand_virtualbase_devType(self: pointer, ): cint{.importc: "QRubberBand_virtualbase_devType".}
proc fcQRubberBand_override_virtual_devType(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_devType".}
proc fQRubberBand_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QRubberBand_virtualbase_setVisible".}
proc fcQRubberBand_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_setVisible".}
proc fQRubberBand_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_sizeHint".}
proc fcQRubberBand_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_sizeHint".}
proc fQRubberBand_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_minimumSizeHint".}
proc fcQRubberBand_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_minimumSizeHint".}
proc fQRubberBand_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QRubberBand_virtualbase_heightForWidth".}
proc fcQRubberBand_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_heightForWidth".}
proc fQRubberBand_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QRubberBand_virtualbase_hasHeightForWidth".}
proc fcQRubberBand_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_hasHeightForWidth".}
proc fQRubberBand_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_paintEngine".}
proc fcQRubberBand_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_paintEngine".}
proc fQRubberBand_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mousePressEvent".}
proc fcQRubberBand_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mousePressEvent".}
proc fQRubberBand_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseReleaseEvent".}
proc fcQRubberBand_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseReleaseEvent".}
proc fQRubberBand_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseDoubleClickEvent".}
proc fcQRubberBand_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseDoubleClickEvent".}
proc fQRubberBand_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_mouseMoveEvent".}
proc fcQRubberBand_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_mouseMoveEvent".}
proc fQRubberBand_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_wheelEvent".}
proc fcQRubberBand_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_wheelEvent".}
proc fQRubberBand_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_keyPressEvent".}
proc fcQRubberBand_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_keyPressEvent".}
proc fQRubberBand_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_keyReleaseEvent".}
proc fcQRubberBand_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_keyReleaseEvent".}
proc fQRubberBand_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_focusInEvent".}
proc fcQRubberBand_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusInEvent".}
proc fQRubberBand_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_focusOutEvent".}
proc fcQRubberBand_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusOutEvent".}
proc fQRubberBand_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_enterEvent".}
proc fcQRubberBand_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_enterEvent".}
proc fQRubberBand_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_leaveEvent".}
proc fcQRubberBand_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_leaveEvent".}
proc fQRubberBand_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_closeEvent".}
proc fcQRubberBand_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_closeEvent".}
proc fQRubberBand_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_contextMenuEvent".}
proc fcQRubberBand_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_contextMenuEvent".}
proc fQRubberBand_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_tabletEvent".}
proc fcQRubberBand_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_tabletEvent".}
proc fQRubberBand_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_actionEvent".}
proc fcQRubberBand_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_actionEvent".}
proc fQRubberBand_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragEnterEvent".}
proc fcQRubberBand_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragEnterEvent".}
proc fQRubberBand_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragMoveEvent".}
proc fcQRubberBand_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragMoveEvent".}
proc fQRubberBand_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dragLeaveEvent".}
proc fcQRubberBand_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dragLeaveEvent".}
proc fQRubberBand_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_dropEvent".}
proc fcQRubberBand_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_dropEvent".}
proc fQRubberBand_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_hideEvent".}
proc fcQRubberBand_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_hideEvent".}
proc fQRubberBand_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QRubberBand_virtualbase_nativeEvent".}
proc fcQRubberBand_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_nativeEvent".}
proc fQRubberBand_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QRubberBand_virtualbase_metric".}
proc fcQRubberBand_override_virtual_metric(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_metric".}
proc fQRubberBand_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRubberBand_virtualbase_initPainter".}
proc fcQRubberBand_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_initPainter".}
proc fQRubberBand_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QRubberBand_virtualbase_redirected".}
proc fcQRubberBand_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_redirected".}
proc fQRubberBand_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRubberBand_virtualbase_sharedPainter".}
proc fcQRubberBand_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_sharedPainter".}
proc fQRubberBand_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QRubberBand_virtualbase_inputMethodEvent".}
proc fcQRubberBand_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_inputMethodEvent".}
proc fQRubberBand_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QRubberBand_virtualbase_inputMethodQuery".}
proc fcQRubberBand_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_inputMethodQuery".}
proc fQRubberBand_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QRubberBand_virtualbase_focusNextPrevChild".}
proc fcQRubberBand_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_focusNextPrevChild".}
proc fQRubberBand_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRubberBand_virtualbase_eventFilter".}
proc fcQRubberBand_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_eventFilter".}
proc fQRubberBand_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_timerEvent".}
proc fcQRubberBand_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_timerEvent".}
proc fQRubberBand_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_childEvent".}
proc fcQRubberBand_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_childEvent".}
proc fQRubberBand_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRubberBand_virtualbase_customEvent".}
proc fcQRubberBand_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_customEvent".}
proc fQRubberBand_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRubberBand_virtualbase_connectNotify".}
proc fcQRubberBand_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_connectNotify".}
proc fQRubberBand_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRubberBand_virtualbase_disconnectNotify".}
proc fcQRubberBand_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRubberBand_override_virtual_disconnectNotify".}
proc fcQRubberBand_staticMetaObject(): pointer {.importc: "QRubberBand_staticMetaObject".}
proc fcQRubberBand_delete(self: pointer) {.importc: "QRubberBand_delete".}


func init*(T: type QRubberBand, h: ptr cQRubberBand): QRubberBand =
  T(h: h)
proc create*(T: type QRubberBand, param1: QRubberBandShape): QRubberBand =

  QRubberBand.init(fcQRubberBand_new(cint(param1)))
proc create*(T: type QRubberBand, param1: QRubberBandShape, param2: gen_qwidget.QWidget): QRubberBand =

  QRubberBand.init(fcQRubberBand_new2(cint(param1), param2.h))
proc metaObject*(self: QRubberBand, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRubberBand_metaObject(self.h))

proc metacast*(self: QRubberBand, param1: cstring): pointer =

  fcQRubberBand_metacast(self.h, param1)

proc metacall*(self: QRubberBand, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRubberBand_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRubberBand, s: cstring): string =

  let v_ms = fcQRubberBand_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRubberBand, s: cstring): string =

  let v_ms = fcQRubberBand_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shape*(self: QRubberBand, ): QRubberBandShape =

  QRubberBandShape(fcQRubberBand_shape(self.h))

proc setGeometry*(self: QRubberBand, r: gen_qrect.QRect): void =

  fcQRubberBand_setGeometry(self.h, r.h)

proc setGeometry2*(self: QRubberBand, x: cint, y: cint, w: cint, h: cint): void =

  fcQRubberBand_setGeometry2(self.h, x, y, w, h)

proc move*(self: QRubberBand, x: cint, y: cint): void =

  fcQRubberBand_move(self.h, x, y)

proc moveWithQPoint*(self: QRubberBand, p: gen_qpoint.QPoint): void =

  fcQRubberBand_moveWithQPoint(self.h, p.h)

proc resize*(self: QRubberBand, w: cint, h: cint): void =

  fcQRubberBand_resize(self.h, w, h)

proc resizeWithQSize*(self: QRubberBand, s: gen_qsize.QSize): void =

  fcQRubberBand_resizeWithQSize(self.h, s.h)

proc tr2*(_: type QRubberBand, s: cstring, c: cstring): string =

  let v_ms = fcQRubberBand_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRubberBand, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRubberBand_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRubberBand, s: cstring, c: cstring): string =

  let v_ms = fcQRubberBand_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRubberBand, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRubberBand_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QRubberBand, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQRubberBand_virtualbase_metaObject(self.h))

type QRubberBandmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QRubberBand, slot: proc(super: QRubberBandmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_metaObject(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_metaObject ".} =
  type Cb = proc(super: QRubberBandmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QRubberBand, param1: cstring): pointer =


  fQRubberBand_virtualbase_metacast(self.h, param1)

type QRubberBandmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QRubberBand, slot: proc(super: QRubberBandmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_metacast(self: ptr cQRubberBand, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QRubberBand_metacast ".} =
  type Cb = proc(super: QRubberBandmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QRubberBand(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QRubberBand, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRubberBand_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRubberBandmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRubberBand, slot: proc(super: QRubberBandmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_metacall(self: ptr cQRubberBand, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRubberBand_metacall ".} =
  type Cb = proc(super: QRubberBandmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRubberBand(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QRubberBand, e: gen_qcoreevent.QEvent): bool =


  fQRubberBand_virtualbase_event(self.h, e.h)

type QRubberBandeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRubberBand, slot: proc(super: QRubberBandeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_event(self: ptr cQRubberBand, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QRubberBand_event ".} =
  type Cb = proc(super: QRubberBandeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRubberBand(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QRubberBand, param1: gen_qevent.QPaintEvent): void =


  fQRubberBand_virtualbase_paintEvent(self.h, param1.h)

type QRubberBandpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QRubberBand, slot: proc(super: QRubberBandpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_paintEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_paintEvent ".} =
  type Cb = proc(super: QRubberBandpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QRubberBand, param1: gen_qcoreevent.QEvent): void =


  fQRubberBand_virtualbase_changeEvent(self.h, param1.h)

type QRubberBandchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QRubberBand, slot: proc(super: QRubberBandchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_changeEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_changeEvent ".} =
  type Cb = proc(super: QRubberBandchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QRubberBand, param1: gen_qevent.QShowEvent): void =


  fQRubberBand_virtualbase_showEvent(self.h, param1.h)

type QRubberBandshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QRubberBand, slot: proc(super: QRubberBandshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_showEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_showEvent ".} =
  type Cb = proc(super: QRubberBandshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QRubberBand, param1: gen_qevent.QResizeEvent): void =


  fQRubberBand_virtualbase_resizeEvent(self.h, param1.h)

type QRubberBandresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QRubberBand, slot: proc(super: QRubberBandresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_resizeEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_resizeEvent ".} =
  type Cb = proc(super: QRubberBandresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QRubberBand, param1: gen_qevent.QMoveEvent): void =


  fQRubberBand_virtualbase_moveEvent(self.h, param1.h)

type QRubberBandmoveEventBase* = proc(param1: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QRubberBand, slot: proc(super: QRubberBandmoveEventBase, param1: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_moveEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_moveEvent ".} =
  type Cb = proc(super: QRubberBandmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qevent.QMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QRubberBand, ): cint =


  fQRubberBand_virtualbase_devType(self.h)

type QRubberBanddevTypeBase* = proc(): cint
proc ondevType*(self: QRubberBand, slot: proc(super: QRubberBanddevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_devType(self: ptr cQRubberBand, slot: int): cint {.exportc: "miqt_exec_callback_QRubberBand_devType ".} =
  type Cb = proc(super: QRubberBanddevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QRubberBand, visible: bool): void =


  fQRubberBand_virtualbase_setVisible(self.h, visible)

type QRubberBandsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QRubberBand, slot: proc(super: QRubberBandsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_setVisible(self: ptr cQRubberBand, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QRubberBand_setVisible ".} =
  type Cb = proc(super: QRubberBandsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QRubberBand(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QRubberBand, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQRubberBand_virtualbase_sizeHint(self.h))

type QRubberBandsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QRubberBand, slot: proc(super: QRubberBandsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_sizeHint(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_sizeHint ".} =
  type Cb = proc(super: QRubberBandsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QRubberBand, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQRubberBand_virtualbase_minimumSizeHint(self.h))

type QRubberBandminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QRubberBand, slot: proc(super: QRubberBandminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_minimumSizeHint(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_minimumSizeHint ".} =
  type Cb = proc(super: QRubberBandminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QRubberBand, param1: cint): cint =


  fQRubberBand_virtualbase_heightForWidth(self.h, param1)

type QRubberBandheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QRubberBand, slot: proc(super: QRubberBandheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_heightForWidth(self: ptr cQRubberBand, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRubberBand_heightForWidth ".} =
  type Cb = proc(super: QRubberBandheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QRubberBand(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QRubberBand, ): bool =


  fQRubberBand_virtualbase_hasHeightForWidth(self.h)

type QRubberBandhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QRubberBand, slot: proc(super: QRubberBandhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_hasHeightForWidth(self: ptr cQRubberBand, slot: int): bool {.exportc: "miqt_exec_callback_QRubberBand_hasHeightForWidth ".} =
  type Cb = proc(super: QRubberBandhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QRubberBand, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQRubberBand_virtualbase_paintEngine(self.h))

type QRubberBandpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QRubberBand, slot: proc(super: QRubberBandpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_paintEngine(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_paintEngine ".} =
  type Cb = proc(super: QRubberBandpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QRubberBand, event: gen_qevent.QMouseEvent): void =


  fQRubberBand_virtualbase_mousePressEvent(self.h, event.h)

type QRubberBandmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QRubberBand, slot: proc(super: QRubberBandmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mousePressEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mousePressEvent ".} =
  type Cb = proc(super: QRubberBandmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QRubberBand, event: gen_qevent.QMouseEvent): void =


  fQRubberBand_virtualbase_mouseReleaseEvent(self.h, event.h)

type QRubberBandmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QRubberBand, slot: proc(super: QRubberBandmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseReleaseEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseReleaseEvent ".} =
  type Cb = proc(super: QRubberBandmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QRubberBand, event: gen_qevent.QMouseEvent): void =


  fQRubberBand_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QRubberBandmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QRubberBand, slot: proc(super: QRubberBandmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseDoubleClickEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QRubberBandmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QRubberBand, event: gen_qevent.QMouseEvent): void =


  fQRubberBand_virtualbase_mouseMoveEvent(self.h, event.h)

type QRubberBandmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QRubberBand, slot: proc(super: QRubberBandmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_mouseMoveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_mouseMoveEvent ".} =
  type Cb = proc(super: QRubberBandmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QRubberBand, event: gen_qevent.QWheelEvent): void =


  fQRubberBand_virtualbase_wheelEvent(self.h, event.h)

type QRubberBandwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QRubberBand, slot: proc(super: QRubberBandwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_wheelEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_wheelEvent ".} =
  type Cb = proc(super: QRubberBandwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QRubberBand, event: gen_qevent.QKeyEvent): void =


  fQRubberBand_virtualbase_keyPressEvent(self.h, event.h)

type QRubberBandkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QRubberBand, slot: proc(super: QRubberBandkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_keyPressEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_keyPressEvent ".} =
  type Cb = proc(super: QRubberBandkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QRubberBand, event: gen_qevent.QKeyEvent): void =


  fQRubberBand_virtualbase_keyReleaseEvent(self.h, event.h)

type QRubberBandkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QRubberBand, slot: proc(super: QRubberBandkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_keyReleaseEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_keyReleaseEvent ".} =
  type Cb = proc(super: QRubberBandkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QRubberBand, event: gen_qevent.QFocusEvent): void =


  fQRubberBand_virtualbase_focusInEvent(self.h, event.h)

type QRubberBandfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QRubberBand, slot: proc(super: QRubberBandfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusInEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_focusInEvent ".} =
  type Cb = proc(super: QRubberBandfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QRubberBand, event: gen_qevent.QFocusEvent): void =


  fQRubberBand_virtualbase_focusOutEvent(self.h, event.h)

type QRubberBandfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QRubberBand, slot: proc(super: QRubberBandfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusOutEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_focusOutEvent ".} =
  type Cb = proc(super: QRubberBandfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QRubberBand, event: gen_qcoreevent.QEvent): void =


  fQRubberBand_virtualbase_enterEvent(self.h, event.h)

type QRubberBandenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QRubberBand, slot: proc(super: QRubberBandenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_enterEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_enterEvent ".} =
  type Cb = proc(super: QRubberBandenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QRubberBand, event: gen_qcoreevent.QEvent): void =


  fQRubberBand_virtualbase_leaveEvent(self.h, event.h)

type QRubberBandleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QRubberBand, slot: proc(super: QRubberBandleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_leaveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_leaveEvent ".} =
  type Cb = proc(super: QRubberBandleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QRubberBand, event: gen_qevent.QCloseEvent): void =


  fQRubberBand_virtualbase_closeEvent(self.h, event.h)

type QRubberBandcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QRubberBand, slot: proc(super: QRubberBandcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_closeEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_closeEvent ".} =
  type Cb = proc(super: QRubberBandcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QRubberBand, event: gen_qevent.QContextMenuEvent): void =


  fQRubberBand_virtualbase_contextMenuEvent(self.h, event.h)

type QRubberBandcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QRubberBand, slot: proc(super: QRubberBandcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_contextMenuEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_contextMenuEvent ".} =
  type Cb = proc(super: QRubberBandcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QRubberBand, event: gen_qevent.QTabletEvent): void =


  fQRubberBand_virtualbase_tabletEvent(self.h, event.h)

type QRubberBandtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QRubberBand, slot: proc(super: QRubberBandtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_tabletEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_tabletEvent ".} =
  type Cb = proc(super: QRubberBandtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QRubberBand, event: gen_qevent.QActionEvent): void =


  fQRubberBand_virtualbase_actionEvent(self.h, event.h)

type QRubberBandactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QRubberBand, slot: proc(super: QRubberBandactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_actionEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_actionEvent ".} =
  type Cb = proc(super: QRubberBandactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QRubberBand, event: gen_qevent.QDragEnterEvent): void =


  fQRubberBand_virtualbase_dragEnterEvent(self.h, event.h)

type QRubberBanddragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QRubberBand, slot: proc(super: QRubberBanddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragEnterEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragEnterEvent ".} =
  type Cb = proc(super: QRubberBanddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QRubberBand, event: gen_qevent.QDragMoveEvent): void =


  fQRubberBand_virtualbase_dragMoveEvent(self.h, event.h)

type QRubberBanddragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QRubberBand, slot: proc(super: QRubberBanddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragMoveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragMoveEvent ".} =
  type Cb = proc(super: QRubberBanddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QRubberBand, event: gen_qevent.QDragLeaveEvent): void =


  fQRubberBand_virtualbase_dragLeaveEvent(self.h, event.h)

type QRubberBanddragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QRubberBand, slot: proc(super: QRubberBanddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dragLeaveEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dragLeaveEvent ".} =
  type Cb = proc(super: QRubberBanddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QRubberBand, event: gen_qevent.QDropEvent): void =


  fQRubberBand_virtualbase_dropEvent(self.h, event.h)

type QRubberBanddropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QRubberBand, slot: proc(super: QRubberBanddropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_dropEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_dropEvent ".} =
  type Cb = proc(super: QRubberBanddropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QRubberBand, event: gen_qevent.QHideEvent): void =


  fQRubberBand_virtualbase_hideEvent(self.h, event.h)

type QRubberBandhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QRubberBand, slot: proc(super: QRubberBandhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_hideEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_hideEvent ".} =
  type Cb = proc(super: QRubberBandhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QRubberBand, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQRubberBand_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRubberBandnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QRubberBand, slot: proc(super: QRubberBandnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_nativeEvent(self: ptr cQRubberBand, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QRubberBand_nativeEvent ".} =
  type Cb = proc(super: QRubberBandnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QRubberBand(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QRubberBand, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQRubberBand_virtualbase_metric(self.h, cint(param1))

type QRubberBandmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QRubberBand, slot: proc(super: QRubberBandmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_metric(self: ptr cQRubberBand, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRubberBand_metric ".} =
  type Cb = proc(super: QRubberBandmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QRubberBand(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QRubberBand, painter: gen_qpainter.QPainter): void =


  fQRubberBand_virtualbase_initPainter(self.h, painter.h)

type QRubberBandinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QRubberBand, slot: proc(super: QRubberBandinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_initPainter(self: ptr cQRubberBand, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_initPainter ".} =
  type Cb = proc(super: QRubberBandinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QRubberBand(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QRubberBand, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQRubberBand_virtualbase_redirected(self.h, offset.h))

type QRubberBandredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QRubberBand, slot: proc(super: QRubberBandredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_redirected(self: ptr cQRubberBand, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QRubberBand_redirected ".} =
  type Cb = proc(super: QRubberBandredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QRubberBand(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QRubberBand, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQRubberBand_virtualbase_sharedPainter(self.h))

type QRubberBandsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QRubberBand, slot: proc(super: QRubberBandsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_sharedPainter(self: ptr cQRubberBand, slot: int): pointer {.exportc: "miqt_exec_callback_QRubberBand_sharedPainter ".} =
  type Cb = proc(super: QRubberBandsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QRubberBand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QRubberBand, param1: gen_qevent.QInputMethodEvent): void =


  fQRubberBand_virtualbase_inputMethodEvent(self.h, param1.h)

type QRubberBandinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QRubberBand, slot: proc(super: QRubberBandinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_inputMethodEvent(self: ptr cQRubberBand, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_inputMethodEvent ".} =
  type Cb = proc(super: QRubberBandinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QRubberBand(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QRubberBand, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQRubberBand_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QRubberBandinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QRubberBand, slot: proc(super: QRubberBandinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_inputMethodQuery(self: ptr cQRubberBand, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QRubberBand_inputMethodQuery ".} =
  type Cb = proc(super: QRubberBandinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QRubberBand(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QRubberBand, next: bool): bool =


  fQRubberBand_virtualbase_focusNextPrevChild(self.h, next)

type QRubberBandfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QRubberBand, slot: proc(super: QRubberBandfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_focusNextPrevChild(self: ptr cQRubberBand, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QRubberBand_focusNextPrevChild ".} =
  type Cb = proc(super: QRubberBandfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QRubberBand(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRubberBand, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRubberBand_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRubberBandeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRubberBand, slot: proc(super: QRubberBandeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_eventFilter(self: ptr cQRubberBand, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRubberBand_eventFilter ".} =
  type Cb = proc(super: QRubberBandeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRubberBand(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRubberBand, event: gen_qcoreevent.QTimerEvent): void =


  fQRubberBand_virtualbase_timerEvent(self.h, event.h)

type QRubberBandtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRubberBand, slot: proc(super: QRubberBandtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_timerEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_timerEvent ".} =
  type Cb = proc(super: QRubberBandtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRubberBand, event: gen_qcoreevent.QChildEvent): void =


  fQRubberBand_virtualbase_childEvent(self.h, event.h)

type QRubberBandchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRubberBand, slot: proc(super: QRubberBandchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_childEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_childEvent ".} =
  type Cb = proc(super: QRubberBandchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRubberBand, event: gen_qcoreevent.QEvent): void =


  fQRubberBand_virtualbase_customEvent(self.h, event.h)

type QRubberBandcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRubberBand, slot: proc(super: QRubberBandcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_customEvent(self: ptr cQRubberBand, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_customEvent ".} =
  type Cb = proc(super: QRubberBandcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRubberBand(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRubberBand, signal: gen_qmetaobject.QMetaMethod): void =


  fQRubberBand_virtualbase_connectNotify(self.h, signal.h)

type QRubberBandconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRubberBand, slot: proc(super: QRubberBandconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBandconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_connectNotify(self: ptr cQRubberBand, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_connectNotify ".} =
  type Cb = proc(super: QRubberBandconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRubberBand(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRubberBand, signal: gen_qmetaobject.QMetaMethod): void =


  fQRubberBand_virtualbase_disconnectNotify(self.h, signal.h)

type QRubberBanddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRubberBand, slot: proc(super: QRubberBanddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRubberBanddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRubberBand_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRubberBand_disconnectNotify(self: ptr cQRubberBand, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRubberBand_disconnectNotify ".} =
  type Cb = proc(super: QRubberBanddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRubberBand(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QRubberBand): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRubberBand_staticMetaObject())
proc delete*(self: QRubberBand) =
  fcQRubberBand_delete(self.h)
