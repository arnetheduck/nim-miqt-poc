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
{.compile("gen_qstyleplugin.cpp", cflags).}


import gen_qstyleplugin_types
export gen_qstyleplugin_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstyle
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstyle

type cQStylePlugin*{.exportc: "QStylePlugin", incompleteStruct.} = object

proc fcQStylePlugin_new(): ptr cQStylePlugin {.importc: "QStylePlugin_new".}
proc fcQStylePlugin_new2(parent: pointer): ptr cQStylePlugin {.importc: "QStylePlugin_new2".}
proc fcQStylePlugin_metaObject(self: pointer, ): pointer {.importc: "QStylePlugin_metaObject".}
proc fcQStylePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QStylePlugin_metacast".}
proc fcQStylePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStylePlugin_metacall".}
proc fcQStylePlugin_tr(s: cstring): struct_miqt_string {.importc: "QStylePlugin_tr".}
proc fcQStylePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QStylePlugin_create".}
proc fcQStylePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStylePlugin_tr2".}
proc fcQStylePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStylePlugin_tr3".}
proc fQStylePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStylePlugin_virtualbase_metacall".}
proc fcQStylePlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_metacall".}
proc fcQStylePlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_create".}
proc fQStylePlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStylePlugin_virtualbase_event".}
proc fcQStylePlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_event".}
proc fQStylePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStylePlugin_virtualbase_eventFilter".}
proc fcQStylePlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_eventFilter".}
proc fQStylePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_timerEvent".}
proc fcQStylePlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_timerEvent".}
proc fQStylePlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_childEvent".}
proc fcQStylePlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_childEvent".}
proc fQStylePlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStylePlugin_virtualbase_customEvent".}
proc fcQStylePlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_customEvent".}
proc fQStylePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStylePlugin_virtualbase_connectNotify".}
proc fcQStylePlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_connectNotify".}
proc fQStylePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStylePlugin_virtualbase_disconnectNotify".}
proc fcQStylePlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStylePlugin_override_virtual_disconnectNotify".}
proc fcQStylePlugin_staticMetaObject(): pointer {.importc: "QStylePlugin_staticMetaObject".}
proc fcQStylePlugin_delete(self: pointer) {.importc: "QStylePlugin_delete".}


func init*(T: type QStylePlugin, h: ptr cQStylePlugin): QStylePlugin =
  T(h: h)
proc create*(T: type QStylePlugin, ): QStylePlugin =

  QStylePlugin.init(fcQStylePlugin_new())
proc create*(T: type QStylePlugin, parent: gen_qobject.QObject): QStylePlugin =

  QStylePlugin.init(fcQStylePlugin_new2(parent.h))
proc metaObject*(self: QStylePlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStylePlugin_metaObject(self.h))

proc metacast*(self: QStylePlugin, param1: cstring): pointer =

  fcQStylePlugin_metacast(self.h, param1)

proc metacall*(self: QStylePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStylePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStylePlugin, s: cstring): string =

  let v_ms = fcQStylePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QStylePlugin, key: string): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQStylePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc tr2*(_: type QStylePlugin, s: cstring, c: cstring): string =

  let v_ms = fcQStylePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStylePlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStylePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QStylePlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStylePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStylePluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStylePlugin, slot: proc(super: QStylePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStylePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_metacall(self: ptr cQStylePlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStylePlugin_metacall ".} =
  type Cb = proc(super: QStylePluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStylePlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QStylePlugincreateBase* = proc(key: string): gen_qstyle.QStyle
proc oncreate*(self: QStylePlugin, slot: proc(key: string): gen_qstyle.QStyle) =
  # TODO check subclass
  type Cb = proc(key: string): gen_qstyle.QStyle
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_create(self: ptr cQStylePlugin, slot: int, key: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QStylePlugin_create ".} =
  type Cb = proc(key: string): gen_qstyle.QStyle
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QStylePlugin, event: gen_qcoreevent.QEvent): bool =


  fQStylePlugin_virtualbase_event(self.h, event.h)

type QStylePlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStylePlugin, slot: proc(super: QStylePlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStylePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_event(self: ptr cQStylePlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStylePlugin_event ".} =
  type Cb = proc(super: QStylePlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStylePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStylePlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStylePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStylePlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStylePlugin, slot: proc(super: QStylePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStylePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_eventFilter(self: ptr cQStylePlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStylePlugin_eventFilter ".} =
  type Cb = proc(super: QStylePlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStylePlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStylePlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQStylePlugin_virtualbase_timerEvent(self.h, event.h)

type QStylePlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStylePlugin, slot: proc(super: QStylePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStylePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_timerEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_timerEvent ".} =
  type Cb = proc(super: QStylePlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStylePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStylePlugin, event: gen_qcoreevent.QChildEvent): void =


  fQStylePlugin_virtualbase_childEvent(self.h, event.h)

type QStylePluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStylePlugin, slot: proc(super: QStylePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStylePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_childEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_childEvent ".} =
  type Cb = proc(super: QStylePluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStylePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStylePlugin, event: gen_qcoreevent.QEvent): void =


  fQStylePlugin_virtualbase_customEvent(self.h, event.h)

type QStylePlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStylePlugin, slot: proc(super: QStylePlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStylePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_customEvent(self: ptr cQStylePlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_customEvent ".} =
  type Cb = proc(super: QStylePlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStylePlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStylePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQStylePlugin_virtualbase_connectNotify(self.h, signal.h)

type QStylePluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStylePlugin, slot: proc(super: QStylePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStylePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_connectNotify(self: ptr cQStylePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_connectNotify ".} =
  type Cb = proc(super: QStylePluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStylePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStylePlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQStylePlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QStylePlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStylePlugin, slot: proc(super: QStylePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStylePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStylePlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStylePlugin_disconnectNotify(self: ptr cQStylePlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStylePlugin_disconnectNotify ".} =
  type Cb = proc(super: QStylePlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStylePlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStylePlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStylePlugin_staticMetaObject())
proc delete*(self: QStylePlugin) =
  fcQStylePlugin_delete(self.h)
