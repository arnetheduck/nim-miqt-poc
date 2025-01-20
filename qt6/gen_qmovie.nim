import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qmovie.cpp", cflags).}


type QMovieMovieStateEnum* = distinct cint
template NotRunning*(_: type QMovieMovieStateEnum): untyped = 0
template Paused*(_: type QMovieMovieStateEnum): untyped = 1
template Running*(_: type QMovieMovieStateEnum): untyped = 2


type QMovieCacheModeEnum* = distinct cint
template CacheNone*(_: type QMovieCacheModeEnum): untyped = 0
template CacheAll*(_: type QMovieCacheModeEnum): untyped = 1


import gen_qmovie_types
export gen_qmovie_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qimage,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qrect,
  gen_qsize
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qimage,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qrect,
  gen_qsize

type cQMovie*{.exportc: "QMovie", incompleteStruct.} = object

proc fcQMovie_new(): ptr cQMovie {.importc: "QMovie_new".}
proc fcQMovie_new2(device: pointer): ptr cQMovie {.importc: "QMovie_new2".}
proc fcQMovie_new3(fileName: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new3".}
proc fcQMovie_new4(parent: pointer): ptr cQMovie {.importc: "QMovie_new4".}
proc fcQMovie_new5(device: pointer, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new5".}
proc fcQMovie_new6(device: pointer, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new6".}
proc fcQMovie_new7(fileName: struct_miqt_string, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new7".}
proc fcQMovie_new8(fileName: struct_miqt_string, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new8".}
proc fcQMovie_metaObject(self: pointer, ): pointer {.importc: "QMovie_metaObject".}
proc fcQMovie_metacast(self: pointer, param1: cstring): pointer {.importc: "QMovie_metacast".}
proc fcQMovie_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMovie_metacall".}
proc fcQMovie_tr(s: cstring): struct_miqt_string {.importc: "QMovie_tr".}
proc fcQMovie_supportedFormats(): struct_miqt_array {.importc: "QMovie_supportedFormats".}
proc fcQMovie_setDevice(self: pointer, device: pointer): void {.importc: "QMovie_setDevice".}
proc fcQMovie_device(self: pointer, ): pointer {.importc: "QMovie_device".}
proc fcQMovie_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QMovie_setFileName".}
proc fcQMovie_fileName(self: pointer, ): struct_miqt_string {.importc: "QMovie_fileName".}
proc fcQMovie_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QMovie_setFormat".}
proc fcQMovie_format(self: pointer, ): struct_miqt_string {.importc: "QMovie_format".}
proc fcQMovie_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QMovie_setBackgroundColor".}
proc fcQMovie_backgroundColor(self: pointer, ): pointer {.importc: "QMovie_backgroundColor".}
proc fcQMovie_state(self: pointer, ): cint {.importc: "QMovie_state".}
proc fcQMovie_frameRect(self: pointer, ): pointer {.importc: "QMovie_frameRect".}
proc fcQMovie_currentImage(self: pointer, ): pointer {.importc: "QMovie_currentImage".}
proc fcQMovie_currentPixmap(self: pointer, ): pointer {.importc: "QMovie_currentPixmap".}
proc fcQMovie_isValid(self: pointer, ): bool {.importc: "QMovie_isValid".}
proc fcQMovie_lastError(self: pointer, ): cint {.importc: "QMovie_lastError".}
proc fcQMovie_lastErrorString(self: pointer, ): struct_miqt_string {.importc: "QMovie_lastErrorString".}
proc fcQMovie_jumpToFrame(self: pointer, frameNumber: cint): bool {.importc: "QMovie_jumpToFrame".}
proc fcQMovie_loopCount(self: pointer, ): cint {.importc: "QMovie_loopCount".}
proc fcQMovie_frameCount(self: pointer, ): cint {.importc: "QMovie_frameCount".}
proc fcQMovie_nextFrameDelay(self: pointer, ): cint {.importc: "QMovie_nextFrameDelay".}
proc fcQMovie_currentFrameNumber(self: pointer, ): cint {.importc: "QMovie_currentFrameNumber".}
proc fcQMovie_speed(self: pointer, ): cint {.importc: "QMovie_speed".}
proc fcQMovie_scaledSize(self: pointer, ): pointer {.importc: "QMovie_scaledSize".}
proc fcQMovie_setScaledSize(self: pointer, size: pointer): void {.importc: "QMovie_setScaledSize".}
proc fcQMovie_cacheMode(self: pointer, ): cint {.importc: "QMovie_cacheMode".}
proc fcQMovie_setCacheMode(self: pointer, mode: cint): void {.importc: "QMovie_setCacheMode".}
proc fcQMovie_started(self: pointer, ): void {.importc: "QMovie_started".}
proc fQMovie_connect_started(self: pointer, slot: int) {.importc: "QMovie_connect_started".}
proc fcQMovie_resized(self: pointer, size: pointer): void {.importc: "QMovie_resized".}
proc fQMovie_connect_resized(self: pointer, slot: int) {.importc: "QMovie_connect_resized".}
proc fcQMovie_updated(self: pointer, rect: pointer): void {.importc: "QMovie_updated".}
proc fQMovie_connect_updated(self: pointer, slot: int) {.importc: "QMovie_connect_updated".}
proc fcQMovie_stateChanged(self: pointer, state: cint): void {.importc: "QMovie_stateChanged".}
proc fQMovie_connect_stateChanged(self: pointer, slot: int) {.importc: "QMovie_connect_stateChanged".}
proc fcQMovie_error(self: pointer, error: cint): void {.importc: "QMovie_error".}
proc fQMovie_connect_error(self: pointer, slot: int) {.importc: "QMovie_connect_error".}
proc fcQMovie_finished(self: pointer, ): void {.importc: "QMovie_finished".}
proc fQMovie_connect_finished(self: pointer, slot: int) {.importc: "QMovie_connect_finished".}
proc fcQMovie_frameChanged(self: pointer, frameNumber: cint): void {.importc: "QMovie_frameChanged".}
proc fQMovie_connect_frameChanged(self: pointer, slot: int) {.importc: "QMovie_connect_frameChanged".}
proc fcQMovie_start(self: pointer, ): void {.importc: "QMovie_start".}
proc fcQMovie_jumpToNextFrame(self: pointer, ): bool {.importc: "QMovie_jumpToNextFrame".}
proc fcQMovie_setPaused(self: pointer, paused: bool): void {.importc: "QMovie_setPaused".}
proc fcQMovie_stop(self: pointer, ): void {.importc: "QMovie_stop".}
proc fcQMovie_setSpeed(self: pointer, percentSpeed: cint): void {.importc: "QMovie_setSpeed".}
proc fcQMovie_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMovie_tr2".}
proc fcQMovie_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMovie_tr3".}
proc fQMovie_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMovie_virtualbase_metaObject".}
proc fcQMovie_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMovie_override_virtual_metaObject".}
proc fQMovie_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMovie_virtualbase_metacast".}
proc fcQMovie_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMovie_override_virtual_metacast".}
proc fQMovie_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMovie_virtualbase_metacall".}
proc fcQMovie_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMovie_override_virtual_metacall".}
proc fQMovie_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMovie_virtualbase_event".}
proc fcQMovie_override_virtual_event(self: pointer, slot: int) {.importc: "QMovie_override_virtual_event".}
proc fQMovie_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMovie_virtualbase_eventFilter".}
proc fcQMovie_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMovie_override_virtual_eventFilter".}
proc fQMovie_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMovie_virtualbase_timerEvent".}
proc fcQMovie_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMovie_override_virtual_timerEvent".}
proc fQMovie_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMovie_virtualbase_childEvent".}
proc fcQMovie_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMovie_override_virtual_childEvent".}
proc fQMovie_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMovie_virtualbase_customEvent".}
proc fcQMovie_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMovie_override_virtual_customEvent".}
proc fQMovie_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMovie_virtualbase_connectNotify".}
proc fcQMovie_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMovie_override_virtual_connectNotify".}
proc fQMovie_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMovie_virtualbase_disconnectNotify".}
proc fcQMovie_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMovie_override_virtual_disconnectNotify".}
proc fcQMovie_staticMetaObject(): pointer {.importc: "QMovie_staticMetaObject".}
proc fcQMovie_delete(self: pointer) {.importc: "QMovie_delete".}


func init*(T: type gen_qmovie_types.QMovie, h: ptr cQMovie): gen_qmovie_types.QMovie =
  T(h: h)
proc create*(T: type gen_qmovie_types.QMovie, ): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new())
proc create*(T: type gen_qmovie_types.QMovie, device: gen_qiodevice.QIODevice): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new2(device.h))
proc create*(T: type gen_qmovie_types.QMovie, fileName: string): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create2*(T: type gen_qmovie_types.QMovie, parent: gen_qobject.QObject): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new4(parent.h))
proc create*(T: type gen_qmovie_types.QMovie, device: gen_qiodevice.QIODevice, format: seq[byte]): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new5(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))
proc create*(T: type gen_qmovie_types.QMovie, device: gen_qiodevice.QIODevice, format: seq[byte], parent: gen_qobject.QObject): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new6(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h))
proc create*(T: type gen_qmovie_types.QMovie, fileName: string, format: seq[byte]): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))
proc create*(T: type gen_qmovie_types.QMovie, fileName: string, format: seq[byte], parent: gen_qobject.QObject): gen_qmovie_types.QMovie =

  gen_qmovie_types.QMovie.init(fcQMovie_new8(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h))
proc metaObject*(self: gen_qmovie_types.QMovie, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMovie_metaObject(self.h))

proc metacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =

  fcQMovie_metacast(self.h, param1)

proc metacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =

  fcQMovie_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring): string =

  let v_ms = fcQMovie_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedFormats*(_: type gen_qmovie_types.QMovie, ): seq[seq[byte]] =

  var v_ma = fcQMovie_supportedFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setDevice*(self: gen_qmovie_types.QMovie, device: gen_qiodevice.QIODevice): void =

  fcQMovie_setDevice(self.h, device.h)

proc device*(self: gen_qmovie_types.QMovie, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQMovie_device(self.h))

proc setFileName*(self: gen_qmovie_types.QMovie, fileName: string): void =

  fcQMovie_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qmovie_types.QMovie, ): string =

  let v_ms = fcQMovie_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qmovie_types.QMovie, format: seq[byte]): void =

  fcQMovie_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qmovie_types.QMovie, ): seq[byte] =

  var v_bytearray = fcQMovie_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBackgroundColor*(self: gen_qmovie_types.QMovie, color: gen_qcolor.QColor): void =

  fcQMovie_setBackgroundColor(self.h, color.h)

proc backgroundColor*(self: gen_qmovie_types.QMovie, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQMovie_backgroundColor(self.h))

proc state*(self: gen_qmovie_types.QMovie, ): cint =

  cint(fcQMovie_state(self.h))

proc frameRect*(self: gen_qmovie_types.QMovie, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQMovie_frameRect(self.h))

proc currentImage*(self: gen_qmovie_types.QMovie, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQMovie_currentImage(self.h))

proc currentPixmap*(self: gen_qmovie_types.QMovie, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQMovie_currentPixmap(self.h))

proc isValid*(self: gen_qmovie_types.QMovie, ): bool =

  fcQMovie_isValid(self.h)

proc lastError*(self: gen_qmovie_types.QMovie, ): cint =

  cint(fcQMovie_lastError(self.h))

proc lastErrorString*(self: gen_qmovie_types.QMovie, ): string =

  let v_ms = fcQMovie_lastErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc jumpToFrame*(self: gen_qmovie_types.QMovie, frameNumber: cint): bool =

  fcQMovie_jumpToFrame(self.h, frameNumber)

proc loopCount*(self: gen_qmovie_types.QMovie, ): cint =

  fcQMovie_loopCount(self.h)

proc frameCount*(self: gen_qmovie_types.QMovie, ): cint =

  fcQMovie_frameCount(self.h)

proc nextFrameDelay*(self: gen_qmovie_types.QMovie, ): cint =

  fcQMovie_nextFrameDelay(self.h)

proc currentFrameNumber*(self: gen_qmovie_types.QMovie, ): cint =

  fcQMovie_currentFrameNumber(self.h)

proc speed*(self: gen_qmovie_types.QMovie, ): cint =

  fcQMovie_speed(self.h)

proc scaledSize*(self: gen_qmovie_types.QMovie, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMovie_scaledSize(self.h))

proc setScaledSize*(self: gen_qmovie_types.QMovie, size: gen_qsize.QSize): void =

  fcQMovie_setScaledSize(self.h, size.h)

proc cacheMode*(self: gen_qmovie_types.QMovie, ): cint =

  cint(fcQMovie_cacheMode(self.h))

proc setCacheMode*(self: gen_qmovie_types.QMovie, mode: cint): void =

  fcQMovie_setCacheMode(self.h, cint(mode))

proc started*(self: gen_qmovie_types.QMovie, ): void =

  fcQMovie_started(self.h)

proc miqt_exec_callback_QMovie_started(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstarted*(self: gen_qmovie_types.QMovie, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_started(self.h, cast[int](addr tmp[]))
proc resized*(self: gen_qmovie_types.QMovie, size: gen_qsize.QSize): void =

  fcQMovie_resized(self.h, size.h)

proc miqt_exec_callback_QMovie_resized(slot: int, size: pointer) {.exportc.} =
  type Cb = proc(size: gen_qsize.QSize)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSize(h: size)


  nimfunc[](slotval1)

proc onresized*(self: gen_qmovie_types.QMovie, slot: proc(size: gen_qsize.QSize)) =
  type Cb = proc(size: gen_qsize.QSize)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_resized(self.h, cast[int](addr tmp[]))
proc updated*(self: gen_qmovie_types.QMovie, rect: gen_qrect.QRect): void =

  fcQMovie_updated(self.h, rect.h)

proc miqt_exec_callback_QMovie_updated(slot: int, rect: pointer) {.exportc.} =
  type Cb = proc(rect: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: rect)


  nimfunc[](slotval1)

proc onupdated*(self: gen_qmovie_types.QMovie, slot: proc(rect: gen_qrect.QRect)) =
  type Cb = proc(rect: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_updated(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: gen_qmovie_types.QMovie, state: cint): void =

  fcQMovie_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QMovie_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qmovie_types.QMovie, slot: proc(state: cint)) =
  type Cb = proc(state: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc error*(self: gen_qmovie_types.QMovie, error: cint): void =

  fcQMovie_error(self.h, cint(error))

proc miqt_exec_callback_QMovie_error(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(error)


  nimfunc[](slotval1)

proc onerror*(self: gen_qmovie_types.QMovie, slot: proc(error: cint)) =
  type Cb = proc(error: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_error(self.h, cast[int](addr tmp[]))
proc finished*(self: gen_qmovie_types.QMovie, ): void =

  fcQMovie_finished(self.h)

proc miqt_exec_callback_QMovie_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: gen_qmovie_types.QMovie, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_finished(self.h, cast[int](addr tmp[]))
proc frameChanged*(self: gen_qmovie_types.QMovie, frameNumber: cint): void =

  fcQMovie_frameChanged(self.h, frameNumber)

proc miqt_exec_callback_QMovie_frameChanged(slot: int, frameNumber: cint) {.exportc.} =
  type Cb = proc(frameNumber: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = frameNumber


  nimfunc[](slotval1)

proc onframeChanged*(self: gen_qmovie_types.QMovie, slot: proc(frameNumber: cint)) =
  type Cb = proc(frameNumber: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMovie_connect_frameChanged(self.h, cast[int](addr tmp[]))
proc start*(self: gen_qmovie_types.QMovie, ): void =

  fcQMovie_start(self.h)

proc jumpToNextFrame*(self: gen_qmovie_types.QMovie, ): bool =

  fcQMovie_jumpToNextFrame(self.h)

proc setPaused*(self: gen_qmovie_types.QMovie, paused: bool): void =

  fcQMovie_setPaused(self.h, paused)

proc stop*(self: gen_qmovie_types.QMovie, ): void =

  fcQMovie_stop(self.h)

proc setSpeed*(self: gen_qmovie_types.QMovie, percentSpeed: cint): void =

  fcQMovie_setSpeed(self.h, percentSpeed)

proc tr2*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring): string =

  let v_ms = fcQMovie_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMovie_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QMoviemetaObject*(self: gen_qmovie_types.QMovie, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQMovie_virtualbase_metaObject(self.h))

type QMoviemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qmovie_types.QMovie, slot: QMoviemetaObjectProc) =
  # TODO check subclass
  var tmp = new QMoviemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_metaObject(self: ptr cQMovie, slot: int): pointer {.exportc: "miqt_exec_callback_QMovie_metaObject ".} =
  var nimfunc = cast[ptr QMoviemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMoviemetacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =

  fQMovie_virtualbase_metacast(self.h, param1)

type QMoviemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmovie_types.QMovie, slot: QMoviemetacastProc) =
  # TODO check subclass
  var tmp = new QMoviemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_metacast(self: ptr cQMovie, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMovie_metacast ".} =
  var nimfunc = cast[ptr QMoviemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMoviemetacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =

  fQMovie_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMoviemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmovie_types.QMovie, slot: QMoviemetacallProc) =
  # TODO check subclass
  var tmp = new QMoviemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_metacall(self: ptr cQMovie, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMovie_metacall ".} =
  var nimfunc = cast[ptr QMoviemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMovieevent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent.QEvent): bool =

  fQMovie_virtualbase_event(self.h, event.h)

type QMovieeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qmovie_types.QMovie, slot: QMovieeventProc) =
  # TODO check subclass
  var tmp = new QMovieeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_event(self: ptr cQMovie, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMovie_event ".} =
  var nimfunc = cast[ptr QMovieeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMovieeventFilter*(self: gen_qmovie_types.QMovie, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQMovie_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMovieeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qmovie_types.QMovie, slot: QMovieeventFilterProc) =
  # TODO check subclass
  var tmp = new QMovieeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_eventFilter(self: ptr cQMovie, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMovie_eventFilter ".} =
  var nimfunc = cast[ptr QMovieeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMovietimerEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent.QTimerEvent): void =

  fQMovie_virtualbase_timerEvent(self.h, event.h)

type QMovietimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qmovie_types.QMovie, slot: QMovietimerEventProc) =
  # TODO check subclass
  var tmp = new QMovietimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_timerEvent(self: ptr cQMovie, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMovie_timerEvent ".} =
  var nimfunc = cast[ptr QMovietimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMoviechildEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent.QChildEvent): void =

  fQMovie_virtualbase_childEvent(self.h, event.h)

type QMoviechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qmovie_types.QMovie, slot: QMoviechildEventProc) =
  # TODO check subclass
  var tmp = new QMoviechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_childEvent(self: ptr cQMovie, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMovie_childEvent ".} =
  var nimfunc = cast[ptr QMoviechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMoviecustomEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent.QEvent): void =

  fQMovie_virtualbase_customEvent(self.h, event.h)

type QMoviecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qmovie_types.QMovie, slot: QMoviecustomEventProc) =
  # TODO check subclass
  var tmp = new QMoviecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_customEvent(self: ptr cQMovie, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMovie_customEvent ".} =
  var nimfunc = cast[ptr QMoviecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QMovieconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject.QMetaMethod): void =

  fQMovie_virtualbase_connectNotify(self.h, signal.h)

type QMovieconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qmovie_types.QMovie, slot: QMovieconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMovieconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_connectNotify(self: ptr cQMovie, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMovie_connectNotify ".} =
  var nimfunc = cast[ptr QMovieconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMoviedisconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject.QMetaMethod): void =

  fQMovie_virtualbase_disconnectNotify(self.h, signal.h)

type QMoviedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmovie_types.QMovie, slot: QMoviedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMoviedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMovie_disconnectNotify(self: ptr cQMovie, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMovie_disconnectNotify ".} =
  var nimfunc = cast[ptr QMoviedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmovie_types.QMovie): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMovie_staticMetaObject())
proc delete*(self: gen_qmovie_types.QMovie) =
  fcQMovie_delete(self.h)
