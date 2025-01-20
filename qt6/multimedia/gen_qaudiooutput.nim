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
{.compile("gen_qaudiooutput.cpp", cflags).}


import gen_qaudiooutput_types
export gen_qaudiooutput_types

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

type cQAudioOutput*{.exportc: "QAudioOutput", incompleteStruct.} = object

proc fcQAudioOutput_new(): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(device: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(device: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_device(self: pointer, ): pointer {.importc: "QAudioOutput_device".}
proc fcQAudioOutput_volume(self: pointer, ): float32 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_isMuted(self: pointer, ): bool {.importc: "QAudioOutput_isMuted".}
proc fcQAudioOutput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioOutput_setDevice".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioOutput_setMuted".}
proc fcQAudioOutput_deviceChanged(self: pointer, ): void {.importc: "QAudioOutput_deviceChanged".}
proc fQAudioOutput_connect_deviceChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_deviceChanged".}
proc fcQAudioOutput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioOutput_volumeChanged".}
proc fQAudioOutput_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_volumeChanged".}
proc fcQAudioOutput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioOutput_mutedChanged".}
proc fQAudioOutput_connect_mutedChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_mutedChanged".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fQAudioOutput_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioOutput_virtualbase_metaObject".}
proc fcQAudioOutput_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metaObject".}
proc fQAudioOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioOutput_virtualbase_metacast".}
proc fcQAudioOutput_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metacast".}
proc fQAudioOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioOutput_virtualbase_metacall".}
proc fcQAudioOutput_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metacall".}
proc fQAudioOutput_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioOutput_virtualbase_event".}
proc fcQAudioOutput_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_event".}
proc fQAudioOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioOutput_virtualbase_eventFilter".}
proc fcQAudioOutput_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_eventFilter".}
proc fQAudioOutput_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_timerEvent".}
proc fcQAudioOutput_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_timerEvent".}
proc fQAudioOutput_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_childEvent".}
proc fcQAudioOutput_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_childEvent".}
proc fQAudioOutput_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_customEvent".}
proc fcQAudioOutput_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_customEvent".}
proc fQAudioOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioOutput_virtualbase_connectNotify".}
proc fcQAudioOutput_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_connectNotify".}
proc fQAudioOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioOutput_virtualbase_disconnectNotify".}
proc fcQAudioOutput_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_disconnectNotify".}
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}


func init*(T: type QAudioOutput, h: ptr cQAudioOutput): QAudioOutput =
  T(h: h)
proc create*(T: type QAudioOutput, ): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new())
proc create*(T: type QAudioOutput, device: gen_qaudiodevice.QAudioDevice): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new2(device.h))
proc create2*(T: type QAudioOutput, parent: gen_qobject.QObject): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new3(parent.h))
proc create*(T: type QAudioOutput, device: gen_qaudiodevice.QAudioDevice, parent: gen_qobject.QObject): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new4(device.h, parent.h))
proc metaObject*(self: QAudioOutput, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioOutput_metaObject(self.h))

proc metacast*(self: QAudioOutput, param1: cstring): pointer =

  fcQAudioOutput_metacast(self.h, param1)

proc metacall*(self: QAudioOutput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioOutput, s: cstring): string =

  let v_ms = fcQAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: QAudioOutput, ): gen_qaudiodevice.QAudioDevice =

  gen_qaudiodevice.QAudioDevice(h: fcQAudioOutput_device(self.h))

proc volume*(self: QAudioOutput, ): float32 =

  fcQAudioOutput_volume(self.h)

proc isMuted*(self: QAudioOutput, ): bool =

  fcQAudioOutput_isMuted(self.h)

proc setDevice*(self: QAudioOutput, device: gen_qaudiodevice.QAudioDevice): void =

  fcQAudioOutput_setDevice(self.h, device.h)

proc setVolume*(self: QAudioOutput, volume: float32): void =

  fcQAudioOutput_setVolume(self.h, volume)

proc setMuted*(self: QAudioOutput, muted: bool): void =

  fcQAudioOutput_setMuted(self.h, muted)

proc deviceChanged*(self: QAudioOutput, ): void =

  fcQAudioOutput_deviceChanged(self.h)

proc miqt_exec_callback_QAudioOutput_deviceChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondeviceChanged*(self: QAudioOutput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutput_connect_deviceChanged(self.h, cast[int](addr tmp[]))
proc volumeChanged*(self: QAudioOutput, volume: float32): void =

  fcQAudioOutput_volumeChanged(self.h, volume)

proc miqt_exec_callback_QAudioOutput_volumeChanged(slot: int, volume: float32) {.exportc.} =
  type Cb = proc(volume: float32)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = volume


  nimfunc[](slotval1)

proc onvolumeChanged*(self: QAudioOutput, slot: proc(volume: float32)) =
  type Cb = proc(volume: float32)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutput_connect_volumeChanged(self.h, cast[int](addr tmp[]))
proc mutedChanged*(self: QAudioOutput, muted: bool): void =

  fcQAudioOutput_mutedChanged(self.h, muted)

proc miqt_exec_callback_QAudioOutput_mutedChanged(slot: int, muted: bool) {.exportc.} =
  type Cb = proc(muted: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = muted


  nimfunc[](slotval1)

proc onmutedChanged*(self: QAudioOutput, slot: proc(muted: bool)) =
  type Cb = proc(muted: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutput_connect_mutedChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioOutput, s: cstring, c: cstring): string =

  let v_ms = fcQAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioOutput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAudioOutput, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAudioOutput_virtualbase_metaObject(self.h))

type QAudioOutputmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAudioOutput, slot: proc(super: QAudioOutputmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metaObject(self: ptr cQAudioOutput, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioOutput_metaObject ".} =
  type Cb = proc(super: QAudioOutputmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAudioOutput(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAudioOutput, param1: cstring): pointer =


  fQAudioOutput_virtualbase_metacast(self.h, param1)

type QAudioOutputmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAudioOutput, slot: proc(super: QAudioOutputmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metacast(self: ptr cQAudioOutput, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioOutput_metacast ".} =
  type Cb = proc(super: QAudioOutputmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAudioOutput(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAudioOutput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioOutputmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioOutput, slot: proc(super: QAudioOutputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metacall(self: ptr cQAudioOutput, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioOutput_metacall ".} =
  type Cb = proc(super: QAudioOutputmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioOutput(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioOutput, event: gen_qcoreevent.QEvent): bool =


  fQAudioOutput_virtualbase_event(self.h, event.h)

type QAudioOutputeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioOutput, slot: proc(super: QAudioOutputeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_event(self: ptr cQAudioOutput, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioOutput_event ".} =
  type Cb = proc(super: QAudioOutputeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioOutput(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioOutput, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioOutputeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioOutput, slot: proc(super: QAudioOutputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_eventFilter(self: ptr cQAudioOutput, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioOutput_eventFilter ".} =
  type Cb = proc(super: QAudioOutputeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioOutput(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioOutput, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioOutput_virtualbase_timerEvent(self.h, event.h)

type QAudioOutputtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioOutput, slot: proc(super: QAudioOutputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_timerEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_timerEvent ".} =
  type Cb = proc(super: QAudioOutputtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioOutput(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioOutput, event: gen_qcoreevent.QChildEvent): void =


  fQAudioOutput_virtualbase_childEvent(self.h, event.h)

type QAudioOutputchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioOutput, slot: proc(super: QAudioOutputchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_childEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_childEvent ".} =
  type Cb = proc(super: QAudioOutputchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioOutput(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioOutput, event: gen_qcoreevent.QEvent): void =


  fQAudioOutput_virtualbase_customEvent(self.h, event.h)

type QAudioOutputcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioOutput, slot: proc(super: QAudioOutputcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_customEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_customEvent ".} =
  type Cb = proc(super: QAudioOutputcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioOutput(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioOutput, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

type QAudioOutputconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioOutput, slot: proc(super: QAudioOutputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_connectNotify(self: ptr cQAudioOutput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_connectNotify ".} =
  type Cb = proc(super: QAudioOutputconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioOutput(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioOutput, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioOutputdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioOutput, slot: proc(super: QAudioOutputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioOutputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_disconnectNotify(self: ptr cQAudioOutput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_disconnectNotify ".} =
  type Cb = proc(super: QAudioOutputdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioOutput(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAudioOutput): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioOutput_staticMetaObject())
proc delete*(self: QAudioOutput) =
  fcQAudioOutput_delete(self.h)
