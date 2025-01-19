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
{.compile("gen_qmediacapturesession.cpp", cflags).}


import gen_qmediacapturesession_types
export gen_qmediacapturesession_types

import
  gen_qaudioinput,
  gen_qaudiooutput,
  gen_qcamera,
  gen_qcoreevent,
  gen_qimagecapture,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideosink
export
  gen_qaudioinput,
  gen_qaudiooutput,
  gen_qcamera,
  gen_qcoreevent,
  gen_qimagecapture,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideosink

type cQMediaCaptureSession*{.exportc: "QMediaCaptureSession", incompleteStruct.} = object

proc fcQMediaCaptureSession_new(): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new".}
proc fcQMediaCaptureSession_new2(parent: pointer): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new2".}
proc fcQMediaCaptureSession_metaObject(self: pointer, ): pointer {.importc: "QMediaCaptureSession_metaObject".}
proc fcQMediaCaptureSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaCaptureSession_metacast".}
proc fcQMediaCaptureSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaCaptureSession_metacall".}
proc fcQMediaCaptureSession_tr(s: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr".}
proc fcQMediaCaptureSession_audioInput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_audioInput".}
proc fcQMediaCaptureSession_setAudioInput(self: pointer, input: pointer): void {.importc: "QMediaCaptureSession_setAudioInput".}
proc fcQMediaCaptureSession_camera(self: pointer, ): pointer {.importc: "QMediaCaptureSession_camera".}
proc fcQMediaCaptureSession_setCamera(self: pointer, camera: pointer): void {.importc: "QMediaCaptureSession_setCamera".}
proc fcQMediaCaptureSession_imageCapture(self: pointer, ): pointer {.importc: "QMediaCaptureSession_imageCapture".}
proc fcQMediaCaptureSession_setImageCapture(self: pointer, imageCapture: pointer): void {.importc: "QMediaCaptureSession_setImageCapture".}
proc fcQMediaCaptureSession_recorder(self: pointer, ): pointer {.importc: "QMediaCaptureSession_recorder".}
proc fcQMediaCaptureSession_setRecorder(self: pointer, recorder: pointer): void {.importc: "QMediaCaptureSession_setRecorder".}
proc fcQMediaCaptureSession_setVideoOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setVideoOutput".}
proc fcQMediaCaptureSession_videoOutput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_videoOutput".}
proc fcQMediaCaptureSession_setVideoSink(self: pointer, sink: pointer): void {.importc: "QMediaCaptureSession_setVideoSink".}
proc fcQMediaCaptureSession_videoSink(self: pointer, ): pointer {.importc: "QMediaCaptureSession_videoSink".}
proc fcQMediaCaptureSession_setAudioOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setAudioOutput".}
proc fcQMediaCaptureSession_audioOutput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_audioOutput".}
proc fcQMediaCaptureSession_audioInputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_audioInputChanged".}
proc fQMediaCaptureSession_connect_audioInputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_audioInputChanged".}
proc fcQMediaCaptureSession_cameraChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_cameraChanged".}
proc fQMediaCaptureSession_connect_cameraChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_cameraChanged".}
proc fcQMediaCaptureSession_imageCaptureChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_imageCaptureChanged".}
proc fQMediaCaptureSession_connect_imageCaptureChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_imageCaptureChanged".}
proc fcQMediaCaptureSession_recorderChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_recorderChanged".}
proc fQMediaCaptureSession_connect_recorderChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_recorderChanged".}
proc fcQMediaCaptureSession_videoOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_videoOutputChanged".}
proc fQMediaCaptureSession_connect_videoOutputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_videoOutputChanged".}
proc fcQMediaCaptureSession_audioOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_audioOutputChanged".}
proc fQMediaCaptureSession_connect_audioOutputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_audioOutputChanged".}
proc fcQMediaCaptureSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr2".}
proc fcQMediaCaptureSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaCaptureSession_tr3".}
proc fQMediaCaptureSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaCaptureSession_virtualbase_metacall".}
proc fcQMediaCaptureSession_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_metacall".}
proc fQMediaCaptureSession_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaCaptureSession_virtualbase_event".}
proc fcQMediaCaptureSession_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_event".}
proc fQMediaCaptureSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaCaptureSession_virtualbase_eventFilter".}
proc fcQMediaCaptureSession_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_eventFilter".}
proc fQMediaCaptureSession_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_timerEvent".}
proc fcQMediaCaptureSession_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_timerEvent".}
proc fQMediaCaptureSession_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_childEvent".}
proc fcQMediaCaptureSession_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_childEvent".}
proc fQMediaCaptureSession_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_customEvent".}
proc fcQMediaCaptureSession_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_customEvent".}
proc fQMediaCaptureSession_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaCaptureSession_virtualbase_connectNotify".}
proc fcQMediaCaptureSession_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_connectNotify".}
proc fQMediaCaptureSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaCaptureSession_virtualbase_disconnectNotify".}
proc fcQMediaCaptureSession_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_disconnectNotify".}
proc fcQMediaCaptureSession_staticMetaObject(): pointer {.importc: "QMediaCaptureSession_staticMetaObject".}
proc fcQMediaCaptureSession_delete(self: pointer) {.importc: "QMediaCaptureSession_delete".}


func init*(T: type QMediaCaptureSession, h: ptr cQMediaCaptureSession): QMediaCaptureSession =
  T(h: h)
proc create*(T: type QMediaCaptureSession, ): QMediaCaptureSession =

  QMediaCaptureSession.init(fcQMediaCaptureSession_new())
proc create*(T: type QMediaCaptureSession, parent: gen_qobject.QObject): QMediaCaptureSession =

  QMediaCaptureSession.init(fcQMediaCaptureSession_new2(parent.h))
proc metaObject*(self: QMediaCaptureSession, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaCaptureSession_metaObject(self.h))

proc metacast*(self: QMediaCaptureSession, param1: cstring): pointer =

  fcQMediaCaptureSession_metacast(self.h, param1)

proc metacall*(self: QMediaCaptureSession, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaCaptureSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaCaptureSession, s: cstring): string =

  let v_ms = fcQMediaCaptureSession_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: QMediaCaptureSession, ): gen_qaudioinput.QAudioInput =

  gen_qaudioinput.QAudioInput(h: fcQMediaCaptureSession_audioInput(self.h))

proc setAudioInput*(self: QMediaCaptureSession, input: gen_qaudioinput.QAudioInput): void =

  fcQMediaCaptureSession_setAudioInput(self.h, input.h)

proc camera*(self: QMediaCaptureSession, ): gen_qcamera.QCamera =

  gen_qcamera.QCamera(h: fcQMediaCaptureSession_camera(self.h))

proc setCamera*(self: QMediaCaptureSession, camera: gen_qcamera.QCamera): void =

  fcQMediaCaptureSession_setCamera(self.h, camera.h)

proc imageCapture*(self: QMediaCaptureSession, ): gen_qimagecapture.QImageCapture =

  gen_qimagecapture.QImageCapture(h: fcQMediaCaptureSession_imageCapture(self.h))

proc setImageCapture*(self: QMediaCaptureSession, imageCapture: gen_qimagecapture.QImageCapture): void =

  fcQMediaCaptureSession_setImageCapture(self.h, imageCapture.h)

proc recorder*(self: QMediaCaptureSession, ): gen_qmediarecorder.QMediaRecorder =

  gen_qmediarecorder.QMediaRecorder(h: fcQMediaCaptureSession_recorder(self.h))

proc setRecorder*(self: QMediaCaptureSession, recorder: gen_qmediarecorder.QMediaRecorder): void =

  fcQMediaCaptureSession_setRecorder(self.h, recorder.h)

proc setVideoOutput*(self: QMediaCaptureSession, output: gen_qobject.QObject): void =

  fcQMediaCaptureSession_setVideoOutput(self.h, output.h)

proc videoOutput*(self: QMediaCaptureSession, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMediaCaptureSession_videoOutput(self.h))

proc setVideoSink*(self: QMediaCaptureSession, sink: gen_qvideosink.QVideoSink): void =

  fcQMediaCaptureSession_setVideoSink(self.h, sink.h)

proc videoSink*(self: QMediaCaptureSession, ): gen_qvideosink.QVideoSink =

  gen_qvideosink.QVideoSink(h: fcQMediaCaptureSession_videoSink(self.h))

proc setAudioOutput*(self: QMediaCaptureSession, output: gen_qaudiooutput.QAudioOutput): void =

  fcQMediaCaptureSession_setAudioOutput(self.h, output.h)

proc audioOutput*(self: QMediaCaptureSession, ): gen_qaudiooutput.QAudioOutput =

  gen_qaudiooutput.QAudioOutput(h: fcQMediaCaptureSession_audioOutput(self.h))

proc audioInputChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_audioInputChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_audioInputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioInputChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_audioInputChanged(self.h, cast[int](addr tmp[]))
proc cameraChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_cameraChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_cameraChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncameraChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_cameraChanged(self.h, cast[int](addr tmp[]))
proc imageCaptureChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_imageCaptureChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onimageCaptureChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_imageCaptureChanged(self.h, cast[int](addr tmp[]))
proc recorderChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_recorderChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_recorderChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrecorderChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_recorderChanged(self.h, cast[int](addr tmp[]))
proc videoOutputChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_videoOutputChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_videoOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoOutputChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_videoOutputChanged(self.h, cast[int](addr tmp[]))
proc audioOutputChanged*(self: QMediaCaptureSession, ): void =

  fcQMediaCaptureSession_audioOutputChanged(self.h)

proc miqt_exec_callback_QMediaCaptureSession_audioOutputChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaudioOutputChanged*(self: QMediaCaptureSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaCaptureSession_connect_audioOutputChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaCaptureSession, s: cstring, c: cstring): string =

  let v_ms = fcQMediaCaptureSession_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaCaptureSession, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaCaptureSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QMediaCaptureSession, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMediaCaptureSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaCaptureSessionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_metacall(self: ptr cQMediaCaptureSession, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaCaptureSession_metacall ".} =
  type Cb = proc(super: QMediaCaptureSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMediaCaptureSession(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QMediaCaptureSession, event: gen_qcoreevent.QEvent): bool =


  fQMediaCaptureSession_virtualbase_event(self.h, event.h)

type QMediaCaptureSessioneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessioneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessioneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_event(self: ptr cQMediaCaptureSession, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaCaptureSession_event ".} =
  type Cb = proc(super: QMediaCaptureSessioneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMediaCaptureSession(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMediaCaptureSession, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMediaCaptureSession_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaCaptureSessioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_eventFilter(self: ptr cQMediaCaptureSession, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaCaptureSession_eventFilter ".} =
  type Cb = proc(super: QMediaCaptureSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMediaCaptureSession(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMediaCaptureSession, event: gen_qcoreevent.QTimerEvent): void =


  fQMediaCaptureSession_virtualbase_timerEvent(self.h, event.h)

type QMediaCaptureSessiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_timerEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_timerEvent ".} =
  type Cb = proc(super: QMediaCaptureSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMediaCaptureSession(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMediaCaptureSession, event: gen_qcoreevent.QChildEvent): void =


  fQMediaCaptureSession_virtualbase_childEvent(self.h, event.h)

type QMediaCaptureSessionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_childEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_childEvent ".} =
  type Cb = proc(super: QMediaCaptureSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMediaCaptureSession(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMediaCaptureSession, event: gen_qcoreevent.QEvent): void =


  fQMediaCaptureSession_virtualbase_customEvent(self.h, event.h)

type QMediaCaptureSessioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_customEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_customEvent ".} =
  type Cb = proc(super: QMediaCaptureSessioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMediaCaptureSession(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMediaCaptureSession, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaCaptureSession_virtualbase_connectNotify(self.h, signal.h)

type QMediaCaptureSessionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_connectNotify(self: ptr cQMediaCaptureSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_connectNotify ".} =
  type Cb = proc(super: QMediaCaptureSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMediaCaptureSession(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMediaCaptureSession, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaCaptureSession_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaCaptureSessiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMediaCaptureSession, slot: proc(super: QMediaCaptureSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaCaptureSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_disconnectNotify(self: ptr cQMediaCaptureSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_disconnectNotify ".} =
  type Cb = proc(super: QMediaCaptureSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMediaCaptureSession(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMediaCaptureSession): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaCaptureSession_staticMetaObject())
proc delete*(self: QMediaCaptureSession) =
  fcQMediaCaptureSession_delete(self.h)
