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
{.compile("gen_qaudiosink.cpp", cflags).}


import gen_qaudiosink_types
export gen_qaudiosink_types

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

type cQAudioSink*{.exportc: "QAudioSink", incompleteStruct.} = object

proc fcQAudioSink_new(): ptr cQAudioSink {.importc: "QAudioSink_new".}
proc fcQAudioSink_new2(audioDeviceInfo: pointer): ptr cQAudioSink {.importc: "QAudioSink_new2".}
proc fcQAudioSink_new3(format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new3".}
proc fcQAudioSink_new4(format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new4".}
proc fcQAudioSink_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new5".}
proc fcQAudioSink_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new6".}
proc fcQAudioSink_metaObject(self: pointer, ): pointer {.importc: "QAudioSink_metaObject".}
proc fcQAudioSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSink_metacast".}
proc fcQAudioSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSink_metacall".}
proc fcQAudioSink_tr(s: cstring): struct_miqt_string {.importc: "QAudioSink_tr".}
proc fcQAudioSink_isNull(self: pointer, ): bool {.importc: "QAudioSink_isNull".}
proc fcQAudioSink_format(self: pointer, ): pointer {.importc: "QAudioSink_format".}
proc fcQAudioSink_start(self: pointer, device: pointer): void {.importc: "QAudioSink_start".}
proc fcQAudioSink_start2(self: pointer, ): pointer {.importc: "QAudioSink_start2".}
proc fcQAudioSink_stop(self: pointer, ): void {.importc: "QAudioSink_stop".}
proc fcQAudioSink_reset(self: pointer, ): void {.importc: "QAudioSink_reset".}
proc fcQAudioSink_suspend(self: pointer, ): void {.importc: "QAudioSink_suspend".}
proc fcQAudioSink_resume(self: pointer, ): void {.importc: "QAudioSink_resume".}
proc fcQAudioSink_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSink_setBufferSize".}
proc fcQAudioSink_bufferSize(self: pointer, ): int64 {.importc: "QAudioSink_bufferSize".}
proc fcQAudioSink_bytesFree(self: pointer, ): int64 {.importc: "QAudioSink_bytesFree".}
proc fcQAudioSink_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioSink_processedUSecs".}
proc fcQAudioSink_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioSink_elapsedUSecs".}
proc fcQAudioSink_error(self: pointer, ): cint {.importc: "QAudioSink_error".}
proc fcQAudioSink_state(self: pointer, ): cint {.importc: "QAudioSink_state".}
proc fcQAudioSink_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSink_setVolume".}
proc fcQAudioSink_volume(self: pointer, ): float64 {.importc: "QAudioSink_volume".}
proc fcQAudioSink_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSink_stateChanged".}
proc fQAudioSink_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioSink_connect_stateChanged".}
proc fcQAudioSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSink_tr2".}
proc fcQAudioSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSink_tr3".}
proc fQAudioSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioSink_virtualbase_metacall".}
proc fcQAudioSink_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_metacall".}
proc fQAudioSink_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSink_virtualbase_event".}
proc fcQAudioSink_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_event".}
proc fQAudioSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSink_virtualbase_eventFilter".}
proc fcQAudioSink_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_eventFilter".}
proc fQAudioSink_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_timerEvent".}
proc fcQAudioSink_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_timerEvent".}
proc fQAudioSink_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_childEvent".}
proc fcQAudioSink_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_childEvent".}
proc fQAudioSink_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_customEvent".}
proc fcQAudioSink_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_customEvent".}
proc fQAudioSink_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSink_virtualbase_connectNotify".}
proc fcQAudioSink_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_connectNotify".}
proc fQAudioSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSink_virtualbase_disconnectNotify".}
proc fcQAudioSink_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_disconnectNotify".}
proc fcQAudioSink_delete(self: pointer) {.importc: "QAudioSink_delete".}


func init*(T: type QAudioSink, h: ptr cQAudioSink): QAudioSink =
  T(h: h)
proc create*(T: type QAudioSink, ): QAudioSink =

  QAudioSink.init(fcQAudioSink_new())
proc create*(T: type QAudioSink, audioDeviceInfo: gen_qaudiodevice.QAudioDevice): QAudioSink =

  QAudioSink.init(fcQAudioSink_new2(audioDeviceInfo.h))
proc create2*(T: type QAudioSink, format: gen_qaudioformat.QAudioFormat): QAudioSink =

  QAudioSink.init(fcQAudioSink_new3(format.h))
proc create*(T: type QAudioSink, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioSink =

  QAudioSink.init(fcQAudioSink_new4(format.h, parent.h))
proc create2*(T: type QAudioSink, audioDeviceInfo: gen_qaudiodevice.QAudioDevice, format: gen_qaudioformat.QAudioFormat): QAudioSink =

  QAudioSink.init(fcQAudioSink_new5(audioDeviceInfo.h, format.h))
proc create*(T: type QAudioSink, audioDeviceInfo: gen_qaudiodevice.QAudioDevice, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioSink =

  QAudioSink.init(fcQAudioSink_new6(audioDeviceInfo.h, format.h, parent.h))
proc metaObject*(self: QAudioSink, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioSink_metaObject(self.h))

proc metacast*(self: QAudioSink, param1: cstring): pointer =

  fcQAudioSink_metacast(self.h, param1)

proc metacall*(self: QAudioSink, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioSink, s: cstring): string =

  let v_ms = fcQAudioSink_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: QAudioSink, ): bool =

  fcQAudioSink_isNull(self.h)

proc format*(self: QAudioSink, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioSink_format(self.h))

proc start*(self: QAudioSink, device: gen_qiodevice.QIODevice): void =

  fcQAudioSink_start(self.h, device.h)

proc start2*(self: QAudioSink, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioSink_start2(self.h))

proc stop*(self: QAudioSink, ): void =

  fcQAudioSink_stop(self.h)

proc reset*(self: QAudioSink, ): void =

  fcQAudioSink_reset(self.h)

proc suspend*(self: QAudioSink, ): void =

  fcQAudioSink_suspend(self.h)

proc resume*(self: QAudioSink, ): void =

  fcQAudioSink_resume(self.h)

proc setBufferSize*(self: QAudioSink, bytes: int64): void =

  fcQAudioSink_setBufferSize(self.h, bytes)

proc bufferSize*(self: QAudioSink, ): int64 =

  fcQAudioSink_bufferSize(self.h)

proc bytesFree*(self: QAudioSink, ): int64 =

  fcQAudioSink_bytesFree(self.h)

proc processedUSecs*(self: QAudioSink, ): clonglong =

  fcQAudioSink_processedUSecs(self.h)

proc elapsedUSecs*(self: QAudioSink, ): clonglong =

  fcQAudioSink_elapsedUSecs(self.h)

proc error*(self: QAudioSink, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAudioSink_error(self.h))

proc state*(self: QAudioSink, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAudioSink_state(self.h))

proc setVolume*(self: QAudioSink, volume: float64): void =

  fcQAudioSink_setVolume(self.h, volume)

proc volume*(self: QAudioSink, ): float64 =

  fcQAudioSink_volume(self.h)

proc stateChanged*(self: QAudioSink, state: gen_qaudio.QAudioState): void =

  fcQAudioSink_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAudioSink_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAudioSink, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioSink_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioSink, s: cstring, c: cstring): string =

  let v_ms = fcQAudioSink_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioSink, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioSink, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioSinkmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioSink, slot: proc(super: QAudioSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_metacall(self: ptr cQAudioSink, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioSink_metacall ".} =
  type Cb = proc(super: QAudioSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioSink(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioSink, event: gen_qcoreevent.QEvent): bool =


  fQAudioSink_virtualbase_event(self.h, event.h)

type QAudioSinkeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioSink, slot: proc(super: QAudioSinkeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_event(self: ptr cQAudioSink, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSink_event ".} =
  type Cb = proc(super: QAudioSinkeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioSink(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioSink, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioSink_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSinkeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioSink, slot: proc(super: QAudioSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_eventFilter(self: ptr cQAudioSink, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSink_eventFilter ".} =
  type Cb = proc(super: QAudioSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioSink(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioSink, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioSink_virtualbase_timerEvent(self.h, event.h)

type QAudioSinktimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioSink, slot: proc(super: QAudioSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_timerEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_timerEvent ".} =
  type Cb = proc(super: QAudioSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioSink(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioSink, event: gen_qcoreevent.QChildEvent): void =


  fQAudioSink_virtualbase_childEvent(self.h, event.h)

type QAudioSinkchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioSink, slot: proc(super: QAudioSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_childEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_childEvent ".} =
  type Cb = proc(super: QAudioSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioSink(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioSink, event: gen_qcoreevent.QEvent): void =


  fQAudioSink_virtualbase_customEvent(self.h, event.h)

type QAudioSinkcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioSink, slot: proc(super: QAudioSinkcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_customEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_customEvent ".} =
  type Cb = proc(super: QAudioSinkcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioSink(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioSink, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSink_virtualbase_connectNotify(self.h, signal.h)

type QAudioSinkconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioSink, slot: proc(super: QAudioSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_connectNotify(self: ptr cQAudioSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_connectNotify ".} =
  type Cb = proc(super: QAudioSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioSink(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioSink, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSink_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSinkdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioSink, slot: proc(super: QAudioSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_disconnectNotify(self: ptr cQAudioSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_disconnectNotify ".} =
  type Cb = proc(super: QAudioSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioSink(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioSink) =
  fcQAudioSink_delete(self.h)
