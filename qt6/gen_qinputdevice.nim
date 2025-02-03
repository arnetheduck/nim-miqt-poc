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
{.compile("gen_qinputdevice.cpp", cflags).}


type QInputDeviceDeviceType* = cint
const
  QInputDeviceUnknown* = 0
  QInputDeviceMouse* = 1
  QInputDeviceTouchScreen* = 2
  QInputDeviceTouchPad* = 4
  QInputDevicePuck* = 8
  QInputDeviceStylus* = 16
  QInputDeviceAirbrush* = 32
  QInputDeviceKeyboard* = 4096
  QInputDeviceAllDevices* = 2147483647



type QInputDeviceCapability* = cint
const
  QInputDeviceNone* = 0
  QInputDevicePosition* = 1
  QInputDeviceArea* = 2
  QInputDevicePressure* = 4
  QInputDeviceVelocity* = 8
  QInputDeviceNormalizedPosition* = 32
  QInputDeviceMouseEmulation* = 64
  QInputDevicePixelScroll* = 128
  QInputDeviceScroll* = 256
  QInputDeviceHover* = 512
  QInputDeviceRotation* = 1024
  QInputDeviceXTilt* = 2048
  QInputDeviceYTilt* = 4096
  QInputDeviceTangentialPressure* = 8192
  QInputDeviceZPosition* = 16384
  QInputDeviceAll* = 2147483647



import gen_qinputdevice_types
export gen_qinputdevice_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect

type cQInputDevice*{.exportc: "QInputDevice", incompleteStruct.} = object

proc fcQInputDevice_new(): ptr cQInputDevice {.importc: "QInputDevice_new".}
proc fcQInputDevice_new2(name: struct_miqt_string, systemId: clonglong, typeVal: cint): ptr cQInputDevice {.importc: "QInputDevice_new2".}
proc fcQInputDevice_new3(parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new3".}
proc fcQInputDevice_new4(name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string): ptr cQInputDevice {.importc: "QInputDevice_new4".}
proc fcQInputDevice_new5(name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new5".}
proc fcQInputDevice_metaObject(self: pointer, ): pointer {.importc: "QInputDevice_metaObject".}
proc fcQInputDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDevice_metacast".}
proc fcQInputDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDevice_metacall".}
proc fcQInputDevice_tr(s: cstring): struct_miqt_string {.importc: "QInputDevice_tr".}
proc fcQInputDevice_name(self: pointer, ): struct_miqt_string {.importc: "QInputDevice_name".}
proc fcQInputDevice_typeX(self: pointer, ): cint {.importc: "QInputDevice_type".}
proc fcQInputDevice_capabilities(self: pointer, ): cint {.importc: "QInputDevice_capabilities".}
proc fcQInputDevice_hasCapability(self: pointer, cap: cint): bool {.importc: "QInputDevice_hasCapability".}
proc fcQInputDevice_systemId(self: pointer, ): clonglong {.importc: "QInputDevice_systemId".}
proc fcQInputDevice_seatName(self: pointer, ): struct_miqt_string {.importc: "QInputDevice_seatName".}
proc fcQInputDevice_availableVirtualGeometry(self: pointer, ): pointer {.importc: "QInputDevice_availableVirtualGeometry".}
proc fcQInputDevice_seatNames(): struct_miqt_array {.importc: "QInputDevice_seatNames".}
proc fcQInputDevice_devices(): struct_miqt_array {.importc: "QInputDevice_devices".}
proc fcQInputDevice_primaryKeyboard(): pointer {.importc: "QInputDevice_primaryKeyboard".}
proc fcQInputDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QInputDevice_operatorEqual".}
proc fcQInputDevice_availableVirtualGeometryChanged(self: pointer, area: pointer): void {.importc: "QInputDevice_availableVirtualGeometryChanged".}
proc fQInputDevice_connect_availableVirtualGeometryChanged(self: pointer, slot: int) {.importc: "QInputDevice_connect_availableVirtualGeometryChanged".}
proc fcQInputDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDevice_tr2".}
proc fcQInputDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDevice_tr3".}
proc fcQInputDevice_primaryKeyboard1(seatName: struct_miqt_string): pointer {.importc: "QInputDevice_primaryKeyboard1".}
proc fQInputDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QInputDevice_virtualbase_metacall".}
proc fcQInputDevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_metacall".}
proc fQInputDevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QInputDevice_virtualbase_event".}
proc fcQInputDevice_override_virtual_event(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_event".}
proc fQInputDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QInputDevice_virtualbase_eventFilter".}
proc fcQInputDevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_eventFilter".}
proc fQInputDevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_timerEvent".}
proc fcQInputDevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_timerEvent".}
proc fQInputDevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_childEvent".}
proc fcQInputDevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_childEvent".}
proc fQInputDevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_customEvent".}
proc fcQInputDevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_customEvent".}
proc fQInputDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QInputDevice_virtualbase_connectNotify".}
proc fcQInputDevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_connectNotify".}
proc fQInputDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QInputDevice_virtualbase_disconnectNotify".}
proc fcQInputDevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_disconnectNotify".}
proc fcQInputDevice_delete(self: pointer) {.importc: "QInputDevice_delete".}


func init*(T: type QInputDevice, h: ptr cQInputDevice): QInputDevice =
  T(h: h)
proc create*(T: type QInputDevice, ): QInputDevice =

  QInputDevice.init(fcQInputDevice_new())
proc create*(T: type QInputDevice, name: string, systemId: clonglong, typeVal: QInputDeviceDeviceType): QInputDevice =

  QInputDevice.init(fcQInputDevice_new2(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal)))
proc create*(T: type QInputDevice, parent: gen_qobject.QObject): QInputDevice =

  QInputDevice.init(fcQInputDevice_new3(parent.h))
proc create*(T: type QInputDevice, name: string, systemId: clonglong, typeVal: QInputDeviceDeviceType, seatName: string): QInputDevice =

  QInputDevice.init(fcQInputDevice_new4(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))
proc create*(T: type QInputDevice, name: string, systemId: clonglong, typeVal: QInputDeviceDeviceType, seatName: string, parent: gen_qobject.QObject): QInputDevice =

  QInputDevice.init(fcQInputDevice_new5(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName))), parent.h))
proc metaObject*(self: QInputDevice, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQInputDevice_metaObject(self.h))

proc metacast*(self: QInputDevice, param1: cstring): pointer =

  fcQInputDevice_metacast(self.h, param1)

proc metacall*(self: QInputDevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQInputDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QInputDevice, s: cstring): string =

  let v_ms = fcQInputDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: QInputDevice, ): string =

  let v_ms = fcQInputDevice_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc typeX*(self: QInputDevice, ): QInputDeviceDeviceType =

  QInputDeviceDeviceType(fcQInputDevice_typeX(self.h))

proc capabilities*(self: QInputDevice, ): QInputDeviceCapability =

  QInputDeviceCapability(fcQInputDevice_capabilities(self.h))

proc hasCapability*(self: QInputDevice, cap: QInputDeviceCapability): bool =

  fcQInputDevice_hasCapability(self.h, cint(cap))

proc systemId*(self: QInputDevice, ): clonglong =

  fcQInputDevice_systemId(self.h)

proc seatName*(self: QInputDevice, ): string =

  let v_ms = fcQInputDevice_seatName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableVirtualGeometry*(self: QInputDevice, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQInputDevice_availableVirtualGeometry(self.h))

proc seatNames*(_: type QInputDevice, ): seq[string] =

  var v_ma = fcQInputDevice_seatNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc devices*(_: type QInputDevice, ): seq[QInputDevice] =

  var v_ma = fcQInputDevice_devices()
  var vx_ret = newSeq[QInputDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QInputDevice(h: v_outCast[i])
  vx_ret

proc primaryKeyboard*(_: type QInputDevice, ): QInputDevice =

  QInputDevice(h: fcQInputDevice_primaryKeyboard())

proc operatorEqual*(self: QInputDevice, other: QInputDevice): bool =

  fcQInputDevice_operatorEqual(self.h, other.h)

proc availableVirtualGeometryChanged*(self: QInputDevice, area: gen_qrect.QRect): void =

  fcQInputDevice_availableVirtualGeometryChanged(self.h, area.h)

proc miqt_exec_callback_QInputDevice_availableVirtualGeometryChanged(slot: int, area: pointer) {.exportc.} =
  type Cb = proc(area: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: area)


  nimfunc[](slotval1)

proc onavailableVirtualGeometryChanged*(self: QInputDevice, slot: proc(area: gen_qrect.QRect)) =
  type Cb = proc(area: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputDevice_connect_availableVirtualGeometryChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QInputDevice, s: cstring, c: cstring): string =

  let v_ms = fcQInputDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QInputDevice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQInputDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc primaryKeyboard1*(_: type QInputDevice, seatName: string): QInputDevice =

  QInputDevice(h: fcQInputDevice_primaryKeyboard1(struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc callVirtualBase_metacall(self: QInputDevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQInputDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QInputDevicemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QInputDevice, slot: proc(super: QInputDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QInputDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_metacall(self: ptr cQInputDevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QInputDevice_metacall ".} =
  type Cb = proc(super: QInputDevicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QInputDevice(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QInputDevice, event: gen_qcoreevent.QEvent): bool =


  fQInputDevice_virtualbase_event(self.h, event.h)

type QInputDeviceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QInputDevice, slot: proc(super: QInputDeviceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_event(self: ptr cQInputDevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDevice_event ".} =
  type Cb = proc(super: QInputDeviceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QInputDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QInputDevice, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQInputDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QInputDeviceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QInputDevice, slot: proc(super: QInputDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QInputDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_eventFilter(self: ptr cQInputDevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDevice_eventFilter ".} =
  type Cb = proc(super: QInputDeviceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QInputDevice(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QInputDevice, event: gen_qcoreevent.QTimerEvent): void =


  fQInputDevice_virtualbase_timerEvent(self.h, event.h)

type QInputDevicetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QInputDevice, slot: proc(super: QInputDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_timerEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_timerEvent ".} =
  type Cb = proc(super: QInputDevicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QInputDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QInputDevice, event: gen_qcoreevent.QChildEvent): void =


  fQInputDevice_virtualbase_childEvent(self.h, event.h)

type QInputDevicechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QInputDevice, slot: proc(super: QInputDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_childEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_childEvent ".} =
  type Cb = proc(super: QInputDevicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QInputDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QInputDevice, event: gen_qcoreevent.QEvent): void =


  fQInputDevice_virtualbase_customEvent(self.h, event.h)

type QInputDevicecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QInputDevice, slot: proc(super: QInputDevicecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_customEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_customEvent ".} =
  type Cb = proc(super: QInputDevicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QInputDevice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QInputDevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQInputDevice_virtualbase_connectNotify(self.h, signal.h)

type QInputDeviceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QInputDevice, slot: proc(super: QInputDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_connectNotify(self: ptr cQInputDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_connectNotify ".} =
  type Cb = proc(super: QInputDeviceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QInputDevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QInputDevice, signal: gen_qmetaobject.QMetaMethod): void =


  fQInputDevice_virtualbase_disconnectNotify(self.h, signal.h)

type QInputDevicedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QInputDevice, slot: proc(super: QInputDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QInputDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_disconnectNotify(self: ptr cQInputDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_disconnectNotify ".} =
  type Cb = proc(super: QInputDevicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QInputDevice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QInputDevice) =
  fcQInputDevice_delete(self.h)
