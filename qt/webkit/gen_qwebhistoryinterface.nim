import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebhistoryinterface.cpp", cflags).}


import gen_qwebhistoryinterface_types
export gen_qwebhistoryinterface_types

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

type cQWebHistoryInterface*{.exportc: "QWebHistoryInterface", incompleteStruct.} = object

proc fcQWebHistoryInterface_new(): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new".}
proc fcQWebHistoryInterface_new2(parent: pointer): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new2".}
proc fcQWebHistoryInterface_metaObject(self: pointer, ): pointer {.importc: "QWebHistoryInterface_metaObject".}
proc fcQWebHistoryInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHistoryInterface_metacast".}
proc fcQWebHistoryInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHistoryInterface_metacall".}
proc fcQWebHistoryInterface_tr(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr".}
proc fcQWebHistoryInterface_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf8".}
proc fcQWebHistoryInterface_setDefaultInterface(defaultInterface: pointer): void {.importc: "QWebHistoryInterface_setDefaultInterface".}
proc fcQWebHistoryInterface_defaultInterface(): pointer {.importc: "QWebHistoryInterface_defaultInterface".}
proc fcQWebHistoryInterface_historyContains(self: pointer, url: struct_miqt_string): bool {.importc: "QWebHistoryInterface_historyContains".}
proc fcQWebHistoryInterface_addHistoryEntry(self: pointer, url: struct_miqt_string): void {.importc: "QWebHistoryInterface_addHistoryEntry".}
proc fcQWebHistoryInterface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr2".}
proc fcQWebHistoryInterface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_tr3".}
proc fcQWebHistoryInterface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf82".}
proc fcQWebHistoryInterface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf83".}
proc fQWebHistoryInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebHistoryInterface_virtualbase_metacall".}
proc fcQWebHistoryInterface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_metacall".}
proc fcQWebHistoryInterface_override_virtual_historyContains(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_historyContains".}
proc fcQWebHistoryInterface_override_virtual_addHistoryEntry(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_addHistoryEntry".}
proc fQWebHistoryInterface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebHistoryInterface_virtualbase_event".}
proc fcQWebHistoryInterface_override_virtual_event(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_event".}
proc fQWebHistoryInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebHistoryInterface_virtualbase_eventFilter".}
proc fcQWebHistoryInterface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_eventFilter".}
proc fQWebHistoryInterface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_timerEvent".}
proc fcQWebHistoryInterface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_timerEvent".}
proc fQWebHistoryInterface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_childEvent".}
proc fcQWebHistoryInterface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_childEvent".}
proc fQWebHistoryInterface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_customEvent".}
proc fcQWebHistoryInterface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_customEvent".}
proc fQWebHistoryInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebHistoryInterface_virtualbase_connectNotify".}
proc fcQWebHistoryInterface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_connectNotify".}
proc fQWebHistoryInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebHistoryInterface_virtualbase_disconnectNotify".}
proc fcQWebHistoryInterface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_disconnectNotify".}
proc fcQWebHistoryInterface_delete(self: pointer) {.importc: "QWebHistoryInterface_delete".}


func init*(T: type QWebHistoryInterface, h: ptr cQWebHistoryInterface): QWebHistoryInterface =
  T(h: h)
proc create*(T: type QWebHistoryInterface, ): QWebHistoryInterface =

  QWebHistoryInterface.init(fcQWebHistoryInterface_new())
proc create*(T: type QWebHistoryInterface, parent: gen_qobject.QObject): QWebHistoryInterface =

  QWebHistoryInterface.init(fcQWebHistoryInterface_new2(parent.h))
proc metaObject*(self: QWebHistoryInterface, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebHistoryInterface_metaObject(self.h))

proc metacast*(self: QWebHistoryInterface, param1: cstring): pointer =

  fcQWebHistoryInterface_metacast(self.h, param1)

proc metacall*(self: QWebHistoryInterface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebHistoryInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebHistoryInterface, s: cstring): string =

  let v_ms = fcQWebHistoryInterface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebHistoryInterface, s: cstring): string =

  let v_ms = fcQWebHistoryInterface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultInterface*(_: type QWebHistoryInterface, defaultInterface: QWebHistoryInterface): void =

  fcQWebHistoryInterface_setDefaultInterface(defaultInterface.h)

proc defaultInterface*(_: type QWebHistoryInterface, ): QWebHistoryInterface =

  QWebHistoryInterface(h: fcQWebHistoryInterface_defaultInterface())

proc historyContains*(self: QWebHistoryInterface, url: string): bool =

  fcQWebHistoryInterface_historyContains(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc addHistoryEntry*(self: QWebHistoryInterface, url: string): void =

  fcQWebHistoryInterface_addHistoryEntry(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc tr2*(_: type QWebHistoryInterface, s: cstring, c: cstring): string =

  let v_ms = fcQWebHistoryInterface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebHistoryInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebHistoryInterface, s: cstring, c: cstring): string =

  let v_ms = fcQWebHistoryInterface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebHistoryInterface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebHistoryInterface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebHistoryInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebHistoryInterfacemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_metacall(self: ptr cQWebHistoryInterface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebHistoryInterface_metacall ".} =
  type Cb = proc(super: QWebHistoryInterfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebHistoryInterface(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QWebHistoryInterfacehistoryContainsBase* = proc(url: string): bool
proc onhistoryContains*(self: QWebHistoryInterface, slot: proc(url: string): bool) =
  # TODO check subclass
  type Cb = proc(url: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_historyContains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_historyContains(self: ptr cQWebHistoryInterface, slot: int, url: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_historyContains ".} =
  type Cb = proc(url: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QWebHistoryInterfaceaddHistoryEntryBase* = proc(url: string): void
proc onaddHistoryEntry*(self: QWebHistoryInterface, slot: proc(url: string): void) =
  # TODO check subclass
  type Cb = proc(url: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_addHistoryEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_addHistoryEntry(self: ptr cQWebHistoryInterface, slot: int, url: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_addHistoryEntry ".} =
  type Cb = proc(url: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QWebHistoryInterface, event: gen_qcoreevent.QEvent): bool =


  fQWebHistoryInterface_virtualbase_event(self.h, event.h)

type QWebHistoryInterfaceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfaceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_event(self: ptr cQWebHistoryInterface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_event ".} =
  type Cb = proc(super: QWebHistoryInterfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebHistoryInterface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebHistoryInterface, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebHistoryInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebHistoryInterfaceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_eventFilter(self: ptr cQWebHistoryInterface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_eventFilter ".} =
  type Cb = proc(super: QWebHistoryInterfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebHistoryInterface(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebHistoryInterface, event: gen_qcoreevent.QTimerEvent): void =


  fQWebHistoryInterface_virtualbase_timerEvent(self.h, event.h)

type QWebHistoryInterfacetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_timerEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_timerEvent ".} =
  type Cb = proc(super: QWebHistoryInterfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebHistoryInterface(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebHistoryInterface, event: gen_qcoreevent.QChildEvent): void =


  fQWebHistoryInterface_virtualbase_childEvent(self.h, event.h)

type QWebHistoryInterfacechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfacechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_childEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_childEvent ".} =
  type Cb = proc(super: QWebHistoryInterfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebHistoryInterface(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebHistoryInterface, event: gen_qcoreevent.QEvent): void =


  fQWebHistoryInterface_virtualbase_customEvent(self.h, event.h)

type QWebHistoryInterfacecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfacecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_customEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_customEvent ".} =
  type Cb = proc(super: QWebHistoryInterfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebHistoryInterface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebHistoryInterface, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebHistoryInterface_virtualbase_connectNotify(self.h, signal.h)

type QWebHistoryInterfaceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_connectNotify(self: ptr cQWebHistoryInterface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_connectNotify ".} =
  type Cb = proc(super: QWebHistoryInterfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebHistoryInterface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebHistoryInterface, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebHistoryInterface_virtualbase_disconnectNotify(self.h, signal.h)

type QWebHistoryInterfacedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebHistoryInterface, slot: proc(super: QWebHistoryInterfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebHistoryInterfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_disconnectNotify(self: ptr cQWebHistoryInterface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_disconnectNotify ".} =
  type Cb = proc(super: QWebHistoryInterfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebHistoryInterface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWebHistoryInterface) =
  fcQWebHistoryInterface_delete(self.h)
