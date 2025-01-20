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
{.compile("gen_qframe.cpp", cflags).}


type QFrameShape* = cint
const
  QFrameNoFrame* = 0
  QFrameBox* = 1
  QFramePanel* = 2
  QFrameWinPanel* = 3
  QFrameHLine* = 4
  QFrameVLine* = 5
  QFrameStyledPanel* = 6



type QFrameShadow* = cint
const
  QFramePlain* = 16
  QFrameRaised* = 32
  QFrameSunken* = 48



type QFrameStyleMask* = cint
const
  QFrameShadow_Mask* = 240
  QFrameShape_Mask* = 15



import gen_qframe_types
export gen_qframe_types

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

type cQFrame*{.exportc: "QFrame", incompleteStruct.} = object

proc fcQFrame_new(parent: pointer): ptr cQFrame {.importc: "QFrame_new".}
proc fcQFrame_new2(): ptr cQFrame {.importc: "QFrame_new2".}
proc fcQFrame_new3(parent: pointer, f: cint): ptr cQFrame {.importc: "QFrame_new3".}
proc fcQFrame_metaObject(self: pointer, ): pointer {.importc: "QFrame_metaObject".}
proc fcQFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QFrame_metacast".}
proc fcQFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFrame_metacall".}
proc fcQFrame_tr(s: cstring): struct_miqt_string {.importc: "QFrame_tr".}
proc fcQFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QFrame_trUtf8".}
proc fcQFrame_frameStyle(self: pointer, ): cint {.importc: "QFrame_frameStyle".}
proc fcQFrame_setFrameStyle(self: pointer, frameStyle: cint): void {.importc: "QFrame_setFrameStyle".}
proc fcQFrame_frameWidth(self: pointer, ): cint {.importc: "QFrame_frameWidth".}
proc fcQFrame_sizeHint(self: pointer, ): pointer {.importc: "QFrame_sizeHint".}
proc fcQFrame_frameShape(self: pointer, ): cint {.importc: "QFrame_frameShape".}
proc fcQFrame_setFrameShape(self: pointer, frameShape: cint): void {.importc: "QFrame_setFrameShape".}
proc fcQFrame_frameShadow(self: pointer, ): cint {.importc: "QFrame_frameShadow".}
proc fcQFrame_setFrameShadow(self: pointer, frameShadow: cint): void {.importc: "QFrame_setFrameShadow".}
proc fcQFrame_lineWidth(self: pointer, ): cint {.importc: "QFrame_lineWidth".}
proc fcQFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QFrame_setLineWidth".}
proc fcQFrame_midLineWidth(self: pointer, ): cint {.importc: "QFrame_midLineWidth".}
proc fcQFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QFrame_setMidLineWidth".}
proc fcQFrame_frameRect(self: pointer, ): pointer {.importc: "QFrame_frameRect".}
proc fcQFrame_setFrameRect(self: pointer, frameRect: pointer): void {.importc: "QFrame_setFrameRect".}
proc fcQFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_tr2".}
proc fcQFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_tr3".}
proc fcQFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFrame_trUtf82".}
proc fcQFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFrame_trUtf83".}
proc fQFrame_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFrame_virtualbase_metaObject".}
proc fcQFrame_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFrame_override_virtual_metaObject".}
proc fQFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFrame_virtualbase_metacast".}
proc fcQFrame_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFrame_override_virtual_metacast".}
proc fQFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFrame_virtualbase_metacall".}
proc fcQFrame_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFrame_override_virtual_metacall".}
proc fQFrame_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFrame_virtualbase_sizeHint".}
proc fcQFrame_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFrame_override_virtual_sizeHint".}
proc fQFrame_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFrame_virtualbase_event".}
proc fcQFrame_override_virtual_event(self: pointer, slot: int) {.importc: "QFrame_override_virtual_event".}
proc fQFrame_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_paintEvent".}
proc fcQFrame_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_paintEvent".}
proc fQFrame_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_changeEvent".}
proc fcQFrame_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_changeEvent".}
proc fQFrame_virtualbase_devType(self: pointer, ): cint{.importc: "QFrame_virtualbase_devType".}
proc fcQFrame_override_virtual_devType(self: pointer, slot: int) {.importc: "QFrame_override_virtual_devType".}
proc fQFrame_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFrame_virtualbase_setVisible".}
proc fcQFrame_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFrame_override_virtual_setVisible".}
proc fQFrame_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFrame_virtualbase_minimumSizeHint".}
proc fcQFrame_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFrame_override_virtual_minimumSizeHint".}
proc fQFrame_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFrame_virtualbase_heightForWidth".}
proc fcQFrame_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFrame_override_virtual_heightForWidth".}
proc fQFrame_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFrame_virtualbase_hasHeightForWidth".}
proc fcQFrame_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFrame_override_virtual_hasHeightForWidth".}
proc fQFrame_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFrame_virtualbase_paintEngine".}
proc fcQFrame_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFrame_override_virtual_paintEngine".}
proc fQFrame_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mousePressEvent".}
proc fcQFrame_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mousePressEvent".}
proc fQFrame_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseReleaseEvent".}
proc fcQFrame_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseReleaseEvent".}
proc fQFrame_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseDoubleClickEvent".}
proc fcQFrame_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseDoubleClickEvent".}
proc fQFrame_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_mouseMoveEvent".}
proc fcQFrame_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_mouseMoveEvent".}
proc fQFrame_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_wheelEvent".}
proc fcQFrame_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_wheelEvent".}
proc fQFrame_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_keyPressEvent".}
proc fcQFrame_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_keyPressEvent".}
proc fQFrame_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_keyReleaseEvent".}
proc fcQFrame_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_keyReleaseEvent".}
proc fQFrame_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_focusInEvent".}
proc fcQFrame_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusInEvent".}
proc fQFrame_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_focusOutEvent".}
proc fcQFrame_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusOutEvent".}
proc fQFrame_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_enterEvent".}
proc fcQFrame_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_enterEvent".}
proc fQFrame_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_leaveEvent".}
proc fcQFrame_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_leaveEvent".}
proc fQFrame_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_moveEvent".}
proc fcQFrame_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_moveEvent".}
proc fQFrame_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_resizeEvent".}
proc fcQFrame_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_resizeEvent".}
proc fQFrame_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_closeEvent".}
proc fcQFrame_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_closeEvent".}
proc fQFrame_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_contextMenuEvent".}
proc fcQFrame_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_contextMenuEvent".}
proc fQFrame_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_tabletEvent".}
proc fcQFrame_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_tabletEvent".}
proc fQFrame_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_actionEvent".}
proc fcQFrame_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_actionEvent".}
proc fQFrame_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragEnterEvent".}
proc fcQFrame_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragEnterEvent".}
proc fQFrame_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragMoveEvent".}
proc fcQFrame_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragMoveEvent".}
proc fQFrame_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dragLeaveEvent".}
proc fcQFrame_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dragLeaveEvent".}
proc fQFrame_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_dropEvent".}
proc fcQFrame_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_dropEvent".}
proc fQFrame_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_showEvent".}
proc fcQFrame_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_showEvent".}
proc fQFrame_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_hideEvent".}
proc fcQFrame_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_hideEvent".}
proc fQFrame_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QFrame_virtualbase_nativeEvent".}
proc fcQFrame_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_nativeEvent".}
proc fQFrame_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFrame_virtualbase_metric".}
proc fcQFrame_override_virtual_metric(self: pointer, slot: int) {.importc: "QFrame_override_virtual_metric".}
proc fQFrame_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFrame_virtualbase_initPainter".}
proc fcQFrame_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_initPainter".}
proc fQFrame_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFrame_virtualbase_redirected".}
proc fcQFrame_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFrame_override_virtual_redirected".}
proc fQFrame_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFrame_virtualbase_sharedPainter".}
proc fcQFrame_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_sharedPainter".}
proc fQFrame_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFrame_virtualbase_inputMethodEvent".}
proc fcQFrame_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_inputMethodEvent".}
proc fQFrame_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFrame_virtualbase_inputMethodQuery".}
proc fcQFrame_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFrame_override_virtual_inputMethodQuery".}
proc fQFrame_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFrame_virtualbase_focusNextPrevChild".}
proc fcQFrame_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFrame_override_virtual_focusNextPrevChild".}
proc fQFrame_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFrame_virtualbase_eventFilter".}
proc fcQFrame_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFrame_override_virtual_eventFilter".}
proc fQFrame_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_timerEvent".}
proc fcQFrame_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_timerEvent".}
proc fQFrame_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_childEvent".}
proc fcQFrame_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_childEvent".}
proc fQFrame_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFrame_virtualbase_customEvent".}
proc fcQFrame_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFrame_override_virtual_customEvent".}
proc fQFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFrame_virtualbase_connectNotify".}
proc fcQFrame_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFrame_override_virtual_connectNotify".}
proc fQFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFrame_virtualbase_disconnectNotify".}
proc fcQFrame_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFrame_override_virtual_disconnectNotify".}
proc fcQFrame_staticMetaObject(): pointer {.importc: "QFrame_staticMetaObject".}
proc fcQFrame_delete(self: pointer) {.importc: "QFrame_delete".}


func init*(T: type QFrame, h: ptr cQFrame): QFrame =
  T(h: h)
proc create*(T: type QFrame, parent: gen_qwidget.QWidget): QFrame =

  QFrame.init(fcQFrame_new(parent.h))
proc create*(T: type QFrame, ): QFrame =

  QFrame.init(fcQFrame_new2())
proc create*(T: type QFrame, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QFrame =

  QFrame.init(fcQFrame_new3(parent.h, cint(f)))
proc metaObject*(self: QFrame, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFrame_metaObject(self.h))

proc metacast*(self: QFrame, param1: cstring): pointer =

  fcQFrame_metacast(self.h, param1)

proc metacall*(self: QFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFrame, s: cstring): string =

  let v_ms = fcQFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFrame, s: cstring): string =

  let v_ms = fcQFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc frameStyle*(self: QFrame, ): cint =

  fcQFrame_frameStyle(self.h)

proc setFrameStyle*(self: QFrame, frameStyle: cint): void =

  fcQFrame_setFrameStyle(self.h, frameStyle)

proc frameWidth*(self: QFrame, ): cint =

  fcQFrame_frameWidth(self.h)

proc sizeHint*(self: QFrame, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFrame_sizeHint(self.h))

proc frameShape*(self: QFrame, ): QFrameShape =

  QFrameShape(fcQFrame_frameShape(self.h))

proc setFrameShape*(self: QFrame, frameShape: QFrameShape): void =

  fcQFrame_setFrameShape(self.h, cint(frameShape))

proc frameShadow*(self: QFrame, ): QFrameShadow =

  QFrameShadow(fcQFrame_frameShadow(self.h))

proc setFrameShadow*(self: QFrame, frameShadow: QFrameShadow): void =

  fcQFrame_setFrameShadow(self.h, cint(frameShadow))

proc lineWidth*(self: QFrame, ): cint =

  fcQFrame_lineWidth(self.h)

proc setLineWidth*(self: QFrame, lineWidth: cint): void =

  fcQFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: QFrame, ): cint =

  fcQFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: QFrame, midLineWidth: cint): void =

  fcQFrame_setMidLineWidth(self.h, midLineWidth)

proc frameRect*(self: QFrame, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQFrame_frameRect(self.h))

proc setFrameRect*(self: QFrame, frameRect: gen_qrect.QRect): void =

  fcQFrame_setFrameRect(self.h, frameRect.h)

proc tr2*(_: type QFrame, s: cstring, c: cstring): string =

  let v_ms = fcQFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFrame, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFrame, s: cstring, c: cstring): string =

  let v_ms = fcQFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFrame, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QFrame, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQFrame_virtualbase_metaObject(self.h))

type QFramemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QFrame, slot: proc(super: QFramemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QFramemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_metaObject(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_metaObject ".} =
  type Cb = proc(super: QFramemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QFrame, param1: cstring): pointer =


  fQFrame_virtualbase_metacast(self.h, param1)

type QFramemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QFrame, slot: proc(super: QFramemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QFramemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_metacast(self: ptr cQFrame, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFrame_metacast ".} =
  type Cb = proc(super: QFramemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QFrame(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFramemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFrame, slot: proc(super: QFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_metacall(self: ptr cQFrame, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFrame_metacall ".} =
  type Cb = proc(super: QFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFrame(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QFrame, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFrame_virtualbase_sizeHint(self.h))

type QFramesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFrame, slot: proc(super: QFramesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFramesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_sizeHint(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_sizeHint ".} =
  type Cb = proc(super: QFramesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QFrame, e: gen_qcoreevent.QEvent): bool =


  fQFrame_virtualbase_event(self.h, e.h)

type QFrameeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFrame, slot: proc(super: QFrameeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFrameeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_event(self: ptr cQFrame, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFrame_event ".} =
  type Cb = proc(super: QFrameeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFrame(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QFrame, param1: gen_qevent.QPaintEvent): void =


  fQFrame_virtualbase_paintEvent(self.h, param1.h)

type QFramepaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QFrame, slot: proc(super: QFramepaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_paintEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_paintEvent ".} =
  type Cb = proc(super: QFramepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QFrame(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QFrame, param1: gen_qcoreevent.QEvent): void =


  fQFrame_virtualbase_changeEvent(self.h, param1.h)

type QFramechangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QFrame, slot: proc(super: QFramechangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_changeEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_changeEvent ".} =
  type Cb = proc(super: QFramechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QFrame(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QFrame, ): cint =


  fQFrame_virtualbase_devType(self.h)

type QFramedevTypeBase* = proc(): cint
proc ondevType*(self: QFrame, slot: proc(super: QFramedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFramedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_devType(self: ptr cQFrame, slot: int): cint {.exportc: "miqt_exec_callback_QFrame_devType ".} =
  type Cb = proc(super: QFramedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QFrame, visible: bool): void =


  fQFrame_virtualbase_setVisible(self.h, visible)

type QFramesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QFrame, slot: proc(super: QFramesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFramesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_setVisible(self: ptr cQFrame, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFrame_setVisible ".} =
  type Cb = proc(super: QFramesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QFrame(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QFrame, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFrame_virtualbase_minimumSizeHint(self.h))

type QFrameminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QFrame, slot: proc(super: QFrameminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFrameminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_minimumSizeHint(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_minimumSizeHint ".} =
  type Cb = proc(super: QFrameminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QFrame, param1: cint): cint =


  fQFrame_virtualbase_heightForWidth(self.h, param1)

type QFrameheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QFrame, slot: proc(super: QFrameheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFrameheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_heightForWidth(self: ptr cQFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFrame_heightForWidth ".} =
  type Cb = proc(super: QFrameheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QFrame(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QFrame, ): bool =


  fQFrame_virtualbase_hasHeightForWidth(self.h)

type QFramehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFrame, slot: proc(super: QFramehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFramehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_hasHeightForWidth(self: ptr cQFrame, slot: int): bool {.exportc: "miqt_exec_callback_QFrame_hasHeightForWidth ".} =
  type Cb = proc(super: QFramehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QFrame, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQFrame_virtualbase_paintEngine(self.h))

type QFramepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QFrame, slot: proc(super: QFramepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QFramepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_paintEngine(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_paintEngine ".} =
  type Cb = proc(super: QFramepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QFrame, event: gen_qevent.QMouseEvent): void =


  fQFrame_virtualbase_mousePressEvent(self.h, event.h)

type QFramemousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QFrame, slot: proc(super: QFramemousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mousePressEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mousePressEvent ".} =
  type Cb = proc(super: QFramemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QFrame, event: gen_qevent.QMouseEvent): void =


  fQFrame_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFramemouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QFrame, slot: proc(super: QFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseReleaseEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseReleaseEvent ".} =
  type Cb = proc(super: QFramemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QFrame, event: gen_qevent.QMouseEvent): void =


  fQFrame_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFramemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QFrame, slot: proc(super: QFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseDoubleClickEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QFramemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QFrame, event: gen_qevent.QMouseEvent): void =


  fQFrame_virtualbase_mouseMoveEvent(self.h, event.h)

type QFramemouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QFrame, slot: proc(super: QFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_mouseMoveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_mouseMoveEvent ".} =
  type Cb = proc(super: QFramemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QFrame, event: gen_qevent.QWheelEvent): void =


  fQFrame_virtualbase_wheelEvent(self.h, event.h)

type QFramewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QFrame, slot: proc(super: QFramewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_wheelEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_wheelEvent ".} =
  type Cb = proc(super: QFramewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QFrame, event: gen_qevent.QKeyEvent): void =


  fQFrame_virtualbase_keyPressEvent(self.h, event.h)

type QFramekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QFrame, slot: proc(super: QFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_keyPressEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_keyPressEvent ".} =
  type Cb = proc(super: QFramekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QFrame, event: gen_qevent.QKeyEvent): void =


  fQFrame_virtualbase_keyReleaseEvent(self.h, event.h)

type QFramekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QFrame, slot: proc(super: QFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_keyReleaseEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_keyReleaseEvent ".} =
  type Cb = proc(super: QFramekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QFrame, event: gen_qevent.QFocusEvent): void =


  fQFrame_virtualbase_focusInEvent(self.h, event.h)

type QFramefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QFrame, slot: proc(super: QFramefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusInEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_focusInEvent ".} =
  type Cb = proc(super: QFramefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QFrame, event: gen_qevent.QFocusEvent): void =


  fQFrame_virtualbase_focusOutEvent(self.h, event.h)

type QFramefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QFrame, slot: proc(super: QFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusOutEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_focusOutEvent ".} =
  type Cb = proc(super: QFramefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QFrame, event: gen_qcoreevent.QEvent): void =


  fQFrame_virtualbase_enterEvent(self.h, event.h)

type QFrameenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QFrame, slot: proc(super: QFrameenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_enterEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_enterEvent ".} =
  type Cb = proc(super: QFrameenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QFrame, event: gen_qcoreevent.QEvent): void =


  fQFrame_virtualbase_leaveEvent(self.h, event.h)

type QFrameleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QFrame, slot: proc(super: QFrameleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_leaveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_leaveEvent ".} =
  type Cb = proc(super: QFrameleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QFrame, event: gen_qevent.QMoveEvent): void =


  fQFrame_virtualbase_moveEvent(self.h, event.h)

type QFramemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QFrame, slot: proc(super: QFramemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_moveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_moveEvent ".} =
  type Cb = proc(super: QFramemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QFrame, event: gen_qevent.QResizeEvent): void =


  fQFrame_virtualbase_resizeEvent(self.h, event.h)

type QFrameresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QFrame, slot: proc(super: QFrameresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_resizeEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_resizeEvent ".} =
  type Cb = proc(super: QFrameresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QFrame, event: gen_qevent.QCloseEvent): void =


  fQFrame_virtualbase_closeEvent(self.h, event.h)

type QFramecloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QFrame, slot: proc(super: QFramecloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramecloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_closeEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_closeEvent ".} =
  type Cb = proc(super: QFramecloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QFrame, event: gen_qevent.QContextMenuEvent): void =


  fQFrame_virtualbase_contextMenuEvent(self.h, event.h)

type QFramecontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QFrame, slot: proc(super: QFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_contextMenuEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_contextMenuEvent ".} =
  type Cb = proc(super: QFramecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QFrame, event: gen_qevent.QTabletEvent): void =


  fQFrame_virtualbase_tabletEvent(self.h, event.h)

type QFrametabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QFrame, slot: proc(super: QFrametabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrametabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_tabletEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_tabletEvent ".} =
  type Cb = proc(super: QFrametabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QFrame, event: gen_qevent.QActionEvent): void =


  fQFrame_virtualbase_actionEvent(self.h, event.h)

type QFrameactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QFrame, slot: proc(super: QFrameactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_actionEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_actionEvent ".} =
  type Cb = proc(super: QFrameactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QFrame, event: gen_qevent.QDragEnterEvent): void =


  fQFrame_virtualbase_dragEnterEvent(self.h, event.h)

type QFramedragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QFrame, slot: proc(super: QFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragEnterEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragEnterEvent ".} =
  type Cb = proc(super: QFramedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QFrame, event: gen_qevent.QDragMoveEvent): void =


  fQFrame_virtualbase_dragMoveEvent(self.h, event.h)

type QFramedragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QFrame, slot: proc(super: QFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragMoveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragMoveEvent ".} =
  type Cb = proc(super: QFramedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QFrame, event: gen_qevent.QDragLeaveEvent): void =


  fQFrame_virtualbase_dragLeaveEvent(self.h, event.h)

type QFramedragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QFrame, slot: proc(super: QFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dragLeaveEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dragLeaveEvent ".} =
  type Cb = proc(super: QFramedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QFrame, event: gen_qevent.QDropEvent): void =


  fQFrame_virtualbase_dropEvent(self.h, event.h)

type QFramedropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QFrame, slot: proc(super: QFramedropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramedropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_dropEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_dropEvent ".} =
  type Cb = proc(super: QFramedropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QFrame, event: gen_qevent.QShowEvent): void =


  fQFrame_virtualbase_showEvent(self.h, event.h)

type QFrameshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QFrame, slot: proc(super: QFrameshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_showEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_showEvent ".} =
  type Cb = proc(super: QFrameshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QFrame, event: gen_qevent.QHideEvent): void =


  fQFrame_virtualbase_hideEvent(self.h, event.h)

type QFramehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QFrame, slot: proc(super: QFramehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_hideEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_hideEvent ".} =
  type Cb = proc(super: QFramehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QFrame(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QFrame, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQFrame_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFramenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QFrame, slot: proc(super: QFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_nativeEvent(self: ptr cQFrame, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QFrame_nativeEvent ".} =
  type Cb = proc(super: QFramenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QFrame(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QFrame, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQFrame_virtualbase_metric(self.h, cint(param1))

type QFramemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QFrame, slot: proc(super: QFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_metric(self: ptr cQFrame, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFrame_metric ".} =
  type Cb = proc(super: QFramemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QFrame(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QFrame, painter: gen_qpainter.QPainter): void =


  fQFrame_virtualbase_initPainter(self.h, painter.h)

type QFrameinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QFrame, slot: proc(super: QFrameinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_initPainter(self: ptr cQFrame, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFrame_initPainter ".} =
  type Cb = proc(super: QFrameinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QFrame(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QFrame, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQFrame_virtualbase_redirected(self.h, offset.h))

type QFrameredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QFrame, slot: proc(super: QFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_redirected(self: ptr cQFrame, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFrame_redirected ".} =
  type Cb = proc(super: QFrameredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QFrame(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QFrame, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQFrame_virtualbase_sharedPainter(self.h))

type QFramesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QFrame, slot: proc(super: QFramesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QFramesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_sharedPainter(self: ptr cQFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QFrame_sharedPainter ".} =
  type Cb = proc(super: QFramesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QFrame, param1: gen_qevent.QInputMethodEvent): void =


  fQFrame_virtualbase_inputMethodEvent(self.h, param1.h)

type QFrameinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QFrame, slot: proc(super: QFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_inputMethodEvent(self: ptr cQFrame, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFrame_inputMethodEvent ".} =
  type Cb = proc(super: QFrameinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QFrame(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QFrame, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFrame_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFrameinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QFrame, slot: proc(super: QFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_inputMethodQuery(self: ptr cQFrame, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFrame_inputMethodQuery ".} =
  type Cb = proc(super: QFrameinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QFrame(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QFrame, next: bool): bool =


  fQFrame_virtualbase_focusNextPrevChild(self.h, next)

type QFramefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QFrame, slot: proc(super: QFramefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QFramefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_focusNextPrevChild(self: ptr cQFrame, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFrame_focusNextPrevChild ".} =
  type Cb = proc(super: QFramefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QFrame(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFrame, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFrameeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFrame, slot: proc(super: QFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_eventFilter(self: ptr cQFrame, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFrame_eventFilter ".} =
  type Cb = proc(super: QFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFrame(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFrame, event: gen_qcoreevent.QTimerEvent): void =


  fQFrame_virtualbase_timerEvent(self.h, event.h)

type QFrametimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFrame, slot: proc(super: QFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_timerEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_timerEvent ".} =
  type Cb = proc(super: QFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFrame, event: gen_qcoreevent.QChildEvent): void =


  fQFrame_virtualbase_childEvent(self.h, event.h)

type QFramechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFrame, slot: proc(super: QFramechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_childEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_childEvent ".} =
  type Cb = proc(super: QFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFrame, event: gen_qcoreevent.QEvent): void =


  fQFrame_virtualbase_customEvent(self.h, event.h)

type QFramecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFrame, slot: proc(super: QFramecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_customEvent(self: ptr cQFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFrame_customEvent ".} =
  type Cb = proc(super: QFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQFrame_virtualbase_connectNotify(self.h, signal.h)

type QFrameconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFrame, slot: proc(super: QFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_connectNotify(self: ptr cQFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFrame_connectNotify ".} =
  type Cb = proc(super: QFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQFrame_virtualbase_disconnectNotify(self.h, signal.h)

type QFramedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFrame, slot: proc(super: QFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFrame_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFrame_disconnectNotify(self: ptr cQFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFrame_disconnectNotify ".} =
  type Cb = proc(super: QFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFrame): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFrame_staticMetaObject())
proc delete*(self: QFrame) =
  fcQFrame_delete(self.h)
