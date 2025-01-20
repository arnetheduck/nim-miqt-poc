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
{.compile("gen_qqmlextensionplugin.cpp", cflags).}


import gen_qqmlextensionplugin_types
export gen_qqmlextensionplugin_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl

type cQQmlExtensionPlugin*{.exportc: "QQmlExtensionPlugin", incompleteStruct.} = object
type cQQmlEngineExtensionPlugin*{.exportc: "QQmlEngineExtensionPlugin", incompleteStruct.} = object

proc fcQQmlExtensionPlugin_new(): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new".}
proc fcQQmlExtensionPlugin_new2(parent: pointer): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new2".}
proc fcQQmlExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_metaObject".}
proc fcQQmlExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_metacast".}
proc fcQQmlExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_metacall".}
proc fcQQmlExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr".}
proc fcQQmlExtensionPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf8".}
proc fcQQmlExtensionPlugin_baseUrl(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_baseUrl".}
proc fcQQmlExtensionPlugin_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_registerTypes".}
proc fcQQmlExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_initializeEngine".}
proc fcQQmlExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr2".}
proc fcQQmlExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr3".}
proc fcQQmlExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf82".}
proc fcQQmlExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf83".}
proc fQQmlExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlExtensionPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metaObject".}
proc fQQmlExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlExtensionPlugin_virtualbase_metacast".}
proc fcQQmlExtensionPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metacast".}
proc fQQmlExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlExtensionPlugin_virtualbase_metacall".}
proc fcQQmlExtensionPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metacall".}
proc fcQQmlExtensionPlugin_override_virtual_registerTypes(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_registerTypes".}
proc fQQmlExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void{.importc: "QQmlExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlExtensionPlugin_override_virtual_initializeEngine(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_initializeEngine".}
proc fQQmlExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlExtensionPlugin_virtualbase_event".}
proc fcQQmlExtensionPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_event".}
proc fQQmlExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlExtensionPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_eventFilter".}
proc fQQmlExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlExtensionPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_timerEvent".}
proc fQQmlExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlExtensionPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_childEvent".}
proc fQQmlExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlExtensionPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_customEvent".}
proc fQQmlExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlExtensionPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_connectNotify".}
proc fQQmlExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlExtensionPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_disconnectNotify".}
proc fcQQmlExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlExtensionPlugin_staticMetaObject".}
proc fcQQmlExtensionPlugin_delete(self: pointer) {.importc: "QQmlExtensionPlugin_delete".}
proc fcQQmlEngineExtensionPlugin_new(): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new".}
proc fcQQmlEngineExtensionPlugin_new2(parent: pointer): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new2".}
proc fcQQmlEngineExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlEngineExtensionPlugin_metaObject".}
proc fcQQmlEngineExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngineExtensionPlugin_metacast".}
proc fcQQmlEngineExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngineExtensionPlugin_metacall".}
proc fcQQmlEngineExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr".}
proc fcQQmlEngineExtensionPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf8".}
proc fcQQmlEngineExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionPlugin_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr2".}
proc fcQQmlEngineExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr3".}
proc fcQQmlEngineExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf82".}
proc fcQQmlEngineExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf83".}
proc fQQmlEngineExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlEngineExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metaObject".}
proc fQQmlEngineExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlEngineExtensionPlugin_virtualbase_metacast".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metacast".}
proc fQQmlEngineExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlEngineExtensionPlugin_virtualbase_metacall".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metacall".}
proc fQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_override_virtual_initializeEngine(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_initializeEngine".}
proc fQQmlEngineExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlEngineExtensionPlugin_virtualbase_event".}
proc fcQQmlEngineExtensionPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_event".}
proc fQQmlEngineExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlEngineExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlEngineExtensionPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_eventFilter".}
proc fQQmlEngineExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_timerEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_childEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_customEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlEngineExtensionPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_connectNotify".}
proc fQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlEngineExtensionPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_disconnectNotify".}
proc fcQQmlEngineExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlEngineExtensionPlugin_staticMetaObject".}
proc fcQQmlEngineExtensionPlugin_delete(self: pointer) {.importc: "QQmlEngineExtensionPlugin_delete".}


func init*(T: type QQmlExtensionPlugin, h: ptr cQQmlExtensionPlugin): QQmlExtensionPlugin =
  T(h: h)
proc create*(T: type QQmlExtensionPlugin, ): QQmlExtensionPlugin =

  QQmlExtensionPlugin.init(fcQQmlExtensionPlugin_new())
proc create*(T: type QQmlExtensionPlugin, parent: gen_qobject.QObject): QQmlExtensionPlugin =

  QQmlExtensionPlugin.init(fcQQmlExtensionPlugin_new2(parent.h))
proc metaObject*(self: QQmlExtensionPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlExtensionPlugin_metaObject(self.h))

proc metacast*(self: QQmlExtensionPlugin, param1: cstring): pointer =

  fcQQmlExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: QQmlExtensionPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlExtensionPlugin, s: cstring): string =

  let v_ms = fcQQmlExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlExtensionPlugin, s: cstring): string =

  let v_ms = fcQQmlExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: QQmlExtensionPlugin, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlExtensionPlugin_baseUrl(self.h))

proc registerTypes*(self: QQmlExtensionPlugin, uri: cstring): void =

  fcQQmlExtensionPlugin_registerTypes(self.h, uri)

proc initializeEngine*(self: QQmlExtensionPlugin, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =

  fcQQmlExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr2*(_: type QQmlExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQQmlExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQQmlExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQmlExtensionPlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQmlExtensionPlugin_virtualbase_metaObject(self.h))

type QQmlExtensionPluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metaObject(self: ptr cQQmlExtensionPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metaObject ".} =
  type Cb = proc(super: QQmlExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQmlExtensionPlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQmlExtensionPlugin, param1: cstring): pointer =


  fQQmlExtensionPlugin_virtualbase_metacast(self.h, param1)

type QQmlExtensionPluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metacast(self: ptr cQQmlExtensionPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metacast ".} =
  type Cb = proc(super: QQmlExtensionPluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQmlExtensionPlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQmlExtensionPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlExtensionPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metacall(self: ptr cQQmlExtensionPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metacall ".} =
  type Cb = proc(super: QQmlExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlExtensionPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQmlExtensionPluginregisterTypesBase* = proc(uri: cstring): void
proc onregisterTypes*(self: QQmlExtensionPlugin, slot: proc(uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_registerTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_registerTypes(self: ptr cQQmlExtensionPlugin, slot: int, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_registerTypes ".} =
  type Cb = proc(uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (uri)


  nimfunc[](slotval1)
proc callVirtualBase_initializeEngine(self: QQmlExtensionPlugin, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =


  fQQmlExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

type QQmlExtensionPlugininitializeEngineBase* = proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
proc oninitializeEngine*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_initializeEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_initializeEngine(self: ptr cQQmlExtensionPlugin, slot: int, engine: pointer, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_initializeEngine ".} =
  type Cb = proc(super: QQmlExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(engine: gen_qqmlengine.QQmlEngine, uri: cstring): auto =
    callVirtualBase_initializeEngine(QQmlExtensionPlugin(h: self), engine, uri)
  let slotval1 = gen_qqmlengine.QQmlEngine(h: engine)

  let slotval2 = (uri)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_event(self: QQmlExtensionPlugin, event: gen_qcoreevent.QEvent): bool =


  fQQmlExtensionPlugin_virtualbase_event(self.h, event.h)

type QQmlExtensionPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_event(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_event ".} =
  type Cb = proc(super: QQmlExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlExtensionPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlExtensionPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_eventFilter(self: ptr cQQmlExtensionPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_eventFilter ".} =
  type Cb = proc(super: QQmlExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlExtensionPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlExtensionPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

type QQmlExtensionPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_timerEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_timerEvent ".} =
  type Cb = proc(super: QQmlExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlExtensionPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQQmlExtensionPlugin_virtualbase_childEvent(self.h, event.h)

type QQmlExtensionPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_childEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_childEvent ".} =
  type Cb = proc(super: QQmlExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlExtensionPlugin, event: gen_qcoreevent.QEvent): void =


  fQQmlExtensionPlugin_virtualbase_customEvent(self.h, event.h)

type QQmlExtensionPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_customEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_customEvent ".} =
  type Cb = proc(super: QQmlExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

type QQmlExtensionPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_connectNotify(self: ptr cQQmlExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_connectNotify ".} =
  type Cb = proc(super: QQmlExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlExtensionPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlExtensionPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlExtensionPlugin, slot: proc(super: QQmlExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify(self: ptr cQQmlExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify ".} =
  type Cb = proc(super: QQmlExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlExtensionPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlExtensionPlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlExtensionPlugin_staticMetaObject())
proc delete*(self: QQmlExtensionPlugin) =
  fcQQmlExtensionPlugin_delete(self.h)

func init*(T: type QQmlEngineExtensionPlugin, h: ptr cQQmlEngineExtensionPlugin): QQmlEngineExtensionPlugin =
  T(h: h)
proc create*(T: type QQmlEngineExtensionPlugin, ): QQmlEngineExtensionPlugin =

  QQmlEngineExtensionPlugin.init(fcQQmlEngineExtensionPlugin_new())
proc create*(T: type QQmlEngineExtensionPlugin, parent: gen_qobject.QObject): QQmlEngineExtensionPlugin =

  QQmlEngineExtensionPlugin.init(fcQQmlEngineExtensionPlugin_new2(parent.h))
proc metaObject*(self: QQmlEngineExtensionPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlEngineExtensionPlugin_metaObject(self.h))

proc metacast*(self: QQmlEngineExtensionPlugin, param1: cstring): pointer =

  fcQQmlEngineExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: QQmlEngineExtensionPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlEngineExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlEngineExtensionPlugin, s: cstring): string =

  let v_ms = fcQQmlEngineExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlEngineExtensionPlugin, s: cstring): string =

  let v_ms = fcQQmlEngineExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc initializeEngine*(self: QQmlEngineExtensionPlugin, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =

  fcQQmlEngineExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr2*(_: type QQmlEngineExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQQmlEngineExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlEngineExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlEngineExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlEngineExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQQmlEngineExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlEngineExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlEngineExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQmlEngineExtensionPlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQmlEngineExtensionPlugin_virtualbase_metaObject(self.h))

type QQmlEngineExtensionPluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject(self: ptr cQQmlEngineExtensionPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject ".} =
  type Cb = proc(super: QQmlEngineExtensionPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQmlEngineExtensionPlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQmlEngineExtensionPlugin, param1: cstring): pointer =


  fQQmlEngineExtensionPlugin_virtualbase_metacast(self.h, param1)

type QQmlEngineExtensionPluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metacast(self: ptr cQQmlEngineExtensionPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metacast ".} =
  type Cb = proc(super: QQmlEngineExtensionPluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQmlEngineExtensionPlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQmlEngineExtensionPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlEngineExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlEngineExtensionPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metacall(self: ptr cQQmlEngineExtensionPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metacall ".} =
  type Cb = proc(super: QQmlEngineExtensionPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlEngineExtensionPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_initializeEngine(self: QQmlEngineExtensionPlugin, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =


  fQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

type QQmlEngineExtensionPlugininitializeEngineBase* = proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
proc oninitializeEngine*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_initializeEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine(self: ptr cQQmlEngineExtensionPlugin, slot: int, engine: pointer, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugininitializeEngineBase, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(engine: gen_qqmlengine.QQmlEngine, uri: cstring): auto =
    callVirtualBase_initializeEngine(QQmlEngineExtensionPlugin(h: self), engine, uri)
  let slotval1 = gen_qqmlengine.QQmlEngine(h: engine)

  let slotval2 = (uri)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_event(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent.QEvent): bool =


  fQQmlEngineExtensionPlugin_virtualbase_event(self.h, event.h)

type QQmlEngineExtensionPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_event(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_event ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlEngineExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlEngineExtensionPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlEngineExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlEngineExtensionPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter(self: ptr cQQmlEngineExtensionPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlEngineExtensionPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlEngineExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

type QQmlEngineExtensionPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlEngineExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQQmlEngineExtensionPlugin_virtualbase_childEvent(self.h, event.h)

type QQmlEngineExtensionPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent ".} =
  type Cb = proc(super: QQmlEngineExtensionPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlEngineExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent.QEvent): void =


  fQQmlEngineExtensionPlugin_virtualbase_customEvent(self.h, event.h)

type QQmlEngineExtensionPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlEngineExtensionPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlEngineExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlEngineExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

type QQmlEngineExtensionPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify(self: ptr cQQmlEngineExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify ".} =
  type Cb = proc(super: QQmlEngineExtensionPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlEngineExtensionPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlEngineExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlEngineExtensionPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlEngineExtensionPlugin, slot: proc(super: QQmlEngineExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify(self: ptr cQQmlEngineExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify ".} =
  type Cb = proc(super: QQmlEngineExtensionPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlEngineExtensionPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlEngineExtensionPlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlEngineExtensionPlugin_staticMetaObject())
proc delete*(self: QQmlEngineExtensionPlugin) =
  fcQQmlEngineExtensionPlugin_delete(self.h)
