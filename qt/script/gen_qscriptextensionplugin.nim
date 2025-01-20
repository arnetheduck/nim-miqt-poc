import Qt5Script_libs

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

const cflags = gorge("pkg-config -cflags Qt5Script")
{.compile("gen_qscriptextensionplugin.cpp", cflags).}


import gen_qscriptextensionplugin_types
export gen_qscriptextensionplugin_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscriptengine,
  gen_qscriptvalue
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscriptengine,
  gen_qscriptvalue

type cQScriptExtensionPlugin*{.exportc: "QScriptExtensionPlugin", incompleteStruct.} = object

proc fcQScriptExtensionPlugin_new(): ptr cQScriptExtensionPlugin {.importc: "QScriptExtensionPlugin_new".}
proc fcQScriptExtensionPlugin_new2(parent: pointer): ptr cQScriptExtensionPlugin {.importc: "QScriptExtensionPlugin_new2".}
proc fcQScriptExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QScriptExtensionPlugin_metaObject".}
proc fcQScriptExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QScriptExtensionPlugin_metacast".}
proc fcQScriptExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScriptExtensionPlugin_metacall".}
proc fcQScriptExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QScriptExtensionPlugin_tr".}
proc fcQScriptExtensionPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QScriptExtensionPlugin_trUtf8".}
proc fcQScriptExtensionPlugin_keys(self: pointer, ): struct_miqt_array {.importc: "QScriptExtensionPlugin_keys".}
proc fcQScriptExtensionPlugin_initialize(self: pointer, key: struct_miqt_string, engine: pointer): void {.importc: "QScriptExtensionPlugin_initialize".}
proc fcQScriptExtensionPlugin_setupPackage(self: pointer, key: struct_miqt_string, engine: pointer): pointer {.importc: "QScriptExtensionPlugin_setupPackage".}
proc fcQScriptExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScriptExtensionPlugin_tr2".}
proc fcQScriptExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScriptExtensionPlugin_tr3".}
proc fcQScriptExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScriptExtensionPlugin_trUtf82".}
proc fcQScriptExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScriptExtensionPlugin_trUtf83".}
proc fQScriptExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QScriptExtensionPlugin_virtualbase_metaObject".}
proc fcQScriptExtensionPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_metaObject".}
proc fQScriptExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QScriptExtensionPlugin_virtualbase_metacast".}
proc fcQScriptExtensionPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_metacast".}
proc fQScriptExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScriptExtensionPlugin_virtualbase_metacall".}
proc fcQScriptExtensionPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_metacall".}
proc fcQScriptExtensionPlugin_override_virtual_keys(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_keys".}
proc fcQScriptExtensionPlugin_override_virtual_initialize(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_initialize".}
proc fQScriptExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QScriptExtensionPlugin_virtualbase_event".}
proc fcQScriptExtensionPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_event".}
proc fQScriptExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QScriptExtensionPlugin_virtualbase_eventFilter".}
proc fcQScriptExtensionPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_eventFilter".}
proc fQScriptExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QScriptExtensionPlugin_virtualbase_timerEvent".}
proc fcQScriptExtensionPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_timerEvent".}
proc fQScriptExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScriptExtensionPlugin_virtualbase_childEvent".}
proc fcQScriptExtensionPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_childEvent".}
proc fQScriptExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScriptExtensionPlugin_virtualbase_customEvent".}
proc fcQScriptExtensionPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_customEvent".}
proc fQScriptExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScriptExtensionPlugin_virtualbase_connectNotify".}
proc fcQScriptExtensionPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_connectNotify".}
proc fQScriptExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScriptExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQScriptExtensionPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScriptExtensionPlugin_override_virtual_disconnectNotify".}
proc fcQScriptExtensionPlugin_staticMetaObject(): pointer {.importc: "QScriptExtensionPlugin_staticMetaObject".}
proc fcQScriptExtensionPlugin_delete(self: pointer) {.importc: "QScriptExtensionPlugin_delete".}


func init*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, h: ptr cQScriptExtensionPlugin): gen_qscriptextensionplugin_types.QScriptExtensionPlugin =
  T(h: h)
proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, ): gen_qscriptextensionplugin_types.QScriptExtensionPlugin =

  gen_qscriptextensionplugin_types.QScriptExtensionPlugin.init(fcQScriptExtensionPlugin_new())
proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, parent: gen_qobject.QObject): gen_qscriptextensionplugin_types.QScriptExtensionPlugin =

  gen_qscriptextensionplugin_types.QScriptExtensionPlugin.init(fcQScriptExtensionPlugin_new2(parent.h))
proc metaObject*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQScriptExtensionPlugin_metaObject(self.h))

proc metacast*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cstring): pointer =

  fcQScriptExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =

  fcQScriptExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring): string =

  let v_ms = fcQScriptExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring): string =

  let v_ms = fcQScriptExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc keys*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, ): seq[string] =

  var v_ma = fcQScriptExtensionPlugin_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc initialize*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, key: string, engine: gen_qscriptengine.QScriptEngine): void =

  fcQScriptExtensionPlugin_initialize(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), engine.h)

proc setupPackage*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, key: string, engine: gen_qscriptengine.QScriptEngine): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptExtensionPlugin_setupPackage(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), engine.h))

proc tr2*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQScriptExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScriptExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQScriptExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScriptExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QScriptExtensionPluginmetaObject*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQScriptExtensionPlugin_virtualbase_metaObject(self.h))

type QScriptExtensionPluginmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_metaObject(self: ptr cQScriptExtensionPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_metaObject ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScriptExtensionPluginmetacast*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cstring): pointer =

  fQScriptExtensionPlugin_virtualbase_metacast(self.h, param1)

type QScriptExtensionPluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginmetacastProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_metacast(self: ptr cQScriptExtensionPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_metacast ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptExtensionPluginmetacall*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =

  fQScriptExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScriptExtensionPluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginmetacallProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_metacall(self: ptr cQScriptExtensionPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_metacall ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QScriptExtensionPluginkeysProc* = proc(): seq[string]
proc onkeys*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginkeysProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginkeysProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_keys(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_keys(self: ptr cQScriptExtensionPlugin, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_keys ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginkeysProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
type QScriptExtensionPlugininitializeProc* = proc(key: string, engine: gen_qscriptengine.QScriptEngine): void
proc oninitialize*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugininitializeProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugininitializeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_initialize(self: ptr cQScriptExtensionPlugin, slot: int, key: struct_miqt_string, engine: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_initialize ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugininitializeProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qscriptengine.QScriptEngine(h: engine)


  nimfunc[](slotval1, slotval2)
proc QScriptExtensionPluginevent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent.QEvent): bool =

  fQScriptExtensionPlugin_virtualbase_event(self.h, event.h)

type QScriptExtensionPlugineventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugineventProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_event(self: ptr cQScriptExtensionPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_event ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptExtensionPlugineventFilter*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQScriptExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QScriptExtensionPlugineventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_eventFilter(self: ptr cQScriptExtensionPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QScriptExtensionPlugintimerEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent.QTimerEvent): void =

  fQScriptExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

type QScriptExtensionPlugintimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_timerEvent(self: ptr cQScriptExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QScriptExtensionPluginchildEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent.QChildEvent): void =

  fQScriptExtensionPlugin_virtualbase_childEvent(self.h, event.h)

type QScriptExtensionPluginchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_childEvent(self: ptr cQScriptExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_childEvent ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QScriptExtensionPlugincustomEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent.QEvent): void =

  fQScriptExtensionPlugin_virtualbase_customEvent(self.h, event.h)

type QScriptExtensionPlugincustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_customEvent(self: ptr cQScriptExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_customEvent ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QScriptExtensionPluginconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =

  fQScriptExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

type QScriptExtensionPluginconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_connectNotify(self: ptr cQScriptExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QScriptExtensionPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QScriptExtensionPlugindisconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: gen_qmetaobject.QMetaMethod): void =

  fQScriptExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QScriptExtensionPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, slot: QScriptExtensionPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionPlugin_disconnectNotify(self: ptr cQScriptExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QScriptExtensionPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQScriptExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin) =
  fcQScriptExtensionPlugin_delete(self.h)
