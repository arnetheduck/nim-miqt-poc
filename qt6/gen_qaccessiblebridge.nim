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
proc fcQAccessibleBridgePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QAccessibleBridgePlugin_create".}
proc fcQAccessibleBridgePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr2".}
proc fcQAccessibleBridgePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr3".}
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


func init*(T: type QAccessibleBridge, h: ptr cQAccessibleBridge): QAccessibleBridge =
  T(h: h)
proc setRootObject*(self: QAccessibleBridge, rootObject: gen_qaccessible.QAccessibleInterface): void =

  fcQAccessibleBridge_setRootObject(self.h, rootObject.h)

proc notifyAccessibilityUpdate*(self: QAccessibleBridge, event: gen_qaccessible.QAccessibleEvent): void =

  fcQAccessibleBridge_notifyAccessibilityUpdate(self.h, event.h)

proc operatorAssign*(self: QAccessibleBridge, param1: QAccessibleBridge): void =

  fcQAccessibleBridge_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleBridge) =
  fcQAccessibleBridge_delete(self.h)

func init*(T: type QAccessibleBridgePlugin, h: ptr cQAccessibleBridgePlugin): QAccessibleBridgePlugin =
  T(h: h)
proc create*(T: type QAccessibleBridgePlugin, ): QAccessibleBridgePlugin =

  QAccessibleBridgePlugin.init(fcQAccessibleBridgePlugin_new())
proc create*(T: type QAccessibleBridgePlugin, parent: gen_qobject.QObject): QAccessibleBridgePlugin =

  QAccessibleBridgePlugin.init(fcQAccessibleBridgePlugin_new2(parent.h))
proc metaObject*(self: QAccessibleBridgePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAccessibleBridgePlugin_metaObject(self.h))

proc metacast*(self: QAccessibleBridgePlugin, param1: cstring): pointer =

  fcQAccessibleBridgePlugin_metacast(self.h, param1)

proc metacall*(self: QAccessibleBridgePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAccessibleBridgePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAccessibleBridgePlugin, s: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QAccessibleBridgePlugin, key: string): QAccessibleBridge =

  QAccessibleBridge(h: fcQAccessibleBridgePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc tr2*(_: type QAccessibleBridgePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAccessibleBridgePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAccessibleBridgePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAccessibleBridgePlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAccessibleBridgePlugin_virtualbase_metaObject(self.h))

type QAccessibleBridgePluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metaObject(self: ptr cQAccessibleBridgePlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metaObject ".} =
  type Cb = proc(super: QAccessibleBridgePluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAccessibleBridgePlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAccessibleBridgePlugin, param1: cstring): pointer =


  fQAccessibleBridgePlugin_virtualbase_metacast(self.h, param1)

type QAccessibleBridgePluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metacast(self: ptr cQAccessibleBridgePlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metacast ".} =
  type Cb = proc(super: QAccessibleBridgePluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAccessibleBridgePlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAccessibleBridgePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAccessibleBridgePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAccessibleBridgePluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_metacall(self: ptr cQAccessibleBridgePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_metacall ".} =
  type Cb = proc(super: QAccessibleBridgePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAccessibleBridgePlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAccessibleBridgePlugincreateBase* = proc(key: string): QAccessibleBridge
proc oncreate*(self: QAccessibleBridgePlugin, slot: proc(key: string): QAccessibleBridge) =
  # TODO check subclass
  type Cb = proc(key: string): QAccessibleBridge
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_create(self: ptr cQAccessibleBridgePlugin, slot: int, key: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_create ".} =
  type Cb = proc(key: string): QAccessibleBridge
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QAccessibleBridgePlugin, event: gen_qcoreevent.QEvent): bool =


  fQAccessibleBridgePlugin_virtualbase_event(self.h, event.h)

type QAccessibleBridgePlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_event(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_event ".} =
  type Cb = proc(super: QAccessibleBridgePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAccessibleBridgePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAccessibleBridgePlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAccessibleBridgePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAccessibleBridgePlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_eventFilter(self: ptr cQAccessibleBridgePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_eventFilter ".} =
  type Cb = proc(super: QAccessibleBridgePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAccessibleBridgePlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAccessibleBridgePlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQAccessibleBridgePlugin_virtualbase_timerEvent(self.h, event.h)

type QAccessibleBridgePlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_timerEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_timerEvent ".} =
  type Cb = proc(super: QAccessibleBridgePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAccessibleBridgePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAccessibleBridgePlugin, event: gen_qcoreevent.QChildEvent): void =


  fQAccessibleBridgePlugin_virtualbase_childEvent(self.h, event.h)

type QAccessibleBridgePluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_childEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_childEvent ".} =
  type Cb = proc(super: QAccessibleBridgePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAccessibleBridgePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAccessibleBridgePlugin, event: gen_qcoreevent.QEvent): void =


  fQAccessibleBridgePlugin_virtualbase_customEvent(self.h, event.h)

type QAccessibleBridgePlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_customEvent(self: ptr cQAccessibleBridgePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_customEvent ".} =
  type Cb = proc(super: QAccessibleBridgePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAccessibleBridgePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAccessibleBridgePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAccessibleBridgePlugin_virtualbase_connectNotify(self.h, signal.h)

type QAccessibleBridgePluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_connectNotify(self: ptr cQAccessibleBridgePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_connectNotify ".} =
  type Cb = proc(super: QAccessibleBridgePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAccessibleBridgePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAccessibleBridgePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAccessibleBridgePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAccessibleBridgePlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAccessibleBridgePlugin, slot: proc(super: QAccessibleBridgePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleBridgePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleBridgePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify(self: ptr cQAccessibleBridgePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify ".} =
  type Cb = proc(super: QAccessibleBridgePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAccessibleBridgePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAccessibleBridgePlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAccessibleBridgePlugin_staticMetaObject())
proc delete*(self: QAccessibleBridgePlugin) =
  fcQAccessibleBridgePlugin_delete(self.h)
