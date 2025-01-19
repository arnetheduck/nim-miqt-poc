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
{.compile("gen_qobject.cpp", cflags).}


type QObjectDataEnum* = cint
const
  QObjectDataCheckForParentChildLoopsWarnDepth* = 4096



import gen_qobject_types
export gen_qobject_types

import
  gen_qanystringview,
  gen_qbindingstorage,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qthread,
  gen_qvariant
export
  gen_qanystringview,
  gen_qbindingstorage,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qthread,
  gen_qvariant

type cQObjectData*{.exportc: "QObjectData", incompleteStruct.} = object
type cQObject*{.exportc: "QObject", incompleteStruct.} = object
type cQSignalBlocker*{.exportc: "QSignalBlocker", incompleteStruct.} = object

proc fcQObjectData_dynamicMetaObject(self: pointer, ): pointer {.importc: "QObjectData_dynamicMetaObject".}
proc fcQObjectData_delete(self: pointer) {.importc: "QObjectData_delete".}
proc fcQObject_new(): ptr cQObject {.importc: "QObject_new".}
proc fcQObject_new2(parent: pointer): ptr cQObject {.importc: "QObject_new2".}
proc fcQObject_metaObject(self: pointer, ): pointer {.importc: "QObject_metaObject".}
proc fcQObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QObject_metacast".}
proc fcQObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObject_metacall".}
proc fcQObject_tr(s: cstring): struct_miqt_string {.importc: "QObject_tr".}
proc fcQObject_event(self: pointer, event: pointer): bool {.importc: "QObject_event".}
proc fcQObject_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObject_eventFilter".}
proc fcQObject_objectName(self: pointer, ): struct_miqt_string {.importc: "QObject_objectName".}
proc fcQObject_setObjectName(self: pointer, name: pointer): void {.importc: "QObject_setObjectName".}
proc fcQObject_isWidgetType(self: pointer, ): bool {.importc: "QObject_isWidgetType".}
proc fcQObject_isWindowType(self: pointer, ): bool {.importc: "QObject_isWindowType".}
proc fcQObject_isQuickItemType(self: pointer, ): bool {.importc: "QObject_isQuickItemType".}
proc fcQObject_signalsBlocked(self: pointer, ): bool {.importc: "QObject_signalsBlocked".}
proc fcQObject_blockSignals(self: pointer, b: bool): bool {.importc: "QObject_blockSignals".}
proc fcQObject_thread(self: pointer, ): pointer {.importc: "QObject_thread".}
proc fcQObject_moveToThread(self: pointer, thread: pointer): void {.importc: "QObject_moveToThread".}
proc fcQObject_startTimer(self: pointer, interval: cint): cint {.importc: "QObject_startTimer".}
proc fcQObject_killTimer(self: pointer, id: cint): void {.importc: "QObject_killTimer".}
proc fcQObject_children(self: pointer, ): struct_miqt_array {.importc: "QObject_children".}
proc fcQObject_setParent(self: pointer, parent: pointer): void {.importc: "QObject_setParent".}
proc fcQObject_installEventFilter(self: pointer, filterObj: pointer): void {.importc: "QObject_installEventFilter".}
proc fcQObject_removeEventFilter(self: pointer, obj: pointer): void {.importc: "QObject_removeEventFilter".}
proc fcQObject_connect(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer): pointer {.importc: "QObject_connect".}
proc fcQObject_connect2(self: pointer, sender: pointer, signal: cstring, member: cstring): pointer {.importc: "QObject_connect2".}
proc fcQObject_disconnect(sender: pointer, signal: pointer, receiver: pointer, member: pointer): bool {.importc: "QObject_disconnect".}
proc fcQObject_disconnectWithQMetaObjectConnection(param1: pointer): bool {.importc: "QObject_disconnectWithQMetaObjectConnection".}
proc fcQObject_dumpObjectTree(self: pointer, ): void {.importc: "QObject_dumpObjectTree".}
proc fcQObject_dumpObjectInfo(self: pointer, ): void {.importc: "QObject_dumpObjectInfo".}
proc fcQObject_setProperty(self: pointer, name: cstring, value: pointer): bool {.importc: "QObject_setProperty".}
proc fcQObject_property(self: pointer, name: cstring): pointer {.importc: "QObject_property".}
proc fcQObject_dynamicPropertyNames(self: pointer, ): struct_miqt_array {.importc: "QObject_dynamicPropertyNames".}
proc fcQObject_bindingStorage(self: pointer, ): pointer {.importc: "QObject_bindingStorage".}
proc fcQObject_bindingStorage2(self: pointer, ): pointer {.importc: "QObject_bindingStorage2".}
proc fcQObject_destroyed(self: pointer, ): void {.importc: "QObject_destroyed".}
proc fQObject_connect_destroyed(self: pointer, slot: int) {.importc: "QObject_connect_destroyed".}
proc fcQObject_parent(self: pointer, ): pointer {.importc: "QObject_parent".}
proc fcQObject_inherits(self: pointer, classname: cstring): bool {.importc: "QObject_inherits".}
proc fcQObject_deleteLater(self: pointer, ): void {.importc: "QObject_deleteLater".}
proc fcQObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObject_tr2".}
proc fcQObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObject_tr3".}
proc fcQObject_startTimer2(self: pointer, interval: cint, timerType: cint): cint {.importc: "QObject_startTimer2".}
proc fcQObject_connect5(sender: pointer, signal: pointer, receiver: pointer, methodVal: pointer, typeVal: cint): pointer {.importc: "QObject_connect5".}
proc fcQObject_connect4(self: pointer, sender: pointer, signal: cstring, member: cstring, typeVal: cint): pointer {.importc: "QObject_connect4".}
proc fcQObject_destroyed1(self: pointer, param1: pointer): void {.importc: "QObject_destroyed1".}
proc fQObject_connect_destroyed1(self: pointer, slot: int) {.importc: "QObject_connect_destroyed1".}
proc fQObject_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QObject_virtualbase_metaObject".}
proc fcQObject_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QObject_override_virtual_metaObject".}
proc fQObject_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QObject_virtualbase_metacast".}
proc fcQObject_override_virtual_metacast(self: pointer, slot: int) {.importc: "QObject_override_virtual_metacast".}
proc fQObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QObject_virtualbase_metacall".}
proc fcQObject_override_virtual_metacall(self: pointer, slot: int) {.importc: "QObject_override_virtual_metacall".}
proc fQObject_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QObject_virtualbase_event".}
proc fcQObject_override_virtual_event(self: pointer, slot: int) {.importc: "QObject_override_virtual_event".}
proc fQObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QObject_virtualbase_eventFilter".}
proc fcQObject_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QObject_override_virtual_eventFilter".}
proc fQObject_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QObject_virtualbase_timerEvent".}
proc fcQObject_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QObject_override_virtual_timerEvent".}
proc fQObject_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QObject_virtualbase_childEvent".}
proc fcQObject_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QObject_override_virtual_childEvent".}
proc fQObject_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QObject_virtualbase_customEvent".}
proc fcQObject_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QObject_override_virtual_customEvent".}
proc fQObject_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QObject_virtualbase_connectNotify".}
proc fcQObject_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QObject_override_virtual_connectNotify".}
proc fQObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QObject_virtualbase_disconnectNotify".}
proc fcQObject_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QObject_override_virtual_disconnectNotify".}
proc fcQObject_staticMetaObject(): pointer {.importc: "QObject_staticMetaObject".}
proc fcQObject_delete(self: pointer) {.importc: "QObject_delete".}
proc fcQSignalBlocker_new(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new".}
proc fcQSignalBlocker_new2(o: pointer): ptr cQSignalBlocker {.importc: "QSignalBlocker_new2".}
proc fcQSignalBlocker_reblock(self: pointer, ): void {.importc: "QSignalBlocker_reblock".}
proc fcQSignalBlocker_unblock(self: pointer, ): void {.importc: "QSignalBlocker_unblock".}
proc fcQSignalBlocker_delete(self: pointer) {.importc: "QSignalBlocker_delete".}


func init*(T: type QObjectData, h: ptr cQObjectData): QObjectData =
  T(h: h)
proc dynamicMetaObject*(self: QObjectData, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQObjectData_dynamicMetaObject(self.h))

proc delete*(self: QObjectData) =
  fcQObjectData_delete(self.h)

func init*(T: type QObject, h: ptr cQObject): QObject =
  T(h: h)
proc create*(T: type QObject, ): QObject =

  QObject.init(fcQObject_new())
proc create*(T: type QObject, parent: QObject): QObject =

  QObject.init(fcQObject_new2(parent.h))
proc metaObject*(self: QObject, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQObject_metaObject(self.h))

proc metacast*(self: QObject, param1: cstring): pointer =

  fcQObject_metacast(self.h, param1)

proc metacall*(self: QObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QObject, s: cstring): string =

  let v_ms = fcQObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc event*(self: QObject, event: gen_qcoreevent.QEvent): bool =

  fcQObject_event(self.h, event.h)

proc eventFilter*(self: QObject, watched: QObject, event: gen_qcoreevent.QEvent): bool =

  fcQObject_eventFilter(self.h, watched.h, event.h)

proc objectName*(self: QObject, ): string =

  let v_ms = fcQObject_objectName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setObjectName*(self: QObject, name: gen_qanystringview.QAnyStringView): void =

  fcQObject_setObjectName(self.h, name.h)

proc isWidgetType*(self: QObject, ): bool =

  fcQObject_isWidgetType(self.h)

proc isWindowType*(self: QObject, ): bool =

  fcQObject_isWindowType(self.h)

proc isQuickItemType*(self: QObject, ): bool =

  fcQObject_isQuickItemType(self.h)

proc signalsBlocked*(self: QObject, ): bool =

  fcQObject_signalsBlocked(self.h)

proc blockSignals*(self: QObject, b: bool): bool =

  fcQObject_blockSignals(self.h, b)

proc thread*(self: QObject, ): gen_qthread.QThread =

  gen_qthread.QThread(h: fcQObject_thread(self.h))

proc moveToThread*(self: QObject, thread: gen_qthread.QThread): void =

  fcQObject_moveToThread(self.h, thread.h)

proc startTimer*(self: QObject, interval: cint): cint =

  fcQObject_startTimer(self.h, interval)

proc killTimer*(self: QObject, id: cint): void =

  fcQObject_killTimer(self.h, id)

proc children*(self: QObject, ): seq[QObject] =

  var v_ma = fcQObject_children(self.h)
  var vx_ret = newSeq[QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QObject(h: v_outCast[i])
  vx_ret

proc setParent*(self: QObject, parent: QObject): void =

  fcQObject_setParent(self.h, parent.h)

proc installEventFilter*(self: QObject, filterObj: QObject): void =

  fcQObject_installEventFilter(self.h, filterObj.h)

proc removeEventFilter*(self: QObject, obj: QObject): void =

  fcQObject_removeEventFilter(self.h, obj.h)

proc connect*(_: type QObject, sender: QObject, signal: gen_qmetaobject.QMetaMethod, receiver: QObject, methodVal: gen_qmetaobject.QMetaMethod): gen_qobjectdefs.QMetaObjectConnection =

  gen_qobjectdefs.QMetaObjectConnection(h: fcQObject_connect(sender.h, signal.h, receiver.h, methodVal.h))

proc connect2*(self: QObject, sender: QObject, signal: cstring, member: cstring): gen_qobjectdefs.QMetaObjectConnection =

  gen_qobjectdefs.QMetaObjectConnection(h: fcQObject_connect2(self.h, sender.h, signal, member))

proc disconnect*(_: type QObject, sender: QObject, signal: gen_qmetaobject.QMetaMethod, receiver: QObject, member: gen_qmetaobject.QMetaMethod): bool =

  fcQObject_disconnect(sender.h, signal.h, receiver.h, member.h)

proc disconnectWithQMetaObjectConnection*(_: type QObject, param1: gen_qobjectdefs.QMetaObjectConnection): bool =

  fcQObject_disconnectWithQMetaObjectConnection(param1.h)

proc dumpObjectTree*(self: QObject, ): void =

  fcQObject_dumpObjectTree(self.h)

proc dumpObjectInfo*(self: QObject, ): void =

  fcQObject_dumpObjectInfo(self.h)

proc setProperty*(self: QObject, name: cstring, value: gen_qvariant.QVariant): bool =

  fcQObject_setProperty(self.h, name, value.h)

proc property*(self: QObject, name: cstring): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQObject_property(self.h, name))

proc dynamicPropertyNames*(self: QObject, ): seq[seq[byte]] =

  var v_ma = fcQObject_dynamicPropertyNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc bindingStorage*(self: QObject, ): gen_qbindingstorage.QBindingStorage =

  gen_qbindingstorage.QBindingStorage(h: fcQObject_bindingStorage(self.h))

proc bindingStorage2*(self: QObject, ): gen_qbindingstorage.QBindingStorage =

  gen_qbindingstorage.QBindingStorage(h: fcQObject_bindingStorage2(self.h))

proc destroyed*(self: QObject, ): void =

  fcQObject_destroyed(self.h)

proc miqt_exec_callback_QObject_destroyed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondestroyed*(self: QObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQObject_connect_destroyed(self.h, cast[int](addr tmp[]))
proc parent*(self: QObject, ): QObject =

  QObject(h: fcQObject_parent(self.h))

proc inherits*(self: QObject, classname: cstring): bool =

  fcQObject_inherits(self.h, classname)

proc deleteLater*(self: QObject, ): void =

  fcQObject_deleteLater(self.h)

proc tr2*(_: type QObject, s: cstring, c: cstring): string =

  let v_ms = fcQObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startTimer2*(self: QObject, interval: cint, timerType: gen_qnamespace.TimerType): cint =

  fcQObject_startTimer2(self.h, interval, cint(timerType))

proc connect5*(_: type QObject, sender: QObject, signal: gen_qmetaobject.QMetaMethod, receiver: QObject, methodVal: gen_qmetaobject.QMetaMethod, typeVal: gen_qnamespace.ConnectionType): gen_qobjectdefs.QMetaObjectConnection =

  gen_qobjectdefs.QMetaObjectConnection(h: fcQObject_connect5(sender.h, signal.h, receiver.h, methodVal.h, cint(typeVal)))

proc connect4*(self: QObject, sender: QObject, signal: cstring, member: cstring, typeVal: gen_qnamespace.ConnectionType): gen_qobjectdefs.QMetaObjectConnection =

  gen_qobjectdefs.QMetaObjectConnection(h: fcQObject_connect4(self.h, sender.h, signal, member, cint(typeVal)))

proc destroyed1*(self: QObject, param1: QObject): void =

  fcQObject_destroyed1(self.h, param1.h)

proc miqt_exec_callback_QObject_destroyed1(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: QObject)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QObject(h: param1)


  nimfunc[](slotval1)

proc ondestroyed1*(self: QObject, slot: proc(param1: QObject)) =
  type Cb = proc(param1: QObject)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQObject_connect_destroyed1(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metaObject(self: QObject, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQObject_virtualbase_metaObject(self.h))

type QObjectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QObject, slot: proc(super: QObjectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QObjectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_metaObject(self: ptr cQObject, slot: int): pointer {.exportc: "miqt_exec_callback_QObject_metaObject ".} =
  type Cb = proc(super: QObjectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QObject, param1: cstring): pointer =


  fQObject_virtualbase_metacast(self.h, param1)

type QObjectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QObject, slot: proc(super: QObjectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QObjectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_metacast(self: ptr cQObject, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QObject_metacast ".} =
  type Cb = proc(super: QObjectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QObject(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QObjectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QObject, slot: proc(super: QObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_metacall(self: ptr cQObject, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QObject_metacall ".} =
  type Cb = proc(super: QObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QObject(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QObject, event: gen_qcoreevent.QEvent): bool =


  fQObject_virtualbase_event(self.h, event.h)

type QObjecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QObject, slot: proc(super: QObjecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QObjecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_event(self: ptr cQObject, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QObject_event ".} =
  type Cb = proc(super: QObjecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QObject(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QObject, watched: QObject, event: gen_qcoreevent.QEvent): bool =


  fQObject_virtualbase_eventFilter(self.h, watched.h, event.h)

type QObjecteventFilterBase* = proc(watched: QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QObject, slot: proc(super: QObjecteventFilterBase, watched: QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QObjecteventFilterBase, watched: QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_eventFilter(self: ptr cQObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QObject_eventFilter ".} =
  type Cb = proc(super: QObjecteventFilterBase, watched: QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QObject(h: self), watched, event)
  let slotval1 = QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QObject, event: gen_qcoreevent.QTimerEvent): void =


  fQObject_virtualbase_timerEvent(self.h, event.h)

type QObjecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QObject, slot: proc(super: QObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_timerEvent(self: ptr cQObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObject_timerEvent ".} =
  type Cb = proc(super: QObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QObject(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QObject, event: gen_qcoreevent.QChildEvent): void =


  fQObject_virtualbase_childEvent(self.h, event.h)

type QObjectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QObject, slot: proc(super: QObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_childEvent(self: ptr cQObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObject_childEvent ".} =
  type Cb = proc(super: QObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QObject(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QObject, event: gen_qcoreevent.QEvent): void =


  fQObject_virtualbase_customEvent(self.h, event.h)

type QObjectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QObject, slot: proc(super: QObjectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_customEvent(self: ptr cQObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObject_customEvent ".} =
  type Cb = proc(super: QObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QObject(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQObject_virtualbase_connectNotify(self.h, signal.h)

type QObjectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QObject, slot: proc(super: QObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_connectNotify(self: ptr cQObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObject_connectNotify ".} =
  type Cb = proc(super: QObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQObject_virtualbase_disconnectNotify(self.h, signal.h)

type QObjectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QObject, slot: proc(super: QObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObject_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObject_disconnectNotify(self: ptr cQObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObject_disconnectNotify ".} =
  type Cb = proc(super: QObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QObject): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQObject_staticMetaObject())
proc delete*(self: QObject) =
  fcQObject_delete(self.h)

func init*(T: type QSignalBlocker, h: ptr cQSignalBlocker): QSignalBlocker =
  T(h: h)
proc create*(T: type QSignalBlocker, o: QObject): QSignalBlocker =

  QSignalBlocker.init(fcQSignalBlocker_new(o.h))
proc create2*(T: type QSignalBlocker, o: QObject): QSignalBlocker =

  QSignalBlocker.init(fcQSignalBlocker_new2(o.h))
proc reblock*(self: QSignalBlocker, ): void =

  fcQSignalBlocker_reblock(self.h)

proc unblock*(self: QSignalBlocker, ): void =

  fcQSignalBlocker_unblock(self.h)

proc delete*(self: QSignalBlocker) =
  fcQSignalBlocker_delete(self.h)
