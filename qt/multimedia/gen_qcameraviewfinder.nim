import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qcameraviewfinder.cpp", cflags).}


import gen_qcameraviewfinder_types
export gen_qcameraviewfinder_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmediaobject,
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
  gen_qvideowidget,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qmediaobject,
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
  gen_qvideowidget,
  gen_qwidget

type cQCameraViewfinder*{.exportc: "QCameraViewfinder", incompleteStruct.} = object

proc fcQCameraViewfinder_new(parent: pointer): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new".}
proc fcQCameraViewfinder_new2(): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new2".}
proc fcQCameraViewfinder_metaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_metaObject".}
proc fcQCameraViewfinder_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinder_metacast".}
proc fcQCameraViewfinder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinder_metacall".}
proc fcQCameraViewfinder_tr(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr".}
proc fcQCameraViewfinder_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf8".}
proc fcQCameraViewfinder_mediaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_mediaObject".}
proc fcQCameraViewfinder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr2".}
proc fcQCameraViewfinder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_tr3".}
proc fcQCameraViewfinder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf82".}
proc fcQCameraViewfinder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_trUtf83".}
proc fQCameraViewfinder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_metaObject".}
proc fcQCameraViewfinder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metaObject".}
proc fQCameraViewfinder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCameraViewfinder_virtualbase_metacast".}
proc fcQCameraViewfinder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metacast".}
proc fQCameraViewfinder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCameraViewfinder_virtualbase_metacall".}
proc fcQCameraViewfinder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metacall".}
proc fQCameraViewfinder_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_mediaObject".}
proc fcQCameraViewfinder_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mediaObject".}
proc fQCameraViewfinder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QCameraViewfinder_virtualbase_setMediaObject".}
proc fcQCameraViewfinder_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_setMediaObject".}
proc fQCameraViewfinder_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_sizeHint".}
proc fcQCameraViewfinder_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_sizeHint".}
proc fQCameraViewfinder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCameraViewfinder_virtualbase_event".}
proc fcQCameraViewfinder_override_virtual_event(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_event".}
proc fQCameraViewfinder_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_showEvent".}
proc fcQCameraViewfinder_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_showEvent".}
proc fQCameraViewfinder_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_hideEvent".}
proc fcQCameraViewfinder_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_hideEvent".}
proc fQCameraViewfinder_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_resizeEvent".}
proc fcQCameraViewfinder_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_resizeEvent".}
proc fQCameraViewfinder_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_moveEvent".}
proc fcQCameraViewfinder_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_moveEvent".}
proc fQCameraViewfinder_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_paintEvent".}
proc fcQCameraViewfinder_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_paintEvent".}
proc fQCameraViewfinder_virtualbase_devType(self: pointer, ): cint{.importc: "QCameraViewfinder_virtualbase_devType".}
proc fcQCameraViewfinder_override_virtual_devType(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_devType".}
proc fQCameraViewfinder_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCameraViewfinder_virtualbase_setVisible".}
proc fcQCameraViewfinder_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_setVisible".}
proc fQCameraViewfinder_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_minimumSizeHint".}
proc fcQCameraViewfinder_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_minimumSizeHint".}
proc fQCameraViewfinder_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCameraViewfinder_virtualbase_heightForWidth".}
proc fcQCameraViewfinder_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_heightForWidth".}
proc fQCameraViewfinder_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCameraViewfinder_virtualbase_hasHeightForWidth".}
proc fcQCameraViewfinder_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_hasHeightForWidth".}
proc fQCameraViewfinder_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_paintEngine".}
proc fcQCameraViewfinder_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_paintEngine".}
proc fQCameraViewfinder_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mousePressEvent".}
proc fcQCameraViewfinder_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mousePressEvent".}
proc fQCameraViewfinder_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseReleaseEvent".}
proc fcQCameraViewfinder_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseReleaseEvent".}
proc fQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseDoubleClickEvent".}
proc fcQCameraViewfinder_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseDoubleClickEvent".}
proc fQCameraViewfinder_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseMoveEvent".}
proc fcQCameraViewfinder_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseMoveEvent".}
proc fQCameraViewfinder_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_wheelEvent".}
proc fcQCameraViewfinder_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_wheelEvent".}
proc fQCameraViewfinder_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_keyPressEvent".}
proc fcQCameraViewfinder_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_keyPressEvent".}
proc fQCameraViewfinder_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_keyReleaseEvent".}
proc fcQCameraViewfinder_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_keyReleaseEvent".}
proc fQCameraViewfinder_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_focusInEvent".}
proc fcQCameraViewfinder_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusInEvent".}
proc fQCameraViewfinder_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_focusOutEvent".}
proc fcQCameraViewfinder_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusOutEvent".}
proc fQCameraViewfinder_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_enterEvent".}
proc fcQCameraViewfinder_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_enterEvent".}
proc fQCameraViewfinder_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_leaveEvent".}
proc fcQCameraViewfinder_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_leaveEvent".}
proc fQCameraViewfinder_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_closeEvent".}
proc fcQCameraViewfinder_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_closeEvent".}
proc fQCameraViewfinder_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_contextMenuEvent".}
proc fcQCameraViewfinder_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_contextMenuEvent".}
proc fQCameraViewfinder_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_tabletEvent".}
proc fcQCameraViewfinder_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_tabletEvent".}
proc fQCameraViewfinder_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_actionEvent".}
proc fcQCameraViewfinder_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_actionEvent".}
proc fQCameraViewfinder_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragEnterEvent".}
proc fcQCameraViewfinder_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragEnterEvent".}
proc fQCameraViewfinder_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragMoveEvent".}
proc fcQCameraViewfinder_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragMoveEvent".}
proc fQCameraViewfinder_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragLeaveEvent".}
proc fcQCameraViewfinder_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragLeaveEvent".}
proc fQCameraViewfinder_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dropEvent".}
proc fcQCameraViewfinder_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dropEvent".}
proc fQCameraViewfinder_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QCameraViewfinder_virtualbase_nativeEvent".}
proc fcQCameraViewfinder_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_nativeEvent".}
proc fQCameraViewfinder_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QCameraViewfinder_virtualbase_changeEvent".}
proc fcQCameraViewfinder_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_changeEvent".}
proc fQCameraViewfinder_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCameraViewfinder_virtualbase_metric".}
proc fcQCameraViewfinder_override_virtual_metric(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metric".}
proc fQCameraViewfinder_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCameraViewfinder_virtualbase_initPainter".}
proc fcQCameraViewfinder_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_initPainter".}
proc fQCameraViewfinder_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCameraViewfinder_virtualbase_redirected".}
proc fcQCameraViewfinder_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_redirected".}
proc fQCameraViewfinder_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_sharedPainter".}
proc fcQCameraViewfinder_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_sharedPainter".}
proc fQCameraViewfinder_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCameraViewfinder_virtualbase_inputMethodEvent".}
proc fcQCameraViewfinder_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_inputMethodEvent".}
proc fQCameraViewfinder_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCameraViewfinder_virtualbase_inputMethodQuery".}
proc fcQCameraViewfinder_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_inputMethodQuery".}
proc fQCameraViewfinder_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCameraViewfinder_virtualbase_focusNextPrevChild".}
proc fcQCameraViewfinder_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusNextPrevChild".}
proc fQCameraViewfinder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCameraViewfinder_virtualbase_eventFilter".}
proc fcQCameraViewfinder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_eventFilter".}
proc fQCameraViewfinder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_timerEvent".}
proc fcQCameraViewfinder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_timerEvent".}
proc fQCameraViewfinder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_childEvent".}
proc fcQCameraViewfinder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_childEvent".}
proc fQCameraViewfinder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_customEvent".}
proc fcQCameraViewfinder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_customEvent".}
proc fQCameraViewfinder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCameraViewfinder_virtualbase_connectNotify".}
proc fcQCameraViewfinder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_connectNotify".}
proc fQCameraViewfinder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCameraViewfinder_virtualbase_disconnectNotify".}
proc fcQCameraViewfinder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_disconnectNotify".}
proc fcQCameraViewfinder_staticMetaObject(): pointer {.importc: "QCameraViewfinder_staticMetaObject".}
proc fcQCameraViewfinder_delete(self: pointer) {.importc: "QCameraViewfinder_delete".}


func init*(T: type QCameraViewfinder, h: ptr cQCameraViewfinder): QCameraViewfinder =
  T(h: h)
proc create*(T: type QCameraViewfinder, parent: gen_qwidget.QWidget): QCameraViewfinder =

  QCameraViewfinder.init(fcQCameraViewfinder_new(parent.h))
proc create*(T: type QCameraViewfinder, ): QCameraViewfinder =

  QCameraViewfinder.init(fcQCameraViewfinder_new2())
proc metaObject*(self: QCameraViewfinder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraViewfinder_metaObject(self.h))

proc metacast*(self: QCameraViewfinder, param1: cstring): pointer =

  fcQCameraViewfinder_metacast(self.h, param1)

proc metacall*(self: QCameraViewfinder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraViewfinder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraViewfinder, s: cstring): string =

  let v_ms = fcQCameraViewfinder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraViewfinder, s: cstring): string =

  let v_ms = fcQCameraViewfinder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: QCameraViewfinder, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQCameraViewfinder_mediaObject(self.h))

proc tr2*(_: type QCameraViewfinder, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraViewfinder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraViewfinder, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraViewfinder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QCameraViewfinder, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQCameraViewfinder_virtualbase_metaObject(self.h))

type QCameraViewfindermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metaObject(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_metaObject ".} =
  type Cb = proc(super: QCameraViewfindermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QCameraViewfinder, param1: cstring): pointer =


  fQCameraViewfinder_virtualbase_metacast(self.h, param1)

type QCameraViewfindermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metacast(self: ptr cQCameraViewfinder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_metacast ".} =
  type Cb = proc(super: QCameraViewfindermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QCameraViewfinder(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QCameraViewfinder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCameraViewfinder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCameraViewfindermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metacall(self: ptr cQCameraViewfinder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_metacall ".} =
  type Cb = proc(super: QCameraViewfindermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCameraViewfinder(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QCameraViewfinder, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQCameraViewfinder_virtualbase_mediaObject(self.h))

type QCameraViewfindermediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mediaObject(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_mediaObject ".} =
  type Cb = proc(super: QCameraViewfindermediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QCameraViewfinder, objectVal: gen_qmediaobject.QMediaObject): bool =


  fQCameraViewfinder_virtualbase_setMediaObject(self.h, objectVal.h)

type QCameraViewfindersetMediaObjectBase* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_setMediaObject(self: ptr cQCameraViewfinder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_setMediaObject ".} =
  type Cb = proc(super: QCameraViewfindersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QCameraViewfinder(h: self), objectVal)
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QCameraViewfinder, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCameraViewfinder_virtualbase_sizeHint(self.h))

type QCameraViewfindersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_sizeHint(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_sizeHint ".} =
  type Cb = proc(super: QCameraViewfindersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QCameraViewfinder, event: gen_qcoreevent.QEvent): bool =


  fQCameraViewfinder_virtualbase_event(self.h, event.h)

type QCameraViewfindereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_event(self: ptr cQCameraViewfinder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_event ".} =
  type Cb = proc(super: QCameraViewfindereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_showEvent(self: QCameraViewfinder, event: gen_qevent.QShowEvent): void =


  fQCameraViewfinder_virtualbase_showEvent(self.h, event.h)

type QCameraViewfindershowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindershowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindershowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_showEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_showEvent ".} =
  type Cb = proc(super: QCameraViewfindershowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QCameraViewfinder, event: gen_qevent.QHideEvent): void =


  fQCameraViewfinder_virtualbase_hideEvent(self.h, event.h)

type QCameraViewfinderhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_hideEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_hideEvent ".} =
  type Cb = proc(super: QCameraViewfinderhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QCameraViewfinder, event: gen_qevent.QResizeEvent): void =


  fQCameraViewfinder_virtualbase_resizeEvent(self.h, event.h)

type QCameraViewfinderresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_resizeEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_resizeEvent ".} =
  type Cb = proc(super: QCameraViewfinderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QCameraViewfinder, event: gen_qevent.QMoveEvent): void =


  fQCameraViewfinder_virtualbase_moveEvent(self.h, event.h)

type QCameraViewfindermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_moveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_moveEvent ".} =
  type Cb = proc(super: QCameraViewfindermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QCameraViewfinder, event: gen_qevent.QPaintEvent): void =


  fQCameraViewfinder_virtualbase_paintEvent(self.h, event.h)

type QCameraViewfinderpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_paintEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_paintEvent ".} =
  type Cb = proc(super: QCameraViewfinderpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QCameraViewfinder, ): cint =


  fQCameraViewfinder_virtualbase_devType(self.h)

type QCameraViewfinderdevTypeBase* = proc(): cint
proc ondevType*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_devType(self: ptr cQCameraViewfinder, slot: int): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_devType ".} =
  type Cb = proc(super: QCameraViewfinderdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QCameraViewfinder, visible: bool): void =


  fQCameraViewfinder_virtualbase_setVisible(self.h, visible)

type QCameraViewfindersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_setVisible(self: ptr cQCameraViewfinder, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCameraViewfinder_setVisible ".} =
  type Cb = proc(super: QCameraViewfindersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QCameraViewfinder(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QCameraViewfinder, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCameraViewfinder_virtualbase_minimumSizeHint(self.h))

type QCameraViewfinderminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_minimumSizeHint(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_minimumSizeHint ".} =
  type Cb = proc(super: QCameraViewfinderminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QCameraViewfinder, param1: cint): cint =


  fQCameraViewfinder_virtualbase_heightForWidth(self.h, param1)

type QCameraViewfinderheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_heightForWidth(self: ptr cQCameraViewfinder, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_heightForWidth ".} =
  type Cb = proc(super: QCameraViewfinderheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QCameraViewfinder(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QCameraViewfinder, ): bool =


  fQCameraViewfinder_virtualbase_hasHeightForWidth(self.h)

type QCameraViewfinderhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_hasHeightForWidth(self: ptr cQCameraViewfinder, slot: int): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_hasHeightForWidth ".} =
  type Cb = proc(super: QCameraViewfinderhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QCameraViewfinder, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQCameraViewfinder_virtualbase_paintEngine(self.h))

type QCameraViewfinderpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_paintEngine(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_paintEngine ".} =
  type Cb = proc(super: QCameraViewfinderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QCameraViewfinder, event: gen_qevent.QMouseEvent): void =


  fQCameraViewfinder_virtualbase_mousePressEvent(self.h, event.h)

type QCameraViewfindermousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mousePressEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mousePressEvent ".} =
  type Cb = proc(super: QCameraViewfindermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QCameraViewfinder, event: gen_qevent.QMouseEvent): void =


  fQCameraViewfinder_virtualbase_mouseReleaseEvent(self.h, event.h)

type QCameraViewfindermouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseReleaseEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseReleaseEvent ".} =
  type Cb = proc(super: QCameraViewfindermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QCameraViewfinder, event: gen_qevent.QMouseEvent): void =


  fQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCameraViewfindermouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseDoubleClickEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QCameraViewfindermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QCameraViewfinder, event: gen_qevent.QMouseEvent): void =


  fQCameraViewfinder_virtualbase_mouseMoveEvent(self.h, event.h)

type QCameraViewfindermouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseMoveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseMoveEvent ".} =
  type Cb = proc(super: QCameraViewfindermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QCameraViewfinder, event: gen_qevent.QWheelEvent): void =


  fQCameraViewfinder_virtualbase_wheelEvent(self.h, event.h)

type QCameraViewfinderwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_wheelEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_wheelEvent ".} =
  type Cb = proc(super: QCameraViewfinderwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QCameraViewfinder, event: gen_qevent.QKeyEvent): void =


  fQCameraViewfinder_virtualbase_keyPressEvent(self.h, event.h)

type QCameraViewfinderkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_keyPressEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_keyPressEvent ".} =
  type Cb = proc(super: QCameraViewfinderkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QCameraViewfinder, event: gen_qevent.QKeyEvent): void =


  fQCameraViewfinder_virtualbase_keyReleaseEvent(self.h, event.h)

type QCameraViewfinderkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_keyReleaseEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_keyReleaseEvent ".} =
  type Cb = proc(super: QCameraViewfinderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QCameraViewfinder, event: gen_qevent.QFocusEvent): void =


  fQCameraViewfinder_virtualbase_focusInEvent(self.h, event.h)

type QCameraViewfinderfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusInEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_focusInEvent ".} =
  type Cb = proc(super: QCameraViewfinderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QCameraViewfinder, event: gen_qevent.QFocusEvent): void =


  fQCameraViewfinder_virtualbase_focusOutEvent(self.h, event.h)

type QCameraViewfinderfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusOutEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_focusOutEvent ".} =
  type Cb = proc(super: QCameraViewfinderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QCameraViewfinder, event: gen_qcoreevent.QEvent): void =


  fQCameraViewfinder_virtualbase_enterEvent(self.h, event.h)

type QCameraViewfinderenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_enterEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_enterEvent ".} =
  type Cb = proc(super: QCameraViewfinderenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QCameraViewfinder, event: gen_qcoreevent.QEvent): void =


  fQCameraViewfinder_virtualbase_leaveEvent(self.h, event.h)

type QCameraViewfinderleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_leaveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_leaveEvent ".} =
  type Cb = proc(super: QCameraViewfinderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QCameraViewfinder, event: gen_qevent.QCloseEvent): void =


  fQCameraViewfinder_virtualbase_closeEvent(self.h, event.h)

type QCameraViewfindercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_closeEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_closeEvent ".} =
  type Cb = proc(super: QCameraViewfindercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QCameraViewfinder, event: gen_qevent.QContextMenuEvent): void =


  fQCameraViewfinder_virtualbase_contextMenuEvent(self.h, event.h)

type QCameraViewfindercontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_contextMenuEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_contextMenuEvent ".} =
  type Cb = proc(super: QCameraViewfindercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QCameraViewfinder, event: gen_qevent.QTabletEvent): void =


  fQCameraViewfinder_virtualbase_tabletEvent(self.h, event.h)

type QCameraViewfindertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_tabletEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_tabletEvent ".} =
  type Cb = proc(super: QCameraViewfindertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QCameraViewfinder, event: gen_qevent.QActionEvent): void =


  fQCameraViewfinder_virtualbase_actionEvent(self.h, event.h)

type QCameraViewfinderactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_actionEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_actionEvent ".} =
  type Cb = proc(super: QCameraViewfinderactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QCameraViewfinder, event: gen_qevent.QDragEnterEvent): void =


  fQCameraViewfinder_virtualbase_dragEnterEvent(self.h, event.h)

type QCameraViewfinderdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragEnterEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragEnterEvent ".} =
  type Cb = proc(super: QCameraViewfinderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QCameraViewfinder, event: gen_qevent.QDragMoveEvent): void =


  fQCameraViewfinder_virtualbase_dragMoveEvent(self.h, event.h)

type QCameraViewfinderdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragMoveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragMoveEvent ".} =
  type Cb = proc(super: QCameraViewfinderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QCameraViewfinder, event: gen_qevent.QDragLeaveEvent): void =


  fQCameraViewfinder_virtualbase_dragLeaveEvent(self.h, event.h)

type QCameraViewfinderdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragLeaveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragLeaveEvent ".} =
  type Cb = proc(super: QCameraViewfinderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QCameraViewfinder, event: gen_qevent.QDropEvent): void =


  fQCameraViewfinder_virtualbase_dropEvent(self.h, event.h)

type QCameraViewfinderdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dropEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dropEvent ".} =
  type Cb = proc(super: QCameraViewfinderdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QCameraViewfinder, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQCameraViewfinder_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCameraViewfindernativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_nativeEvent(self: ptr cQCameraViewfinder, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_nativeEvent ".} =
  type Cb = proc(super: QCameraViewfindernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QCameraViewfinder(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QCameraViewfinder, param1: gen_qcoreevent.QEvent): void =


  fQCameraViewfinder_virtualbase_changeEvent(self.h, param1.h)

type QCameraViewfinderchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_changeEvent(self: ptr cQCameraViewfinder, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_changeEvent ".} =
  type Cb = proc(super: QCameraViewfinderchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QCameraViewfinder(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QCameraViewfinder, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQCameraViewfinder_virtualbase_metric(self.h, cint(param1))

type QCameraViewfindermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metric(self: ptr cQCameraViewfinder, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_metric ".} =
  type Cb = proc(super: QCameraViewfindermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QCameraViewfinder(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QCameraViewfinder, painter: gen_qpainter.QPainter): void =


  fQCameraViewfinder_virtualbase_initPainter(self.h, painter.h)

type QCameraViewfinderinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_initPainter(self: ptr cQCameraViewfinder, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_initPainter ".} =
  type Cb = proc(super: QCameraViewfinderinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QCameraViewfinder(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QCameraViewfinder, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQCameraViewfinder_virtualbase_redirected(self.h, offset.h))

type QCameraViewfinderredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_redirected(self: ptr cQCameraViewfinder, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_redirected ".} =
  type Cb = proc(super: QCameraViewfinderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QCameraViewfinder(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QCameraViewfinder, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQCameraViewfinder_virtualbase_sharedPainter(self.h))

type QCameraViewfindersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_sharedPainter(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_sharedPainter ".} =
  type Cb = proc(super: QCameraViewfindersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QCameraViewfinder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QCameraViewfinder, param1: gen_qevent.QInputMethodEvent): void =


  fQCameraViewfinder_virtualbase_inputMethodEvent(self.h, param1.h)

type QCameraViewfinderinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_inputMethodEvent(self: ptr cQCameraViewfinder, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_inputMethodEvent ".} =
  type Cb = proc(super: QCameraViewfinderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QCameraViewfinder(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QCameraViewfinder, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQCameraViewfinder_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCameraViewfinderinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_inputMethodQuery(self: ptr cQCameraViewfinder, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_inputMethodQuery ".} =
  type Cb = proc(super: QCameraViewfinderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QCameraViewfinder(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QCameraViewfinder, next: bool): bool =


  fQCameraViewfinder_virtualbase_focusNextPrevChild(self.h, next)

type QCameraViewfinderfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusNextPrevChild(self: ptr cQCameraViewfinder, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_focusNextPrevChild ".} =
  type Cb = proc(super: QCameraViewfinderfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QCameraViewfinder(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCameraViewfinder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCameraViewfinder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraViewfindereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_eventFilter(self: ptr cQCameraViewfinder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_eventFilter ".} =
  type Cb = proc(super: QCameraViewfindereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCameraViewfinder(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCameraViewfinder, event: gen_qcoreevent.QTimerEvent): void =


  fQCameraViewfinder_virtualbase_timerEvent(self.h, event.h)

type QCameraViewfindertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_timerEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_timerEvent ".} =
  type Cb = proc(super: QCameraViewfindertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCameraViewfinder, event: gen_qcoreevent.QChildEvent): void =


  fQCameraViewfinder_virtualbase_childEvent(self.h, event.h)

type QCameraViewfinderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_childEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_childEvent ".} =
  type Cb = proc(super: QCameraViewfinderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCameraViewfinder, event: gen_qcoreevent.QEvent): void =


  fQCameraViewfinder_virtualbase_customEvent(self.h, event.h)

type QCameraViewfindercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCameraViewfinder, slot: proc(super: QCameraViewfindercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfindercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_customEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_customEvent ".} =
  type Cb = proc(super: QCameraViewfindercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCameraViewfinder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCameraViewfinder, signal: gen_qmetaobject.QMetaMethod): void =


  fQCameraViewfinder_virtualbase_connectNotify(self.h, signal.h)

type QCameraViewfinderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_connectNotify(self: ptr cQCameraViewfinder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_connectNotify ".} =
  type Cb = proc(super: QCameraViewfinderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCameraViewfinder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCameraViewfinder, signal: gen_qmetaobject.QMetaMethod): void =


  fQCameraViewfinder_virtualbase_disconnectNotify(self.h, signal.h)

type QCameraViewfinderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCameraViewfinder, slot: proc(super: QCameraViewfinderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCameraViewfinderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_disconnectNotify(self: ptr cQCameraViewfinder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_disconnectNotify ".} =
  type Cb = proc(super: QCameraViewfinderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCameraViewfinder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCameraViewfinder): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraViewfinder_staticMetaObject())
proc delete*(self: QCameraViewfinder) =
  fcQCameraViewfinder_delete(self.h)
