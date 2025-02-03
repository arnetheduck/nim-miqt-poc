import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qaudiooutput.cpp", cflags).}


import gen_qaudiooutput_types
export gen_qaudiooutput_types

import
  gen_qaudio,
  gen_qaudiodeviceinfo,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudio,
  gen_qaudiodeviceinfo,
  gen_qaudioformat,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioOutput*{.exportc: "QAudioOutput", incompleteStruct.} = object

proc fcQAudioOutput_new(): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(audioDeviceInfo: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new5".}
proc fcQAudioOutput_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new6".}
proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf8".}
proc fcQAudioOutput_format(self: pointer, ): pointer {.importc: "QAudioOutput_format".}
proc fcQAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAudioOutput_start".}
proc fcQAudioOutput_start2(self: pointer, ): pointer {.importc: "QAudioOutput_start2".}
proc fcQAudioOutput_stop(self: pointer, ): void {.importc: "QAudioOutput_stop".}
proc fcQAudioOutput_reset(self: pointer, ): void {.importc: "QAudioOutput_reset".}
proc fcQAudioOutput_suspend(self: pointer, ): void {.importc: "QAudioOutput_suspend".}
proc fcQAudioOutput_resume(self: pointer, ): void {.importc: "QAudioOutput_resume".}
proc fcQAudioOutput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioOutput_setBufferSize".}
proc fcQAudioOutput_bufferSize(self: pointer, ): cint {.importc: "QAudioOutput_bufferSize".}
proc fcQAudioOutput_bytesFree(self: pointer, ): cint {.importc: "QAudioOutput_bytesFree".}
proc fcQAudioOutput_periodSize(self: pointer, ): cint {.importc: "QAudioOutput_periodSize".}
proc fcQAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioOutput_setNotifyInterval".}
proc fcQAudioOutput_notifyInterval(self: pointer, ): cint {.importc: "QAudioOutput_notifyInterval".}
proc fcQAudioOutput_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_processedUSecs".}
proc fcQAudioOutput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_elapsedUSecs".}
proc fcQAudioOutput_error(self: pointer, ): cint {.importc: "QAudioOutput_error".}
proc fcQAudioOutput_state(self: pointer, ): cint {.importc: "QAudioOutput_state".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_volume(self: pointer, ): float64 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_category(self: pointer, ): struct_miqt_string {.importc: "QAudioOutput_category".}
proc fcQAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAudioOutput_setCategory".}
proc fcQAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioOutput_stateChanged".}
proc fQAudioOutput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_stateChanged".}
proc fcQAudioOutput_notify(self: pointer, ): void {.importc: "QAudioOutput_notify".}
proc fQAudioOutput_connect_notify(self: pointer, slot: int) {.importc: "QAudioOutput_connect_notify".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fcQAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf82".}
proc fcQAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_trUtf83".}
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
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}


func init*(T: type QAudioOutput, h: ptr cQAudioOutput): QAudioOutput =
  T(h: h)
proc create*(T: type QAudioOutput, ): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new())
proc create*(T: type QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new2(audioDeviceInfo.h))
proc create2*(T: type QAudioOutput, format: gen_qaudioformat.QAudioFormat): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new3(format.h))
proc create*(T: type QAudioOutput, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new4(format.h, parent.h))
proc create2*(T: type QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo, format: gen_qaudioformat.QAudioFormat): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new5(audioDeviceInfo.h, format.h))
proc create*(T: type QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioOutput =

  QAudioOutput.init(fcQAudioOutput_new6(audioDeviceInfo.h, format.h, parent.h))
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

proc trUtf8*(_: type QAudioOutput, s: cstring): string =

  let v_ms = fcQAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: QAudioOutput, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioOutput_format(self.h))

proc start*(self: QAudioOutput, device: gen_qiodevice.QIODevice): void =

  fcQAudioOutput_start(self.h, device.h)

proc start2*(self: QAudioOutput, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioOutput_start2(self.h))

proc stop*(self: QAudioOutput, ): void =

  fcQAudioOutput_stop(self.h)

proc reset*(self: QAudioOutput, ): void =

  fcQAudioOutput_reset(self.h)

proc suspend*(self: QAudioOutput, ): void =

  fcQAudioOutput_suspend(self.h)

proc resume*(self: QAudioOutput, ): void =

  fcQAudioOutput_resume(self.h)

proc setBufferSize*(self: QAudioOutput, bytes: cint): void =

  fcQAudioOutput_setBufferSize(self.h, bytes)

proc bufferSize*(self: QAudioOutput, ): cint =

  fcQAudioOutput_bufferSize(self.h)

proc bytesFree*(self: QAudioOutput, ): cint =

  fcQAudioOutput_bytesFree(self.h)

proc periodSize*(self: QAudioOutput, ): cint =

  fcQAudioOutput_periodSize(self.h)

proc setNotifyInterval*(self: QAudioOutput, milliSeconds: cint): void =

  fcQAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: QAudioOutput, ): cint =

  fcQAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: QAudioOutput, ): clonglong =

  fcQAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: QAudioOutput, ): clonglong =

  fcQAudioOutput_elapsedUSecs(self.h)

proc error*(self: QAudioOutput, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAudioOutput_error(self.h))

proc state*(self: QAudioOutput, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAudioOutput_state(self.h))

proc setVolume*(self: QAudioOutput, volume: float64): void =

  fcQAudioOutput_setVolume(self.h, volume)

proc volume*(self: QAudioOutput, ): float64 =

  fcQAudioOutput_volume(self.h)

proc category*(self: QAudioOutput, ): string =

  let v_ms = fcQAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: QAudioOutput, category: string): void =

  fcQAudioOutput_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc stateChanged*(self: QAudioOutput, state: gen_qaudio.QAudioState): void =

  fcQAudioOutput_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAudioOutput_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAudioOutput, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: QAudioOutput, ): void =

  fcQAudioOutput_notify(self.h)

proc miqt_exec_callback_QAudioOutput_notify(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotify*(self: QAudioOutput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutput_connect_notify(self.h, cast[int](addr tmp[]))
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

proc trUtf82*(_: type QAudioOutput, s: cstring, c: cstring): string =

  let v_ms = fcQAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioOutput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

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
proc delete*(self: QAudioOutput) =
  fcQAudioOutput_delete(self.h)
