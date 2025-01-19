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
{.compile("gen_qvideoprobe.cpp", cflags).}


import gen_qvideoprobe_types
export gen_qvideoprobe_types

import
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideoframe
export
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideoframe

type cQVideoProbe*{.exportc: "QVideoProbe", incompleteStruct.} = object

proc fcQVideoProbe_new(): ptr cQVideoProbe {.importc: "QVideoProbe_new".}
proc fcQVideoProbe_new2(parent: pointer): ptr cQVideoProbe {.importc: "QVideoProbe_new2".}
proc fcQVideoProbe_metaObject(self: pointer, ): pointer {.importc: "QVideoProbe_metaObject".}
proc fcQVideoProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_metacast".}
proc fcQVideoProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoProbe_metacall".}
proc fcQVideoProbe_tr(s: cstring): struct_miqt_string {.importc: "QVideoProbe_tr".}
proc fcQVideoProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf8".}
proc fcQVideoProbe_setSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSource".}
proc fcQVideoProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSourceWithSource".}
proc fcQVideoProbe_isActive(self: pointer, ): bool {.importc: "QVideoProbe_isActive".}
proc fcQVideoProbe_videoFrameProbed(self: pointer, frame: pointer): void {.importc: "QVideoProbe_videoFrameProbed".}
proc fQVideoProbe_connect_videoFrameProbed(self: pointer, slot: int) {.importc: "QVideoProbe_connect_videoFrameProbed".}
proc fcQVideoProbe_flush(self: pointer, ): void {.importc: "QVideoProbe_flush".}
proc fQVideoProbe_connect_flush(self: pointer, slot: int) {.importc: "QVideoProbe_connect_flush".}
proc fcQVideoProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_tr2".}
proc fcQVideoProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_tr3".}
proc fcQVideoProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf82".}
proc fcQVideoProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_trUtf83".}
proc fQVideoProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVideoProbe_virtualbase_metacall".}
proc fcQVideoProbe_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_metacall".}
proc fQVideoProbe_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoProbe_virtualbase_event".}
proc fcQVideoProbe_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_event".}
proc fQVideoProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoProbe_virtualbase_eventFilter".}
proc fcQVideoProbe_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_eventFilter".}
proc fQVideoProbe_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_timerEvent".}
proc fcQVideoProbe_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_timerEvent".}
proc fQVideoProbe_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_childEvent".}
proc fcQVideoProbe_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_childEvent".}
proc fQVideoProbe_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_customEvent".}
proc fcQVideoProbe_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_customEvent".}
proc fQVideoProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoProbe_virtualbase_connectNotify".}
proc fcQVideoProbe_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_connectNotify".}
proc fQVideoProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoProbe_virtualbase_disconnectNotify".}
proc fcQVideoProbe_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_disconnectNotify".}
proc fcQVideoProbe_staticMetaObject(): pointer {.importc: "QVideoProbe_staticMetaObject".}
proc fcQVideoProbe_delete(self: pointer) {.importc: "QVideoProbe_delete".}


func init*(T: type QVideoProbe, h: ptr cQVideoProbe): QVideoProbe =
  T(h: h)
proc create*(T: type QVideoProbe, ): QVideoProbe =

  QVideoProbe.init(fcQVideoProbe_new())
proc create*(T: type QVideoProbe, parent: gen_qobject.QObject): QVideoProbe =

  QVideoProbe.init(fcQVideoProbe_new2(parent.h))
proc metaObject*(self: QVideoProbe, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoProbe_metaObject(self.h))

proc metacast*(self: QVideoProbe, param1: cstring): pointer =

  fcQVideoProbe_metacast(self.h, param1)

proc metacall*(self: QVideoProbe, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoProbe, s: cstring): string =

  let v_ms = fcQVideoProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVideoProbe, s: cstring): string =

  let v_ms = fcQVideoProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: QVideoProbe, source: gen_qmediaobject.QMediaObject): bool =

  fcQVideoProbe_setSource(self.h, source.h)

proc setSourceWithSource*(self: QVideoProbe, source: gen_qmediarecorder.QMediaRecorder): bool =

  fcQVideoProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: QVideoProbe, ): bool =

  fcQVideoProbe_isActive(self.h)

proc videoFrameProbed*(self: QVideoProbe, frame: gen_qvideoframe.QVideoFrame): void =

  fcQVideoProbe_videoFrameProbed(self.h, frame.h)

proc miqt_exec_callback_QVideoProbe_videoFrameProbed(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1)

proc onvideoFrameProbed*(self: QVideoProbe, slot: proc(frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoProbe_connect_videoFrameProbed(self.h, cast[int](addr tmp[]))
proc flush*(self: QVideoProbe, ): void =

  fcQVideoProbe_flush(self.h)

proc miqt_exec_callback_QVideoProbe_flush(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onflush*(self: QVideoProbe, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoProbe_connect_flush(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVideoProbe, s: cstring, c: cstring): string =

  let v_ms = fcQVideoProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVideoProbe, s: cstring, c: cstring): string =

  let v_ms = fcQVideoProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVideoProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QVideoProbe, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQVideoProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVideoProbemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QVideoProbe, slot: proc(super: QVideoProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_metacall(self: ptr cQVideoProbe, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVideoProbe_metacall ".} =
  type Cb = proc(super: QVideoProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QVideoProbe(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QVideoProbe, event: gen_qcoreevent.QEvent): bool =


  fQVideoProbe_virtualbase_event(self.h, event.h)

type QVideoProbeeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QVideoProbe, slot: proc(super: QVideoProbeeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbeeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_event(self: ptr cQVideoProbe, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_event ".} =
  type Cb = proc(super: QVideoProbeeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QVideoProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QVideoProbe, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQVideoProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoProbeeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QVideoProbe, slot: proc(super: QVideoProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_eventFilter(self: ptr cQVideoProbe, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_eventFilter ".} =
  type Cb = proc(super: QVideoProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QVideoProbe(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QVideoProbe, event: gen_qcoreevent.QTimerEvent): void =


  fQVideoProbe_virtualbase_timerEvent(self.h, event.h)

type QVideoProbetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QVideoProbe, slot: proc(super: QVideoProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_timerEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_timerEvent ".} =
  type Cb = proc(super: QVideoProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QVideoProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QVideoProbe, event: gen_qcoreevent.QChildEvent): void =


  fQVideoProbe_virtualbase_childEvent(self.h, event.h)

type QVideoProbechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QVideoProbe, slot: proc(super: QVideoProbechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_childEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_childEvent ".} =
  type Cb = proc(super: QVideoProbechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QVideoProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QVideoProbe, event: gen_qcoreevent.QEvent): void =


  fQVideoProbe_virtualbase_customEvent(self.h, event.h)

type QVideoProbecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QVideoProbe, slot: proc(super: QVideoProbecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_customEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_customEvent ".} =
  type Cb = proc(super: QVideoProbecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QVideoProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QVideoProbe, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoProbe_virtualbase_connectNotify(self.h, signal.h)

type QVideoProbeconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QVideoProbe, slot: proc(super: QVideoProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_connectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_connectNotify ".} =
  type Cb = proc(super: QVideoProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QVideoProbe(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QVideoProbe, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoProbe_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoProbedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QVideoProbe, slot: proc(super: QVideoProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_disconnectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_disconnectNotify ".} =
  type Cb = proc(super: QVideoProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QVideoProbe(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QVideoProbe): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQVideoProbe_staticMetaObject())
proc delete*(self: QVideoProbe) =
  fcQVideoProbe_delete(self.h)
