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
{.compile("gen_qwebchannel.cpp", cflags).}


import gen_qwebchannel_types
export gen_qwebchannel_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebchannelabstracttransport,
  std/tables
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebchannelabstracttransport

type cQWebChannel*{.exportc: "QWebChannel", incompleteStruct.} = object

proc fcQWebChannel_new(): ptr cQWebChannel {.importc: "QWebChannel_new".}
proc fcQWebChannel_new2(parent: pointer): ptr cQWebChannel {.importc: "QWebChannel_new2".}
proc fcQWebChannel_metaObject(self: pointer, ): pointer {.importc: "QWebChannel_metaObject".}
proc fcQWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_metacast".}
proc fcQWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannel_metacall".}
proc fcQWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QWebChannel_tr".}
proc fcQWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QWebChannel_registerObjects".}
proc fcQWebChannel_registeredObjects(self: pointer, ): struct_miqt_map {.importc: "QWebChannel_registeredObjects".}
proc fcQWebChannel_registerObject(self: pointer, id: struct_miqt_string, objectVal: pointer): void {.importc: "QWebChannel_registerObject".}
proc fcQWebChannel_deregisterObject(self: pointer, objectVal: pointer): void {.importc: "QWebChannel_deregisterObject".}
proc fcQWebChannel_blockUpdates(self: pointer, ): bool {.importc: "QWebChannel_blockUpdates".}
proc fcQWebChannel_setBlockUpdates(self: pointer, blockVal: bool): void {.importc: "QWebChannel_setBlockUpdates".}
proc fcQWebChannel_propertyUpdateInterval(self: pointer, ): cint {.importc: "QWebChannel_propertyUpdateInterval".}
proc fcQWebChannel_setPropertyUpdateInterval(self: pointer, ms: cint): void {.importc: "QWebChannel_setPropertyUpdateInterval".}
proc fcQWebChannel_blockUpdatesChanged(self: pointer, blockVal: bool): void {.importc: "QWebChannel_blockUpdatesChanged".}
proc fQWebChannel_connect_blockUpdatesChanged(self: pointer, slot: int) {.importc: "QWebChannel_connect_blockUpdatesChanged".}
proc fcQWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QWebChannel_connectTo".}
proc fcQWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QWebChannel_disconnectFrom".}
proc fcQWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_tr2".}
proc fcQWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_tr3".}
proc fQWebChannel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebChannel_virtualbase_metaObject".}
proc fcQWebChannel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_metaObject".}
proc fQWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebChannel_virtualbase_metacast".}
proc fcQWebChannel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_metacast".}
proc fQWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebChannel_virtualbase_metacall".}
proc fcQWebChannel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_metacall".}
proc fQWebChannel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebChannel_virtualbase_event".}
proc fcQWebChannel_override_virtual_event(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_event".}
proc fQWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebChannel_virtualbase_eventFilter".}
proc fcQWebChannel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_eventFilter".}
proc fQWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_timerEvent".}
proc fcQWebChannel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_timerEvent".}
proc fQWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_childEvent".}
proc fcQWebChannel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_childEvent".}
proc fQWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_customEvent".}
proc fcQWebChannel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_customEvent".}
proc fQWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannel_virtualbase_connectNotify".}
proc fcQWebChannel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_connectNotify".}
proc fQWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannel_virtualbase_disconnectNotify".}
proc fcQWebChannel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_disconnectNotify".}
proc fcQWebChannel_staticMetaObject(): pointer {.importc: "QWebChannel_staticMetaObject".}
proc fcQWebChannel_delete(self: pointer) {.importc: "QWebChannel_delete".}


func init*(T: type QWebChannel, h: ptr cQWebChannel): QWebChannel =
  T(h: h)
proc create*(T: type QWebChannel, ): QWebChannel =

  QWebChannel.init(fcQWebChannel_new())
proc create*(T: type QWebChannel, parent: gen_qobject.QObject): QWebChannel =

  QWebChannel.init(fcQWebChannel_new2(parent.h))
proc metaObject*(self: QWebChannel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebChannel_metaObject(self.h))

proc metacast*(self: QWebChannel, param1: cstring): pointer =

  fcQWebChannel_metacast(self.h, param1)

proc metacall*(self: QWebChannel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebChannel, s: cstring): string =

  let v_ms = fcQWebChannel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: QWebChannel, objects: Table[string,gen_qobject.QObject]): void =

  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objectsk, objectsv in objects:
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: objects_k, len: csize_t(len(objects_k)))
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc registeredObjects*(self: QWebChannel, ): Table[string,gen_qobject.QObject] =

  var v_mm = fcQWebChannel_registeredObjects(self.h)
  var vx_ret: Table[string, gen_qobject.QObject]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qobject.QObject(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc registerObject*(self: QWebChannel, id: string, objectVal: gen_qobject.QObject): void =

  fcQWebChannel_registerObject(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), objectVal.h)

proc deregisterObject*(self: QWebChannel, objectVal: gen_qobject.QObject): void =

  fcQWebChannel_deregisterObject(self.h, objectVal.h)

proc blockUpdates*(self: QWebChannel, ): bool =

  fcQWebChannel_blockUpdates(self.h)

proc setBlockUpdates*(self: QWebChannel, blockVal: bool): void =

  fcQWebChannel_setBlockUpdates(self.h, blockVal)

proc propertyUpdateInterval*(self: QWebChannel, ): cint =

  fcQWebChannel_propertyUpdateInterval(self.h)

proc setPropertyUpdateInterval*(self: QWebChannel, ms: cint): void =

  fcQWebChannel_setPropertyUpdateInterval(self.h, ms)

proc blockUpdatesChanged*(self: QWebChannel, blockVal: bool): void =

  fcQWebChannel_blockUpdatesChanged(self.h, blockVal)

proc miqt_exec_callback_QWebChannel_blockUpdatesChanged(slot: int, blockVal: bool) {.exportc.} =
  type Cb = proc(blockVal: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = blockVal


  nimfunc[](slotval1)

proc onblockUpdatesChanged*(self: QWebChannel, slot: proc(blockVal: bool)) =
  type Cb = proc(blockVal: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebChannel_connect_blockUpdatesChanged(self.h, cast[int](addr tmp[]))
proc connectTo*(self: QWebChannel, transport: gen_qwebchannelabstracttransport.QWebChannelAbstractTransport): void =

  fcQWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: QWebChannel, transport: gen_qwebchannelabstracttransport.QWebChannelAbstractTransport): void =

  fcQWebChannel_disconnectFrom(self.h, transport.h)

proc tr2*(_: type QWebChannel, s: cstring, c: cstring): string =

  let v_ms = fcQWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebChannel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QWebChannel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQWebChannel_virtualbase_metaObject(self.h))

type QWebChannelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QWebChannel, slot: proc(super: QWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_metaObject(self: ptr cQWebChannel, slot: int): pointer {.exportc: "miqt_exec_callback_QWebChannel_metaObject ".} =
  type Cb = proc(super: QWebChannelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QWebChannel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QWebChannel, param1: cstring): pointer =


  fQWebChannel_virtualbase_metacast(self.h, param1)

type QWebChannelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QWebChannel, slot: proc(super: QWebChannelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_metacast(self: ptr cQWebChannel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebChannel_metacast ".} =
  type Cb = proc(super: QWebChannelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QWebChannel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QWebChannel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebChannelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebChannel, slot: proc(super: QWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_metacall(self: ptr cQWebChannel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebChannel_metacall ".} =
  type Cb = proc(super: QWebChannelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebChannel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QWebChannel, event: gen_qcoreevent.QEvent): bool =


  fQWebChannel_virtualbase_event(self.h, event.h)

type QWebChanneleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebChannel, slot: proc(super: QWebChanneleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebChanneleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_event(self: ptr cQWebChannel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannel_event ".} =
  type Cb = proc(super: QWebChanneleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebChannel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebChanneleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebChannel, slot: proc(super: QWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_eventFilter(self: ptr cQWebChannel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannel_eventFilter ".} =
  type Cb = proc(super: QWebChanneleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebChannel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebChannel, event: gen_qcoreevent.QTimerEvent): void =


  fQWebChannel_virtualbase_timerEvent(self.h, event.h)

type QWebChanneltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebChannel, slot: proc(super: QWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_timerEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_timerEvent ".} =
  type Cb = proc(super: QWebChanneltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebChannel, event: gen_qcoreevent.QChildEvent): void =


  fQWebChannel_virtualbase_childEvent(self.h, event.h)

type QWebChannelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebChannel, slot: proc(super: QWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_childEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_childEvent ".} =
  type Cb = proc(super: QWebChannelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebChannel, event: gen_qcoreevent.QEvent): void =


  fQWebChannel_virtualbase_customEvent(self.h, event.h)

type QWebChannelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebChannel, slot: proc(super: QWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_customEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_customEvent ".} =
  type Cb = proc(super: QWebChannelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebChannel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebChannel, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebChannel_virtualbase_connectNotify(self.h, signal.h)

type QWebChannelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebChannel, slot: proc(super: QWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_connectNotify(self: ptr cQWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_connectNotify ".} =
  type Cb = proc(super: QWebChannelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebChannel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebChannel, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

type QWebChanneldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebChannel, slot: proc(super: QWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_disconnectNotify(self: ptr cQWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_disconnectNotify ".} =
  type Cb = proc(super: QWebChanneldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebChannel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebChannel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebChannel_staticMetaObject())
proc delete*(self: QWebChannel) =
  fcQWebChannel_delete(self.h)
