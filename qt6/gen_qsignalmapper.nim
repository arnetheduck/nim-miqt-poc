import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qsignalmapper.cpp", cflags).}


import gen_qsignalmapper_types
export gen_qsignalmapper_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQSignalMapper*{.exportc: "QSignalMapper", incompleteStruct.} = object

proc fcQSignalMapper_new(): ptr cQSignalMapper {.importc: "QSignalMapper_new".}
proc fcQSignalMapper_new2(parent: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new2".}
proc fcQSignalMapper_metaObject(self: pointer, ): pointer {.importc: "QSignalMapper_metaObject".}
proc fcQSignalMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_metacast".}
proc fcQSignalMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_metacall".}
proc fcQSignalMapper_tr(s: cstring): struct_miqt_string {.importc: "QSignalMapper_tr".}
proc fcQSignalMapper_setMapping(self: pointer, sender: pointer, id: cint): void {.importc: "QSignalMapper_setMapping".}
proc fcQSignalMapper_setMapping2(self: pointer, sender: pointer, text: struct_miqt_string): void {.importc: "QSignalMapper_setMapping2".}
proc fcQSignalMapper_setMapping3(self: pointer, sender: pointer, objectVal: pointer): void {.importc: "QSignalMapper_setMapping3".}
proc fcQSignalMapper_removeMappings(self: pointer, sender: pointer): void {.importc: "QSignalMapper_removeMappings".}
proc fcQSignalMapper_mapping(self: pointer, id: cint): pointer {.importc: "QSignalMapper_mapping".}
proc fcQSignalMapper_mappingWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QSignalMapper_mappingWithText".}
proc fcQSignalMapper_mappingWithObject(self: pointer, objectVal: pointer): pointer {.importc: "QSignalMapper_mappingWithObject".}
proc fcQSignalMapper_mappedInt(self: pointer, param1: cint): void {.importc: "QSignalMapper_mappedInt".}
proc fQSignalMapper_connect_mappedInt(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedInt".}
proc fcQSignalMapper_mappedString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedString".}
proc fQSignalMapper_connect_mappedString(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedString".}
proc fcQSignalMapper_mappedObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedObject".}
proc fQSignalMapper_connect_mappedObject(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedObject".}
proc fcQSignalMapper_map(self: pointer, ): void {.importc: "QSignalMapper_map".}
proc fcQSignalMapper_mapWithSender(self: pointer, sender: pointer): void {.importc: "QSignalMapper_mapWithSender".}
proc fcQSignalMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_tr2".}
proc fcQSignalMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_tr3".}
proc fQSignalMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSignalMapper_virtualbase_metacall".}
proc fcQSignalMapper_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_metacall".}
proc fQSignalMapper_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_event".}
proc fcQSignalMapper_override_virtual_event(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_event".}
proc fQSignalMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_eventFilter".}
proc fcQSignalMapper_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_eventFilter".}
proc fQSignalMapper_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_timerEvent".}
proc fcQSignalMapper_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_timerEvent".}
proc fQSignalMapper_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_childEvent".}
proc fcQSignalMapper_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_childEvent".}
proc fQSignalMapper_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_customEvent".}
proc fcQSignalMapper_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_customEvent".}
proc fQSignalMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_connectNotify".}
proc fcQSignalMapper_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_connectNotify".}
proc fQSignalMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_disconnectNotify".}
proc fcQSignalMapper_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_disconnectNotify".}
proc fcQSignalMapper_delete(self: pointer) {.importc: "QSignalMapper_delete".}


func init*(T: type QSignalMapper, h: ptr cQSignalMapper): QSignalMapper =
  T(h: h)
proc create*(T: type QSignalMapper, ): QSignalMapper =

  QSignalMapper.init(fcQSignalMapper_new())
proc create*(T: type QSignalMapper, parent: gen_qobject.QObject): QSignalMapper =

  QSignalMapper.init(fcQSignalMapper_new2(parent.h))
proc metaObject*(self: QSignalMapper, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSignalMapper_metaObject(self.h))

proc metacast*(self: QSignalMapper, param1: cstring): pointer =

  fcQSignalMapper_metacast(self.h, param1)

proc metacall*(self: QSignalMapper, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSignalMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSignalMapper, s: cstring): string =

  let v_ms = fcQSignalMapper_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMapping*(self: QSignalMapper, sender: gen_qobject.QObject, id: cint): void =

  fcQSignalMapper_setMapping(self.h, sender.h, id)

proc setMapping2*(self: QSignalMapper, sender: gen_qobject.QObject, text: string): void =

  fcQSignalMapper_setMapping2(self.h, sender.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMapping3*(self: QSignalMapper, sender: gen_qobject.QObject, objectVal: gen_qobject.QObject): void =

  fcQSignalMapper_setMapping3(self.h, sender.h, objectVal.h)

proc removeMappings*(self: QSignalMapper, sender: gen_qobject.QObject): void =

  fcQSignalMapper_removeMappings(self.h, sender.h)

proc mapping*(self: QSignalMapper, id: cint): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQSignalMapper_mapping(self.h, id))

proc mappingWithText*(self: QSignalMapper, text: string): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQSignalMapper_mappingWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc mappingWithObject*(self: QSignalMapper, objectVal: gen_qobject.QObject): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQSignalMapper_mappingWithObject(self.h, objectVal.h))

proc mappedInt*(self: QSignalMapper, param1: cint): void =

  fcQSignalMapper_mappedInt(self.h, param1)

proc miqt_exec_callback_QSignalMapper_mappedInt(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmappedInt*(self: QSignalMapper, slot: proc(param1: cint)) =
  type Cb = proc(param1: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedInt(self.h, cast[int](addr tmp[]))
proc mappedString*(self: QSignalMapper, param1: string): void =

  fcQSignalMapper_mappedString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QSignalMapper_mappedString(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onmappedString*(self: QSignalMapper, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedString(self.h, cast[int](addr tmp[]))
proc mappedObject*(self: QSignalMapper, param1: gen_qobject.QObject): void =

  fcQSignalMapper_mappedObject(self.h, param1.h)

proc miqt_exec_callback_QSignalMapper_mappedObject(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qobject.QObject)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)


  nimfunc[](slotval1)

proc onmappedObject*(self: QSignalMapper, slot: proc(param1: gen_qobject.QObject)) =
  type Cb = proc(param1: gen_qobject.QObject)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedObject(self.h, cast[int](addr tmp[]))
proc map*(self: QSignalMapper, ): void =

  fcQSignalMapper_map(self.h)

proc mapWithSender*(self: QSignalMapper, sender: gen_qobject.QObject): void =

  fcQSignalMapper_mapWithSender(self.h, sender.h)

proc tr2*(_: type QSignalMapper, s: cstring, c: cstring): string =

  let v_ms = fcQSignalMapper_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSignalMapper, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSignalMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSignalMapper, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSignalMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSignalMappermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSignalMapper, slot: proc(super: QSignalMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSignalMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_metacall(self: ptr cQSignalMapper, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSignalMapper_metacall ".} =
  type Cb = proc(super: QSignalMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSignalMapper(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSignalMapper, event: gen_qcoreevent.QEvent): bool =


  fQSignalMapper_virtualbase_event(self.h, event.h)

type QSignalMappereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSignalMapper, slot: proc(super: QSignalMappereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSignalMappereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_event(self: ptr cQSignalMapper, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_event ".} =
  type Cb = proc(super: QSignalMappereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSignalMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSignalMapper, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSignalMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSignalMappereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSignalMapper, slot: proc(super: QSignalMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSignalMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_eventFilter(self: ptr cQSignalMapper, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_eventFilter ".} =
  type Cb = proc(super: QSignalMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSignalMapper(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSignalMapper, event: gen_qcoreevent.QTimerEvent): void =


  fQSignalMapper_virtualbase_timerEvent(self.h, event.h)

type QSignalMappertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSignalMapper, slot: proc(super: QSignalMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_timerEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_timerEvent ".} =
  type Cb = proc(super: QSignalMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSignalMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSignalMapper, event: gen_qcoreevent.QChildEvent): void =


  fQSignalMapper_virtualbase_childEvent(self.h, event.h)

type QSignalMapperchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSignalMapper, slot: proc(super: QSignalMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_childEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_childEvent ".} =
  type Cb = proc(super: QSignalMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSignalMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSignalMapper, event: gen_qcoreevent.QEvent): void =


  fQSignalMapper_virtualbase_customEvent(self.h, event.h)

type QSignalMappercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSignalMapper, slot: proc(super: QSignalMappercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalMappercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_customEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_customEvent ".} =
  type Cb = proc(super: QSignalMappercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSignalMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSignalMapper, signal: gen_qmetaobject.QMetaMethod): void =


  fQSignalMapper_virtualbase_connectNotify(self.h, signal.h)

type QSignalMapperconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSignalMapper, slot: proc(super: QSignalMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_connectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_connectNotify ".} =
  type Cb = proc(super: QSignalMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSignalMapper(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSignalMapper, signal: gen_qmetaobject.QMetaMethod): void =


  fQSignalMapper_virtualbase_disconnectNotify(self.h, signal.h)

type QSignalMapperdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSignalMapper, slot: proc(super: QSignalMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_disconnectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_disconnectNotify ".} =
  type Cb = proc(super: QSignalMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSignalMapper(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSignalMapper) =
  fcQSignalMapper_delete(self.h)
