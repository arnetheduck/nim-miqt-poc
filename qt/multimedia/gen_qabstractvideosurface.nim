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
{.compile("gen_qabstractvideosurface.cpp", cflags).}


type QAbstractVideoSurfaceError* = cint
const
  QAbstractVideoSurfaceNoError* = 0
  QAbstractVideoSurfaceUnsupportedFormatError* = 1
  QAbstractVideoSurfaceIncorrectFormatError* = 2
  QAbstractVideoSurfaceStoppedError* = 3
  QAbstractVideoSurfaceResourceError* = 4



import gen_qabstractvideosurface_types
export gen_qabstractvideosurface_types

import
  gen_qabstractvideobuffer,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe,
  gen_qvideosurfaceformat
export
  gen_qabstractvideobuffer,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvideoframe,
  gen_qvideosurfaceformat

type cQAbstractVideoSurface*{.exportc: "QAbstractVideoSurface", incompleteStruct.} = object

proc fcQAbstractVideoSurface_new(): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new".}
proc fcQAbstractVideoSurface_new2(parent: pointer): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new2".}
proc fcQAbstractVideoSurface_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_metaObject".}
proc fcQAbstractVideoSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoSurface_metacast".}
proc fcQAbstractVideoSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoSurface_metacall".}
proc fcQAbstractVideoSurface_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr".}
proc fcQAbstractVideoSurface_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf8".}
proc fcQAbstractVideoSurface_supportedPixelFormats(self: pointer, typeVal: cint): struct_miqt_array {.importc: "QAbstractVideoSurface_supportedPixelFormats".}
proc fcQAbstractVideoSurface_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_isFormatSupported".}
proc fcQAbstractVideoSurface_nearestFormat(self: pointer, format: pointer): pointer {.importc: "QAbstractVideoSurface_nearestFormat".}
proc fcQAbstractVideoSurface_surfaceFormat(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_surfaceFormat".}
proc fcQAbstractVideoSurface_nativeResolution(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_nativeResolution".}
proc fcQAbstractVideoSurface_start(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_start".}
proc fcQAbstractVideoSurface_stop(self: pointer, ): void {.importc: "QAbstractVideoSurface_stop".}
proc fcQAbstractVideoSurface_isActive(self: pointer, ): bool {.importc: "QAbstractVideoSurface_isActive".}
proc fcQAbstractVideoSurface_present(self: pointer, frame: pointer): bool {.importc: "QAbstractVideoSurface_present".}
proc fcQAbstractVideoSurface_error(self: pointer, ): cint {.importc: "QAbstractVideoSurface_error".}
proc fcQAbstractVideoSurface_activeChanged(self: pointer, active: bool): void {.importc: "QAbstractVideoSurface_activeChanged".}
proc fQAbstractVideoSurface_connect_activeChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_activeChanged".}
proc fcQAbstractVideoSurface_surfaceFormatChanged(self: pointer, format: pointer): void {.importc: "QAbstractVideoSurface_surfaceFormatChanged".}
proc fQAbstractVideoSurface_connect_surfaceFormatChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_surfaceFormatChanged".}
proc fcQAbstractVideoSurface_supportedFormatsChanged(self: pointer, ): void {.importc: "QAbstractVideoSurface_supportedFormatsChanged".}
proc fQAbstractVideoSurface_connect_supportedFormatsChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_supportedFormatsChanged".}
proc fcQAbstractVideoSurface_nativeResolutionChanged(self: pointer, resolution: pointer): void {.importc: "QAbstractVideoSurface_nativeResolutionChanged".}
proc fQAbstractVideoSurface_connect_nativeResolutionChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_nativeResolutionChanged".}
proc fcQAbstractVideoSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr2".}
proc fcQAbstractVideoSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_tr3".}
proc fcQAbstractVideoSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf82".}
proc fcQAbstractVideoSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf83".}
proc fQAbstractVideoSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractVideoSurface_virtualbase_metacall".}
proc fcQAbstractVideoSurface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_metacall".}
proc fcQAbstractVideoSurface_override_virtual_supportedPixelFormats(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_supportedPixelFormats".}
proc fQAbstractVideoSurface_virtualbase_isFormatSupported(self: pointer, format: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_isFormatSupported".}
proc fcQAbstractVideoSurface_override_virtual_isFormatSupported(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_isFormatSupported".}
proc fQAbstractVideoSurface_virtualbase_nearestFormat(self: pointer, format: pointer): pointer{.importc: "QAbstractVideoSurface_virtualbase_nearestFormat".}
proc fcQAbstractVideoSurface_override_virtual_nearestFormat(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_nearestFormat".}
proc fQAbstractVideoSurface_virtualbase_start(self: pointer, format: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_start".}
proc fcQAbstractVideoSurface_override_virtual_start(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_start".}
proc fQAbstractVideoSurface_virtualbase_stop(self: pointer, ): void{.importc: "QAbstractVideoSurface_virtualbase_stop".}
proc fcQAbstractVideoSurface_override_virtual_stop(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_stop".}
proc fcQAbstractVideoSurface_override_virtual_present(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_present".}
proc fQAbstractVideoSurface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_event".}
proc fcQAbstractVideoSurface_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_event".}
proc fQAbstractVideoSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_eventFilter".}
proc fcQAbstractVideoSurface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_eventFilter".}
proc fQAbstractVideoSurface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_timerEvent".}
proc fcQAbstractVideoSurface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_timerEvent".}
proc fQAbstractVideoSurface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_childEvent".}
proc fcQAbstractVideoSurface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_childEvent".}
proc fQAbstractVideoSurface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_customEvent".}
proc fcQAbstractVideoSurface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_customEvent".}
proc fQAbstractVideoSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_connectNotify".}
proc fcQAbstractVideoSurface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_connectNotify".}
proc fQAbstractVideoSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_disconnectNotify".}
proc fcQAbstractVideoSurface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_disconnectNotify".}
proc fcQAbstractVideoSurface_staticMetaObject(): pointer {.importc: "QAbstractVideoSurface_staticMetaObject".}
proc fcQAbstractVideoSurface_delete(self: pointer) {.importc: "QAbstractVideoSurface_delete".}


func init*(T: type QAbstractVideoSurface, h: ptr cQAbstractVideoSurface): QAbstractVideoSurface =
  T(h: h)
proc create*(T: type QAbstractVideoSurface, ): QAbstractVideoSurface =

  QAbstractVideoSurface.init(fcQAbstractVideoSurface_new())
proc create*(T: type QAbstractVideoSurface, parent: gen_qobject.QObject): QAbstractVideoSurface =

  QAbstractVideoSurface.init(fcQAbstractVideoSurface_new2(parent.h))
proc metaObject*(self: QAbstractVideoSurface, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractVideoSurface_metaObject(self.h))

proc metacast*(self: QAbstractVideoSurface, param1: cstring): pointer =

  fcQAbstractVideoSurface_metacast(self.h, param1)

proc metacall*(self: QAbstractVideoSurface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractVideoSurface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractVideoSurface, s: cstring): string =

  let v_ms = fcQAbstractVideoSurface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractVideoSurface, s: cstring): string =

  let v_ms = fcQAbstractVideoSurface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedPixelFormats*(self: QAbstractVideoSurface, typeVal: gen_qabstractvideobuffer.QAbstractVideoBufferHandleType): seq[gen_qvideoframe.QVideoFramePixelFormat] =

  var v_ma = fcQAbstractVideoSurface_supportedPixelFormats(self.h, cint(typeVal))
  var vx_ret = newSeq[gen_qvideoframe.QVideoFramePixelFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvideoframe.QVideoFramePixelFormat(v_outCast[i])
  vx_ret

proc isFormatSupported*(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool =

  fcQAbstractVideoSurface_isFormatSupported(self.h, format.h)

proc nearestFormat*(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat =

  gen_qvideosurfaceformat.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_nearestFormat(self.h, format.h))

proc surfaceFormat*(self: QAbstractVideoSurface, ): gen_qvideosurfaceformat.QVideoSurfaceFormat =

  gen_qvideosurfaceformat.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_surfaceFormat(self.h))

proc nativeResolution*(self: QAbstractVideoSurface, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractVideoSurface_nativeResolution(self.h))

proc start*(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool =

  fcQAbstractVideoSurface_start(self.h, format.h)

proc stop*(self: QAbstractVideoSurface, ): void =

  fcQAbstractVideoSurface_stop(self.h)

proc isActive*(self: QAbstractVideoSurface, ): bool =

  fcQAbstractVideoSurface_isActive(self.h)

proc present*(self: QAbstractVideoSurface, frame: gen_qvideoframe.QVideoFrame): bool =

  fcQAbstractVideoSurface_present(self.h, frame.h)

proc error*(self: QAbstractVideoSurface, ): QAbstractVideoSurfaceError =

  QAbstractVideoSurfaceError(fcQAbstractVideoSurface_error(self.h))

proc activeChanged*(self: QAbstractVideoSurface, active: bool): void =

  fcQAbstractVideoSurface_activeChanged(self.h, active)

proc miqt_exec_callback_QAbstractVideoSurface_activeChanged(slot: int, active: bool) {.exportc.} =
  type Cb = proc(active: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = active


  nimfunc[](slotval1)

proc onactiveChanged*(self: QAbstractVideoSurface, slot: proc(active: bool)) =
  type Cb = proc(active: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractVideoSurface_connect_activeChanged(self.h, cast[int](addr tmp[]))
proc surfaceFormatChanged*(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): void =

  fcQAbstractVideoSurface_surfaceFormatChanged(self.h, format.h)

proc miqt_exec_callback_QAbstractVideoSurface_surfaceFormatChanged(slot: int, format: pointer) {.exportc.} =
  type Cb = proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat.QVideoSurfaceFormat(h: format)


  nimfunc[](slotval1)

proc onsurfaceFormatChanged*(self: QAbstractVideoSurface, slot: proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat)) =
  type Cb = proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractVideoSurface_connect_surfaceFormatChanged(self.h, cast[int](addr tmp[]))
proc supportedFormatsChanged*(self: QAbstractVideoSurface, ): void =

  fcQAbstractVideoSurface_supportedFormatsChanged(self.h)

proc miqt_exec_callback_QAbstractVideoSurface_supportedFormatsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsupportedFormatsChanged*(self: QAbstractVideoSurface, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractVideoSurface_connect_supportedFormatsChanged(self.h, cast[int](addr tmp[]))
proc nativeResolutionChanged*(self: QAbstractVideoSurface, resolution: gen_qsize.QSize): void =

  fcQAbstractVideoSurface_nativeResolutionChanged(self.h, resolution.h)

proc miqt_exec_callback_QAbstractVideoSurface_nativeResolutionChanged(slot: int, resolution: pointer) {.exportc.} =
  type Cb = proc(resolution: gen_qsize.QSize)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSize(h: resolution)


  nimfunc[](slotval1)

proc onnativeResolutionChanged*(self: QAbstractVideoSurface, slot: proc(resolution: gen_qsize.QSize)) =
  type Cb = proc(resolution: gen_qsize.QSize)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractVideoSurface_connect_nativeResolutionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractVideoSurface, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractVideoSurface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractVideoSurface, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractVideoSurface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractVideoSurface, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractVideoSurface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractVideoSurface, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractVideoSurface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractVideoSurface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractVideoSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractVideoSurfacemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_metacall(self: ptr cQAbstractVideoSurface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractVideoSurface_metacall ".} =
  type Cb = proc(super: QAbstractVideoSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractVideoSurface(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoSurfacesupportedPixelFormatsBase* = proc(typeVal: gen_qabstractvideobuffer.QAbstractVideoBufferHandleType): seq[gen_qvideoframe.QVideoFramePixelFormat]
proc onsupportedPixelFormats*(self: QAbstractVideoSurface, slot: proc(typeVal: gen_qabstractvideobuffer.QAbstractVideoBufferHandleType): seq[gen_qvideoframe.QVideoFramePixelFormat]) =
  # TODO check subclass
  type Cb = proc(typeVal: gen_qabstractvideobuffer.QAbstractVideoBufferHandleType): seq[gen_qvideoframe.QVideoFramePixelFormat]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_supportedPixelFormats(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_supportedPixelFormats(self: ptr cQAbstractVideoSurface, slot: int, typeVal: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractVideoSurface_supportedPixelFormats ".} =
  type Cb = proc(typeVal: gen_qabstractvideobuffer.QAbstractVideoBufferHandleType): seq[gen_qvideoframe.QVideoFramePixelFormat]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractvideobuffer.QAbstractVideoBufferHandleType(typeVal)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = cint(virtualReturn[i])


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_isFormatSupported(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool =


  fQAbstractVideoSurface_virtualbase_isFormatSupported(self.h, format.h)

type QAbstractVideoSurfaceisFormatSupportedBase* = proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
proc onisFormatSupported*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfaceisFormatSupportedBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfaceisFormatSupportedBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_isFormatSupported(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_isFormatSupported(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_isFormatSupported ".} =
  type Cb = proc(super: QAbstractVideoSurfaceisFormatSupportedBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): auto =
    callVirtualBase_isFormatSupported(QAbstractVideoSurface(h: self), format)
  let slotval1 = gen_qvideosurfaceformat.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_nearestFormat(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat =


  gen_qvideosurfaceformat.QVideoSurfaceFormat(h: fQAbstractVideoSurface_virtualbase_nearestFormat(self.h, format.h))

type QAbstractVideoSurfacenearestFormatBase* = proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat
proc onnearestFormat*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacenearestFormatBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacenearestFormatBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_nearestFormat(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_nearestFormat(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractVideoSurface_nearestFormat ".} =
  type Cb = proc(super: QAbstractVideoSurfacenearestFormatBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): gen_qvideosurfaceformat.QVideoSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): auto =
    callVirtualBase_nearestFormat(QAbstractVideoSurface(h: self), format)
  let slotval1 = gen_qvideosurfaceformat.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_start(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool =


  fQAbstractVideoSurface_virtualbase_start(self.h, format.h)

type QAbstractVideoSurfacestartBase* = proc(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
proc onstart*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacestartBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacestartBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_start(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_start(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_start ".} =
  type Cb = proc(super: QAbstractVideoSurfacestartBase, format: gen_qvideosurfaceformat.QVideoSurfaceFormat): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(format: gen_qvideosurfaceformat.QVideoSurfaceFormat): auto =
    callVirtualBase_start(QAbstractVideoSurface(h: self), format)
  let slotval1 = gen_qvideosurfaceformat.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_stop(self: QAbstractVideoSurface, ): void =


  fQAbstractVideoSurface_virtualbase_stop(self.h)

type QAbstractVideoSurfacestopBase* = proc(): void
proc onstop*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacestopBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacestopBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_stop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_stop(self: ptr cQAbstractVideoSurface, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_stop ".} =
  type Cb = proc(super: QAbstractVideoSurfacestopBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stop(QAbstractVideoSurface(h: self), )

  nimfunc[](superCall)
type QAbstractVideoSurfacepresentBase* = proc(frame: gen_qvideoframe.QVideoFrame): bool
proc onpresent*(self: QAbstractVideoSurface, slot: proc(frame: gen_qvideoframe.QVideoFrame): bool) =
  # TODO check subclass
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_present(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_present(self: ptr cQAbstractVideoSurface, slot: int, frame: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_present ".} =
  type Cb = proc(frame: gen_qvideoframe.QVideoFrame): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFrame(h: frame)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QAbstractVideoSurface, event: gen_qcoreevent.QEvent): bool =


  fQAbstractVideoSurface_virtualbase_event(self.h, event.h)

type QAbstractVideoSurfaceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfaceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_event(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_event ".} =
  type Cb = proc(super: QAbstractVideoSurfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractVideoSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractVideoSurface, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractVideoSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractVideoSurfaceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_eventFilter(self: ptr cQAbstractVideoSurface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_eventFilter ".} =
  type Cb = proc(super: QAbstractVideoSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractVideoSurface(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractVideoSurface, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractVideoSurface_virtualbase_timerEvent(self.h, event.h)

type QAbstractVideoSurfacetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_timerEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_timerEvent ".} =
  type Cb = proc(super: QAbstractVideoSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractVideoSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractVideoSurface, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractVideoSurface_virtualbase_childEvent(self.h, event.h)

type QAbstractVideoSurfacechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_childEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_childEvent ".} =
  type Cb = proc(super: QAbstractVideoSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractVideoSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractVideoSurface, event: gen_qcoreevent.QEvent): void =


  fQAbstractVideoSurface_virtualbase_customEvent(self.h, event.h)

type QAbstractVideoSurfacecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_customEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_customEvent ".} =
  type Cb = proc(super: QAbstractVideoSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractVideoSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractVideoSurface, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractVideoSurface_virtualbase_connectNotify(self.h, signal.h)

type QAbstractVideoSurfaceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_connectNotify(self: ptr cQAbstractVideoSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_connectNotify ".} =
  type Cb = proc(super: QAbstractVideoSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractVideoSurface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractVideoSurface, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractVideoSurface_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractVideoSurfacedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractVideoSurface, slot: proc(super: QAbstractVideoSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_disconnectNotify(self: ptr cQAbstractVideoSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_disconnectNotify ".} =
  type Cb = proc(super: QAbstractVideoSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractVideoSurface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractVideoSurface): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractVideoSurface_staticMetaObject())
proc delete*(self: QAbstractVideoSurface) =
  fcQAbstractVideoSurface_delete(self.h)
