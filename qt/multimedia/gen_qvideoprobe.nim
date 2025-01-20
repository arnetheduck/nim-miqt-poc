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
proc fQVideoProbe_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QVideoProbe_virtualbase_metaObject".}
proc fcQVideoProbe_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_metaObject".}
proc fQVideoProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QVideoProbe_virtualbase_metacast".}
proc fcQVideoProbe_override_virtual_metacast(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_metacast".}
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


func init*(T: type gen_qvideoprobe_types.QVideoProbe, h: ptr cQVideoProbe): gen_qvideoprobe_types.QVideoProbe =
  T(h: h)
proc create*(T: type gen_qvideoprobe_types.QVideoProbe, ): gen_qvideoprobe_types.QVideoProbe =

  gen_qvideoprobe_types.QVideoProbe.init(fcQVideoProbe_new())
proc create*(T: type gen_qvideoprobe_types.QVideoProbe, parent: gen_qobject.QObject): gen_qvideoprobe_types.QVideoProbe =

  gen_qvideoprobe_types.QVideoProbe.init(fcQVideoProbe_new2(parent.h))
proc metaObject*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoProbe_metaObject(self.h))

proc metacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =

  fcQVideoProbe_metacast(self.h, param1)

proc metacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =

  fcQVideoProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =

  let v_ms = fcQVideoProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =

  let v_ms = fcQVideoProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediaobject.QMediaObject): bool =

  fcQVideoProbe_setSource(self.h, source.h)

proc setSourceWithSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediarecorder.QMediaRecorder): bool =

  fcQVideoProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qvideoprobe_types.QVideoProbe, ): bool =

  fcQVideoProbe_isActive(self.h)

proc videoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, frame: gen_qvideoframe.QVideoFrame): void =

  fcQVideoProbe_videoFrameProbed(self.h, frame.h)

proc miqt_exec_callback_QVideoProbe_videoFrameProbed(slot: int, frame: pointer) {.exportc.} =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFrame(h: frame)


  nimfunc[](slotval1)

proc onvideoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, slot: proc(frame: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoProbe_connect_videoFrameProbed(self.h, cast[int](addr tmp[]))
proc flush*(self: gen_qvideoprobe_types.QVideoProbe, ): void =

  fcQVideoProbe_flush(self.h)

proc miqt_exec_callback_QVideoProbe_flush(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onflush*(self: gen_qvideoprobe_types.QVideoProbe, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoProbe_connect_flush(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =

  let v_ms = fcQVideoProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =

  let v_ms = fcQVideoProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QVideoProbemetaObject*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQVideoProbe_virtualbase_metaObject(self.h))

type QVideoProbemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbemetaObjectProc) =
  # TODO check subclass
  var tmp = new QVideoProbemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_metaObject(self: ptr cQVideoProbe, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoProbe_metaObject ".} =
  var nimfunc = cast[ptr QVideoProbemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoProbemetacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =

  fQVideoProbe_virtualbase_metacast(self.h, param1)

type QVideoProbemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbemetacastProc) =
  # TODO check subclass
  var tmp = new QVideoProbemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_metacast(self: ptr cQVideoProbe, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QVideoProbe_metacast ".} =
  var nimfunc = cast[ptr QVideoProbemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoProbemetacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =

  fQVideoProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVideoProbemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbemetacallProc) =
  # TODO check subclass
  var tmp = new QVideoProbemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_metacall(self: ptr cQVideoProbe, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVideoProbe_metacall ".} =
  var nimfunc = cast[ptr QVideoProbemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QVideoProbeevent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent.QEvent): bool =

  fQVideoProbe_virtualbase_event(self.h, event.h)

type QVideoProbeeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeeventProc) =
  # TODO check subclass
  var tmp = new QVideoProbeeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_event(self: ptr cQVideoProbe, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_event ".} =
  var nimfunc = cast[ptr QVideoProbeeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoProbeeventFilter*(self: gen_qvideoprobe_types.QVideoProbe, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQVideoProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoProbeeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeeventFilterProc) =
  # TODO check subclass
  var tmp = new QVideoProbeeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_eventFilter(self: ptr cQVideoProbe, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_eventFilter ".} =
  var nimfunc = cast[ptr QVideoProbeeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVideoProbetimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent.QTimerEvent): void =

  fQVideoProbe_virtualbase_timerEvent(self.h, event.h)

type QVideoProbetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbetimerEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_timerEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_timerEvent ".} =
  var nimfunc = cast[ptr QVideoProbetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbechildEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent.QChildEvent): void =

  fQVideoProbe_virtualbase_childEvent(self.h, event.h)

type QVideoProbechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbechildEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_childEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_childEvent ".} =
  var nimfunc = cast[ptr QVideoProbechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbecustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent.QEvent): void =

  fQVideoProbe_virtualbase_customEvent(self.h, event.h)

type QVideoProbecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbecustomEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_customEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_customEvent ".} =
  var nimfunc = cast[ptr QVideoProbecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbeconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject.QMetaMethod): void =

  fQVideoProbe_virtualbase_connectNotify(self.h, signal.h)

type QVideoProbeconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoProbeconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_connectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_connectNotify ".} =
  var nimfunc = cast[ptr QVideoProbeconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVideoProbedisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject.QMetaMethod): void =

  fQVideoProbe_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoProbedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoProbedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_disconnectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_disconnectNotify ".} =
  var nimfunc = cast[ptr QVideoProbedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qvideoprobe_types.QVideoProbe): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQVideoProbe_staticMetaObject())
proc delete*(self: gen_qvideoprobe_types.QVideoProbe) =
  fcQVideoProbe_delete(self.h)
