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
{.compile("gen_qdrag.cpp", cflags).}


import gen_qdrag_types
export gen_qdrag_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint

type cQDrag*{.exportc: "QDrag", incompleteStruct.} = object

proc fcQDrag_new(dragSource: pointer): ptr cQDrag {.importc: "QDrag_new".}
proc fcQDrag_metaObject(self: pointer, ): pointer {.importc: "QDrag_metaObject".}
proc fcQDrag_metacast(self: pointer, param1: cstring): pointer {.importc: "QDrag_metacast".}
proc fcQDrag_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDrag_metacall".}
proc fcQDrag_tr(s: cstring): struct_miqt_string {.importc: "QDrag_tr".}
proc fcQDrag_setMimeData(self: pointer, data: pointer): void {.importc: "QDrag_setMimeData".}
proc fcQDrag_mimeData(self: pointer, ): pointer {.importc: "QDrag_mimeData".}
proc fcQDrag_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QDrag_setPixmap".}
proc fcQDrag_pixmap(self: pointer, ): pointer {.importc: "QDrag_pixmap".}
proc fcQDrag_setHotSpot(self: pointer, hotspot: pointer): void {.importc: "QDrag_setHotSpot".}
proc fcQDrag_hotSpot(self: pointer, ): pointer {.importc: "QDrag_hotSpot".}
proc fcQDrag_source(self: pointer, ): pointer {.importc: "QDrag_source".}
proc fcQDrag_target(self: pointer, ): pointer {.importc: "QDrag_target".}
proc fcQDrag_exec(self: pointer, ): cint {.importc: "QDrag_exec".}
proc fcQDrag_exec2(self: pointer, supportedActions: cint, defaultAction: cint): cint {.importc: "QDrag_exec2".}
proc fcQDrag_setDragCursor(self: pointer, cursor: pointer, action: cint): void {.importc: "QDrag_setDragCursor".}
proc fcQDrag_dragCursor(self: pointer, action: cint): pointer {.importc: "QDrag_dragCursor".}
proc fcQDrag_supportedActions(self: pointer, ): cint {.importc: "QDrag_supportedActions".}
proc fcQDrag_defaultAction(self: pointer, ): cint {.importc: "QDrag_defaultAction".}
proc fcQDrag_cancel(): void {.importc: "QDrag_cancel".}
proc fcQDrag_actionChanged(self: pointer, action: cint): void {.importc: "QDrag_actionChanged".}
proc fQDrag_connect_actionChanged(self: pointer, slot: int) {.importc: "QDrag_connect_actionChanged".}
proc fcQDrag_targetChanged(self: pointer, newTarget: pointer): void {.importc: "QDrag_targetChanged".}
proc fQDrag_connect_targetChanged(self: pointer, slot: int) {.importc: "QDrag_connect_targetChanged".}
proc fcQDrag_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDrag_tr2".}
proc fcQDrag_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDrag_tr3".}
proc fcQDrag_exec1(self: pointer, supportedActions: cint): cint {.importc: "QDrag_exec1".}
proc fQDrag_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDrag_virtualbase_metacall".}
proc fcQDrag_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDrag_override_virtual_metacall".}
proc fQDrag_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDrag_virtualbase_event".}
proc fcQDrag_override_virtual_event(self: pointer, slot: int) {.importc: "QDrag_override_virtual_event".}
proc fQDrag_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDrag_virtualbase_eventFilter".}
proc fcQDrag_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDrag_override_virtual_eventFilter".}
proc fQDrag_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_timerEvent".}
proc fcQDrag_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_timerEvent".}
proc fQDrag_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_childEvent".}
proc fcQDrag_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_childEvent".}
proc fQDrag_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_customEvent".}
proc fcQDrag_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_customEvent".}
proc fQDrag_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDrag_virtualbase_connectNotify".}
proc fcQDrag_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDrag_override_virtual_connectNotify".}
proc fQDrag_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDrag_virtualbase_disconnectNotify".}
proc fcQDrag_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDrag_override_virtual_disconnectNotify".}
proc fcQDrag_delete(self: pointer) {.importc: "QDrag_delete".}


func init*(T: type QDrag, h: ptr cQDrag): QDrag =
  T(h: h)
proc create*(T: type QDrag, dragSource: gen_qobject.QObject): QDrag =

  QDrag.init(fcQDrag_new(dragSource.h))
proc metaObject*(self: QDrag, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDrag_metaObject(self.h))

proc metacast*(self: QDrag, param1: cstring): pointer =

  fcQDrag_metacast(self.h, param1)

proc metacall*(self: QDrag, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDrag_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDrag, s: cstring): string =

  let v_ms = fcQDrag_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMimeData*(self: QDrag, data: gen_qmimedata.QMimeData): void =

  fcQDrag_setMimeData(self.h, data.h)

proc mimeData*(self: QDrag, ): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fcQDrag_mimeData(self.h))

proc setPixmap*(self: QDrag, pixmap: gen_qpixmap.QPixmap): void =

  fcQDrag_setPixmap(self.h, pixmap.h)

proc pixmap*(self: QDrag, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQDrag_pixmap(self.h))

proc setHotSpot*(self: QDrag, hotspot: gen_qpoint.QPoint): void =

  fcQDrag_setHotSpot(self.h, hotspot.h)

proc hotSpot*(self: QDrag, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQDrag_hotSpot(self.h))

proc source*(self: QDrag, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQDrag_source(self.h))

proc target*(self: QDrag, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQDrag_target(self.h))

proc exec*(self: QDrag, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDrag_exec(self.h))

proc exec2*(self: QDrag, supportedActions: gen_qnamespace.DropAction, defaultAction: gen_qnamespace.DropAction): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDrag_exec2(self.h, cint(supportedActions), cint(defaultAction)))

proc setDragCursor*(self: QDrag, cursor: gen_qpixmap.QPixmap, action: gen_qnamespace.DropAction): void =

  fcQDrag_setDragCursor(self.h, cursor.h, cint(action))

proc dragCursor*(self: QDrag, action: gen_qnamespace.DropAction): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQDrag_dragCursor(self.h, cint(action)))

proc supportedActions*(self: QDrag, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDrag_supportedActions(self.h))

proc defaultAction*(self: QDrag, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDrag_defaultAction(self.h))

proc cancel*(_: type QDrag, ): void =

  fcQDrag_cancel()

proc actionChanged*(self: QDrag, action: gen_qnamespace.DropAction): void =

  fcQDrag_actionChanged(self.h, cint(action))

proc miqt_exec_callback_QDrag_actionChanged(slot: int, action: cint) {.exportc.} =
  type Cb = proc(action: gen_qnamespace.DropAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.DropAction(action)


  nimfunc[](slotval1)

proc onactionChanged*(self: QDrag, slot: proc(action: gen_qnamespace.DropAction)) =
  type Cb = proc(action: gen_qnamespace.DropAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDrag_connect_actionChanged(self.h, cast[int](addr tmp[]))
proc targetChanged*(self: QDrag, newTarget: gen_qobject.QObject): void =

  fcQDrag_targetChanged(self.h, newTarget.h)

proc miqt_exec_callback_QDrag_targetChanged(slot: int, newTarget: pointer) {.exportc.} =
  type Cb = proc(newTarget: gen_qobject.QObject)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: newTarget)


  nimfunc[](slotval1)

proc ontargetChanged*(self: QDrag, slot: proc(newTarget: gen_qobject.QObject)) =
  type Cb = proc(newTarget: gen_qobject.QObject)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDrag_connect_targetChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDrag, s: cstring, c: cstring): string =

  let v_ms = fcQDrag_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDrag, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDrag_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec1*(self: QDrag, supportedActions: gen_qnamespace.DropAction): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDrag_exec1(self.h, cint(supportedActions)))

proc callVirtualBase_metacall(self: QDrag, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDrag_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDragmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDrag, slot: proc(super: QDragmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDragmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_metacall(self: ptr cQDrag, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDrag_metacall ".} =
  type Cb = proc(super: QDragmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDrag(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QDrag, event: gen_qcoreevent.QEvent): bool =


  fQDrag_virtualbase_event(self.h, event.h)

type QDrageventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDrag, slot: proc(super: QDrageventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDrageventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_event(self: ptr cQDrag, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDrag_event ".} =
  type Cb = proc(super: QDrageventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDrag(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDrag, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDrag_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDrageventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDrag, slot: proc(super: QDrageventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDrageventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_eventFilter(self: ptr cQDrag, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDrag_eventFilter ".} =
  type Cb = proc(super: QDrageventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDrag(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDrag, event: gen_qcoreevent.QTimerEvent): void =


  fQDrag_virtualbase_timerEvent(self.h, event.h)

type QDragtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDrag, slot: proc(super: QDragtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDragtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_timerEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_timerEvent ".} =
  type Cb = proc(super: QDragtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDrag(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDrag, event: gen_qcoreevent.QChildEvent): void =


  fQDrag_virtualbase_childEvent(self.h, event.h)

type QDragchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDrag, slot: proc(super: QDragchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDragchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_childEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_childEvent ".} =
  type Cb = proc(super: QDragchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDrag(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDrag, event: gen_qcoreevent.QEvent): void =


  fQDrag_virtualbase_customEvent(self.h, event.h)

type QDragcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDrag, slot: proc(super: QDragcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDragcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_customEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_customEvent ".} =
  type Cb = proc(super: QDragcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDrag(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDrag, signal: gen_qmetaobject.QMetaMethod): void =


  fQDrag_virtualbase_connectNotify(self.h, signal.h)

type QDragconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDrag, slot: proc(super: QDragconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDragconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_connectNotify(self: ptr cQDrag, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDrag_connectNotify ".} =
  type Cb = proc(super: QDragconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDrag(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDrag, signal: gen_qmetaobject.QMetaMethod): void =


  fQDrag_virtualbase_disconnectNotify(self.h, signal.h)

type QDragdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDrag, slot: proc(super: QDragdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDragdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_disconnectNotify(self: ptr cQDrag, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDrag_disconnectNotify ".} =
  type Cb = proc(super: QDragdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDrag(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QDrag) =
  fcQDrag_delete(self.h)
