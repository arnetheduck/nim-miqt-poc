import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlfileselector.cpp", cflags).}


import gen_qqmlfileselector_types
export gen_qqmlfileselector_types

import
  gen_qcoreevent,
  gen_qfileselector,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine
export
  gen_qcoreevent,
  gen_qfileselector,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine

type cQQmlFileSelector*{.exportc: "QQmlFileSelector", incompleteStruct.} = object

proc fcQQmlFileSelector_new(engine: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new".}
proc fcQQmlFileSelector_new2(engine: pointer, parent: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new2".}
proc fcQQmlFileSelector_metaObject(self: pointer, ): pointer {.importc: "QQmlFileSelector_metaObject".}
proc fcQQmlFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_metacast".}
proc fcQQmlFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_metacall".}
proc fcQQmlFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr".}
proc fcQQmlFileSelector_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_trUtf8".}
proc fcQQmlFileSelector_selector(self: pointer, ): pointer {.importc: "QQmlFileSelector_selector".}
proc fcQQmlFileSelector_setSelector(self: pointer, selector: pointer): void {.importc: "QQmlFileSelector_setSelector".}
proc fcQQmlFileSelector_setExtraSelectors(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectors".}
proc fcQQmlFileSelector_setExtraSelectorsWithStrings(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectorsWithStrings".}
proc fcQQmlFileSelector_get(param1: pointer): pointer {.importc: "QQmlFileSelector_get".}
proc fcQQmlFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr2".}
proc fcQQmlFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_tr3".}
proc fcQQmlFileSelector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_trUtf82".}
proc fcQQmlFileSelector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_trUtf83".}
proc fQQmlFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlFileSelector_virtualbase_metacall".}
proc fcQQmlFileSelector_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_metacall".}
proc fQQmlFileSelector_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlFileSelector_virtualbase_event".}
proc fcQQmlFileSelector_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_event".}
proc fQQmlFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlFileSelector_virtualbase_eventFilter".}
proc fcQQmlFileSelector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_eventFilter".}
proc fQQmlFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_timerEvent".}
proc fcQQmlFileSelector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_timerEvent".}
proc fQQmlFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_childEvent".}
proc fcQQmlFileSelector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_childEvent".}
proc fQQmlFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_customEvent".}
proc fcQQmlFileSelector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_customEvent".}
proc fQQmlFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlFileSelector_virtualbase_connectNotify".}
proc fcQQmlFileSelector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_connectNotify".}
proc fQQmlFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlFileSelector_virtualbase_disconnectNotify".}
proc fcQQmlFileSelector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_disconnectNotify".}
proc fcQQmlFileSelector_staticMetaObject(): pointer {.importc: "QQmlFileSelector_staticMetaObject".}
proc fcQQmlFileSelector_delete(self: pointer) {.importc: "QQmlFileSelector_delete".}


func init*(T: type QQmlFileSelector, h: ptr cQQmlFileSelector): QQmlFileSelector =
  T(h: h)
proc create*(T: type QQmlFileSelector, engine: gen_qqmlengine.QQmlEngine): QQmlFileSelector =

  QQmlFileSelector.init(fcQQmlFileSelector_new(engine.h))
proc create*(T: type QQmlFileSelector, engine: gen_qqmlengine.QQmlEngine, parent: gen_qobject.QObject): QQmlFileSelector =

  QQmlFileSelector.init(fcQQmlFileSelector_new2(engine.h, parent.h))
proc metaObject*(self: QQmlFileSelector, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlFileSelector_metaObject(self.h))

proc metacast*(self: QQmlFileSelector, param1: cstring): pointer =

  fcQQmlFileSelector_metacast(self.h, param1)

proc metacall*(self: QQmlFileSelector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlFileSelector, s: cstring): string =

  let v_ms = fcQQmlFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlFileSelector, s: cstring): string =

  let v_ms = fcQQmlFileSelector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selector*(self: QQmlFileSelector, ): gen_qfileselector.QFileSelector =

  gen_qfileselector.QFileSelector(h: fcQQmlFileSelector_selector(self.h))

proc setSelector*(self: QQmlFileSelector, selector: gen_qfileselector.QFileSelector): void =

  fcQQmlFileSelector_setSelector(self.h, selector.h)

proc setExtraSelectors*(self: QQmlFileSelector, strings: seq[string]): void =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc setExtraSelectorsWithStrings*(self: QQmlFileSelector, strings: seq[string]): void =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectorsWithStrings(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc get*(_: type QQmlFileSelector, param1: gen_qqmlengine.QQmlEngine): QQmlFileSelector =

  QQmlFileSelector(h: fcQQmlFileSelector_get(param1.h))

proc tr2*(_: type QQmlFileSelector, s: cstring, c: cstring): string =

  let v_ms = fcQQmlFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlFileSelector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlFileSelector, s: cstring, c: cstring): string =

  let v_ms = fcQQmlFileSelector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlFileSelector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlFileSelector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QQmlFileSelector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlFileSelectormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_metacall(self: ptr cQQmlFileSelector, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlFileSelector_metacall ".} =
  type Cb = proc(super: QQmlFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlFileSelector(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlFileSelector, event: gen_qcoreevent.QEvent): bool =


  fQQmlFileSelector_virtualbase_event(self.h, event.h)

type QQmlFileSelectoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_event(self: ptr cQQmlFileSelector, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlFileSelector_event ".} =
  type Cb = proc(super: QQmlFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlFileSelector, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlFileSelectoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_eventFilter(self: ptr cQQmlFileSelector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlFileSelector_eventFilter ".} =
  type Cb = proc(super: QQmlFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlFileSelector(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlFileSelector, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlFileSelector_virtualbase_timerEvent(self.h, event.h)

type QQmlFileSelectortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_timerEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_timerEvent ".} =
  type Cb = proc(super: QQmlFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlFileSelector, event: gen_qcoreevent.QChildEvent): void =


  fQQmlFileSelector_virtualbase_childEvent(self.h, event.h)

type QQmlFileSelectorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_childEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_childEvent ".} =
  type Cb = proc(super: QQmlFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlFileSelector, event: gen_qcoreevent.QEvent): void =


  fQQmlFileSelector_virtualbase_customEvent(self.h, event.h)

type QQmlFileSelectorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_customEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_customEvent ".} =
  type Cb = proc(super: QQmlFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlFileSelector, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlFileSelector_virtualbase_connectNotify(self.h, signal.h)

type QQmlFileSelectorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_connectNotify(self: ptr cQQmlFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_connectNotify ".} =
  type Cb = proc(super: QQmlFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlFileSelector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlFileSelector, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlFileSelectordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlFileSelector, slot: proc(super: QQmlFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_disconnectNotify(self: ptr cQQmlFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_disconnectNotify ".} =
  type Cb = proc(super: QQmlFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlFileSelector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlFileSelector): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlFileSelector_staticMetaObject())
proc delete*(self: QQmlFileSelector) =
  fcQQmlFileSelector_delete(self.h)
