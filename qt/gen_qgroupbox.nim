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
{.compile("gen_qgroupbox.cpp", cflags).}


import gen_qgroupbox_types
export gen_qgroupbox_types

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
  gen_qvariant,
  gen_qwidget

type cQGroupBox*{.exportc: "QGroupBox", incompleteStruct.} = object

proc fcQGroupBox_new(parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new".}
proc fcQGroupBox_new2(): ptr cQGroupBox {.importc: "QGroupBox_new2".}
proc fcQGroupBox_new3(title: struct_miqt_string): ptr cQGroupBox {.importc: "QGroupBox_new3".}
proc fcQGroupBox_new4(title: struct_miqt_string, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new4".}
proc fcQGroupBox_metaObject(self: pointer, ): pointer {.importc: "QGroupBox_metaObject".}
proc fcQGroupBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_metacast".}
proc fcQGroupBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGroupBox_metacall".}
proc fcQGroupBox_tr(s: cstring): struct_miqt_string {.importc: "QGroupBox_tr".}
proc fcQGroupBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf8".}
proc fcQGroupBox_title(self: pointer, ): struct_miqt_string {.importc: "QGroupBox_title".}
proc fcQGroupBox_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGroupBox_setTitle".}
proc fcQGroupBox_alignment(self: pointer, ): cint {.importc: "QGroupBox_alignment".}
proc fcQGroupBox_setAlignment(self: pointer, alignment: cint): void {.importc: "QGroupBox_setAlignment".}
proc fcQGroupBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QGroupBox_minimumSizeHint".}
proc fcQGroupBox_isFlat(self: pointer, ): bool {.importc: "QGroupBox_isFlat".}
proc fcQGroupBox_setFlat(self: pointer, flat: bool): void {.importc: "QGroupBox_setFlat".}
proc fcQGroupBox_isCheckable(self: pointer, ): bool {.importc: "QGroupBox_isCheckable".}
proc fcQGroupBox_setCheckable(self: pointer, checkable: bool): void {.importc: "QGroupBox_setCheckable".}
proc fcQGroupBox_isChecked(self: pointer, ): bool {.importc: "QGroupBox_isChecked".}
proc fcQGroupBox_setChecked(self: pointer, checked: bool): void {.importc: "QGroupBox_setChecked".}
proc fcQGroupBox_clicked(self: pointer, ): void {.importc: "QGroupBox_clicked".}
proc fQGroupBox_connect_clicked(self: pointer, slot: int) {.importc: "QGroupBox_connect_clicked".}
proc fcQGroupBox_toggled(self: pointer, param1: bool): void {.importc: "QGroupBox_toggled".}
proc fQGroupBox_connect_toggled(self: pointer, slot: int) {.importc: "QGroupBox_connect_toggled".}
proc fcQGroupBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_tr2".}
proc fcQGroupBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_tr3".}
proc fcQGroupBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf82".}
proc fcQGroupBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_trUtf83".}
proc fcQGroupBox_clicked1(self: pointer, checked: bool): void {.importc: "QGroupBox_clicked1".}
proc fQGroupBox_connect_clicked1(self: pointer, slot: int) {.importc: "QGroupBox_connect_clicked1".}
proc fQGroupBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_metaObject".}
proc fcQGroupBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_metaObject".}
proc fQGroupBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGroupBox_virtualbase_metacast".}
proc fcQGroupBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_metacast".}
proc fQGroupBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGroupBox_virtualbase_metacall".}
proc fcQGroupBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_metacall".}
proc fQGroupBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_minimumSizeHint".}
proc fcQGroupBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_minimumSizeHint".}
proc fQGroupBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGroupBox_virtualbase_event".}
proc fcQGroupBox_override_virtual_event(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_event".}
proc fQGroupBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_childEvent".}
proc fcQGroupBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_childEvent".}
proc fQGroupBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_resizeEvent".}
proc fcQGroupBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_resizeEvent".}
proc fQGroupBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_paintEvent".}
proc fcQGroupBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_paintEvent".}
proc fQGroupBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_focusInEvent".}
proc fcQGroupBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusInEvent".}
proc fQGroupBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_changeEvent".}
proc fcQGroupBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_changeEvent".}
proc fQGroupBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mousePressEvent".}
proc fcQGroupBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mousePressEvent".}
proc fQGroupBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseMoveEvent".}
proc fcQGroupBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseMoveEvent".}
proc fQGroupBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseReleaseEvent".}
proc fcQGroupBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseReleaseEvent".}
proc fQGroupBox_virtualbase_devType(self: pointer, ): cint{.importc: "QGroupBox_virtualbase_devType".}
proc fcQGroupBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_devType".}
proc fQGroupBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QGroupBox_virtualbase_setVisible".}
proc fcQGroupBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_setVisible".}
proc fQGroupBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_sizeHint".}
proc fcQGroupBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_sizeHint".}
proc fQGroupBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGroupBox_virtualbase_heightForWidth".}
proc fcQGroupBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_heightForWidth".}
proc fQGroupBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGroupBox_virtualbase_hasHeightForWidth".}
proc fcQGroupBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_hasHeightForWidth".}
proc fQGroupBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_paintEngine".}
proc fcQGroupBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_paintEngine".}
proc fQGroupBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseDoubleClickEvent".}
proc fcQGroupBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseDoubleClickEvent".}
proc fQGroupBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_wheelEvent".}
proc fcQGroupBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_wheelEvent".}
proc fQGroupBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_keyPressEvent".}
proc fcQGroupBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_keyPressEvent".}
proc fQGroupBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_keyReleaseEvent".}
proc fcQGroupBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_keyReleaseEvent".}
proc fQGroupBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_focusOutEvent".}
proc fcQGroupBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusOutEvent".}
proc fQGroupBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_enterEvent".}
proc fcQGroupBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_enterEvent".}
proc fQGroupBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_leaveEvent".}
proc fcQGroupBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_leaveEvent".}
proc fQGroupBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_moveEvent".}
proc fcQGroupBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_moveEvent".}
proc fQGroupBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_closeEvent".}
proc fcQGroupBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_closeEvent".}
proc fQGroupBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_contextMenuEvent".}
proc fcQGroupBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_contextMenuEvent".}
proc fQGroupBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_tabletEvent".}
proc fcQGroupBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_tabletEvent".}
proc fQGroupBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_actionEvent".}
proc fcQGroupBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_actionEvent".}
proc fQGroupBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragEnterEvent".}
proc fcQGroupBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragEnterEvent".}
proc fQGroupBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragMoveEvent".}
proc fcQGroupBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragMoveEvent".}
proc fQGroupBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragLeaveEvent".}
proc fcQGroupBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragLeaveEvent".}
proc fQGroupBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dropEvent".}
proc fcQGroupBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dropEvent".}
proc fQGroupBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_showEvent".}
proc fcQGroupBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_showEvent".}
proc fQGroupBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_hideEvent".}
proc fcQGroupBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_hideEvent".}
proc fQGroupBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QGroupBox_virtualbase_nativeEvent".}
proc fcQGroupBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_nativeEvent".}
proc fQGroupBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QGroupBox_virtualbase_metric".}
proc fcQGroupBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_metric".}
proc fQGroupBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QGroupBox_virtualbase_initPainter".}
proc fcQGroupBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_initPainter".}
proc fQGroupBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QGroupBox_virtualbase_redirected".}
proc fcQGroupBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_redirected".}
proc fQGroupBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_sharedPainter".}
proc fcQGroupBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_sharedPainter".}
proc fQGroupBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QGroupBox_virtualbase_inputMethodEvent".}
proc fcQGroupBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_inputMethodEvent".}
proc fQGroupBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QGroupBox_virtualbase_inputMethodQuery".}
proc fcQGroupBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_inputMethodQuery".}
proc fQGroupBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGroupBox_virtualbase_focusNextPrevChild".}
proc fcQGroupBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusNextPrevChild".}
proc fQGroupBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGroupBox_virtualbase_eventFilter".}
proc fcQGroupBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_eventFilter".}
proc fQGroupBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_timerEvent".}
proc fcQGroupBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_timerEvent".}
proc fQGroupBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_customEvent".}
proc fcQGroupBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_customEvent".}
proc fQGroupBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGroupBox_virtualbase_connectNotify".}
proc fcQGroupBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_connectNotify".}
proc fQGroupBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGroupBox_virtualbase_disconnectNotify".}
proc fcQGroupBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_disconnectNotify".}
proc fcQGroupBox_staticMetaObject(): pointer {.importc: "QGroupBox_staticMetaObject".}
proc fcQGroupBox_delete(self: pointer) {.importc: "QGroupBox_delete".}


func init*(T: type QGroupBox, h: ptr cQGroupBox): QGroupBox =
  T(h: h)
proc create*(T: type QGroupBox, parent: gen_qwidget.QWidget): QGroupBox =

  QGroupBox.init(fcQGroupBox_new(parent.h))
proc create*(T: type QGroupBox, ): QGroupBox =

  QGroupBox.init(fcQGroupBox_new2())
proc create*(T: type QGroupBox, title: string): QGroupBox =

  QGroupBox.init(fcQGroupBox_new3(struct_miqt_string(data: title, len: csize_t(len(title)))))
proc create*(T: type QGroupBox, title: string, parent: gen_qwidget.QWidget): QGroupBox =

  QGroupBox.init(fcQGroupBox_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))
proc metaObject*(self: QGroupBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGroupBox_metaObject(self.h))

proc metacast*(self: QGroupBox, param1: cstring): pointer =

  fcQGroupBox_metacast(self.h, param1)

proc metacall*(self: QGroupBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGroupBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGroupBox, s: cstring): string =

  let v_ms = fcQGroupBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGroupBox, s: cstring): string =

  let v_ms = fcQGroupBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc title*(self: QGroupBox, ): string =

  let v_ms = fcQGroupBox_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: QGroupBox, title: string): void =

  fcQGroupBox_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc alignment*(self: QGroupBox, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGroupBox_alignment(self.h))

proc setAlignment*(self: QGroupBox, alignment: cint): void =

  fcQGroupBox_setAlignment(self.h, alignment)

proc minimumSizeHint*(self: QGroupBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGroupBox_minimumSizeHint(self.h))

proc isFlat*(self: QGroupBox, ): bool =

  fcQGroupBox_isFlat(self.h)

proc setFlat*(self: QGroupBox, flat: bool): void =

  fcQGroupBox_setFlat(self.h, flat)

proc isCheckable*(self: QGroupBox, ): bool =

  fcQGroupBox_isCheckable(self.h)

proc setCheckable*(self: QGroupBox, checkable: bool): void =

  fcQGroupBox_setCheckable(self.h, checkable)

proc isChecked*(self: QGroupBox, ): bool =

  fcQGroupBox_isChecked(self.h)

proc setChecked*(self: QGroupBox, checked: bool): void =

  fcQGroupBox_setChecked(self.h, checked)

proc clicked*(self: QGroupBox, ): void =

  fcQGroupBox_clicked(self.h)

proc miqt_exec_callback_QGroupBox_clicked(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onclicked*(self: QGroupBox, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGroupBox_connect_clicked(self.h, cast[int](addr tmp[]))
proc toggled*(self: QGroupBox, param1: bool): void =

  fcQGroupBox_toggled(self.h, param1)

proc miqt_exec_callback_QGroupBox_toggled(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc ontoggled*(self: QGroupBox, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGroupBox_connect_toggled(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGroupBox, s: cstring, c: cstring): string =

  let v_ms = fcQGroupBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGroupBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGroupBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGroupBox, s: cstring, c: cstring): string =

  let v_ms = fcQGroupBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGroupBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGroupBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clicked1*(self: QGroupBox, checked: bool): void =

  fcQGroupBox_clicked1(self.h, checked)

proc miqt_exec_callback_QGroupBox_clicked1(slot: int, checked: bool) {.exportc.} =
  type Cb = proc(checked: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = checked


  nimfunc[](slotval1)

proc onclicked1*(self: QGroupBox, slot: proc(checked: bool)) =
  type Cb = proc(checked: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGroupBox_connect_clicked1(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metaObject(self: QGroupBox, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGroupBox_virtualbase_metaObject(self.h))

type QGroupBoxmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGroupBox, slot: proc(super: QGroupBoxmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_metaObject(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_metaObject ".} =
  type Cb = proc(super: QGroupBoxmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGroupBox, param1: cstring): pointer =


  fQGroupBox_virtualbase_metacast(self.h, param1)

type QGroupBoxmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGroupBox, slot: proc(super: QGroupBoxmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_metacast(self: ptr cQGroupBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGroupBox_metacast ".} =
  type Cb = proc(super: QGroupBoxmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGroupBox(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGroupBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGroupBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGroupBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGroupBox, slot: proc(super: QGroupBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_metacall(self: ptr cQGroupBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGroupBox_metacall ".} =
  type Cb = proc(super: QGroupBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGroupBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QGroupBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGroupBox_virtualbase_minimumSizeHint(self.h))

type QGroupBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QGroupBox, slot: proc(super: QGroupBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_minimumSizeHint(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_minimumSizeHint ".} =
  type Cb = proc(super: QGroupBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QGroupBox, event: gen_qcoreevent.QEvent): bool =


  fQGroupBox_virtualbase_event(self.h, event.h)

type QGroupBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGroupBox, slot: proc(super: QGroupBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_event(self: ptr cQGroupBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGroupBox_event ".} =
  type Cb = proc(super: QGroupBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_childEvent(self: QGroupBox, event: gen_qcoreevent.QChildEvent): void =


  fQGroupBox_virtualbase_childEvent(self.h, event.h)

type QGroupBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGroupBox, slot: proc(super: QGroupBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_childEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_childEvent ".} =
  type Cb = proc(super: QGroupBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QGroupBox, event: gen_qevent.QResizeEvent): void =


  fQGroupBox_virtualbase_resizeEvent(self.h, event.h)

type QGroupBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QGroupBox, slot: proc(super: QGroupBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_resizeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_resizeEvent ".} =
  type Cb = proc(super: QGroupBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QGroupBox, event: gen_qevent.QPaintEvent): void =


  fQGroupBox_virtualbase_paintEvent(self.h, event.h)

type QGroupBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QGroupBox, slot: proc(super: QGroupBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_paintEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_paintEvent ".} =
  type Cb = proc(super: QGroupBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGroupBox, event: gen_qevent.QFocusEvent): void =


  fQGroupBox_virtualbase_focusInEvent(self.h, event.h)

type QGroupBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGroupBox, slot: proc(super: QGroupBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusInEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_focusInEvent ".} =
  type Cb = proc(super: QGroupBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QGroupBox, event: gen_qcoreevent.QEvent): void =


  fQGroupBox_virtualbase_changeEvent(self.h, event.h)

type QGroupBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QGroupBox, slot: proc(super: QGroupBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_changeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_changeEvent ".} =
  type Cb = proc(super: QGroupBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGroupBox, event: gen_qevent.QMouseEvent): void =


  fQGroupBox_virtualbase_mousePressEvent(self.h, event.h)

type QGroupBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QGroupBox, slot: proc(super: QGroupBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mousePressEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mousePressEvent ".} =
  type Cb = proc(super: QGroupBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGroupBox, event: gen_qevent.QMouseEvent): void =


  fQGroupBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QGroupBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QGroupBox, slot: proc(super: QGroupBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseMoveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseMoveEvent ".} =
  type Cb = proc(super: QGroupBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGroupBox, event: gen_qevent.QMouseEvent): void =


  fQGroupBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGroupBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QGroupBox, slot: proc(super: QGroupBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseReleaseEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QGroupBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QGroupBox, ): cint =


  fQGroupBox_virtualbase_devType(self.h)

type QGroupBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QGroupBox, slot: proc(super: QGroupBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_devType(self: ptr cQGroupBox, slot: int): cint {.exportc: "miqt_exec_callback_QGroupBox_devType ".} =
  type Cb = proc(super: QGroupBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QGroupBox, visible: bool): void =


  fQGroupBox_virtualbase_setVisible(self.h, visible)

type QGroupBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QGroupBox, slot: proc(super: QGroupBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_setVisible(self: ptr cQGroupBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QGroupBox_setVisible ".} =
  type Cb = proc(super: QGroupBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QGroupBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QGroupBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGroupBox_virtualbase_sizeHint(self.h))

type QGroupBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QGroupBox, slot: proc(super: QGroupBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_sizeHint(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_sizeHint ".} =
  type Cb = proc(super: QGroupBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QGroupBox, param1: cint): cint =


  fQGroupBox_virtualbase_heightForWidth(self.h, param1)

type QGroupBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QGroupBox, slot: proc(super: QGroupBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_heightForWidth(self: ptr cQGroupBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGroupBox_heightForWidth ".} =
  type Cb = proc(super: QGroupBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QGroupBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QGroupBox, ): bool =


  fQGroupBox_virtualbase_hasHeightForWidth(self.h)

type QGroupBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QGroupBox, slot: proc(super: QGroupBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_hasHeightForWidth(self: ptr cQGroupBox, slot: int): bool {.exportc: "miqt_exec_callback_QGroupBox_hasHeightForWidth ".} =
  type Cb = proc(super: QGroupBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QGroupBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQGroupBox_virtualbase_paintEngine(self.h))

type QGroupBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QGroupBox, slot: proc(super: QGroupBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_paintEngine(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_paintEngine ".} =
  type Cb = proc(super: QGroupBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QGroupBox, event: gen_qevent.QMouseEvent): void =


  fQGroupBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGroupBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGroupBox, slot: proc(super: QGroupBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseDoubleClickEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGroupBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGroupBox, event: gen_qevent.QWheelEvent): void =


  fQGroupBox_virtualbase_wheelEvent(self.h, event.h)

type QGroupBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QGroupBox, slot: proc(super: QGroupBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_wheelEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_wheelEvent ".} =
  type Cb = proc(super: QGroupBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGroupBox, event: gen_qevent.QKeyEvent): void =


  fQGroupBox_virtualbase_keyPressEvent(self.h, event.h)

type QGroupBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGroupBox, slot: proc(super: QGroupBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_keyPressEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_keyPressEvent ".} =
  type Cb = proc(super: QGroupBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGroupBox, event: gen_qevent.QKeyEvent): void =


  fQGroupBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QGroupBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGroupBox, slot: proc(super: QGroupBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_keyReleaseEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_keyReleaseEvent ".} =
  type Cb = proc(super: QGroupBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGroupBox, event: gen_qevent.QFocusEvent): void =


  fQGroupBox_virtualbase_focusOutEvent(self.h, event.h)

type QGroupBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGroupBox, slot: proc(super: QGroupBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusOutEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_focusOutEvent ".} =
  type Cb = proc(super: QGroupBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QGroupBox, event: gen_qcoreevent.QEvent): void =


  fQGroupBox_virtualbase_enterEvent(self.h, event.h)

type QGroupBoxenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QGroupBox, slot: proc(super: QGroupBoxenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_enterEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_enterEvent ".} =
  type Cb = proc(super: QGroupBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QGroupBox, event: gen_qcoreevent.QEvent): void =


  fQGroupBox_virtualbase_leaveEvent(self.h, event.h)

type QGroupBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QGroupBox, slot: proc(super: QGroupBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_leaveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_leaveEvent ".} =
  type Cb = proc(super: QGroupBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QGroupBox, event: gen_qevent.QMoveEvent): void =


  fQGroupBox_virtualbase_moveEvent(self.h, event.h)

type QGroupBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QGroupBox, slot: proc(super: QGroupBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_moveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_moveEvent ".} =
  type Cb = proc(super: QGroupBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QGroupBox, event: gen_qevent.QCloseEvent): void =


  fQGroupBox_virtualbase_closeEvent(self.h, event.h)

type QGroupBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QGroupBox, slot: proc(super: QGroupBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_closeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_closeEvent ".} =
  type Cb = proc(super: QGroupBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QGroupBox, event: gen_qevent.QContextMenuEvent): void =


  fQGroupBox_virtualbase_contextMenuEvent(self.h, event.h)

type QGroupBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QGroupBox, slot: proc(super: QGroupBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_contextMenuEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_contextMenuEvent ".} =
  type Cb = proc(super: QGroupBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QGroupBox, event: gen_qevent.QTabletEvent): void =


  fQGroupBox_virtualbase_tabletEvent(self.h, event.h)

type QGroupBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QGroupBox, slot: proc(super: QGroupBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_tabletEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_tabletEvent ".} =
  type Cb = proc(super: QGroupBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QGroupBox, event: gen_qevent.QActionEvent): void =


  fQGroupBox_virtualbase_actionEvent(self.h, event.h)

type QGroupBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QGroupBox, slot: proc(super: QGroupBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_actionEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_actionEvent ".} =
  type Cb = proc(super: QGroupBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGroupBox, event: gen_qevent.QDragEnterEvent): void =


  fQGroupBox_virtualbase_dragEnterEvent(self.h, event.h)

type QGroupBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QGroupBox, slot: proc(super: QGroupBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragEnterEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragEnterEvent ".} =
  type Cb = proc(super: QGroupBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGroupBox, event: gen_qevent.QDragMoveEvent): void =


  fQGroupBox_virtualbase_dragMoveEvent(self.h, event.h)

type QGroupBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QGroupBox, slot: proc(super: QGroupBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragMoveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragMoveEvent ".} =
  type Cb = proc(super: QGroupBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGroupBox, event: gen_qevent.QDragLeaveEvent): void =


  fQGroupBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QGroupBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QGroupBox, slot: proc(super: QGroupBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragLeaveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragLeaveEvent ".} =
  type Cb = proc(super: QGroupBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGroupBox, event: gen_qevent.QDropEvent): void =


  fQGroupBox_virtualbase_dropEvent(self.h, event.h)

type QGroupBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QGroupBox, slot: proc(super: QGroupBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dropEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dropEvent ".} =
  type Cb = proc(super: QGroupBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QGroupBox, event: gen_qevent.QShowEvent): void =


  fQGroupBox_virtualbase_showEvent(self.h, event.h)

type QGroupBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QGroupBox, slot: proc(super: QGroupBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_showEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_showEvent ".} =
  type Cb = proc(super: QGroupBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QGroupBox, event: gen_qevent.QHideEvent): void =


  fQGroupBox_virtualbase_hideEvent(self.h, event.h)

type QGroupBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QGroupBox, slot: proc(super: QGroupBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_hideEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_hideEvent ".} =
  type Cb = proc(super: QGroupBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QGroupBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQGroupBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QGroupBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QGroupBox, slot: proc(super: QGroupBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_nativeEvent(self: ptr cQGroupBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QGroupBox_nativeEvent ".} =
  type Cb = proc(super: QGroupBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QGroupBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QGroupBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQGroupBox_virtualbase_metric(self.h, cint(param1))

type QGroupBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QGroupBox, slot: proc(super: QGroupBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_metric(self: ptr cQGroupBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGroupBox_metric ".} =
  type Cb = proc(super: QGroupBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QGroupBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QGroupBox, painter: gen_qpainter.QPainter): void =


  fQGroupBox_virtualbase_initPainter(self.h, painter.h)

type QGroupBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QGroupBox, slot: proc(super: QGroupBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_initPainter(self: ptr cQGroupBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_initPainter ".} =
  type Cb = proc(super: QGroupBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QGroupBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QGroupBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQGroupBox_virtualbase_redirected(self.h, offset.h))

type QGroupBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QGroupBox, slot: proc(super: QGroupBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_redirected(self: ptr cQGroupBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QGroupBox_redirected ".} =
  type Cb = proc(super: QGroupBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QGroupBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QGroupBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQGroupBox_virtualbase_sharedPainter(self.h))

type QGroupBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QGroupBox, slot: proc(super: QGroupBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_sharedPainter(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_sharedPainter ".} =
  type Cb = proc(super: QGroupBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QGroupBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QGroupBox, param1: gen_qevent.QInputMethodEvent): void =


  fQGroupBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QGroupBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGroupBox, slot: proc(super: QGroupBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_inputMethodEvent(self: ptr cQGroupBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_inputMethodEvent ".} =
  type Cb = proc(super: QGroupBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGroupBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGroupBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGroupBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QGroupBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGroupBox, slot: proc(super: QGroupBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_inputMethodQuery(self: ptr cQGroupBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QGroupBox_inputMethodQuery ".} =
  type Cb = proc(super: QGroupBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGroupBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QGroupBox, next: bool): bool =


  fQGroupBox_virtualbase_focusNextPrevChild(self.h, next)

type QGroupBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGroupBox, slot: proc(super: QGroupBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusNextPrevChild(self: ptr cQGroupBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGroupBox_focusNextPrevChild ".} =
  type Cb = proc(super: QGroupBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGroupBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGroupBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGroupBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGroupBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGroupBox, slot: proc(super: QGroupBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_eventFilter(self: ptr cQGroupBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGroupBox_eventFilter ".} =
  type Cb = proc(super: QGroupBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGroupBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGroupBox, event: gen_qcoreevent.QTimerEvent): void =


  fQGroupBox_virtualbase_timerEvent(self.h, event.h)

type QGroupBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGroupBox, slot: proc(super: QGroupBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_timerEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_timerEvent ".} =
  type Cb = proc(super: QGroupBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGroupBox, event: gen_qcoreevent.QEvent): void =


  fQGroupBox_virtualbase_customEvent(self.h, event.h)

type QGroupBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGroupBox, slot: proc(super: QGroupBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_customEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_customEvent ".} =
  type Cb = proc(super: QGroupBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGroupBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGroupBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQGroupBox_virtualbase_connectNotify(self.h, signal.h)

type QGroupBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGroupBox, slot: proc(super: QGroupBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_connectNotify(self: ptr cQGroupBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_connectNotify ".} =
  type Cb = proc(super: QGroupBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGroupBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGroupBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQGroupBox_virtualbase_disconnectNotify(self.h, signal.h)

type QGroupBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGroupBox, slot: proc(super: QGroupBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGroupBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_disconnectNotify(self: ptr cQGroupBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_disconnectNotify ".} =
  type Cb = proc(super: QGroupBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGroupBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGroupBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGroupBox_staticMetaObject())
proc delete*(self: QGroupBox) =
  fcQGroupBox_delete(self.h)
