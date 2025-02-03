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
{.compile("gen_qaudioinput.cpp", cflags).}


import gen_qaudioinput_types
export gen_qaudioinput_types

import
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudiodevice,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioInput*{.exportc: "QAudioInput", incompleteStruct.} = object

proc fcQAudioInput_new(): ptr cQAudioInput {.importc: "QAudioInput_new".}
proc fcQAudioInput_new2(deviceInfo: pointer): ptr cQAudioInput {.importc: "QAudioInput_new2".}
proc fcQAudioInput_new3(parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new3".}
proc fcQAudioInput_new4(deviceInfo: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new4".}
proc fcQAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAudioInput_metaObject".}
proc fcQAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInput_metacast".}
proc fcQAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInput_metacall".}
proc fcQAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAudioInput_tr".}
proc fcQAudioInput_device(self: pointer, ): pointer {.importc: "QAudioInput_device".}
proc fcQAudioInput_volume(self: pointer, ): float32 {.importc: "QAudioInput_volume".}
proc fcQAudioInput_isMuted(self: pointer, ): bool {.importc: "QAudioInput_isMuted".}
proc fcQAudioInput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioInput_setDevice".}
proc fcQAudioInput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioInput_setVolume".}
proc fcQAudioInput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioInput_setMuted".}
proc fcQAudioInput_deviceChanged(self: pointer, ): void {.importc: "QAudioInput_deviceChanged".}
proc fQAudioInput_connect_deviceChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_deviceChanged".}
proc fcQAudioInput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioInput_volumeChanged".}
proc fQAudioInput_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_volumeChanged".}
proc fcQAudioInput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioInput_mutedChanged".}
proc fQAudioInput_connect_mutedChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_mutedChanged".}
proc fcQAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_tr2".}
proc fcQAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_tr3".}
proc fQAudioInput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioInput_virtualbase_metacall".}
proc fcQAudioInput_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metacall".}
proc fQAudioInput_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioInput_virtualbase_event".}
proc fcQAudioInput_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_event".}
proc fQAudioInput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioInput_virtualbase_eventFilter".}
proc fcQAudioInput_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_eventFilter".}
proc fQAudioInput_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_timerEvent".}
proc fcQAudioInput_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_timerEvent".}
proc fQAudioInput_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_childEvent".}
proc fcQAudioInput_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_childEvent".}
proc fQAudioInput_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_customEvent".}
proc fcQAudioInput_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_customEvent".}
proc fQAudioInput_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioInput_virtualbase_connectNotify".}
proc fcQAudioInput_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_connectNotify".}
proc fQAudioInput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioInput_virtualbase_disconnectNotify".}
proc fcQAudioInput_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_disconnectNotify".}
proc fcQAudioInput_delete(self: pointer) {.importc: "QAudioInput_delete".}


func init*(T: type QAudioInput, h: ptr cQAudioInput): QAudioInput =
  T(h: h)
proc create*(T: type QAudioInput, ): QAudioInput =

  QAudioInput.init(fcQAudioInput_new())
proc create*(T: type QAudioInput, deviceInfo: gen_qaudiodevice.QAudioDevice): QAudioInput =

  QAudioInput.init(fcQAudioInput_new2(deviceInfo.h))
proc create2*(T: type QAudioInput, parent: gen_qobject.QObject): QAudioInput =

  QAudioInput.init(fcQAudioInput_new3(parent.h))
proc create*(T: type QAudioInput, deviceInfo: gen_qaudiodevice.QAudioDevice, parent: gen_qobject.QObject): QAudioInput =

  QAudioInput.init(fcQAudioInput_new4(deviceInfo.h, parent.h))
proc metaObject*(self: QAudioInput, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioInput_metaObject(self.h))

proc metacast*(self: QAudioInput, param1: cstring): pointer =

  fcQAudioInput_metacast(self.h, param1)

proc metacall*(self: QAudioInput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioInput, s: cstring): string =

  let v_ms = fcQAudioInput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: QAudioInput, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQAudioInput_device(self.h))

proc volume*(self: QAudioInput, ): float32 =

  fcQAudioInput_volume(self.h)

proc isMuted*(self: QAudioInput, ): bool =

  fcQAudioInput_isMuted(self.h)

proc setDevice*(self: QAudioInput, device: gen_qaudiodevice.QAudioDevice): void =

  fcQAudioInput_setDevice(self.h, device.h)

proc setVolume*(self: QAudioInput, volume: float32): void =

  fcQAudioInput_setVolume(self.h, volume)

proc setMuted*(self: QAudioInput, muted: bool): void =

  fcQAudioInput_setMuted(self.h, muted)

proc deviceChanged*(self: QAudioInput, ): void =

  fcQAudioInput_deviceChanged(self.h)

proc miqt_exec_callback_QAudioInput_deviceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondeviceChanged*(self: QAudioInput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioInput_connect_deviceChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QAudioInput, volume: float32): void =

  fcQAudioInput_volumeChanged(self.h, volume)

proc miqt_exec_callback_QAudioInput_volumeChanged(slot: int, volume: float32) {.exportc.} =
  type Cb = proc(volume: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QAudioInput, slot: proc(volume: float32)) =
  type Cb = proc(volume: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioInput_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QAudioInput, muted: bool): void =

  fcQAudioInput_mutedChanged(self.h, muted)

proc miqt_exec_callback_QAudioInput_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QAudioInput, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioInput_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioInput, s: cstring, c: cstring): string =

  let v_ms = fcQAudioInput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioInput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioInput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioInput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioInput_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioInputmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioInput, slot: proc(super: QAudioInputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metacall(self: ptr cQAudioInput, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioInput_metacall ".} =
  type Cb = proc(super: QAudioInputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioInput(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioInput, event: gen_qcoreevent.QEvent): bool =


  fQAudioInput_virtualbase_event(self.h, event.h)

type QAudioInputeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioInput, slot: proc(super: QAudioInputeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_event(self: ptr cQAudioInput, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioInput_event ".} =
  type Cb = proc(super: QAudioInputeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioInput(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioInput, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioInput_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioInputeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioInput, slot: proc(super: QAudioInputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_eventFilter(self: ptr cQAudioInput, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioInput_eventFilter ".} =
  type Cb = proc(super: QAudioInputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioInput(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioInput, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioInput_virtualbase_timerEvent(self.h, event.h)

type QAudioInputtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioInput, slot: proc(super: QAudioInputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_timerEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_timerEvent ".} =
  type Cb = proc(super: QAudioInputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioInput(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioInput, event: gen_qcoreevent.QChildEvent): void =


  fQAudioInput_virtualbase_childEvent(self.h, event.h)

type QAudioInputchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioInput, slot: proc(super: QAudioInputchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_childEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_childEvent ".} =
  type Cb = proc(super: QAudioInputchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioInput(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioInput, event: gen_qcoreevent.QEvent): void =


  fQAudioInput_virtualbase_customEvent(self.h, event.h)

type QAudioInputcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioInput, slot: proc(super: QAudioInputcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_customEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_customEvent ".} =
  type Cb = proc(super: QAudioInputcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioInput(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioInput, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioInput_virtualbase_connectNotify(self.h, signal.h)

type QAudioInputconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioInput, slot: proc(super: QAudioInputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_connectNotify(self: ptr cQAudioInput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_connectNotify ".} =
  type Cb = proc(super: QAudioInputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioInput(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioInput, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioInput_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioInputdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioInput, slot: proc(super: QAudioInputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_disconnectNotify(self: ptr cQAudioInput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_disconnectNotify ".} =
  type Cb = proc(super: QAudioInputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioInput(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioInput) =
  fcQAudioInput_delete(self.h)
