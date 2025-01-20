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
{.compile("gen_qaudioinput.cpp", cflags).}


import gen_qaudioinput_types
export gen_qaudioinput_types

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

type cQAudioInput*{.exportc: "QAudioInput", incompleteStruct.} = object

proc fcQAudioInput_new(): ptr cQAudioInput {.importc: "QAudioInput_new".}
proc fcQAudioInput_new2(audioDeviceInfo: pointer): ptr cQAudioInput {.importc: "QAudioInput_new2".}
proc fcQAudioInput_new3(format: pointer): ptr cQAudioInput {.importc: "QAudioInput_new3".}
proc fcQAudioInput_new4(format: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new4".}
proc fcQAudioInput_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioInput {.importc: "QAudioInput_new5".}
proc fcQAudioInput_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new6".}
proc fcQAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAudioInput_metaObject".}
proc fcQAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInput_metacast".}
proc fcQAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInput_metacall".}
proc fcQAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAudioInput_tr".}
proc fcQAudioInput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioInput_trUtf8".}
proc fcQAudioInput_format(self: pointer, ): pointer {.importc: "QAudioInput_format".}
proc fcQAudioInput_start(self: pointer, device: pointer): void {.importc: "QAudioInput_start".}
proc fcQAudioInput_start2(self: pointer, ): pointer {.importc: "QAudioInput_start2".}
proc fcQAudioInput_stop(self: pointer, ): void {.importc: "QAudioInput_stop".}
proc fcQAudioInput_reset(self: pointer, ): void {.importc: "QAudioInput_reset".}
proc fcQAudioInput_suspend(self: pointer, ): void {.importc: "QAudioInput_suspend".}
proc fcQAudioInput_resume(self: pointer, ): void {.importc: "QAudioInput_resume".}
proc fcQAudioInput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioInput_setBufferSize".}
proc fcQAudioInput_bufferSize(self: pointer, ): cint {.importc: "QAudioInput_bufferSize".}
proc fcQAudioInput_bytesReady(self: pointer, ): cint {.importc: "QAudioInput_bytesReady".}
proc fcQAudioInput_periodSize(self: pointer, ): cint {.importc: "QAudioInput_periodSize".}
proc fcQAudioInput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioInput_setNotifyInterval".}
proc fcQAudioInput_notifyInterval(self: pointer, ): cint {.importc: "QAudioInput_notifyInterval".}
proc fcQAudioInput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioInput_setVolume".}
proc fcQAudioInput_volume(self: pointer, ): float64 {.importc: "QAudioInput_volume".}
proc fcQAudioInput_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioInput_processedUSecs".}
proc fcQAudioInput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioInput_elapsedUSecs".}
proc fcQAudioInput_error(self: pointer, ): cint {.importc: "QAudioInput_error".}
proc fcQAudioInput_state(self: pointer, ): cint {.importc: "QAudioInput_state".}
proc fcQAudioInput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioInput_stateChanged".}
proc fQAudioInput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_stateChanged".}
proc fcQAudioInput_notify(self: pointer, ): void {.importc: "QAudioInput_notify".}
proc fQAudioInput_connect_notify(self: pointer, slot: int) {.importc: "QAudioInput_connect_notify".}
proc fcQAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_tr2".}
proc fcQAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_tr3".}
proc fcQAudioInput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_trUtf82".}
proc fcQAudioInput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_trUtf83".}
proc fQAudioInput_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioInput_virtualbase_metaObject".}
proc fcQAudioInput_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metaObject".}
proc fQAudioInput_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioInput_virtualbase_metacast".}
proc fcQAudioInput_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metacast".}
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
proc fcQAudioInput_staticMetaObject(): pointer {.importc: "QAudioInput_staticMetaObject".}
proc fcQAudioInput_delete(self: pointer) {.importc: "QAudioInput_delete".}


func init*(T: type QAudioInput, h: ptr cQAudioInput): QAudioInput =
  T(h: h)
proc create*(T: type QAudioInput, ): QAudioInput =

  QAudioInput.init(fcQAudioInput_new())
proc create*(T: type QAudioInput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo): QAudioInput =

  QAudioInput.init(fcQAudioInput_new2(audioDeviceInfo.h))
proc create2*(T: type QAudioInput, format: gen_qaudioformat.QAudioFormat): QAudioInput =

  QAudioInput.init(fcQAudioInput_new3(format.h))
proc create*(T: type QAudioInput, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioInput =

  QAudioInput.init(fcQAudioInput_new4(format.h, parent.h))
proc create2*(T: type QAudioInput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo, format: gen_qaudioformat.QAudioFormat): QAudioInput =

  QAudioInput.init(fcQAudioInput_new5(audioDeviceInfo.h, format.h))
proc create*(T: type QAudioInput, audioDeviceInfo: gen_qaudiodeviceinfo.QAudioDeviceInfo, format: gen_qaudioformat.QAudioFormat, parent: gen_qobject.QObject): QAudioInput =

  QAudioInput.init(fcQAudioInput_new6(audioDeviceInfo.h, format.h, parent.h))
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

proc trUtf8*(_: type QAudioInput, s: cstring): string =

  let v_ms = fcQAudioInput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: QAudioInput, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAudioInput_format(self.h))

proc start*(self: QAudioInput, device: gen_qiodevice.QIODevice): void =

  fcQAudioInput_start(self.h, device.h)

proc start2*(self: QAudioInput, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAudioInput_start2(self.h))

proc stop*(self: QAudioInput, ): void =

  fcQAudioInput_stop(self.h)

proc reset*(self: QAudioInput, ): void =

  fcQAudioInput_reset(self.h)

proc suspend*(self: QAudioInput, ): void =

  fcQAudioInput_suspend(self.h)

proc resume*(self: QAudioInput, ): void =

  fcQAudioInput_resume(self.h)

proc setBufferSize*(self: QAudioInput, bytes: cint): void =

  fcQAudioInput_setBufferSize(self.h, bytes)

proc bufferSize*(self: QAudioInput, ): cint =

  fcQAudioInput_bufferSize(self.h)

proc bytesReady*(self: QAudioInput, ): cint =

  fcQAudioInput_bytesReady(self.h)

proc periodSize*(self: QAudioInput, ): cint =

  fcQAudioInput_periodSize(self.h)

proc setNotifyInterval*(self: QAudioInput, milliSeconds: cint): void =

  fcQAudioInput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: QAudioInput, ): cint =

  fcQAudioInput_notifyInterval(self.h)

proc setVolume*(self: QAudioInput, volume: float64): void =

  fcQAudioInput_setVolume(self.h, volume)

proc volume*(self: QAudioInput, ): float64 =

  fcQAudioInput_volume(self.h)

proc processedUSecs*(self: QAudioInput, ): clonglong =

  fcQAudioInput_processedUSecs(self.h)

proc elapsedUSecs*(self: QAudioInput, ): clonglong =

  fcQAudioInput_elapsedUSecs(self.h)

proc error*(self: QAudioInput, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAudioInput_error(self.h))

proc state*(self: QAudioInput, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAudioInput_state(self.h))

proc stateChanged*(self: QAudioInput, state: gen_qaudio.QAudioState): void =

  fcQAudioInput_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAudioInput_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAudioInput, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioInput_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: QAudioInput, ): void =

  fcQAudioInput_notify(self.h)

proc miqt_exec_callback_QAudioInput_notify(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotify*(self: QAudioInput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioInput_connect_notify(self.h, cast[int](addr tmp[]))
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

proc trUtf82*(_: type QAudioInput, s: cstring, c: cstring): string =

  let v_ms = fcQAudioInput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioInput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioInput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAudioInput, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAudioInput_virtualbase_metaObject(self.h))

type QAudioInputmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAudioInput, slot: proc(super: QAudioInputmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metaObject(self: ptr cQAudioInput, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioInput_metaObject ".} =
  type Cb = proc(super: QAudioInputmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAudioInput(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAudioInput, param1: cstring): pointer =


  fQAudioInput_virtualbase_metacast(self.h, param1)

type QAudioInputmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAudioInput, slot: proc(super: QAudioInputmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAudioInputmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metacast(self: ptr cQAudioInput, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioInput_metacast ".} =
  type Cb = proc(super: QAudioInputmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAudioInput(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
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
proc staticMetaObject*(_: type QAudioInput): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioInput_staticMetaObject())
proc delete*(self: QAudioInput) =
  fcQAudioInput_delete(self.h)
