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
{.compile("gen_qaudiosource.cpp", cflags).}


import gen_qaudiosource_types
export gen_qaudiosource_types

import
  gen_qaudio,
  gen_qaudiodevice,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudio,
  gen_qaudiodevice,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioSource*{.exportc: "QAudioSource", incompleteStruct.} = object

proc fcQAudioSource_new(): ptr cQAudioSource {.importc: "QAudioSource_new".}
proc fcQAudioSource_new2(audioDeviceInfo: pointer): ptr cQAudioSource {.importc: "QAudioSource_new2".}
proc fcQAudioSource_new3(format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new3".}
proc fcQAudioSource_new4(format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new4".}
proc fcQAudioSource_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new5".}
proc fcQAudioSource_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new6".}
proc fcQAudioSource_metaObject(self: pointer, ): pointer {.importc: "QAudioSource_metaObject".}
proc fcQAudioSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_metacast".}
proc fcQAudioSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSource_metacall".}
proc fcQAudioSource_tr(s: cstring): struct_miqt_string {.importc: "QAudioSource_tr".}
proc fcQAudioSource_isNull(self: pointer, ): bool {.importc: "QAudioSource_isNull".}
proc fcQAudioSource_format(self: pointer, ): pointer {.importc: "QAudioSource_format".}
proc fcQAudioSource_start(self: pointer, device: pointer): void {.importc: "QAudioSource_start".}
proc fcQAudioSource_start2(self: pointer, ): pointer {.importc: "QAudioSource_start2".}
proc fcQAudioSource_stop(self: pointer, ): void {.importc: "QAudioSource_stop".}
proc fcQAudioSource_reset(self: pointer, ): void {.importc: "QAudioSource_reset".}
proc fcQAudioSource_suspend(self: pointer, ): void {.importc: "QAudioSource_suspend".}
proc fcQAudioSource_resume(self: pointer, ): void {.importc: "QAudioSource_resume".}
proc fcQAudioSource_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSource_setBufferSize".}
proc fcQAudioSource_bufferSize(self: pointer, ): int64 {.importc: "QAudioSource_bufferSize".}
proc fcQAudioSource_bytesAvailable(self: pointer, ): int64 {.importc: "QAudioSource_bytesAvailable".}
proc fcQAudioSource_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSource_setVolume".}
proc fcQAudioSource_volume(self: pointer, ): float64 {.importc: "QAudioSource_volume".}
proc fcQAudioSource_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_processedUSecs".}
proc fcQAudioSource_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_elapsedUSecs".}
proc fcQAudioSource_error(self: pointer, ): cint {.importc: "QAudioSource_error".}
proc fcQAudioSource_state(self: pointer, ): cint {.importc: "QAudioSource_state".}
proc fcQAudioSource_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSource_stateChanged".}
proc fQAudioSource_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioSource_connect_stateChanged".}
proc fcQAudioSource_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSource_tr2".}
proc fcQAudioSource_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSource_tr3".}
proc fQAudioSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioSource_virtualbase_metacall".}
proc fcQAudioSource_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_metacall".}
proc fQAudioSource_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSource_virtualbase_event".}
proc fcQAudioSource_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_event".}
proc fQAudioSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSource_virtualbase_eventFilter".}
proc fcQAudioSource_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_eventFilter".}
proc fQAudioSource_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_timerEvent".}
proc fcQAudioSource_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_timerEvent".}
proc fQAudioSource_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_childEvent".}
proc fcQAudioSource_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_childEvent".}
proc fQAudioSource_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_customEvent".}
proc fcQAudioSource_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_customEvent".}
proc fQAudioSource_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSource_virtualbase_connectNotify".}
proc fcQAudioSource_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_connectNotify".}
proc fQAudioSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSource_virtualbase_disconnectNotify".}
proc fcQAudioSource_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_disconnectNotify".}
proc fcQAudioSource_staticMetaObject(): pointer {.importc: "QAudioSource_staticMetaObject".}
proc fcQAudioSource_delete(self: pointer) {.importc: "QAudioSource_delete".}


func init*(T: type QAudioSource, h: ptr cQAudioSource): QAudioSource =
  T(h: h)
proc create*(T: type QAudioSource, ): QAudioSource =

  QAudioSource.init(fcQAudioSource_new())
proc create*(T: type QAudioSource, audioDeviceInfo: gen_qaudiodevice.QAudioDevice): QAudioSource =

  QAudioSource.init(fcQAudioSource_new2(audioDeviceInfo.h))
proc create2*(T: type QAudioSource, format: gen_qaudioformat.QAudioFormat): QAudioSource =

  QAudioSource.init(fcQAudioSource_new3(format.h))
proc create*(T: type QAudioSource, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioSource =

  QAudioSource.init(fcQAudioSource_new4(format.h, parent.h))
proc create2*(T: type QAudioSource, audioDeviceInfo: gen_qaudiodevice.QAudioDevice, format: gen_qaudioformat.QAudioFormat): QAudioSource =

  QAudioSource.init(fcQAudioSource_new5(audioDeviceInfo.h, format.h))
proc create*(T: type QAudioSource, audioDeviceInfo: gen_qaudiodevice.QAudioDevice, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioSource =

  QAudioSource.init(fcQAudioSource_new6(audioDeviceInfo.h, format.h, parent.h))
proc metaObject*(self: QAudioSource, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioSource_metaObject(self.h))

proc metacast*(self: QAudioSource, param1: cstring): pointer =

  fcQAudioSource_metacast(self.h, param1)

proc metacall*(self: QAudioSource, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioSource, s: cstring): string =

  let v_ms = fcQAudioSource_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: QAudioSource, ): bool =

  fcQAudioSource_isNull(self.h)

proc format*(self: QAudioSource, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioSource_format(self.h))

proc start*(self: QAudioSource, device: gen_qiodevice.QIODevice): void =

  fcQAudioSource_start(self.h, device.h)

proc start2*(self: QAudioSource, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioSource_start2(self.h))

proc stop*(self: QAudioSource, ): void =

  fcQAudioSource_stop(self.h)

proc reset*(self: QAudioSource, ): void =

  fcQAudioSource_reset(self.h)

proc suspend*(self: QAudioSource, ): void =

  fcQAudioSource_suspend(self.h)

proc resume*(self: QAudioSource, ): void =

  fcQAudioSource_resume(self.h)

proc setBufferSize*(self: QAudioSource, bytes: int64): void =

  fcQAudioSource_setBufferSize(self.h, bytes)

proc bufferSize*(self: QAudioSource, ): int64 =

  fcQAudioSource_bufferSize(self.h)

proc bytesAvailable*(self: QAudioSource, ): int64 =

  fcQAudioSource_bytesAvailable(self.h)

proc setVolume*(self: QAudioSource, volume: float64): void =

  fcQAudioSource_setVolume(self.h, volume)

proc volume*(self: QAudioSource, ): float64 =

  fcQAudioSource_volume(self.h)

proc processedUSecs*(self: QAudioSource, ): clonglong =

  fcQAudioSource_processedUSecs(self.h)

proc elapsedUSecs*(self: QAudioSource, ): clonglong =

  fcQAudioSource_elapsedUSecs(self.h)

proc error*(self: QAudioSource, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAudioSource_error(self.h))

proc state*(self: QAudioSource, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAudioSource_state(self.h))

proc stateChanged*(self: QAudioSource, state: gen_qaudio.QAudioState): void =

  fcQAudioSource_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAudioSource_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAudioSource, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioSource_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioSource, s: cstring, c: cstring): string =

  let v_ms = fcQAudioSource_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioSource, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioSource, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioSourcemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioSource, slot: proc(super: QAudioSourcemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourcemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_metacall(self: ptr cQAudioSource, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioSource_metacall ".} =
  type Cb = proc(super: QAudioSourcemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioSource(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioSource, event: gen_qcoreevent.QEvent): bool =


  fQAudioSource_virtualbase_event(self.h, event.h)

type QAudioSourceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioSource, slot: proc(super: QAudioSourceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_event(self: ptr cQAudioSource, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSource_event ".} =
  type Cb = proc(super: QAudioSourceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioSource(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioSource, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioSource_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSourceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioSource, slot: proc(super: QAudioSourceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_eventFilter(self: ptr cQAudioSource, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSource_eventFilter ".} =
  type Cb = proc(super: QAudioSourceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioSource(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioSource, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioSource_virtualbase_timerEvent(self.h, event.h)

type QAudioSourcetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioSource, slot: proc(super: QAudioSourcetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourcetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_timerEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_timerEvent ".} =
  type Cb = proc(super: QAudioSourcetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioSource(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioSource, event: gen_qcoreevent.QChildEvent): void =


  fQAudioSource_virtualbase_childEvent(self.h, event.h)

type QAudioSourcechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioSource, slot: proc(super: QAudioSourcechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourcechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_childEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_childEvent ".} =
  type Cb = proc(super: QAudioSourcechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioSource(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioSource, event: gen_qcoreevent.QEvent): void =


  fQAudioSource_virtualbase_customEvent(self.h, event.h)

type QAudioSourcecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioSource, slot: proc(super: QAudioSourcecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourcecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_customEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_customEvent ".} =
  type Cb = proc(super: QAudioSourcecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioSource(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioSource, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSource_virtualbase_connectNotify(self.h, signal.h)

type QAudioSourceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioSource, slot: proc(super: QAudioSourceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_connectNotify(self: ptr cQAudioSource, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_connectNotify ".} =
  type Cb = proc(super: QAudioSourceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioSource(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioSource, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSource_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSourcedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioSource, slot: proc(super: QAudioSourcedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSourcedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_disconnectNotify(self: ptr cQAudioSource, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_disconnectNotify ".} =
  type Cb = proc(super: QAudioSourcedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioSource(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAudioSource): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioSource_staticMetaObject())
proc delete*(self: QAudioSource) =
  fcQAudioSource_delete(self.h)
