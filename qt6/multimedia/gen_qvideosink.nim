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
{.compile("gen_qvideosink.cpp", cflags).}


import gen_qvideosink_types
export gen_qvideosink_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe

type cQVideoSink*{.exportc: "QVideoSink", incompleteStruct.} = object

proc fcQVideoSink_new(): ptr cQVideoSink {.importc: "QVideoSink_new".}
proc fcQVideoSink_new2(parent: pointer): ptr cQVideoSink {.importc: "QVideoSink_new2".}
proc fcQVideoSink_metaObject(self: pointer, ): pointer {.importc: "QVideoSink_metaObject".}
proc fcQVideoSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoSink_metacast".}
proc fcQVideoSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoSink_metacall".}
proc fcQVideoSink_tr(s: cstring): struct_miqt_string {.importc: "QVideoSink_tr".}
proc fcQVideoSink_videoSize(self: pointer, ): pointer {.importc: "QVideoSink_videoSize".}
proc fcQVideoSink_subtitleText(self: pointer, ): struct_miqt_string {.importc: "QVideoSink_subtitleText".}
proc fcQVideoSink_setSubtitleText(self: pointer, subtitle: struct_miqt_string): void {.importc: "QVideoSink_setSubtitleText".}
proc fcQVideoSink_setVideoFrame(self: pointer, frame: pointer): void {.importc: "QVideoSink_setVideoFrame".}
proc fcQVideoSink_videoFrame(self: pointer, ): pointer {.importc: "QVideoSink_videoFrame".}
proc fcQVideoSink_videoFrameChanged(self: pointer, frame: pointer): void {.importc: "QVideoSink_videoFrameChanged".}
proc fQVideoSink_connect_videoFrameChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_videoFrameChanged".}
proc fcQVideoSink_subtitleTextChanged(self: pointer, subtitleText: struct_miqt_string): void {.importc: "QVideoSink_subtitleTextChanged".}
proc fQVideoSink_connect_subtitleTextChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_subtitleTextChanged".}
proc fcQVideoSink_videoSizeChanged(self: pointer, ): void {.importc: "QVideoSink_videoSizeChanged".}
proc fQVideoSink_connect_videoSizeChanged(self: pointer, slot: int) {.importc: "QVideoSink_connect_videoSizeChanged".}
proc fcQVideoSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoSink_tr2".}
proc fcQVideoSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoSink_tr3".}
proc fQVideoSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVideoSink_virtualbase_metacall".}
proc fcQVideoSink_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_metacall".}
proc fQVideoSink_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoSink_virtualbase_event".}
proc fcQVideoSink_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_event".}
proc fQVideoSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoSink_virtualbase_eventFilter".}
proc fcQVideoSink_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_eventFilter".}
proc fQVideoSink_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_timerEvent".}
proc fcQVideoSink_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_timerEvent".}
proc fQVideoSink_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_childEvent".}
proc fcQVideoSink_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_childEvent".}
proc fQVideoSink_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoSink_virtualbase_customEvent".}
proc fcQVideoSink_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_customEvent".}
proc fQVideoSink_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoSink_virtualbase_connectNotify".}
proc fcQVideoSink_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_connectNotify".}
proc fQVideoSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoSink_virtualbase_disconnectNotify".}
proc fcQVideoSink_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoSink_override_virtual_disconnectNotify".}
proc fcQVideoSink_delete(self: pointer) {.importc: "QVideoSink_delete".}


func init*(T: type QVideoSink, h: ptr cQVideoSink): QVideoSink =
  T(h: h)
proc create*(T: type QVideoSink, ): QVideoSink =

  QVideoSink.init(fcQVideoSink_new())
proc create*(T: type QVideoSink, parent: gen_qobject.QObject): QVideoSink =

  QVideoSink.init(fcQVideoSink_new2(parent.h))
proc metaObject*(self: QVideoSink, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoSink_metaObject(self.h))

proc metacast*(self: QVideoSink, param1: cstring): pointer =

  fcQVideoSink_metacast(self.h, param1)

proc metacall*(self: QVideoSink, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoSink, s: cstring): string =

  let v_ms = fcQVideoSink_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSize*(self: QVideoSink, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoSink_videoSize(self.h))

proc subtitleText*(self: QVideoSink, ): string =

  let v_ms = fcQVideoSink_subtitleText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSubtitleText*(self: QVideoSink, subtitle: string): void =

  fcQVideoSink_setSubtitleText(self.h, struct_miqt_string(data: subtitle, len: csize_t(len(subtitle))))

proc setVideoFrame*(self: QVideoSink, frame: gen_qvideoframe.QVideoFrame): void =

  fcQVideoSink_setVideoFrame(self.h, frame.h)

proc videoFrame*(self: QVideoSink, ): gen_qvideoframe.QVideoFrame =

  gen_qvideoframe.QVideoFrame(h: fcQVideoSink_videoFrame(self.h))

proc videoFrameChanged*(self: QVideoSink, frame: gen_qvideoframe.QVideoFrame): void =

  fcQVideoSink_videoFrameChanged(self.h, frame.h)

proc miqt_exec_callback_QVideoSink_videoFrameChanged(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1)

proc onvideoFrameChanged*(self: QVideoSink, slot: proc(frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoSink_connect_videoFrameChanged(self.h, cast[int](addr tmp[]))
proc subtitleTextChanged*(self: QVideoSink, subtitleText: string): void =

  fcQVideoSink_subtitleTextChanged(self.h, struct_miqt_string(data: subtitleText, len: csize_t(len(subtitleText))))

proc miqt_exec_callback_QVideoSink_subtitleTextChanged(slot: int, subtitleText: struct_miqt_string) {.exportc.} =
  type Cb = proc(subtitleText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vsubtitleText_ms = subtitleText
  let vsubtitleTextx_ret = string.fromBytes(toOpenArrayByte(vsubtitleText_ms.data, 0, int(vsubtitleText_ms.len)-1))
  c_free(vsubtitleText_ms.data)
  let slotval1 = vsubtitleTextx_ret


  nimfunc[](slotval1)

proc onsubtitleTextChanged*(self: QVideoSink, slot: proc(subtitleText: string)) =
  type Cb = proc(subtitleText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoSink_connect_subtitleTextChanged(self.h, cast[int](addr tmp[]))
proc videoSizeChanged*(self: QVideoSink, ): void =

  fcQVideoSink_videoSizeChanged(self.h)

proc miqt_exec_callback_QVideoSink_videoSizeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvideoSizeChanged*(self: QVideoSink, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoSink_connect_videoSizeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVideoSink, s: cstring, c: cstring): string =

  let v_ms = fcQVideoSink_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoSink, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QVideoSink, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQVideoSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVideoSinkmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QVideoSink, slot: proc(super: QVideoSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_metacall(self: ptr cQVideoSink, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVideoSink_metacall ".} =
  type Cb = proc(super: QVideoSinkmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QVideoSink(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QVideoSink, event: gen_qcoreevent.QEvent): bool =


  fQVideoSink_virtualbase_event(self.h, event.h)

type QVideoSinkeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QVideoSink, slot: proc(super: QVideoSinkeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_event(self: ptr cQVideoSink, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoSink_event ".} =
  type Cb = proc(super: QVideoSinkeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QVideoSink(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QVideoSink, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQVideoSink_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoSinkeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QVideoSink, slot: proc(super: QVideoSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_eventFilter(self: ptr cQVideoSink, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoSink_eventFilter ".} =
  type Cb = proc(super: QVideoSinkeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QVideoSink(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QVideoSink, event: gen_qcoreevent.QTimerEvent): void =


  fQVideoSink_virtualbase_timerEvent(self.h, event.h)

type QVideoSinktimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QVideoSink, slot: proc(super: QVideoSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_timerEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_timerEvent ".} =
  type Cb = proc(super: QVideoSinktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QVideoSink(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QVideoSink, event: gen_qcoreevent.QChildEvent): void =


  fQVideoSink_virtualbase_childEvent(self.h, event.h)

type QVideoSinkchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QVideoSink, slot: proc(super: QVideoSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_childEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_childEvent ".} =
  type Cb = proc(super: QVideoSinkchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QVideoSink(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QVideoSink, event: gen_qcoreevent.QEvent): void =


  fQVideoSink_virtualbase_customEvent(self.h, event.h)

type QVideoSinkcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QVideoSink, slot: proc(super: QVideoSinkcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_customEvent(self: ptr cQVideoSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_customEvent ".} =
  type Cb = proc(super: QVideoSinkcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QVideoSink(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QVideoSink, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoSink_virtualbase_connectNotify(self.h, signal.h)

type QVideoSinkconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QVideoSink, slot: proc(super: QVideoSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_connectNotify(self: ptr cQVideoSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_connectNotify ".} =
  type Cb = proc(super: QVideoSinkconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QVideoSink(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QVideoSink, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoSink_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoSinkdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QVideoSink, slot: proc(super: QVideoSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoSink_disconnectNotify(self: ptr cQVideoSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoSink_disconnectNotify ".} =
  type Cb = proc(super: QVideoSinkdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QVideoSink(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QVideoSink) =
  fcQVideoSink_delete(self.h)
