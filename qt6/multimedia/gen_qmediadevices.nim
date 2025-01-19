import Qt6MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6MultimediaWidgets")
{.compile("gen_qmediadevices.cpp", cflags).}


import gen_qmediadevices_types
export gen_qmediadevices_types

import
  gen_qaudiodevice,
  gen_qcameradevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudiodevice,
  gen_qcameradevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQMediaDevices*{.exportc: "QMediaDevices", incompleteStruct.} = object

proc fcQMediaDevices_new(): ptr cQMediaDevices {.importc: "QMediaDevices_new".}
proc fcQMediaDevices_new2(parent: pointer): ptr cQMediaDevices {.importc: "QMediaDevices_new2".}
proc fcQMediaDevices_metaObject(self: pointer, ): pointer {.importc: "QMediaDevices_metaObject".}
proc fcQMediaDevices_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaDevices_metacast".}
proc fcQMediaDevices_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaDevices_metacall".}
proc fcQMediaDevices_tr(s: cstring): struct_miqt_string {.importc: "QMediaDevices_tr".}
proc fcQMediaDevices_audioInputs(): struct_miqt_array {.importc: "QMediaDevices_audioInputs".}
proc fcQMediaDevices_audioOutputs(): struct_miqt_array {.importc: "QMediaDevices_audioOutputs".}
proc fcQMediaDevices_videoInputs(): struct_miqt_array {.importc: "QMediaDevices_videoInputs".}
proc fcQMediaDevices_defaultAudioInput(): pointer {.importc: "QMediaDevices_defaultAudioInput".}
proc fcQMediaDevices_defaultAudioOutput(): pointer {.importc: "QMediaDevices_defaultAudioOutput".}
proc fcQMediaDevices_defaultVideoInput(): pointer {.importc: "QMediaDevices_defaultVideoInput".}
proc fcQMediaDevices_audioInputsChanged(self: pointer, ): void {.importc: "QMediaDevices_audioInputsChanged".}
proc fQMediaDevices_connect_audioInputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_audioInputsChanged".}
proc fcQMediaDevices_audioOutputsChanged(self: pointer, ): void {.importc: "QMediaDevices_audioOutputsChanged".}
proc fQMediaDevices_connect_audioOutputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_audioOutputsChanged".}
proc fcQMediaDevices_videoInputsChanged(self: pointer, ): void {.importc: "QMediaDevices_videoInputsChanged".}
proc fQMediaDevices_connect_videoInputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_videoInputsChanged".}
proc fcQMediaDevices_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaDevices_tr2".}
proc fcQMediaDevices_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaDevices_tr3".}
proc fQMediaDevices_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaDevices_virtualbase_metacall".}
proc fcQMediaDevices_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_metacall".}
proc fQMediaDevices_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaDevices_virtualbase_event".}
proc fcQMediaDevices_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_event".}
proc fQMediaDevices_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaDevices_virtualbase_eventFilter".}
proc fcQMediaDevices_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_eventFilter".}
proc fQMediaDevices_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_timerEvent".}
proc fcQMediaDevices_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_timerEvent".}
proc fQMediaDevices_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_childEvent".}
proc fcQMediaDevices_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_childEvent".}
proc fQMediaDevices_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_customEvent".}
proc fcQMediaDevices_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_customEvent".}
proc fQMediaDevices_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaDevices_virtualbase_connectNotify".}
proc fcQMediaDevices_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_connectNotify".}
proc fQMediaDevices_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaDevices_virtualbase_disconnectNotify".}
proc fcQMediaDevices_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_disconnectNotify".}
proc fcQMediaDevices_staticMetaObject(): pointer {.importc: "QMediaDevices_staticMetaObject".}
proc fcQMediaDevices_delete(self: pointer) {.importc: "QMediaDevices_delete".}


func init*(T: type QMediaDevices, h: ptr cQMediaDevices): QMediaDevices =
  T(h: h)
proc create*(T: type QMediaDevices, ): QMediaDevices =

  QMediaDevices.init(fcQMediaDevices_new())
proc create*(T: type QMediaDevices, parent: gen_qobject.QObject): QMediaDevices =

  QMediaDevices.init(fcQMediaDevices_new2(parent.h))
proc metaObject*(self: QMediaDevices, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaDevices_metaObject(self.h))

proc metacast*(self: QMediaDevices, param1: cstring): pointer =

  fcQMediaDevices_metacast(self.h, param1)

proc metacall*(self: QMediaDevices, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaDevices_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaDevices, s: cstring): string =

  let v_ms = fcQMediaDevices_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(_: type QMediaDevices, ): seq[gen_qaudiodevice.QAudioDevice] =

  var v_ma = fcQMediaDevices_audioInputs()
  var vx_ret = newSeq[gen_qaudiodevice.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice.QAudioDevice(h: v_outCast[i])
  vx_ret

proc audioOutputs*(_: type QMediaDevices, ): seq[gen_qaudiodevice.QAudioDevice] =

  var v_ma = fcQMediaDevices_audioOutputs()
  var vx_ret = newSeq[gen_qaudiodevice.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice.QAudioDevice(h: v_outCast[i])
  vx_ret

proc videoInputs*(_: type QMediaDevices, ): seq[gen_qcameradevice.QCameraDevice] =

  var v_ma = fcQMediaDevices_videoInputs()
  var vx_ret = newSeq[gen_qcameradevice.QCameraDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameradevice.QCameraDevice(h: v_outCast[i])
  vx_ret

proc defaultAudioInput*(_: type QMediaDevices, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQMediaDevices_defaultAudioInput())

proc defaultAudioOutput*(_: type QMediaDevices, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQMediaDevices_defaultAudioOutput())

proc defaultVideoInput*(_: type QMediaDevices, ): gen_qcameradevice.QCameraDevice =

  gen_qcameradevice.QCameraDevice(h: fcQMediaDevices_defaultVideoInput())

proc audioInputsChanged*(self: QMediaDevices, ): void =

  fcQMediaDevices_audioInputsChanged(self.h)

proc miqt_exec_callback_QMediaDevices_audioInputsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioInputsChanged*(self: QMediaDevices, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaDevices_connect_audioInputsChanged(self.h, cast[int](addr tmp[]))
proc audioOutputsChanged*(self: QMediaDevices, ): void =

  fcQMediaDevices_audioOutputsChanged(self.h)

proc miqt_exec_callback_QMediaDevices_audioOutputsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioOutputsChanged*(self: QMediaDevices, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaDevices_connect_audioOutputsChanged(self.h, cast[int](addr tmp[]))
proc videoInputsChanged*(self: QMediaDevices, ): void =

  fcQMediaDevices_videoInputsChanged(self.h)

proc miqt_exec_callback_QMediaDevices_videoInputsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoInputsChanged*(self: QMediaDevices, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaDevices_connect_videoInputsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaDevices, s: cstring, c: cstring): string =

  let v_ms = fcQMediaDevices_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaDevices, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaDevices_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QMediaDevices, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMediaDevices_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaDevicesmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMediaDevices, slot: proc(super: QMediaDevicesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMediaDevicesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_metacall(self: ptr cQMediaDevices, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaDevices_metacall ".} =
  type Cb = proc(super: QMediaDevicesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMediaDevices(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QMediaDevices, event: gen_qcoreevent.QEvent): bool =


  fQMediaDevices_virtualbase_event(self.h, event.h)

type QMediaDeviceseventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMediaDevices, slot: proc(super: QMediaDeviceseventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaDeviceseventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_event(self: ptr cQMediaDevices, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaDevices_event ".} =
  type Cb = proc(super: QMediaDeviceseventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMediaDevices(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMediaDevices, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMediaDevices_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaDeviceseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMediaDevices, slot: proc(super: QMediaDeviceseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaDeviceseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_eventFilter(self: ptr cQMediaDevices, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaDevices_eventFilter ".} =
  type Cb = proc(super: QMediaDeviceseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMediaDevices(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMediaDevices, event: gen_qcoreevent.QTimerEvent): void =


  fQMediaDevices_virtualbase_timerEvent(self.h, event.h)

type QMediaDevicestimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMediaDevices, slot: proc(super: QMediaDevicestimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaDevicestimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_timerEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_timerEvent ".} =
  type Cb = proc(super: QMediaDevicestimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMediaDevices(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMediaDevices, event: gen_qcoreevent.QChildEvent): void =


  fQMediaDevices_virtualbase_childEvent(self.h, event.h)

type QMediaDeviceschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMediaDevices, slot: proc(super: QMediaDeviceschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaDeviceschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_childEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_childEvent ".} =
  type Cb = proc(super: QMediaDeviceschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMediaDevices(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMediaDevices, event: gen_qcoreevent.QEvent): void =


  fQMediaDevices_virtualbase_customEvent(self.h, event.h)

type QMediaDevicescustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMediaDevices, slot: proc(super: QMediaDevicescustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaDevicescustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_customEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_customEvent ".} =
  type Cb = proc(super: QMediaDevicescustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMediaDevices(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMediaDevices, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaDevices_virtualbase_connectNotify(self.h, signal.h)

type QMediaDevicesconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMediaDevices, slot: proc(super: QMediaDevicesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaDevicesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_connectNotify(self: ptr cQMediaDevices, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_connectNotify ".} =
  type Cb = proc(super: QMediaDevicesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMediaDevices(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMediaDevices, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaDevices_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaDevicesdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMediaDevices, slot: proc(super: QMediaDevicesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaDevicesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_disconnectNotify(self: ptr cQMediaDevices, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_disconnectNotify ".} =
  type Cb = proc(super: QMediaDevicesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMediaDevices(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMediaDevices): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaDevices_staticMetaObject())
proc delete*(self: QMediaDevices) =
  fcQMediaDevices_delete(self.h)
