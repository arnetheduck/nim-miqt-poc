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
{.compile("gen_qaccessibleplugin.cpp", cflags).}


import gen_qaccessibleplugin_types
export gen_qaccessibleplugin_types

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

type cQAccessiblePlugin*{.exportc: "QAccessiblePlugin", incompleteStruct.} = object

proc fcQAccessiblePlugin_new(): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new".}
proc fcQAccessiblePlugin_new2(parent: pointer): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new2".}
proc fcQAccessiblePlugin_metaObject(self: pointer, ): pointer {.importc: "QAccessiblePlugin_metaObject".}
proc fcQAccessiblePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_metacast".}
proc fcQAccessiblePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessiblePlugin_metacall".}
proc fcQAccessiblePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr".}
proc fcQAccessiblePlugin_create(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.importc: "QAccessiblePlugin_create".}
proc fcQAccessiblePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr2".}
proc fcQAccessiblePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_tr3".}
proc fQAccessiblePlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAccessiblePlugin_virtualbase_metaObject".}
proc fcQAccessiblePlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_metaObject".}
proc fQAccessiblePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAccessiblePlugin_virtualbase_metacast".}
proc fcQAccessiblePlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_metacast".}
proc fQAccessiblePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAccessiblePlugin_virtualbase_metacall".}
proc fcQAccessiblePlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_metacall".}
proc fcQAccessiblePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_create".}
proc fQAccessiblePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAccessiblePlugin_virtualbase_event".}
proc fcQAccessiblePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_event".}
proc fQAccessiblePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAccessiblePlugin_virtualbase_eventFilter".}
proc fcQAccessiblePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_eventFilter".}
proc fQAccessiblePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_timerEvent".}
proc fcQAccessiblePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_timerEvent".}
proc fQAccessiblePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_childEvent".}
proc fcQAccessiblePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_childEvent".}
proc fQAccessiblePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAccessiblePlugin_virtualbase_customEvent".}
proc fcQAccessiblePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_customEvent".}
proc fQAccessiblePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAccessiblePlugin_virtualbase_connectNotify".}
proc fcQAccessiblePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_connectNotify".}
proc fQAccessiblePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAccessiblePlugin_virtualbase_disconnectNotify".}
proc fcQAccessiblePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAccessiblePlugin_override_virtual_disconnectNotify".}
proc fcQAccessiblePlugin_staticMetaObject(): pointer {.importc: "QAccessiblePlugin_staticMetaObject".}
proc fcQAccessiblePlugin_delete(self: pointer) {.importc: "QAccessiblePlugin_delete".}


func init*(T: type QAccessiblePlugin, h: ptr cQAccessiblePlugin): QAccessiblePlugin =
  T(h: h)
proc create*(T: type QAccessiblePlugin, ): QAccessiblePlugin =

  QAccessiblePlugin.init(fcQAccessiblePlugin_new())
proc create*(T: type QAccessiblePlugin, parent: gen_qobject.QObject): QAccessiblePlugin =

  QAccessiblePlugin.init(fcQAccessiblePlugin_new2(parent.h))
proc metaObject*(self: QAccessiblePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAccessiblePlugin_metaObject(self.h))

proc metacast*(self: QAccessiblePlugin, param1: cstring): pointer =

  fcQAccessiblePlugin_metacast(self.h, param1)

proc metacall*(self: QAccessiblePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAccessiblePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAccessiblePlugin, s: cstring): string =

  let v_ms = fcQAccessiblePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QAccessiblePlugin, key: string, objectVal: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessiblePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), objectVal.h))

proc tr2*(_: type QAccessiblePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAccessiblePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAccessiblePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAccessiblePlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAccessiblePlugin_virtualbase_metaObject(self.h))

type QAccessiblePluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_metaObject(self: ptr cQAccessiblePlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessiblePlugin_metaObject ".} =
  type Cb = proc(super: QAccessiblePluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAccessiblePlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAccessiblePlugin, param1: cstring): pointer =


  fQAccessiblePlugin_virtualbase_metacast(self.h, param1)

type QAccessiblePluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_metacast(self: ptr cQAccessiblePlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAccessiblePlugin_metacast ".} =
  type Cb = proc(super: QAccessiblePluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAccessiblePlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAccessiblePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAccessiblePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAccessiblePluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_metacall(self: ptr cQAccessiblePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAccessiblePlugin_metacall ".} =
  type Cb = proc(super: QAccessiblePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAccessiblePlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAccessiblePlugincreateBase* = proc(key: string, objectVal: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface
proc oncreate*(self: QAccessiblePlugin, slot: proc(key: string, objectVal: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(key: string, objectVal: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_create(self: ptr cQAccessiblePlugin, slot: int, key: struct_miqt_string, objectVal: pointer): pointer {.exportc: "miqt_exec_callback_QAccessiblePlugin_create ".} =
  type Cb = proc(key: string, objectVal: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qobject.QObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QAccessiblePlugin, event: gen_qcoreevent.QEvent): bool =


  fQAccessiblePlugin_virtualbase_event(self.h, event.h)

type QAccessiblePlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_event(self: ptr cQAccessiblePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessiblePlugin_event ".} =
  type Cb = proc(super: QAccessiblePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAccessiblePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAccessiblePlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAccessiblePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAccessiblePlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_eventFilter(self: ptr cQAccessiblePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAccessiblePlugin_eventFilter ".} =
  type Cb = proc(super: QAccessiblePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAccessiblePlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAccessiblePlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQAccessiblePlugin_virtualbase_timerEvent(self.h, event.h)

type QAccessiblePlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_timerEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_timerEvent ".} =
  type Cb = proc(super: QAccessiblePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAccessiblePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAccessiblePlugin, event: gen_qcoreevent.QChildEvent): void =


  fQAccessiblePlugin_virtualbase_childEvent(self.h, event.h)

type QAccessiblePluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_childEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_childEvent ".} =
  type Cb = proc(super: QAccessiblePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAccessiblePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAccessiblePlugin, event: gen_qcoreevent.QEvent): void =


  fQAccessiblePlugin_virtualbase_customEvent(self.h, event.h)

type QAccessiblePlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_customEvent(self: ptr cQAccessiblePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_customEvent ".} =
  type Cb = proc(super: QAccessiblePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAccessiblePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAccessiblePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAccessiblePlugin_virtualbase_connectNotify(self.h, signal.h)

type QAccessiblePluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_connectNotify(self: ptr cQAccessiblePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_connectNotify ".} =
  type Cb = proc(super: QAccessiblePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAccessiblePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAccessiblePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAccessiblePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAccessiblePlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAccessiblePlugin, slot: proc(super: QAccessiblePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAccessiblePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessiblePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessiblePlugin_disconnectNotify(self: ptr cQAccessiblePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAccessiblePlugin_disconnectNotify ".} =
  type Cb = proc(super: QAccessiblePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAccessiblePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAccessiblePlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAccessiblePlugin_staticMetaObject())
proc delete*(self: QAccessiblePlugin) =
  fcQAccessiblePlugin_delete(self.h)
