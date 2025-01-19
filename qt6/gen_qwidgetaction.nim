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
{.compile("gen_qwidgetaction.cpp", cflags).}


import gen_qwidgetaction_types
export gen_qwidgetaction_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget

type cQWidgetAction*{.exportc: "QWidgetAction", incompleteStruct.} = object

proc fcQWidgetAction_new(parent: pointer): ptr cQWidgetAction {.importc: "QWidgetAction_new".}
proc fcQWidgetAction_metaObject(self: pointer, ): pointer {.importc: "QWidgetAction_metaObject".}
proc fcQWidgetAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidgetAction_metacast".}
proc fcQWidgetAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidgetAction_metacall".}
proc fcQWidgetAction_tr(s: cstring): struct_miqt_string {.importc: "QWidgetAction_tr".}
proc fcQWidgetAction_setDefaultWidget(self: pointer, w: pointer): void {.importc: "QWidgetAction_setDefaultWidget".}
proc fcQWidgetAction_defaultWidget(self: pointer, ): pointer {.importc: "QWidgetAction_defaultWidget".}
proc fcQWidgetAction_requestWidget(self: pointer, parent: pointer): pointer {.importc: "QWidgetAction_requestWidget".}
proc fcQWidgetAction_releaseWidget(self: pointer, widget: pointer): void {.importc: "QWidgetAction_releaseWidget".}
proc fcQWidgetAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidgetAction_tr2".}
proc fcQWidgetAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidgetAction_tr3".}
proc fQWidgetAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWidgetAction_virtualbase_metacall".}
proc fcQWidgetAction_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_metacall".}
proc fQWidgetAction_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWidgetAction_virtualbase_event".}
proc fcQWidgetAction_override_virtual_event(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_event".}
proc fQWidgetAction_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QWidgetAction_virtualbase_eventFilter".}
proc fcQWidgetAction_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_eventFilter".}
proc fQWidgetAction_virtualbase_createWidget(self: pointer, parent: pointer): pointer{.importc: "QWidgetAction_virtualbase_createWidget".}
proc fcQWidgetAction_override_virtual_createWidget(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_createWidget".}
proc fQWidgetAction_virtualbase_deleteWidget(self: pointer, widget: pointer): void{.importc: "QWidgetAction_virtualbase_deleteWidget".}
proc fcQWidgetAction_override_virtual_deleteWidget(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_deleteWidget".}
proc fQWidgetAction_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_timerEvent".}
proc fcQWidgetAction_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_timerEvent".}
proc fQWidgetAction_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_childEvent".}
proc fcQWidgetAction_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_childEvent".}
proc fQWidgetAction_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_customEvent".}
proc fcQWidgetAction_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_customEvent".}
proc fQWidgetAction_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWidgetAction_virtualbase_connectNotify".}
proc fcQWidgetAction_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_connectNotify".}
proc fQWidgetAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWidgetAction_virtualbase_disconnectNotify".}
proc fcQWidgetAction_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_disconnectNotify".}
proc fcQWidgetAction_staticMetaObject(): pointer {.importc: "QWidgetAction_staticMetaObject".}
proc fcQWidgetAction_delete(self: pointer) {.importc: "QWidgetAction_delete".}


func init*(T: type QWidgetAction, h: ptr cQWidgetAction): QWidgetAction =
  T(h: h)
proc create*(T: type QWidgetAction, parent: gen_qobject.QObject): QWidgetAction =

  QWidgetAction.init(fcQWidgetAction_new(parent.h))
proc metaObject*(self: QWidgetAction, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWidgetAction_metaObject(self.h))

proc metacast*(self: QWidgetAction, param1: cstring): pointer =

  fcQWidgetAction_metacast(self.h, param1)

proc metacall*(self: QWidgetAction, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWidgetAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWidgetAction, s: cstring): string =

  let v_ms = fcQWidgetAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultWidget*(self: QWidgetAction, w: gen_qwidget.QWidget): void =

  fcQWidgetAction_setDefaultWidget(self.h, w.h)

proc defaultWidget*(self: QWidgetAction, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWidgetAction_defaultWidget(self.h))

proc requestWidget*(self: QWidgetAction, parent: gen_qwidget.QWidget): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWidgetAction_requestWidget(self.h, parent.h))

proc releaseWidget*(self: QWidgetAction, widget: gen_qwidget.QWidget): void =

  fcQWidgetAction_releaseWidget(self.h, widget.h)

proc tr2*(_: type QWidgetAction, s: cstring, c: cstring): string =

  let v_ms = fcQWidgetAction_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWidgetAction, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWidgetAction_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWidgetAction, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWidgetAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWidgetActionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWidgetAction, slot: proc(super: QWidgetActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_metacall(self: ptr cQWidgetAction, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWidgetAction_metacall ".} =
  type Cb = proc(super: QWidgetActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWidgetAction(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QWidgetAction, param1: gen_qcoreevent.QEvent): bool =


  fQWidgetAction_virtualbase_event(self.h, param1.h)

type QWidgetActioneventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWidgetAction, slot: proc(super: QWidgetActioneventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActioneventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_event(self: ptr cQWidgetAction, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWidgetAction_event ".} =
  type Cb = proc(super: QWidgetActioneventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWidgetAction(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWidgetAction, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQWidgetAction_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QWidgetActioneventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWidgetAction, slot: proc(super: QWidgetActioneventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActioneventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_eventFilter(self: ptr cQWidgetAction, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QWidgetAction_eventFilter ".} =
  type Cb = proc(super: QWidgetActioneventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWidgetAction(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_createWidget(self: QWidgetAction, parent: gen_qwidget.QWidget): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQWidgetAction_virtualbase_createWidget(self.h, parent.h))

type QWidgetActioncreateWidgetBase* = proc(parent: gen_qwidget.QWidget): gen_qwidget.QWidget
proc oncreateWidget*(self: QWidgetAction, slot: proc(super: QWidgetActioncreateWidgetBase, parent: gen_qwidget.QWidget): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActioncreateWidgetBase, parent: gen_qwidget.QWidget): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_createWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_createWidget(self: ptr cQWidgetAction, slot: int, parent: pointer): pointer {.exportc: "miqt_exec_callback_QWidgetAction_createWidget ".} =
  type Cb = proc(super: QWidgetActioncreateWidgetBase, parent: gen_qwidget.QWidget): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qwidget.QWidget): auto =
    callVirtualBase_createWidget(QWidgetAction(h: self), parent)
  let slotval1 = gen_qwidget.QWidget(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_deleteWidget(self: QWidgetAction, widget: gen_qwidget.QWidget): void =


  fQWidgetAction_virtualbase_deleteWidget(self.h, widget.h)

type QWidgetActiondeleteWidgetBase* = proc(widget: gen_qwidget.QWidget): void
proc ondeleteWidget*(self: QWidgetAction, slot: proc(super: QWidgetActiondeleteWidgetBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActiondeleteWidgetBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_deleteWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_deleteWidget(self: ptr cQWidgetAction, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_deleteWidget ".} =
  type Cb = proc(super: QWidgetActiondeleteWidgetBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_deleteWidget(QWidgetAction(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QWidgetAction, event: gen_qcoreevent.QTimerEvent): void =


  fQWidgetAction_virtualbase_timerEvent(self.h, event.h)

type QWidgetActiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWidgetAction, slot: proc(super: QWidgetActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_timerEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_timerEvent ".} =
  type Cb = proc(super: QWidgetActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWidgetAction(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWidgetAction, event: gen_qcoreevent.QChildEvent): void =


  fQWidgetAction_virtualbase_childEvent(self.h, event.h)

type QWidgetActionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWidgetAction, slot: proc(super: QWidgetActionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_childEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_childEvent ".} =
  type Cb = proc(super: QWidgetActionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWidgetAction(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWidgetAction, event: gen_qcoreevent.QEvent): void =


  fQWidgetAction_virtualbase_customEvent(self.h, event.h)

type QWidgetActioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWidgetAction, slot: proc(super: QWidgetActioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_customEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_customEvent ".} =
  type Cb = proc(super: QWidgetActioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWidgetAction(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWidgetAction, signal: gen_qmetaobject.QMetaMethod): void =


  fQWidgetAction_virtualbase_connectNotify(self.h, signal.h)

type QWidgetActionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWidgetAction, slot: proc(super: QWidgetActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_connectNotify(self: ptr cQWidgetAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_connectNotify ".} =
  type Cb = proc(super: QWidgetActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWidgetAction(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWidgetAction, signal: gen_qmetaobject.QMetaMethod): void =


  fQWidgetAction_virtualbase_disconnectNotify(self.h, signal.h)

type QWidgetActiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWidgetAction, slot: proc(super: QWidgetActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_disconnectNotify(self: ptr cQWidgetAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_disconnectNotify ".} =
  type Cb = proc(super: QWidgetActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWidgetAction(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWidgetAction): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWidgetAction_staticMetaObject())
proc delete*(self: QWidgetAction) =
  fcQWidgetAction_delete(self.h)
