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
{.compile("gen_qgenericplugin.cpp", cflags).}


import gen_qgenericplugin_types
export gen_qgenericplugin_types

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

type cQGenericPlugin*{.exportc: "QGenericPlugin", incompleteStruct.} = object

proc fcQGenericPlugin_new(): ptr cQGenericPlugin {.importc: "QGenericPlugin_new".}
proc fcQGenericPlugin_new2(parent: pointer): ptr cQGenericPlugin {.importc: "QGenericPlugin_new2".}
proc fcQGenericPlugin_metaObject(self: pointer, ): pointer {.importc: "QGenericPlugin_metaObject".}
proc fcQGenericPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_metacast".}
proc fcQGenericPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGenericPlugin_metacall".}
proc fcQGenericPlugin_tr(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr".}
proc fcQGenericPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf8".}
proc fcQGenericPlugin_create(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.importc: "QGenericPlugin_create".}
proc fcQGenericPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr2".}
proc fcQGenericPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_tr3".}
proc fcQGenericPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf82".}
proc fcQGenericPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_trUtf83".}
proc fQGenericPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGenericPlugin_virtualbase_metaObject".}
proc fcQGenericPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_metaObject".}
proc fQGenericPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGenericPlugin_virtualbase_metacast".}
proc fcQGenericPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_metacast".}
proc fQGenericPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGenericPlugin_virtualbase_metacall".}
proc fcQGenericPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_metacall".}
proc fcQGenericPlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_create".}
proc fQGenericPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGenericPlugin_virtualbase_event".}
proc fcQGenericPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_event".}
proc fQGenericPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGenericPlugin_virtualbase_eventFilter".}
proc fcQGenericPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_eventFilter".}
proc fQGenericPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_timerEvent".}
proc fcQGenericPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_timerEvent".}
proc fQGenericPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_childEvent".}
proc fcQGenericPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_childEvent".}
proc fQGenericPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGenericPlugin_virtualbase_customEvent".}
proc fcQGenericPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_customEvent".}
proc fQGenericPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGenericPlugin_virtualbase_connectNotify".}
proc fcQGenericPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_connectNotify".}
proc fQGenericPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGenericPlugin_virtualbase_disconnectNotify".}
proc fcQGenericPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGenericPlugin_override_virtual_disconnectNotify".}
proc fcQGenericPlugin_staticMetaObject(): pointer {.importc: "QGenericPlugin_staticMetaObject".}
proc fcQGenericPlugin_delete(self: pointer) {.importc: "QGenericPlugin_delete".}


func init*(T: type QGenericPlugin, h: ptr cQGenericPlugin): QGenericPlugin =
  T(h: h)
proc create*(T: type QGenericPlugin, ): QGenericPlugin =

  QGenericPlugin.init(fcQGenericPlugin_new())
proc create*(T: type QGenericPlugin, parent: gen_qobject.QObject): QGenericPlugin =

  QGenericPlugin.init(fcQGenericPlugin_new2(parent.h))
proc metaObject*(self: QGenericPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGenericPlugin_metaObject(self.h))

proc metacast*(self: QGenericPlugin, param1: cstring): pointer =

  fcQGenericPlugin_metacast(self.h, param1)

proc metacall*(self: QGenericPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGenericPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGenericPlugin, s: cstring): string =

  let v_ms = fcQGenericPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGenericPlugin, s: cstring): string =

  let v_ms = fcQGenericPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QGenericPlugin, name: string, spec: string): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQGenericPlugin_create(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: spec, len: csize_t(len(spec)))))

proc tr2*(_: type QGenericPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQGenericPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGenericPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGenericPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGenericPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQGenericPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGenericPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGenericPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGenericPlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGenericPlugin_virtualbase_metaObject(self.h))

type QGenericPluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGenericPlugin, slot: proc(super: QGenericPluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGenericPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_metaObject(self: ptr cQGenericPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QGenericPlugin_metaObject ".} =
  type Cb = proc(super: QGenericPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGenericPlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGenericPlugin, param1: cstring): pointer =


  fQGenericPlugin_virtualbase_metacast(self.h, param1)

type QGenericPluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGenericPlugin, slot: proc(super: QGenericPluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGenericPluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_metacast(self: ptr cQGenericPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGenericPlugin_metacast ".} =
  type Cb = proc(super: QGenericPluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGenericPlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGenericPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGenericPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGenericPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGenericPlugin, slot: proc(super: QGenericPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGenericPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_metacall(self: ptr cQGenericPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGenericPlugin_metacall ".} =
  type Cb = proc(super: QGenericPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGenericPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QGenericPlugincreateBase* = proc(name: string, spec: string): gen_qobject.QObject
proc oncreate*(self: QGenericPlugin, slot: proc(name: string, spec: string): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(name: string, spec: string): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_create(self: ptr cQGenericPlugin, slot: int, name: struct_miqt_string, spec: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QGenericPlugin_create ".} =
  type Cb = proc(name: string, spec: string): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  let vspec_ms = spec
  let vspecx_ret = string.fromBytes(toOpenArrayByte(vspec_ms.data, 0, int(vspec_ms.len)-1))
  c_free(vspec_ms.data)
  let slotval2 = vspecx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QGenericPlugin, event: gen_qcoreevent.QEvent): bool =


  fQGenericPlugin_virtualbase_event(self.h, event.h)

type QGenericPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGenericPlugin, slot: proc(super: QGenericPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGenericPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_event(self: ptr cQGenericPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGenericPlugin_event ".} =
  type Cb = proc(super: QGenericPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGenericPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGenericPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGenericPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGenericPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGenericPlugin, slot: proc(super: QGenericPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGenericPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_eventFilter(self: ptr cQGenericPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGenericPlugin_eventFilter ".} =
  type Cb = proc(super: QGenericPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGenericPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGenericPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQGenericPlugin_virtualbase_timerEvent(self.h, event.h)

type QGenericPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGenericPlugin, slot: proc(super: QGenericPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGenericPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_timerEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_timerEvent ".} =
  type Cb = proc(super: QGenericPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGenericPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGenericPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQGenericPlugin_virtualbase_childEvent(self.h, event.h)

type QGenericPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGenericPlugin, slot: proc(super: QGenericPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGenericPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_childEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_childEvent ".} =
  type Cb = proc(super: QGenericPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGenericPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGenericPlugin, event: gen_qcoreevent.QEvent): void =


  fQGenericPlugin_virtualbase_customEvent(self.h, event.h)

type QGenericPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGenericPlugin, slot: proc(super: QGenericPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGenericPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_customEvent(self: ptr cQGenericPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_customEvent ".} =
  type Cb = proc(super: QGenericPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGenericPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGenericPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQGenericPlugin_virtualbase_connectNotify(self.h, signal.h)

type QGenericPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGenericPlugin, slot: proc(super: QGenericPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGenericPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_connectNotify(self: ptr cQGenericPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_connectNotify ".} =
  type Cb = proc(super: QGenericPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGenericPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGenericPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQGenericPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QGenericPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGenericPlugin, slot: proc(super: QGenericPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGenericPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGenericPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGenericPlugin_disconnectNotify(self: ptr cQGenericPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGenericPlugin_disconnectNotify ".} =
  type Cb = proc(super: QGenericPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGenericPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGenericPlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGenericPlugin_staticMetaObject())
proc delete*(self: QGenericPlugin) =
  fcQGenericPlugin_delete(self.h)
