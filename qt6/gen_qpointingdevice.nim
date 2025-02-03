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
{.compile("gen_qpointingdevice.cpp", cflags).}


type QPointingDevicePointerType* = cint
const
  QPointingDeviceUnknown* = 0
  QPointingDeviceGeneric* = 1
  QPointingDeviceFinger* = 2
  QPointingDevicePen* = 4
  QPointingDeviceEraser* = 8
  QPointingDeviceCursor* = 16
  QPointingDeviceAllPointerTypes* = 32767



type QPointingDeviceGrabTransition* = cint
const
  QPointingDeviceGrabPassive* = 1
  QPointingDeviceUngrabPassive* = 2
  QPointingDeviceCancelGrabPassive* = 3
  QPointingDeviceOverrideGrabPassive* = 4
  QPointingDeviceGrabExclusive* = 16
  QPointingDeviceUngrabExclusive* = 32
  QPointingDeviceCancelGrabExclusive* = 48



import gen_qpointingdevice_types
export gen_qpointingdevice_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qeventpoint,
  gen_qinputdevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qevent,
  gen_qeventpoint,
  gen_qinputdevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQPointingDeviceUniqueId*{.exportc: "QPointingDeviceUniqueId", incompleteStruct.} = object
type cQPointingDevice*{.exportc: "QPointingDevice", incompleteStruct.} = object

proc fcQPointingDeviceUniqueId_new(): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new".}
proc fcQPointingDeviceUniqueId_new2(param1: pointer): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new2".}
proc fcQPointingDeviceUniqueId_fromNumericId(id: clonglong): pointer {.importc: "QPointingDeviceUniqueId_fromNumericId".}
proc fcQPointingDeviceUniqueId_isValid(self: pointer, ): bool {.importc: "QPointingDeviceUniqueId_isValid".}
proc fcQPointingDeviceUniqueId_numericId(self: pointer, ): clonglong {.importc: "QPointingDeviceUniqueId_numericId".}
proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
proc fcQPointingDevice_new(): ptr cQPointingDevice {.importc: "QPointingDevice_new".}
proc fcQPointingDevice_new2(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint): ptr cQPointingDevice {.importc: "QPointingDevice_new2".}
proc fcQPointingDevice_new3(parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new3".}
proc fcQPointingDevice_new4(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string): ptr cQPointingDevice {.importc: "QPointingDevice_new4".}
proc fcQPointingDevice_new5(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new5".}
proc fcQPointingDevice_new6(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer, parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new6".}
proc fcQPointingDevice_metaObject(self: pointer, ): pointer {.importc: "QPointingDevice_metaObject".}
proc fcQPointingDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QPointingDevice_metacast".}
proc fcQPointingDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPointingDevice_metacall".}
proc fcQPointingDevice_tr(s: cstring): struct_miqt_string {.importc: "QPointingDevice_tr".}
proc fcQPointingDevice_setType(self: pointer, devType: cint): void {.importc: "QPointingDevice_setType".}
proc fcQPointingDevice_setCapabilities(self: pointer, caps: cint): void {.importc: "QPointingDevice_setCapabilities".}
proc fcQPointingDevice_setMaximumTouchPoints(self: pointer, c: cint): void {.importc: "QPointingDevice_setMaximumTouchPoints".}
proc fcQPointingDevice_pointerType(self: pointer, ): cint {.importc: "QPointingDevice_pointerType".}
proc fcQPointingDevice_maximumPoints(self: pointer, ): cint {.importc: "QPointingDevice_maximumPoints".}
proc fcQPointingDevice_buttonCount(self: pointer, ): cint {.importc: "QPointingDevice_buttonCount".}
proc fcQPointingDevice_uniqueId(self: pointer, ): pointer {.importc: "QPointingDevice_uniqueId".}
proc fcQPointingDevice_primaryPointingDevice(): pointer {.importc: "QPointingDevice_primaryPointingDevice".}
proc fcQPointingDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPointingDevice_operatorEqual".}
proc fcQPointingDevice_grabChanged(self: pointer, grabber: pointer, transition: cint, event: pointer, point: pointer): void {.importc: "QPointingDevice_grabChanged".}
proc fQPointingDevice_connect_grabChanged(self: pointer, slot: int) {.importc: "QPointingDevice_connect_grabChanged".}
proc fcQPointingDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPointingDevice_tr2".}
proc fcQPointingDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPointingDevice_tr3".}
proc fcQPointingDevice_primaryPointingDevice1(seatName: struct_miqt_string): pointer {.importc: "QPointingDevice_primaryPointingDevice1".}
proc fQPointingDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPointingDevice_virtualbase_metacall".}
proc fcQPointingDevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_metacall".}
proc fQPointingDevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPointingDevice_virtualbase_event".}
proc fcQPointingDevice_override_virtual_event(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_event".}
proc fQPointingDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPointingDevice_virtualbase_eventFilter".}
proc fcQPointingDevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_eventFilter".}
proc fQPointingDevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_timerEvent".}
proc fcQPointingDevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_timerEvent".}
proc fQPointingDevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_childEvent".}
proc fcQPointingDevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_childEvent".}
proc fQPointingDevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_customEvent".}
proc fcQPointingDevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_customEvent".}
proc fQPointingDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPointingDevice_virtualbase_connectNotify".}
proc fcQPointingDevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_connectNotify".}
proc fQPointingDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPointingDevice_virtualbase_disconnectNotify".}
proc fcQPointingDevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_disconnectNotify".}
proc fcQPointingDevice_delete(self: pointer) {.importc: "QPointingDevice_delete".}


func init*(T: type QPointingDeviceUniqueId, h: ptr cQPointingDeviceUniqueId): QPointingDeviceUniqueId =
  T(h: h)
proc create*(T: type QPointingDeviceUniqueId, ): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new())
proc create*(T: type QPointingDeviceUniqueId, param1: QPointingDeviceUniqueId): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new2(param1.h))
proc fromNumericId*(_: type QPointingDeviceUniqueId, id: clonglong): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_fromNumericId(id))

proc isValid*(self: QPointingDeviceUniqueId, ): bool =

  fcQPointingDeviceUniqueId_isValid(self.h)

proc numericId*(self: QPointingDeviceUniqueId, ): clonglong =

  fcQPointingDeviceUniqueId_numericId(self.h)

proc delete*(self: QPointingDeviceUniqueId) =
  fcQPointingDeviceUniqueId_delete(self.h)

func init*(T: type QPointingDevice, h: ptr cQPointingDevice): QPointingDevice =
  T(h: h)
proc create*(T: type QPointingDevice, ): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new())
proc create*(T: type QPointingDevice, name: string, systemId: clonglong, devType: gen_qinputdevice.QInputDeviceDeviceType, pType: QPointingDevicePointerType, caps: gen_qinputdevice.QInputDeviceCapability, maxPoints: cint, buttonCount: cint): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new2(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount))
proc create*(T: type QPointingDevice, parent: gen_qobject.QObject): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new3(parent.h))
proc create*(T: type QPointingDevice, name: string, systemId: clonglong, devType: gen_qinputdevice.QInputDeviceDeviceType, pType: QPointingDevicePointerType, caps: gen_qinputdevice.QInputDeviceCapability, maxPoints: cint, buttonCount: cint, seatName: string): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new4(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))
proc create*(T: type QPointingDevice, name: string, systemId: clonglong, devType: gen_qinputdevice.QInputDeviceDeviceType, pType: QPointingDevicePointerType, caps: gen_qinputdevice.QInputDeviceCapability, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: QPointingDeviceUniqueId): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new5(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h))
proc create*(T: type QPointingDevice, name: string, systemId: clonglong, devType: gen_qinputdevice.QInputDeviceDeviceType, pType: QPointingDevicePointerType, caps: gen_qinputdevice.QInputDeviceCapability, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: QPointingDeviceUniqueId, parent: gen_qobject.QObject): QPointingDevice =

  QPointingDevice.init(fcQPointingDevice_new6(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h, parent.h))
proc metaObject*(self: QPointingDevice, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPointingDevice_metaObject(self.h))

proc metacast*(self: QPointingDevice, param1: cstring): pointer =

  fcQPointingDevice_metacast(self.h, param1)

proc metacall*(self: QPointingDevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPointingDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPointingDevice, s: cstring): string =

  let v_ms = fcQPointingDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setType*(self: QPointingDevice, devType: gen_qinputdevice.QInputDeviceDeviceType): void =

  fcQPointingDevice_setType(self.h, cint(devType))

proc setCapabilities*(self: QPointingDevice, caps: gen_qinputdevice.QInputDeviceCapability): void =

  fcQPointingDevice_setCapabilities(self.h, cint(caps))

proc setMaximumTouchPoints*(self: QPointingDevice, c: cint): void =

  fcQPointingDevice_setMaximumTouchPoints(self.h, c)

proc pointerType*(self: QPointingDevice, ): QPointingDevicePointerType =

  QPointingDevicePointerType(fcQPointingDevice_pointerType(self.h))

proc maximumPoints*(self: QPointingDevice, ): cint =

  fcQPointingDevice_maximumPoints(self.h)

proc buttonCount*(self: QPointingDevice, ): cint =

  fcQPointingDevice_buttonCount(self.h)

proc uniqueId*(self: QPointingDevice, ): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId(h: fcQPointingDevice_uniqueId(self.h))

proc primaryPointingDevice*(_: type QPointingDevice, ): QPointingDevice =

  QPointingDevice(h: fcQPointingDevice_primaryPointingDevice())

proc operatorEqual*(self: QPointingDevice, other: QPointingDevice): bool =

  fcQPointingDevice_operatorEqual(self.h, other.h)

proc grabChanged*(self: QPointingDevice, grabber: gen_qobject.QObject, transition: QPointingDeviceGrabTransition, event: gen_qevent.QPointerEvent, point: gen_qeventpoint.QEventPoint): void =

  fcQPointingDevice_grabChanged(self.h, grabber.h, cint(transition), event.h, point.h)

proc miqt_exec_callback_QPointingDevice_grabChanged(slot: int, grabber: pointer, transition: cint, event: pointer, point: pointer) {.exportc.} =
  type Cb = proc(grabber: gen_qobject.QObject, transition: QPointingDeviceGrabTransition, event: gen_qevent.QPointerEvent, point: gen_qeventpoint.QEventPoint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: grabber)

  let slotval2 = QPointingDeviceGrabTransition(transition)

  let slotval3 = gen_qevent.QPointerEvent(h: event)

  let slotval4 = gen_qeventpoint.QEventPoint(h: point)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc ongrabChanged*(self: QPointingDevice, slot: proc(grabber: gen_qobject.QObject, transition: QPointingDeviceGrabTransition, event: gen_qevent.QPointerEvent, point: gen_qeventpoint.QEventPoint)) =
  type Cb = proc(grabber: gen_qobject.QObject, transition: QPointingDeviceGrabTransition, event: gen_qevent.QPointerEvent, point: gen_qeventpoint.QEventPoint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQPointingDevice_connect_grabChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QPointingDevice, s: cstring, c: cstring): string =

  let v_ms = fcQPointingDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPointingDevice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPointingDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc primaryPointingDevice1*(_: type QPointingDevice, seatName: string): QPointingDevice =

  QPointingDevice(h: fcQPointingDevice_primaryPointingDevice1(struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc callVirtualBase_metacall(self: QPointingDevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPointingDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPointingDevicemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPointingDevice, slot: proc(super: QPointingDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPointingDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_metacall(self: ptr cQPointingDevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPointingDevice_metacall ".} =
  type Cb = proc(super: QPointingDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPointingDevice(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QPointingDevice, event: gen_qcoreevent.QEvent): bool =


  fQPointingDevice_virtualbase_event(self.h, event.h)

type QPointingDeviceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPointingDevice, slot: proc(super: QPointingDeviceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPointingDeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_event(self: ptr cQPointingDevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPointingDevice_event ".} =
  type Cb = proc(super: QPointingDeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPointingDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPointingDevice, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPointingDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPointingDeviceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPointingDevice, slot: proc(super: QPointingDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPointingDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_eventFilter(self: ptr cQPointingDevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPointingDevice_eventFilter ".} =
  type Cb = proc(super: QPointingDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPointingDevice(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPointingDevice, event: gen_qcoreevent.QTimerEvent): void =


  fQPointingDevice_virtualbase_timerEvent(self.h, event.h)

type QPointingDevicetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPointingDevice, slot: proc(super: QPointingDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPointingDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_timerEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_timerEvent ".} =
  type Cb = proc(super: QPointingDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPointingDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPointingDevice, event: gen_qcoreevent.QChildEvent): void =


  fQPointingDevice_virtualbase_childEvent(self.h, event.h)

type QPointingDevicechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPointingDevice, slot: proc(super: QPointingDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPointingDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_childEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_childEvent ".} =
  type Cb = proc(super: QPointingDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPointingDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPointingDevice, event: gen_qcoreevent.QEvent): void =


  fQPointingDevice_virtualbase_customEvent(self.h, event.h)

type QPointingDevicecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPointingDevice, slot: proc(super: QPointingDevicecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPointingDevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_customEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_customEvent ".} =
  type Cb = proc(super: QPointingDevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPointingDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPointingDevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQPointingDevice_virtualbase_connectNotify(self.h, signal.h)

type QPointingDeviceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPointingDevice, slot: proc(super: QPointingDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPointingDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_connectNotify(self: ptr cQPointingDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_connectNotify ".} =
  type Cb = proc(super: QPointingDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPointingDevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPointingDevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQPointingDevice_virtualbase_disconnectNotify(self.h, signal.h)

type QPointingDevicedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPointingDevice, slot: proc(super: QPointingDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPointingDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_disconnectNotify(self: ptr cQPointingDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_disconnectNotify ".} =
  type Cb = proc(super: QPointingDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPointingDevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QPointingDevice) =
  fcQPointingDevice_delete(self.h)
