import Qt6WebChannel_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebChannel")
{.compile("gen_qqmlwebchannel.cpp", cflags).}


import gen_qqmlwebchannel_types
export gen_qqmlwebchannel_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qwebchannel,
  std/tables
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qwebchannel

type cQQmlWebChannel*{.exportc: "QQmlWebChannel", incompleteStruct.} = object

proc fcQQmlWebChannel_new(): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new".}
proc fcQQmlWebChannel_new2(parent: pointer): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new2".}
proc fcQQmlWebChannel_metaObject(self: pointer, ): pointer {.importc: "QQmlWebChannel_metaObject".}
proc fcQQmlWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_metacast".}
proc fcQQmlWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_metacall".}
proc fcQQmlWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr".}
proc fcQQmlWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QQmlWebChannel_registerObjects".}
proc fcQQmlWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_connectTo".}
proc fcQQmlWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_disconnectFrom".}
proc fcQQmlWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr2".}
proc fcQQmlWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_tr3".}
proc fQQmlWebChannel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlWebChannel_virtualbase_metaObject".}
proc fcQQmlWebChannel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metaObject".}
proc fQQmlWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlWebChannel_virtualbase_metacast".}
proc fcQQmlWebChannel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metacast".}
proc fQQmlWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlWebChannel_virtualbase_metacall".}
proc fcQQmlWebChannel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metacall".}
proc fQQmlWebChannel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlWebChannel_virtualbase_event".}
proc fcQQmlWebChannel_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_event".}
proc fQQmlWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlWebChannel_virtualbase_eventFilter".}
proc fcQQmlWebChannel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_eventFilter".}
proc fQQmlWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_timerEvent".}
proc fcQQmlWebChannel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_timerEvent".}
proc fQQmlWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_childEvent".}
proc fcQQmlWebChannel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_childEvent".}
proc fQQmlWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_customEvent".}
proc fcQQmlWebChannel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_customEvent".}
proc fQQmlWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlWebChannel_virtualbase_connectNotify".}
proc fcQQmlWebChannel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_connectNotify".}
proc fQQmlWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlWebChannel_virtualbase_disconnectNotify".}
proc fcQQmlWebChannel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_disconnectNotify".}
proc fcQQmlWebChannel_staticMetaObject(): pointer {.importc: "QQmlWebChannel_staticMetaObject".}
proc fcQQmlWebChannel_delete(self: pointer) {.importc: "QQmlWebChannel_delete".}


func init*(T: type QQmlWebChannel, h: ptr cQQmlWebChannel): QQmlWebChannel =
  T(h: h)
proc create*(T: type QQmlWebChannel, ): QQmlWebChannel =

  QQmlWebChannel.init(fcQQmlWebChannel_new())
proc create*(T: type QQmlWebChannel, parent: gen_qobject.QObject): QQmlWebChannel =

  QQmlWebChannel.init(fcQQmlWebChannel_new2(parent.h))
proc metaObject*(self: QQmlWebChannel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlWebChannel_metaObject(self.h))

proc metacast*(self: QQmlWebChannel, param1: cstring): pointer =

  fcQQmlWebChannel_metacast(self.h, param1)

proc metacall*(self: QQmlWebChannel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlWebChannel, s: cstring): string =

  let v_ms = fcQQmlWebChannel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: QQmlWebChannel, objects: Table[string,gen_qvariant.QVariant]): void =

  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objectsk, objectsv in objects:
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: objects_k, len: csize_t(len(objects_k)))
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQQmlWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc connectTo*(self: QQmlWebChannel, transport: gen_qobject.QObject): void =

  fcQQmlWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: QQmlWebChannel, transport: gen_qobject.QObject): void =

  fcQQmlWebChannel_disconnectFrom(self.h, transport.h)

proc tr2*(_: type QQmlWebChannel, s: cstring, c: cstring): string =

  let v_ms = fcQQmlWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlWebChannel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQmlWebChannel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQmlWebChannel_virtualbase_metaObject(self.h))

type QQmlWebChannelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metaObject(self: ptr cQQmlWebChannel, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlWebChannel_metaObject ".} =
  type Cb = proc(super: QQmlWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQmlWebChannel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQmlWebChannel, param1: cstring): pointer =


  fQQmlWebChannel_virtualbase_metacast(self.h, param1)

type QQmlWebChannelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metacast(self: ptr cQQmlWebChannel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlWebChannel_metacast ".} =
  type Cb = proc(super: QQmlWebChannelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQmlWebChannel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQmlWebChannel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlWebChannelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metacall(self: ptr cQQmlWebChannel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlWebChannel_metacall ".} =
  type Cb = proc(super: QQmlWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlWebChannel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlWebChannel, event: gen_qcoreevent.QEvent): bool =


  fQQmlWebChannel_virtualbase_event(self.h, event.h)

type QQmlWebChanneleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlWebChannel, slot: proc(super: QQmlWebChanneleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChanneleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_event(self: ptr cQQmlWebChannel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlWebChannel_event ".} =
  type Cb = proc(super: QQmlWebChanneleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlWebChannel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlWebChanneleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlWebChannel, slot: proc(super: QQmlWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_eventFilter(self: ptr cQQmlWebChannel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlWebChannel_eventFilter ".} =
  type Cb = proc(super: QQmlWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlWebChannel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlWebChannel, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlWebChannel_virtualbase_timerEvent(self.h, event.h)

type QQmlWebChanneltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlWebChannel, slot: proc(super: QQmlWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_timerEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_timerEvent ".} =
  type Cb = proc(super: QQmlWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlWebChannel, event: gen_qcoreevent.QChildEvent): void =


  fQQmlWebChannel_virtualbase_childEvent(self.h, event.h)

type QQmlWebChannelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_childEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_childEvent ".} =
  type Cb = proc(super: QQmlWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlWebChannel, event: gen_qcoreevent.QEvent): void =


  fQQmlWebChannel_virtualbase_customEvent(self.h, event.h)

type QQmlWebChannelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_customEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_customEvent ".} =
  type Cb = proc(super: QQmlWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlWebChannel, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlWebChannel_virtualbase_connectNotify(self.h, signal.h)

type QQmlWebChannelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlWebChannel, slot: proc(super: QQmlWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_connectNotify(self: ptr cQQmlWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_connectNotify ".} =
  type Cb = proc(super: QQmlWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlWebChannel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlWebChannel, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlWebChanneldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlWebChannel, slot: proc(super: QQmlWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_disconnectNotify(self: ptr cQQmlWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_disconnectNotify ".} =
  type Cb = proc(super: QQmlWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlWebChannel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlWebChannel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlWebChannel_staticMetaObject())
proc delete*(self: QQmlWebChannel) =
  fcQQmlWebChannel_delete(self.h)
