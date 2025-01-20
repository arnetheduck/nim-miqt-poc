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
{.compile("gen_qaccessiblebridge.cpp", cflags).}


import gen_qaccessiblebridge_types
export gen_qaccessiblebridge_types

import
  gen_qaccessible,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaccessible,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAccessibleBridge*{.exportc: "QAccessibleBridge", incompleteStruct.} = object
type cQAccessibleBridgePlugin*{.exportc: "QAccessibleBridgePlugin", incompleteStruct.} = object

proc fcQAccessibleBridge_setRootObject(self: pointer, rootObject: pointer): void {.importc: "QAccessibleBridge_setRootObject".}
proc fcQAccessibleBridge_notifyAccessibilityUpdate(self: pointer, event: pointer): void {.importc: "QAccessibleBridge_notifyAccessibilityUpdate".}
proc fcQAccessibleBridge_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleBridge_operatorAssign".}
proc fcQAccessibleBridge_delete(self: pointer) {.importc: "QAccessibleBridge_delete".}
proc fcQAccessibleBridgePlugin_new(): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new".}
proc fcQAccessibleBridgePlugin_new2(parent: pointer): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new2".}
proc fcQAccessibleBridgePlugin_metaObject(self: pointer, ): pointer {.importc: "QAccessibleBridgePlugin_metaObject".}
proc fcQAccessibleBridgePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibleBridgePlugin_metacast".}
proc fcQAccessibleBridgePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibleBridgePlugin_metacall".}
proc fcQAccessibleBridgePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr".}
proc fcQAccessibleBridgePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf8".}
proc fcQAccessibleBridgePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QAccessibleBridgePlugin_create".}
proc fcQAccessibleBridgePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr2".}
proc fcQAccessibleBridgePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr3".}
proc fcQAccessibleBridgePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf82".}
proc fcQAccessibleBridgePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf83".}
proc fQAccessibleBridgePlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAccessibleBridgePlugin_virtualbase_metaObject".}
proc fcQAccessibleBridgePlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_metaObject".}
proc fQAccessibleBridgePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAccessibleBridgePlugin_virtualbase_metacast".}
proc fcQAccessibleBridgePlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_metacast".}
proc fQAccessibleBridgePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAccessibleBridgePlugin_virtualbase_metacall".}
proc fcQAccessibleBridgePlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_metacall".}
proc fcQAccessibleBridgePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_create".}
proc fQAccessibleBridgePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAccessibleBridgePlugin_virtualbase_event".}
proc fcQAccessibleBridgePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_event".}
proc fQAccessibleBridgePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAccessibleBridgePlugin_virtualbase_eventFilter".}
proc fcQAccessibleBridgePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_eventFilter".}
proc fQAccessibleBridgePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAccessibleBridgePlugin_virtualbase_timerEvent".}
proc fcQAccessibleBridgePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_timerEvent".}
proc fQAccessibleBridgePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAccessibleBridgePlugin_virtualbase_childEvent".}
proc fcQAccessibleBridgePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_childEvent".}
proc fQAccessibleBridgePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAccessibleBridgePlugin_virtualbase_customEvent".}
proc fcQAccessibleBridgePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_customEvent".}
proc fQAccessibleBridgePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAccessibleBridgePlugin_virtualbase_connectNotify".}
proc fcQAccessibleBridgePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_connectNotify".}
proc fQAccessibleBridgePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAccessibleBridgePlugin_virtualbase_disconnectNotify".}
proc fcQAccessibleBridgePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAccessibleBridgePlugin_override_virtual_disconnectNotify".}
proc fcQAccessibleBridgePlugin_staticMetaObject(): pointer {.importc: "QAccessibleBridgePlugin_staticMetaObject".}
proc fcQAccessibleBridgePlugin_delete(self: pointer) {.importc: "QAccessibleBridgePlugin_delete".}


func init*(T: type gen_qaccessiblebridge_types.QAccessibleBridge, h: ptr cQAccessibleBridge): gen_qaccessiblebridge_types.QAccessibleBridge =
  T(h: h)
proc setRootObject*(self: gen_qaccessiblebridge_types.QAccessibleBridge, rootObject: gen_qaccessible.QAccessibleInterface): void =

  fcQAccessibleBridge_setRootObject(self.h, rootObject.h)

proc notifyAccessibilityUpdate*(self: gen_qaccessiblebridge_types.QAccessibleBridge, event: gen_qaccessible.QAccessibleEvent): void =

  fcQAccessibleBridge_notifyAccessibilityUpdate(self.h, event.h)

proc operatorAssign*(self: gen_qaccessiblebridge_types.QAccessibleBridge, param1: gen_qaccessiblebridge_types.QAccessibleBridge): void =

  fcQAccessibleBridge_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessiblebridge_types.QAccessibleBridge) =
  fcQAccessibleBridge_delete(self.h)

func init*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, h: ptr cQAccessibleBridgePlugin): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =
  T(h: h)
proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =

  gen_qaccessiblebridge_types.QAccessibleBridgePlugin.init(fcQAccessibleBridgePlugin_new())
proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, parent: gen_qobject.QObject): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =

  gen_qaccessiblebridge_types.QAccessibleBridgePlugin.init(fcQAccessibleBridgePlugin_new2(parent.h))
proc metaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAccessibleBridgePlugin_metaObject(self.h))

proc metacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =

  fcQAccessibleBridgePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =

  fcQAccessibleBridgePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, key: string): gen_qaccessiblebridge_types.QAccessibleBridge =

  gen_qaccessiblebridge_types.QAccessibleBridge(h: fcQAccessibleBridgePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc tr2*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAccessibleBridgePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAccessibleBridgePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAccessibleBridgePluginmetaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQAccessibleBridgePlugin_virtualbase_metaObject(self.h))

type QAccessibleBridgePluginmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metaObject(self: ptr cQAccessibleBridgePlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metaObject ".} =
  var nimfunc = cast[ptr QAccessibleBridgePluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAccessibleBridgePluginmetacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =

  fQAccessibleBridgePlugin_virtualbase_metacast(self.h, param1)

type QAccessibleBridgePluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePluginmetacastProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metacast(self: ptr cQAccessibleBridgePlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metacast ".} =
  var nimfunc = cast[ptr QAccessibleBridgePluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAccessibleBridgePluginmetacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =

  fQAccessibleBridgePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAccessibleBridgePluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePluginmetacallProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metacall(self: ptr cQAccessibleBridgePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metacall ".} =
  var nimfunc = cast[ptr QAccessibleBridgePluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAccessibleBridgePlugincreateProc* = proc(key: string): gen_qaccessiblebridge_types.QAccessibleBridge
proc oncreate*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugincreateProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_create(self: ptr cQAccessibleBridgePlugin, slot: int, key: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_create ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugincreateProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAccessibleBridgePluginevent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent.QEvent): bool =

  fQAccessibleBridgePlugin_virtualbase_event(self.h, event.h)

type QAccessibleBridgePlugineventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugineventProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_event(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_event ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAccessibleBridgePlugineventFilter*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQAccessibleBridgePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAccessibleBridgePlugineventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_eventFilter(self: ptr cQAccessibleBridgePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_eventFilter ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAccessibleBridgePlugintimerEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent.QTimerEvent): void =

  fQAccessibleBridgePlugin_virtualbase_timerEvent(self.h, event.h)

type QAccessibleBridgePlugintimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_timerEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_timerEvent ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAccessibleBridgePluginchildEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent.QChildEvent): void =

  fQAccessibleBridgePlugin_virtualbase_childEvent(self.h, event.h)

type QAccessibleBridgePluginchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePluginchildEventProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_childEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_childEvent ".} =
  var nimfunc = cast[ptr QAccessibleBridgePluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAccessibleBridgePlugincustomEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent.QEvent): void =

  fQAccessibleBridgePlugin_virtualbase_customEvent(self.h, event.h)

type QAccessibleBridgePlugincustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_customEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_customEvent ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QAccessibleBridgePluginconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject.QMetaMethod): void =

  fQAccessibleBridgePlugin_virtualbase_connectNotify(self.h, signal.h)

type QAccessibleBridgePluginconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_connectNotify(self: ptr cQAccessibleBridgePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_connectNotify ".} =
  var nimfunc = cast[ptr QAccessibleBridgePluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAccessibleBridgePlugindisconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject.QMetaMethod): void =

  fQAccessibleBridgePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAccessibleBridgePlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, slot: QAccessibleBridgePlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAccessibleBridgePlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify(self: ptr cQAccessibleBridgePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QAccessibleBridgePlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAccessibleBridgePlugin_staticMetaObject())
proc delete*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin) =
  fcQAccessibleBridgePlugin_delete(self.h)
