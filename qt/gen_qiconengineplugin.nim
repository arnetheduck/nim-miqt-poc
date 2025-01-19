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
{.compile("gen_qiconengineplugin.cpp", cflags).}


import gen_qiconengineplugin_types
export gen_qiconengineplugin_types

import
  gen_qcoreevent,
  gen_qiconengine,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qiconengine,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQIconEnginePlugin*{.exportc: "QIconEnginePlugin", incompleteStruct.} = object

proc fcQIconEnginePlugin_new(): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new".}
proc fcQIconEnginePlugin_new2(parent: pointer): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new2".}
proc fcQIconEnginePlugin_metaObject(self: pointer, ): pointer {.importc: "QIconEnginePlugin_metaObject".}
proc fcQIconEnginePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_metacast".}
proc fcQIconEnginePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_metacall".}
proc fcQIconEnginePlugin_tr(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr".}
proc fcQIconEnginePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf8".}
proc fcQIconEnginePlugin_create(self: pointer, filename: struct_miqt_string): pointer {.importc: "QIconEnginePlugin_create".}
proc fcQIconEnginePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr2".}
proc fcQIconEnginePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_tr3".}
proc fcQIconEnginePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf82".}
proc fcQIconEnginePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf83".}
proc fQIconEnginePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIconEnginePlugin_virtualbase_metacall".}
proc fcQIconEnginePlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_metacall".}
proc fcQIconEnginePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_create".}
proc fQIconEnginePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIconEnginePlugin_virtualbase_event".}
proc fcQIconEnginePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_event".}
proc fQIconEnginePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIconEnginePlugin_virtualbase_eventFilter".}
proc fcQIconEnginePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_eventFilter".}
proc fQIconEnginePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_timerEvent".}
proc fcQIconEnginePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_timerEvent".}
proc fQIconEnginePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_childEvent".}
proc fcQIconEnginePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_childEvent".}
proc fQIconEnginePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIconEnginePlugin_virtualbase_customEvent".}
proc fcQIconEnginePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_customEvent".}
proc fQIconEnginePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIconEnginePlugin_virtualbase_connectNotify".}
proc fcQIconEnginePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_connectNotify".}
proc fQIconEnginePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIconEnginePlugin_virtualbase_disconnectNotify".}
proc fcQIconEnginePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIconEnginePlugin_override_virtual_disconnectNotify".}
proc fcQIconEnginePlugin_staticMetaObject(): pointer {.importc: "QIconEnginePlugin_staticMetaObject".}
proc fcQIconEnginePlugin_delete(self: pointer) {.importc: "QIconEnginePlugin_delete".}


func init*(T: type QIconEnginePlugin, h: ptr cQIconEnginePlugin): QIconEnginePlugin =
  T(h: h)
proc create*(T: type QIconEnginePlugin, ): QIconEnginePlugin =

  QIconEnginePlugin.init(fcQIconEnginePlugin_new())
proc create*(T: type QIconEnginePlugin, parent: gen_qobject.QObject): QIconEnginePlugin =

  QIconEnginePlugin.init(fcQIconEnginePlugin_new2(parent.h))
proc metaObject*(self: QIconEnginePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQIconEnginePlugin_metaObject(self.h))

proc metacast*(self: QIconEnginePlugin, param1: cstring): pointer =

  fcQIconEnginePlugin_metacast(self.h, param1)

proc metacall*(self: QIconEnginePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQIconEnginePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QIconEnginePlugin, s: cstring): string =

  let v_ms = fcQIconEnginePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QIconEnginePlugin, s: cstring): string =

  let v_ms = fcQIconEnginePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QIconEnginePlugin, filename: string): gen_qiconengine.QIconEngine =

  gen_qiconengine.QIconEngine(h: fcQIconEnginePlugin_create(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc tr2*(_: type QIconEnginePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQIconEnginePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIconEnginePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QIconEnginePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQIconEnginePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIconEnginePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QIconEnginePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQIconEnginePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIconEnginePluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_metacall(self: ptr cQIconEnginePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIconEnginePlugin_metacall ".} =
  type Cb = proc(super: QIconEnginePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QIconEnginePlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QIconEnginePlugincreateBase* = proc(filename: string): gen_qiconengine.QIconEngine
proc oncreate*(self: QIconEnginePlugin, slot: proc(filename: string): gen_qiconengine.QIconEngine) =
  # TODO check subclass
  type Cb = proc(filename: string): gen_qiconengine.QIconEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_create(self: ptr cQIconEnginePlugin, slot: int, filename: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QIconEnginePlugin_create ".} =
  type Cb = proc(filename: string): gen_qiconengine.QIconEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval1 = vfilenamex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QIconEnginePlugin, event: gen_qcoreevent.QEvent): bool =


  fQIconEnginePlugin_virtualbase_event(self.h, event.h)

type QIconEnginePlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_event(self: ptr cQIconEnginePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIconEnginePlugin_event ".} =
  type Cb = proc(super: QIconEnginePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QIconEnginePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QIconEnginePlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQIconEnginePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIconEnginePlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_eventFilter(self: ptr cQIconEnginePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIconEnginePlugin_eventFilter ".} =
  type Cb = proc(super: QIconEnginePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QIconEnginePlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QIconEnginePlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQIconEnginePlugin_virtualbase_timerEvent(self.h, event.h)

type QIconEnginePlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_timerEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_timerEvent ".} =
  type Cb = proc(super: QIconEnginePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QIconEnginePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QIconEnginePlugin, event: gen_qcoreevent.QChildEvent): void =


  fQIconEnginePlugin_virtualbase_childEvent(self.h, event.h)

type QIconEnginePluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_childEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_childEvent ".} =
  type Cb = proc(super: QIconEnginePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QIconEnginePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QIconEnginePlugin, event: gen_qcoreevent.QEvent): void =


  fQIconEnginePlugin_virtualbase_customEvent(self.h, event.h)

type QIconEnginePlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_customEvent(self: ptr cQIconEnginePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_customEvent ".} =
  type Cb = proc(super: QIconEnginePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QIconEnginePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QIconEnginePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQIconEnginePlugin_virtualbase_connectNotify(self.h, signal.h)

type QIconEnginePluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_connectNotify(self: ptr cQIconEnginePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_connectNotify ".} =
  type Cb = proc(super: QIconEnginePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QIconEnginePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QIconEnginePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQIconEnginePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QIconEnginePlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QIconEnginePlugin, slot: proc(super: QIconEnginePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEnginePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEnginePlugin_disconnectNotify(self: ptr cQIconEnginePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIconEnginePlugin_disconnectNotify ".} =
  type Cb = proc(super: QIconEnginePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QIconEnginePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QIconEnginePlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQIconEnginePlugin_staticMetaObject())
proc delete*(self: QIconEnginePlugin) =
  fcQIconEnginePlugin_delete(self.h)
