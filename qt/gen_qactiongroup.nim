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
{.compile("gen_qactiongroup.cpp", cflags).}


type QActionGroupExclusionPolicy* = cint
const
  QActionGroupNone* = 0
  QActionGroupExclusive* = 1
  QActionGroupExclusiveOptional* = 2



import gen_qactiongroup_types
export gen_qactiongroup_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaction,
  gen_qcoreevent,
  gen_qicon,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQActionGroup*{.exportc: "QActionGroup", incompleteStruct.} = object

proc fcQActionGroup_new(parent: pointer): ptr cQActionGroup {.importc: "QActionGroup_new".}
proc fcQActionGroup_metaObject(self: pointer, ): pointer {.importc: "QActionGroup_metaObject".}
proc fcQActionGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_metacast".}
proc fcQActionGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QActionGroup_metacall".}
proc fcQActionGroup_tr(s: cstring): struct_miqt_string {.importc: "QActionGroup_tr".}
proc fcQActionGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QActionGroup_trUtf8".}
proc fcQActionGroup_addAction(self: pointer, a: pointer): pointer {.importc: "QActionGroup_addAction".}
proc fcQActionGroup_addActionWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addActionWithText".}
proc fcQActionGroup_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QActionGroup_addAction2".}
proc fcQActionGroup_removeAction(self: pointer, a: pointer): void {.importc: "QActionGroup_removeAction".}
proc fcQActionGroup_actions(self: pointer, ): struct_miqt_array {.importc: "QActionGroup_actions".}
proc fcQActionGroup_checkedAction(self: pointer, ): pointer {.importc: "QActionGroup_checkedAction".}
proc fcQActionGroup_isExclusive(self: pointer, ): bool {.importc: "QActionGroup_isExclusive".}
proc fcQActionGroup_isEnabled(self: pointer, ): bool {.importc: "QActionGroup_isEnabled".}
proc fcQActionGroup_isVisible(self: pointer, ): bool {.importc: "QActionGroup_isVisible".}
proc fcQActionGroup_exclusionPolicy(self: pointer, ): cint {.importc: "QActionGroup_exclusionPolicy".}
proc fcQActionGroup_setEnabled(self: pointer, enabled: bool): void {.importc: "QActionGroup_setEnabled".}
proc fcQActionGroup_setDisabled(self: pointer, b: bool): void {.importc: "QActionGroup_setDisabled".}
proc fcQActionGroup_setVisible(self: pointer, visible: bool): void {.importc: "QActionGroup_setVisible".}
proc fcQActionGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QActionGroup_setExclusive".}
proc fcQActionGroup_setExclusionPolicy(self: pointer, policy: cint): void {.importc: "QActionGroup_setExclusionPolicy".}
proc fcQActionGroup_triggered(self: pointer, param1: pointer): void {.importc: "QActionGroup_triggered".}
proc fQActionGroup_connect_triggered(self: pointer, slot: int) {.importc: "QActionGroup_connect_triggered".}
proc fcQActionGroup_hovered(self: pointer, param1: pointer): void {.importc: "QActionGroup_hovered".}
proc fQActionGroup_connect_hovered(self: pointer, slot: int) {.importc: "QActionGroup_connect_hovered".}
proc fcQActionGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QActionGroup_tr2".}
proc fcQActionGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QActionGroup_tr3".}
proc fcQActionGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QActionGroup_trUtf82".}
proc fcQActionGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QActionGroup_trUtf83".}
proc fQActionGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QActionGroup_virtualbase_metacall".}
proc fcQActionGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_metacall".}
proc fQActionGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QActionGroup_virtualbase_event".}
proc fcQActionGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_event".}
proc fQActionGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QActionGroup_virtualbase_eventFilter".}
proc fcQActionGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_eventFilter".}
proc fQActionGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_timerEvent".}
proc fcQActionGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_timerEvent".}
proc fQActionGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_childEvent".}
proc fcQActionGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_childEvent".}
proc fQActionGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QActionGroup_virtualbase_customEvent".}
proc fcQActionGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_customEvent".}
proc fQActionGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QActionGroup_virtualbase_connectNotify".}
proc fcQActionGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_connectNotify".}
proc fQActionGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QActionGroup_virtualbase_disconnectNotify".}
proc fcQActionGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QActionGroup_override_virtual_disconnectNotify".}
proc fcQActionGroup_delete(self: pointer) {.importc: "QActionGroup_delete".}


func init*(T: type QActionGroup, h: ptr cQActionGroup): QActionGroup =
  T(h: h)
proc create*(T: type QActionGroup, parent: gen_qobject.QObject): QActionGroup =

  QActionGroup.init(fcQActionGroup_new(parent.h))
proc metaObject*(self: QActionGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQActionGroup_metaObject(self.h))

proc metacast*(self: QActionGroup, param1: cstring): pointer =

  fcQActionGroup_metacast(self.h, param1)

proc metacall*(self: QActionGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQActionGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QActionGroup, s: cstring): string =

  let v_ms = fcQActionGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QActionGroup, s: cstring): string =

  let v_ms = fcQActionGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: QActionGroup, a: gen_qaction.QAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionGroup_addAction(self.h, a.h))

proc addActionWithText*(self: QActionGroup, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionGroup_addActionWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction2*(self: QActionGroup, icon: gen_qicon.QIcon, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionGroup_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc removeAction*(self: QActionGroup, a: gen_qaction.QAction): void =

  fcQActionGroup_removeAction(self.h, a.h)

proc actions*(self: QActionGroup, ): seq[gen_qaction.QAction] =

  var v_ma = fcQActionGroup_actions(self.h)
  var vx_ret = newSeq[gen_qaction.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction.QAction(h: v_outCast[i])
  vx_ret

proc checkedAction*(self: QActionGroup, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionGroup_checkedAction(self.h))

proc isExclusive*(self: QActionGroup, ): bool =

  fcQActionGroup_isExclusive(self.h)

proc isEnabled*(self: QActionGroup, ): bool =

  fcQActionGroup_isEnabled(self.h)

proc isVisible*(self: QActionGroup, ): bool =

  fcQActionGroup_isVisible(self.h)

proc exclusionPolicy*(self: QActionGroup, ): QActionGroupExclusionPolicy =

  QActionGroupExclusionPolicy(fcQActionGroup_exclusionPolicy(self.h))

proc setEnabled*(self: QActionGroup, enabled: bool): void =

  fcQActionGroup_setEnabled(self.h, enabled)

proc setDisabled*(self: QActionGroup, b: bool): void =

  fcQActionGroup_setDisabled(self.h, b)

proc setVisible*(self: QActionGroup, visible: bool): void =

  fcQActionGroup_setVisible(self.h, visible)

proc setExclusive*(self: QActionGroup, exclusive: bool): void =

  fcQActionGroup_setExclusive(self.h, exclusive)

proc setExclusionPolicy*(self: QActionGroup, policy: QActionGroupExclusionPolicy): void =

  fcQActionGroup_setExclusionPolicy(self.h, cint(policy))

proc triggered*(self: QActionGroup, param1: gen_qaction.QAction): void =

  fcQActionGroup_triggered(self.h, param1.h)

proc miqt_exec_callback_QActionGroup_triggered(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: param1)


  nimfunc[](slotval1)

proc ontriggered*(self: QActionGroup, slot: proc(param1: gen_qaction.QAction)) =
  type Cb = proc(param1: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQActionGroup_connect_triggered(self.h, cast[int](addr tmp[]))
proc hovered*(self: QActionGroup, param1: gen_qaction.QAction): void =

  fcQActionGroup_hovered(self.h, param1.h)

proc miqt_exec_callback_QActionGroup_hovered(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: param1)


  nimfunc[](slotval1)

proc onhovered*(self: QActionGroup, slot: proc(param1: gen_qaction.QAction)) =
  type Cb = proc(param1: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQActionGroup_connect_hovered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QActionGroup, s: cstring, c: cstring): string =

  let v_ms = fcQActionGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QActionGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQActionGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QActionGroup, s: cstring, c: cstring): string =

  let v_ms = fcQActionGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QActionGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQActionGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QActionGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQActionGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QActionGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QActionGroup, slot: proc(super: QActionGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_metacall(self: ptr cQActionGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QActionGroup_metacall ".} =
  type Cb = proc(super: QActionGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QActionGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QActionGroup, event: gen_qcoreevent.QEvent): bool =


  fQActionGroup_virtualbase_event(self.h, event.h)

type QActionGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QActionGroup, slot: proc(super: QActionGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_event(self: ptr cQActionGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QActionGroup_event ".} =
  type Cb = proc(super: QActionGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QActionGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QActionGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQActionGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QActionGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QActionGroup, slot: proc(super: QActionGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_eventFilter(self: ptr cQActionGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QActionGroup_eventFilter ".} =
  type Cb = proc(super: QActionGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QActionGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QActionGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQActionGroup_virtualbase_timerEvent(self.h, event.h)

type QActionGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QActionGroup, slot: proc(super: QActionGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActionGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_timerEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_timerEvent ".} =
  type Cb = proc(super: QActionGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QActionGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QActionGroup, event: gen_qcoreevent.QChildEvent): void =


  fQActionGroup_virtualbase_childEvent(self.h, event.h)

type QActionGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QActionGroup, slot: proc(super: QActionGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_childEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_childEvent ".} =
  type Cb = proc(super: QActionGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QActionGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QActionGroup, event: gen_qcoreevent.QEvent): void =


  fQActionGroup_virtualbase_customEvent(self.h, event.h)

type QActionGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QActionGroup, slot: proc(super: QActionGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_customEvent(self: ptr cQActionGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_customEvent ".} =
  type Cb = proc(super: QActionGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QActionGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QActionGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQActionGroup_virtualbase_connectNotify(self.h, signal.h)

type QActionGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QActionGroup, slot: proc(super: QActionGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_connectNotify(self: ptr cQActionGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_connectNotify ".} =
  type Cb = proc(super: QActionGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QActionGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QActionGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQActionGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QActionGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QActionGroup, slot: proc(super: QActionGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QActionGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionGroup_disconnectNotify(self: ptr cQActionGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QActionGroup_disconnectNotify ".} =
  type Cb = proc(super: QActionGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QActionGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QActionGroup) =
  fcQActionGroup_delete(self.h)
