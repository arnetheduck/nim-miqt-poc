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
{.compile("gen_qkeysequenceedit.cpp", cflags).}


import gen_qkeysequenceedit_types
export gen_qkeysequenceedit_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qkeysequence,
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
  gen_qcoreevent,
  gen_qevent,
  gen_qkeysequence,
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

type cQKeySequenceEdit*{.exportc: "QKeySequenceEdit", incompleteStruct.} = object

proc fcQKeySequenceEdit_new(parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new".}
proc fcQKeySequenceEdit_new2(): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new2".}
proc fcQKeySequenceEdit_new3(keySequence: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new3".}
proc fcQKeySequenceEdit_new4(keySequence: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new4".}
proc fcQKeySequenceEdit_metaObject(self: pointer, ): pointer {.importc: "QKeySequenceEdit_metaObject".}
proc fcQKeySequenceEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeySequenceEdit_metacast".}
proc fcQKeySequenceEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeySequenceEdit_metacall".}
proc fcQKeySequenceEdit_tr(s: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr".}
proc fcQKeySequenceEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf8".}
proc fcQKeySequenceEdit_keySequence(self: pointer, ): pointer {.importc: "QKeySequenceEdit_keySequence".}
proc fcQKeySequenceEdit_setKeySequence(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_setKeySequence".}
proc fcQKeySequenceEdit_clear(self: pointer, ): void {.importc: "QKeySequenceEdit_clear".}
proc fcQKeySequenceEdit_editingFinished(self: pointer, ): void {.importc: "QKeySequenceEdit_editingFinished".}
proc fQKeySequenceEdit_connect_editingFinished(self: pointer, slot: int) {.importc: "QKeySequenceEdit_connect_editingFinished".}
proc fcQKeySequenceEdit_keySequenceChanged(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_keySequenceChanged".}
proc fQKeySequenceEdit_connect_keySequenceChanged(self: pointer, slot: int) {.importc: "QKeySequenceEdit_connect_keySequenceChanged".}
proc fcQKeySequenceEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr2".}
proc fcQKeySequenceEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_tr3".}
proc fcQKeySequenceEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf82".}
proc fcQKeySequenceEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf83".}
proc fQKeySequenceEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_metaObject".}
proc fcQKeySequenceEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metaObject".}
proc fQKeySequenceEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QKeySequenceEdit_virtualbase_metacast".}
proc fcQKeySequenceEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metacast".}
proc fQKeySequenceEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QKeySequenceEdit_virtualbase_metacall".}
proc fcQKeySequenceEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metacall".}
proc fQKeySequenceEdit_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QKeySequenceEdit_virtualbase_event".}
proc fcQKeySequenceEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_event".}
proc fQKeySequenceEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_keyPressEvent".}
proc fcQKeySequenceEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_keyPressEvent".}
proc fQKeySequenceEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_keyReleaseEvent".}
proc fcQKeySequenceEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_keyReleaseEvent".}
proc fQKeySequenceEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_timerEvent".}
proc fcQKeySequenceEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_timerEvent".}
proc fQKeySequenceEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QKeySequenceEdit_virtualbase_devType".}
proc fcQKeySequenceEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_devType".}
proc fQKeySequenceEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QKeySequenceEdit_virtualbase_setVisible".}
proc fcQKeySequenceEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_setVisible".}
proc fQKeySequenceEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_sizeHint".}
proc fcQKeySequenceEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_sizeHint".}
proc fQKeySequenceEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_minimumSizeHint".}
proc fcQKeySequenceEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_minimumSizeHint".}
proc fQKeySequenceEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QKeySequenceEdit_virtualbase_heightForWidth".}
proc fcQKeySequenceEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_heightForWidth".}
proc fQKeySequenceEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QKeySequenceEdit_virtualbase_hasHeightForWidth".}
proc fcQKeySequenceEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_hasHeightForWidth".}
proc fQKeySequenceEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_paintEngine".}
proc fcQKeySequenceEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_paintEngine".}
proc fQKeySequenceEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mousePressEvent".}
proc fcQKeySequenceEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mousePressEvent".}
proc fQKeySequenceEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseReleaseEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseReleaseEvent".}
proc fQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseDoubleClickEvent".}
proc fQKeySequenceEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseMoveEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseMoveEvent".}
proc fQKeySequenceEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_wheelEvent".}
proc fcQKeySequenceEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_wheelEvent".}
proc fQKeySequenceEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_focusInEvent".}
proc fcQKeySequenceEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusInEvent".}
proc fQKeySequenceEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_focusOutEvent".}
proc fcQKeySequenceEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusOutEvent".}
proc fQKeySequenceEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_enterEvent".}
proc fcQKeySequenceEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_enterEvent".}
proc fQKeySequenceEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_leaveEvent".}
proc fcQKeySequenceEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_leaveEvent".}
proc fQKeySequenceEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_paintEvent".}
proc fcQKeySequenceEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_paintEvent".}
proc fQKeySequenceEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_moveEvent".}
proc fcQKeySequenceEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_moveEvent".}
proc fQKeySequenceEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_resizeEvent".}
proc fcQKeySequenceEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_resizeEvent".}
proc fQKeySequenceEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_closeEvent".}
proc fcQKeySequenceEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_closeEvent".}
proc fQKeySequenceEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_contextMenuEvent".}
proc fcQKeySequenceEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_contextMenuEvent".}
proc fQKeySequenceEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_tabletEvent".}
proc fcQKeySequenceEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_tabletEvent".}
proc fQKeySequenceEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_actionEvent".}
proc fcQKeySequenceEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_actionEvent".}
proc fQKeySequenceEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragEnterEvent".}
proc fcQKeySequenceEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragEnterEvent".}
proc fQKeySequenceEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragMoveEvent".}
proc fcQKeySequenceEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragMoveEvent".}
proc fQKeySequenceEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragLeaveEvent".}
proc fcQKeySequenceEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragLeaveEvent".}
proc fQKeySequenceEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dropEvent".}
proc fcQKeySequenceEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dropEvent".}
proc fQKeySequenceEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_showEvent".}
proc fcQKeySequenceEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_showEvent".}
proc fQKeySequenceEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_hideEvent".}
proc fcQKeySequenceEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_hideEvent".}
proc fQKeySequenceEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QKeySequenceEdit_virtualbase_nativeEvent".}
proc fcQKeySequenceEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_nativeEvent".}
proc fQKeySequenceEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_changeEvent".}
proc fcQKeySequenceEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_changeEvent".}
proc fQKeySequenceEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QKeySequenceEdit_virtualbase_metric".}
proc fcQKeySequenceEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metric".}
proc fQKeySequenceEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QKeySequenceEdit_virtualbase_initPainter".}
proc fcQKeySequenceEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_initPainter".}
proc fQKeySequenceEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QKeySequenceEdit_virtualbase_redirected".}
proc fcQKeySequenceEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_redirected".}
proc fQKeySequenceEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_sharedPainter".}
proc fcQKeySequenceEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_sharedPainter".}
proc fQKeySequenceEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_inputMethodEvent".}
proc fcQKeySequenceEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_inputMethodEvent".}
proc fQKeySequenceEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QKeySequenceEdit_virtualbase_inputMethodQuery".}
proc fcQKeySequenceEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_inputMethodQuery".}
proc fQKeySequenceEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QKeySequenceEdit_virtualbase_focusNextPrevChild".}
proc fcQKeySequenceEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusNextPrevChild".}
proc fQKeySequenceEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QKeySequenceEdit_virtualbase_eventFilter".}
proc fcQKeySequenceEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_eventFilter".}
proc fQKeySequenceEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_childEvent".}
proc fcQKeySequenceEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_childEvent".}
proc fQKeySequenceEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_customEvent".}
proc fcQKeySequenceEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_customEvent".}
proc fQKeySequenceEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QKeySequenceEdit_virtualbase_connectNotify".}
proc fcQKeySequenceEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_connectNotify".}
proc fQKeySequenceEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QKeySequenceEdit_virtualbase_disconnectNotify".}
proc fcQKeySequenceEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_disconnectNotify".}
proc fcQKeySequenceEdit_staticMetaObject(): pointer {.importc: "QKeySequenceEdit_staticMetaObject".}
proc fcQKeySequenceEdit_delete(self: pointer) {.importc: "QKeySequenceEdit_delete".}


func init*(T: type QKeySequenceEdit, h: ptr cQKeySequenceEdit): QKeySequenceEdit =
  T(h: h)
proc create*(T: type QKeySequenceEdit, parent: gen_qwidget.QWidget): QKeySequenceEdit =

  QKeySequenceEdit.init(fcQKeySequenceEdit_new(parent.h))
proc create*(T: type QKeySequenceEdit, ): QKeySequenceEdit =

  QKeySequenceEdit.init(fcQKeySequenceEdit_new2())
proc create2*(T: type QKeySequenceEdit, keySequence: gen_qkeysequence.QKeySequence): QKeySequenceEdit =

  QKeySequenceEdit.init(fcQKeySequenceEdit_new3(keySequence.h))
proc create*(T: type QKeySequenceEdit, keySequence: gen_qkeysequence.QKeySequence, parent: gen_qwidget.QWidget): QKeySequenceEdit =

  QKeySequenceEdit.init(fcQKeySequenceEdit_new4(keySequence.h, parent.h))
proc metaObject*(self: QKeySequenceEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQKeySequenceEdit_metaObject(self.h))

proc metacast*(self: QKeySequenceEdit, param1: cstring): pointer =

  fcQKeySequenceEdit_metacast(self.h, param1)

proc metacall*(self: QKeySequenceEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQKeySequenceEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QKeySequenceEdit, s: cstring): string =

  let v_ms = fcQKeySequenceEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QKeySequenceEdit, s: cstring): string =

  let v_ms = fcQKeySequenceEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc keySequence*(self: QKeySequenceEdit, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQKeySequenceEdit_keySequence(self.h))

proc setKeySequence*(self: QKeySequenceEdit, keySequence: gen_qkeysequence.QKeySequence): void =

  fcQKeySequenceEdit_setKeySequence(self.h, keySequence.h)

proc clear*(self: QKeySequenceEdit, ): void =

  fcQKeySequenceEdit_clear(self.h)

proc editingFinished*(self: QKeySequenceEdit, ): void =

  fcQKeySequenceEdit_editingFinished(self.h)

proc miqt_exec_callback_QKeySequenceEdit_editingFinished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oneditingFinished*(self: QKeySequenceEdit, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQKeySequenceEdit_connect_editingFinished(self.h, cast[int](addr tmp[]))
proc keySequenceChanged*(self: QKeySequenceEdit, keySequence: gen_qkeysequence.QKeySequence): void =

  fcQKeySequenceEdit_keySequenceChanged(self.h, keySequence.h)

proc miqt_exec_callback_QKeySequenceEdit_keySequenceChanged(slot: int, keySequence: pointer) {.exportc.} =
  type Cb = proc(keySequence: gen_qkeysequence.QKeySequence)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qkeysequence.QKeySequence(h: keySequence)


  nimfunc[](slotval1)

proc onkeySequenceChanged*(self: QKeySequenceEdit, slot: proc(keySequence: gen_qkeysequence.QKeySequence)) =
  type Cb = proc(keySequence: gen_qkeysequence.QKeySequence)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQKeySequenceEdit_connect_keySequenceChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QKeySequenceEdit, s: cstring, c: cstring): string =

  let v_ms = fcQKeySequenceEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QKeySequenceEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQKeySequenceEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QKeySequenceEdit, s: cstring, c: cstring): string =

  let v_ms = fcQKeySequenceEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QKeySequenceEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQKeySequenceEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QKeySequenceEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQKeySequenceEdit_virtualbase_metaObject(self.h))

type QKeySequenceEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metaObject(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_metaObject ".} =
  type Cb = proc(super: QKeySequenceEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QKeySequenceEdit, param1: cstring): pointer =


  fQKeySequenceEdit_virtualbase_metacast(self.h, param1)

type QKeySequenceEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metacast(self: ptr cQKeySequenceEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_metacast ".} =
  type Cb = proc(super: QKeySequenceEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QKeySequenceEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QKeySequenceEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQKeySequenceEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QKeySequenceEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metacall(self: ptr cQKeySequenceEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_metacall ".} =
  type Cb = proc(super: QKeySequenceEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QKeySequenceEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QKeySequenceEdit, param1: gen_qcoreevent.QEvent): bool =


  fQKeySequenceEdit_virtualbase_event(self.h, param1.h)

type QKeySequenceEditeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_event(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_event ".} =
  type Cb = proc(super: QKeySequenceEditeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QKeySequenceEdit, param1: gen_qevent.QKeyEvent): void =


  fQKeySequenceEdit_virtualbase_keyPressEvent(self.h, param1.h)

type QKeySequenceEditkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_keyPressEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_keyPressEvent ".} =
  type Cb = proc(super: QKeySequenceEditkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QKeySequenceEdit, param1: gen_qevent.QKeyEvent): void =


  fQKeySequenceEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

type QKeySequenceEditkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_keyReleaseEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QKeySequenceEditkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QKeySequenceEdit, param1: gen_qcoreevent.QTimerEvent): void =


  fQKeySequenceEdit_virtualbase_timerEvent(self.h, param1.h)

type QKeySequenceEdittimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_timerEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_timerEvent ".} =
  type Cb = proc(super: QKeySequenceEdittimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QKeySequenceEdit, ): cint =


  fQKeySequenceEdit_virtualbase_devType(self.h)

type QKeySequenceEditdevTypeBase* = proc(): cint
proc ondevType*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_devType(self: ptr cQKeySequenceEdit, slot: int): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_devType ".} =
  type Cb = proc(super: QKeySequenceEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QKeySequenceEdit, visible: bool): void =


  fQKeySequenceEdit_virtualbase_setVisible(self.h, visible)

type QKeySequenceEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_setVisible(self: ptr cQKeySequenceEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_setVisible ".} =
  type Cb = proc(super: QKeySequenceEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QKeySequenceEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QKeySequenceEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQKeySequenceEdit_virtualbase_sizeHint(self.h))

type QKeySequenceEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_sizeHint(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_sizeHint ".} =
  type Cb = proc(super: QKeySequenceEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QKeySequenceEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQKeySequenceEdit_virtualbase_minimumSizeHint(self.h))

type QKeySequenceEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_minimumSizeHint(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_minimumSizeHint ".} =
  type Cb = proc(super: QKeySequenceEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QKeySequenceEdit, param1: cint): cint =


  fQKeySequenceEdit_virtualbase_heightForWidth(self.h, param1)

type QKeySequenceEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_heightForWidth(self: ptr cQKeySequenceEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_heightForWidth ".} =
  type Cb = proc(super: QKeySequenceEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QKeySequenceEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QKeySequenceEdit, ): bool =


  fQKeySequenceEdit_virtualbase_hasHeightForWidth(self.h)

type QKeySequenceEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_hasHeightForWidth(self: ptr cQKeySequenceEdit, slot: int): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QKeySequenceEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QKeySequenceEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQKeySequenceEdit_virtualbase_paintEngine(self.h))

type QKeySequenceEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_paintEngine(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_paintEngine ".} =
  type Cb = proc(super: QKeySequenceEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QKeySequenceEdit, event: gen_qevent.QMouseEvent): void =


  fQKeySequenceEdit_virtualbase_mousePressEvent(self.h, event.h)

type QKeySequenceEditmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mousePressEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mousePressEvent ".} =
  type Cb = proc(super: QKeySequenceEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QKeySequenceEdit, event: gen_qevent.QMouseEvent): void =


  fQKeySequenceEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QKeySequenceEditmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseReleaseEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QKeySequenceEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QKeySequenceEdit, event: gen_qevent.QMouseEvent): void =


  fQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QKeySequenceEditmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseDoubleClickEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QKeySequenceEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QKeySequenceEdit, event: gen_qevent.QMouseEvent): void =


  fQKeySequenceEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QKeySequenceEditmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseMoveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QKeySequenceEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QKeySequenceEdit, event: gen_qevent.QWheelEvent): void =


  fQKeySequenceEdit_virtualbase_wheelEvent(self.h, event.h)

type QKeySequenceEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_wheelEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_wheelEvent ".} =
  type Cb = proc(super: QKeySequenceEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QKeySequenceEdit, event: gen_qevent.QFocusEvent): void =


  fQKeySequenceEdit_virtualbase_focusInEvent(self.h, event.h)

type QKeySequenceEditfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusInEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusInEvent ".} =
  type Cb = proc(super: QKeySequenceEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QKeySequenceEdit, event: gen_qevent.QFocusEvent): void =


  fQKeySequenceEdit_virtualbase_focusOutEvent(self.h, event.h)

type QKeySequenceEditfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusOutEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusOutEvent ".} =
  type Cb = proc(super: QKeySequenceEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QKeySequenceEdit, event: gen_qcoreevent.QEvent): void =


  fQKeySequenceEdit_virtualbase_enterEvent(self.h, event.h)

type QKeySequenceEditenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_enterEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_enterEvent ".} =
  type Cb = proc(super: QKeySequenceEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QKeySequenceEdit, event: gen_qcoreevent.QEvent): void =


  fQKeySequenceEdit_virtualbase_leaveEvent(self.h, event.h)

type QKeySequenceEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_leaveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_leaveEvent ".} =
  type Cb = proc(super: QKeySequenceEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QKeySequenceEdit, event: gen_qevent.QPaintEvent): void =


  fQKeySequenceEdit_virtualbase_paintEvent(self.h, event.h)

type QKeySequenceEditpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_paintEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_paintEvent ".} =
  type Cb = proc(super: QKeySequenceEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QKeySequenceEdit, event: gen_qevent.QMoveEvent): void =


  fQKeySequenceEdit_virtualbase_moveEvent(self.h, event.h)

type QKeySequenceEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_moveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_moveEvent ".} =
  type Cb = proc(super: QKeySequenceEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QKeySequenceEdit, event: gen_qevent.QResizeEvent): void =


  fQKeySequenceEdit_virtualbase_resizeEvent(self.h, event.h)

type QKeySequenceEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_resizeEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_resizeEvent ".} =
  type Cb = proc(super: QKeySequenceEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QKeySequenceEdit, event: gen_qevent.QCloseEvent): void =


  fQKeySequenceEdit_virtualbase_closeEvent(self.h, event.h)

type QKeySequenceEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_closeEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_closeEvent ".} =
  type Cb = proc(super: QKeySequenceEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QKeySequenceEdit, event: gen_qevent.QContextMenuEvent): void =


  fQKeySequenceEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QKeySequenceEditcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_contextMenuEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_contextMenuEvent ".} =
  type Cb = proc(super: QKeySequenceEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QKeySequenceEdit, event: gen_qevent.QTabletEvent): void =


  fQKeySequenceEdit_virtualbase_tabletEvent(self.h, event.h)

type QKeySequenceEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_tabletEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_tabletEvent ".} =
  type Cb = proc(super: QKeySequenceEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QKeySequenceEdit, event: gen_qevent.QActionEvent): void =


  fQKeySequenceEdit_virtualbase_actionEvent(self.h, event.h)

type QKeySequenceEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_actionEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_actionEvent ".} =
  type Cb = proc(super: QKeySequenceEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QKeySequenceEdit, event: gen_qevent.QDragEnterEvent): void =


  fQKeySequenceEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QKeySequenceEditdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragEnterEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragEnterEvent ".} =
  type Cb = proc(super: QKeySequenceEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QKeySequenceEdit, event: gen_qevent.QDragMoveEvent): void =


  fQKeySequenceEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QKeySequenceEditdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragMoveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragMoveEvent ".} =
  type Cb = proc(super: QKeySequenceEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QKeySequenceEdit, event: gen_qevent.QDragLeaveEvent): void =


  fQKeySequenceEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QKeySequenceEditdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragLeaveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QKeySequenceEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QKeySequenceEdit, event: gen_qevent.QDropEvent): void =


  fQKeySequenceEdit_virtualbase_dropEvent(self.h, event.h)

type QKeySequenceEditdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dropEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dropEvent ".} =
  type Cb = proc(super: QKeySequenceEditdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QKeySequenceEdit, event: gen_qevent.QShowEvent): void =


  fQKeySequenceEdit_virtualbase_showEvent(self.h, event.h)

type QKeySequenceEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_showEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_showEvent ".} =
  type Cb = proc(super: QKeySequenceEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QKeySequenceEdit, event: gen_qevent.QHideEvent): void =


  fQKeySequenceEdit_virtualbase_hideEvent(self.h, event.h)

type QKeySequenceEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_hideEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_hideEvent ".} =
  type Cb = proc(super: QKeySequenceEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QKeySequenceEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQKeySequenceEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QKeySequenceEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_nativeEvent(self: ptr cQKeySequenceEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_nativeEvent ".} =
  type Cb = proc(super: QKeySequenceEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QKeySequenceEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QKeySequenceEdit, param1: gen_qcoreevent.QEvent): void =


  fQKeySequenceEdit_virtualbase_changeEvent(self.h, param1.h)

type QKeySequenceEditchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_changeEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_changeEvent ".} =
  type Cb = proc(super: QKeySequenceEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QKeySequenceEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQKeySequenceEdit_virtualbase_metric(self.h, cint(param1))

type QKeySequenceEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metric(self: ptr cQKeySequenceEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_metric ".} =
  type Cb = proc(super: QKeySequenceEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QKeySequenceEdit, painter: gen_qpainter.QPainter): void =


  fQKeySequenceEdit_virtualbase_initPainter(self.h, painter.h)

type QKeySequenceEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_initPainter(self: ptr cQKeySequenceEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_initPainter ".} =
  type Cb = proc(super: QKeySequenceEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QKeySequenceEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QKeySequenceEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQKeySequenceEdit_virtualbase_redirected(self.h, offset.h))

type QKeySequenceEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_redirected(self: ptr cQKeySequenceEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_redirected ".} =
  type Cb = proc(super: QKeySequenceEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QKeySequenceEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QKeySequenceEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQKeySequenceEdit_virtualbase_sharedPainter(self.h))

type QKeySequenceEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_sharedPainter(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_sharedPainter ".} =
  type Cb = proc(super: QKeySequenceEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QKeySequenceEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QKeySequenceEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQKeySequenceEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QKeySequenceEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_inputMethodEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_inputMethodEvent ".} =
  type Cb = proc(super: QKeySequenceEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QKeySequenceEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQKeySequenceEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QKeySequenceEditinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_inputMethodQuery(self: ptr cQKeySequenceEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_inputMethodQuery ".} =
  type Cb = proc(super: QKeySequenceEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QKeySequenceEdit(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QKeySequenceEdit, next: bool): bool =


  fQKeySequenceEdit_virtualbase_focusNextPrevChild(self.h, next)

type QKeySequenceEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusNextPrevChild(self: ptr cQKeySequenceEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QKeySequenceEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QKeySequenceEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QKeySequenceEdit, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQKeySequenceEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QKeySequenceEditeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_eventFilter(self: ptr cQKeySequenceEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_eventFilter ".} =
  type Cb = proc(super: QKeySequenceEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QKeySequenceEdit(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QKeySequenceEdit, event: gen_qcoreevent.QChildEvent): void =


  fQKeySequenceEdit_virtualbase_childEvent(self.h, event.h)

type QKeySequenceEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_childEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_childEvent ".} =
  type Cb = proc(super: QKeySequenceEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QKeySequenceEdit, event: gen_qcoreevent.QEvent): void =


  fQKeySequenceEdit_virtualbase_customEvent(self.h, event.h)

type QKeySequenceEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_customEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_customEvent ".} =
  type Cb = proc(super: QKeySequenceEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QKeySequenceEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QKeySequenceEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQKeySequenceEdit_virtualbase_connectNotify(self.h, signal.h)

type QKeySequenceEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_connectNotify(self: ptr cQKeySequenceEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_connectNotify ".} =
  type Cb = proc(super: QKeySequenceEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QKeySequenceEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QKeySequenceEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQKeySequenceEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QKeySequenceEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QKeySequenceEdit, slot: proc(super: QKeySequenceEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QKeySequenceEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_disconnectNotify(self: ptr cQKeySequenceEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_disconnectNotify ".} =
  type Cb = proc(super: QKeySequenceEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QKeySequenceEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QKeySequenceEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQKeySequenceEdit_staticMetaObject())
proc delete*(self: QKeySequenceEdit) =
  fcQKeySequenceEdit_delete(self.h)
