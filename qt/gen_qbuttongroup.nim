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
{.compile("gen_qbuttongroup.cpp", cflags).}


import gen_qbuttongroup_types
export gen_qbuttongroup_types

import
  gen_qabstractbutton,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstractbutton,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQButtonGroup*{.exportc: "QButtonGroup", incompleteStruct.} = object

proc fcQButtonGroup_new(): ptr cQButtonGroup {.importc: "QButtonGroup_new".}
proc fcQButtonGroup_new2(parent: pointer): ptr cQButtonGroup {.importc: "QButtonGroup_new2".}
proc fcQButtonGroup_metaObject(self: pointer, ): pointer {.importc: "QButtonGroup_metaObject".}
proc fcQButtonGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QButtonGroup_metacast".}
proc fcQButtonGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QButtonGroup_metacall".}
proc fcQButtonGroup_tr(s: cstring): struct_miqt_string {.importc: "QButtonGroup_tr".}
proc fcQButtonGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QButtonGroup_trUtf8".}
proc fcQButtonGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QButtonGroup_setExclusive".}
proc fcQButtonGroup_exclusive(self: pointer, ): bool {.importc: "QButtonGroup_exclusive".}
proc fcQButtonGroup_addButton(self: pointer, param1: pointer): void {.importc: "QButtonGroup_addButton".}
proc fcQButtonGroup_removeButton(self: pointer, param1: pointer): void {.importc: "QButtonGroup_removeButton".}
proc fcQButtonGroup_buttons(self: pointer, ): struct_miqt_array {.importc: "QButtonGroup_buttons".}
proc fcQButtonGroup_checkedButton(self: pointer, ): pointer {.importc: "QButtonGroup_checkedButton".}
proc fcQButtonGroup_button(self: pointer, id: cint): pointer {.importc: "QButtonGroup_button".}
proc fcQButtonGroup_setId(self: pointer, button: pointer, id: cint): void {.importc: "QButtonGroup_setId".}
proc fcQButtonGroup_id(self: pointer, button: pointer): cint {.importc: "QButtonGroup_id".}
proc fcQButtonGroup_checkedId(self: pointer, ): cint {.importc: "QButtonGroup_checkedId".}
proc fcQButtonGroup_buttonClicked(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonClicked".}
proc fQButtonGroup_connect_buttonClicked(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonClicked".}
proc fcQButtonGroup_buttonPressed(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonPressed".}
proc fQButtonGroup_connect_buttonPressed(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonPressed".}
proc fcQButtonGroup_buttonReleased(self: pointer, param1: pointer): void {.importc: "QButtonGroup_buttonReleased".}
proc fQButtonGroup_connect_buttonReleased(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonReleased".}
proc fcQButtonGroup_buttonToggled(self: pointer, param1: pointer, param2: bool): void {.importc: "QButtonGroup_buttonToggled".}
proc fQButtonGroup_connect_buttonToggled(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonToggled".}
proc fcQButtonGroup_idClicked(self: pointer, param1: cint): void {.importc: "QButtonGroup_idClicked".}
proc fQButtonGroup_connect_idClicked(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idClicked".}
proc fcQButtonGroup_idPressed(self: pointer, param1: cint): void {.importc: "QButtonGroup_idPressed".}
proc fQButtonGroup_connect_idPressed(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idPressed".}
proc fcQButtonGroup_idReleased(self: pointer, param1: cint): void {.importc: "QButtonGroup_idReleased".}
proc fQButtonGroup_connect_idReleased(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idReleased".}
proc fcQButtonGroup_idToggled(self: pointer, param1: cint, param2: bool): void {.importc: "QButtonGroup_idToggled".}
proc fQButtonGroup_connect_idToggled(self: pointer, slot: int) {.importc: "QButtonGroup_connect_idToggled".}
proc fcQButtonGroup_buttonClickedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonClickedWithInt".}
proc fQButtonGroup_connect_buttonClickedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonClickedWithInt".}
proc fcQButtonGroup_buttonPressedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonPressedWithInt".}
proc fQButtonGroup_connect_buttonPressedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonPressedWithInt".}
proc fcQButtonGroup_buttonReleasedWithInt(self: pointer, param1: cint): void {.importc: "QButtonGroup_buttonReleasedWithInt".}
proc fQButtonGroup_connect_buttonReleasedWithInt(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonReleasedWithInt".}
proc fcQButtonGroup_buttonToggled2(self: pointer, param1: cint, param2: bool): void {.importc: "QButtonGroup_buttonToggled2".}
proc fQButtonGroup_connect_buttonToggled2(self: pointer, slot: int) {.importc: "QButtonGroup_connect_buttonToggled2".}
proc fcQButtonGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QButtonGroup_tr2".}
proc fcQButtonGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QButtonGroup_tr3".}
proc fcQButtonGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QButtonGroup_trUtf82".}
proc fcQButtonGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QButtonGroup_trUtf83".}
proc fcQButtonGroup_addButton2(self: pointer, param1: pointer, id: cint): void {.importc: "QButtonGroup_addButton2".}
proc fQButtonGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QButtonGroup_virtualbase_metacall".}
proc fcQButtonGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_metacall".}
proc fQButtonGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QButtonGroup_virtualbase_event".}
proc fcQButtonGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_event".}
proc fQButtonGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QButtonGroup_virtualbase_eventFilter".}
proc fcQButtonGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_eventFilter".}
proc fQButtonGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_timerEvent".}
proc fcQButtonGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_timerEvent".}
proc fQButtonGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_childEvent".}
proc fcQButtonGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_childEvent".}
proc fQButtonGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QButtonGroup_virtualbase_customEvent".}
proc fcQButtonGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_customEvent".}
proc fQButtonGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QButtonGroup_virtualbase_connectNotify".}
proc fcQButtonGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_connectNotify".}
proc fQButtonGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QButtonGroup_virtualbase_disconnectNotify".}
proc fcQButtonGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QButtonGroup_override_virtual_disconnectNotify".}
proc fcQButtonGroup_staticMetaObject(): pointer {.importc: "QButtonGroup_staticMetaObject".}
proc fcQButtonGroup_delete(self: pointer) {.importc: "QButtonGroup_delete".}


func init*(T: type QButtonGroup, h: ptr cQButtonGroup): QButtonGroup =
  T(h: h)
proc create*(T: type QButtonGroup, ): QButtonGroup =

  QButtonGroup.init(fcQButtonGroup_new())
proc create*(T: type QButtonGroup, parent: gen_qobject.QObject): QButtonGroup =

  QButtonGroup.init(fcQButtonGroup_new2(parent.h))
proc metaObject*(self: QButtonGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQButtonGroup_metaObject(self.h))

proc metacast*(self: QButtonGroup, param1: cstring): pointer =

  fcQButtonGroup_metacast(self.h, param1)

proc metacall*(self: QButtonGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQButtonGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QButtonGroup, s: cstring): string =

  let v_ms = fcQButtonGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QButtonGroup, s: cstring): string =

  let v_ms = fcQButtonGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExclusive*(self: QButtonGroup, exclusive: bool): void =

  fcQButtonGroup_setExclusive(self.h, exclusive)

proc exclusive*(self: QButtonGroup, ): bool =

  fcQButtonGroup_exclusive(self.h)

proc addButton*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton): void =

  fcQButtonGroup_addButton(self.h, param1.h)

proc removeButton*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton): void =

  fcQButtonGroup_removeButton(self.h, param1.h)

proc buttons*(self: QButtonGroup, ): seq[gen_qabstractbutton.QAbstractButton] =

  var v_ma = fcQButtonGroup_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton.QAbstractButton(h: v_outCast[i])
  vx_ret

proc checkedButton*(self: QButtonGroup, ): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQButtonGroup_checkedButton(self.h))

proc button*(self: QButtonGroup, id: cint): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQButtonGroup_button(self.h, id))

proc setId*(self: QButtonGroup, button: gen_qabstractbutton.QAbstractButton, id: cint): void =

  fcQButtonGroup_setId(self.h, button.h, id)

proc id*(self: QButtonGroup, button: gen_qabstractbutton.QAbstractButton): cint =

  fcQButtonGroup_id(self.h, button.h)

proc checkedId*(self: QButtonGroup, ): cint =

  fcQButtonGroup_checkedId(self.h)

proc buttonClicked*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton): void =

  fcQButtonGroup_buttonClicked(self.h, param1.h)

proc miqt_exec_callback_QButtonGroup_buttonClicked(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: param1)


  nimfunc[](slotval1)

proc onbuttonClicked*(self: QButtonGroup, slot: proc(param1: gen_qabstractbutton.QAbstractButton)) =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonClicked(self.h, cast[int](addr tmp[]))
proc buttonPressed*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton): void =

  fcQButtonGroup_buttonPressed(self.h, param1.h)

proc miqt_exec_callback_QButtonGroup_buttonPressed(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: param1)


  nimfunc[](slotval1)

proc onbuttonPressed*(self: QButtonGroup, slot: proc(param1: gen_qabstractbutton.QAbstractButton)) =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonPressed(self.h, cast[int](addr tmp[]))
proc buttonReleased*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton): void =

  fcQButtonGroup_buttonReleased(self.h, param1.h)

proc miqt_exec_callback_QButtonGroup_buttonReleased(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: param1)


  nimfunc[](slotval1)

proc onbuttonReleased*(self: QButtonGroup, slot: proc(param1: gen_qabstractbutton.QAbstractButton)) =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonReleased(self.h, cast[int](addr tmp[]))
proc buttonToggled*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton, param2: bool): void =

  fcQButtonGroup_buttonToggled(self.h, param1.h, param2)

proc miqt_exec_callback_QButtonGroup_buttonToggled(slot: int, param1: pointer, param2: bool) {.exportc.} =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton, param2: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: param1)

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)

proc onbuttonToggled*(self: QButtonGroup, slot: proc(param1: gen_qabstractbutton.QAbstractButton, param2: bool)) =
  type Cb = proc(param1: gen_qabstractbutton.QAbstractButton, param2: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonToggled(self.h, cast[int](addr tmp[]))
proc idClicked*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_idClicked(self.h, param1)

proc miqt_exec_callback_QButtonGroup_idClicked(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onidClicked*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_idClicked(self.h, cast[int](addr tmp[]))
proc idPressed*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_idPressed(self.h, param1)

proc miqt_exec_callback_QButtonGroup_idPressed(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onidPressed*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_idPressed(self.h, cast[int](addr tmp[]))
proc idReleased*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_idReleased(self.h, param1)

proc miqt_exec_callback_QButtonGroup_idReleased(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onidReleased*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_idReleased(self.h, cast[int](addr tmp[]))
proc idToggled*(self: QButtonGroup, param1: cint, param2: bool): void =

  fcQButtonGroup_idToggled(self.h, param1, param2)

proc miqt_exec_callback_QButtonGroup_idToggled(slot: int, param1: cint, param2: bool) {.exportc.} =
  type Cb = proc(param1: cint, param2: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)

proc onidToggled*(self: QButtonGroup, slot: proc(param1: cint, param2: bool)) =
  type Cb = proc(param1: cint, param2: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_idToggled(self.h, cast[int](addr tmp[]))
proc buttonClickedWithInt*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_buttonClickedWithInt(self.h, param1)

proc miqt_exec_callback_QButtonGroup_buttonClickedWithInt(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbuttonClickedWithInt*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonClickedWithInt(self.h, cast[int](addr tmp[]))
proc buttonPressedWithInt*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_buttonPressedWithInt(self.h, param1)

proc miqt_exec_callback_QButtonGroup_buttonPressedWithInt(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbuttonPressedWithInt*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonPressedWithInt(self.h, cast[int](addr tmp[]))
proc buttonReleasedWithInt*(self: QButtonGroup, param1: cint): void =

  fcQButtonGroup_buttonReleasedWithInt(self.h, param1)

proc miqt_exec_callback_QButtonGroup_buttonReleasedWithInt(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbuttonReleasedWithInt*(self: QButtonGroup, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonReleasedWithInt(self.h, cast[int](addr tmp[]))
proc buttonToggled2*(self: QButtonGroup, param1: cint, param2: bool): void =

  fcQButtonGroup_buttonToggled2(self.h, param1, param2)

proc miqt_exec_callback_QButtonGroup_buttonToggled2(slot: int, param1: cint, param2: bool) {.exportc.} =
  type Cb = proc(param1: cint, param2: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)

proc onbuttonToggled2*(self: QButtonGroup, slot: proc(param1: cint, param2: bool)) =
  type Cb = proc(param1: cint, param2: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQButtonGroup_connect_buttonToggled2(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QButtonGroup, s: cstring, c: cstring): string =

  let v_ms = fcQButtonGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QButtonGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQButtonGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QButtonGroup, s: cstring, c: cstring): string =

  let v_ms = fcQButtonGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QButtonGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQButtonGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addButton2*(self: QButtonGroup, param1: gen_qabstractbutton.QAbstractButton, id: cint): void =

  fcQButtonGroup_addButton2(self.h, param1.h, id)

proc callVirtualBase_metacall(self: QButtonGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQButtonGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QButtonGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QButtonGroup, slot: proc(super: QButtonGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_metacall(self: ptr cQButtonGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QButtonGroup_metacall ".} =
  type Cb = proc(super: QButtonGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QButtonGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QButtonGroup, event: gen_qcoreevent.QEvent): bool =


  fQButtonGroup_virtualbase_event(self.h, event.h)

type QButtonGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QButtonGroup, slot: proc(super: QButtonGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_event(self: ptr cQButtonGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QButtonGroup_event ".} =
  type Cb = proc(super: QButtonGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QButtonGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QButtonGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQButtonGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QButtonGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QButtonGroup, slot: proc(super: QButtonGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_eventFilter(self: ptr cQButtonGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QButtonGroup_eventFilter ".} =
  type Cb = proc(super: QButtonGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QButtonGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QButtonGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQButtonGroup_virtualbase_timerEvent(self.h, event.h)

type QButtonGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QButtonGroup, slot: proc(super: QButtonGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QButtonGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_timerEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_timerEvent ".} =
  type Cb = proc(super: QButtonGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QButtonGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QButtonGroup, event: gen_qcoreevent.QChildEvent): void =


  fQButtonGroup_virtualbase_childEvent(self.h, event.h)

type QButtonGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QButtonGroup, slot: proc(super: QButtonGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_childEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_childEvent ".} =
  type Cb = proc(super: QButtonGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QButtonGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QButtonGroup, event: gen_qcoreevent.QEvent): void =


  fQButtonGroup_virtualbase_customEvent(self.h, event.h)

type QButtonGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QButtonGroup, slot: proc(super: QButtonGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_customEvent(self: ptr cQButtonGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_customEvent ".} =
  type Cb = proc(super: QButtonGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QButtonGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QButtonGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQButtonGroup_virtualbase_connectNotify(self.h, signal.h)

type QButtonGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QButtonGroup, slot: proc(super: QButtonGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_connectNotify(self: ptr cQButtonGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_connectNotify ".} =
  type Cb = proc(super: QButtonGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QButtonGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QButtonGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQButtonGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QButtonGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QButtonGroup, slot: proc(super: QButtonGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QButtonGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQButtonGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QButtonGroup_disconnectNotify(self: ptr cQButtonGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QButtonGroup_disconnectNotify ".} =
  type Cb = proc(super: QButtonGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QButtonGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QButtonGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQButtonGroup_staticMetaObject())
proc delete*(self: QButtonGroup) =
  fcQButtonGroup_delete(self.h)
