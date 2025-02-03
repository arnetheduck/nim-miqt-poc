import Qt6SvgWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6SvgWidgets")
{.compile("gen_qsvggenerator.cpp", cflags).}


import gen_qsvggenerator_types
export gen_qsvggenerator_types

import
  gen_qiodevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize
export
  gen_qiodevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize

type cQSvgGenerator*{.exportc: "QSvgGenerator", incompleteStruct.} = object

proc fcQSvgGenerator_new(): ptr cQSvgGenerator {.importc: "QSvgGenerator_new".}
proc fcQSvgGenerator_title(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_title".}
proc fcQSvgGenerator_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QSvgGenerator_setTitle".}
proc fcQSvgGenerator_description(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_description".}
proc fcQSvgGenerator_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QSvgGenerator_setDescription".}
proc fcQSvgGenerator_size(self: pointer, ): pointer {.importc: "QSvgGenerator_size".}
proc fcQSvgGenerator_setSize(self: pointer, size: pointer): void {.importc: "QSvgGenerator_setSize".}
proc fcQSvgGenerator_viewBox(self: pointer, ): pointer {.importc: "QSvgGenerator_viewBox".}
proc fcQSvgGenerator_viewBoxF(self: pointer, ): pointer {.importc: "QSvgGenerator_viewBoxF".}
proc fcQSvgGenerator_setViewBox(self: pointer, viewBox: pointer): void {.importc: "QSvgGenerator_setViewBox".}
proc fcQSvgGenerator_setViewBoxWithViewBox(self: pointer, viewBox: pointer): void {.importc: "QSvgGenerator_setViewBoxWithViewBox".}
proc fcQSvgGenerator_fileName(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_fileName".}
proc fcQSvgGenerator_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSvgGenerator_setFileName".}
proc fcQSvgGenerator_outputDevice(self: pointer, ): pointer {.importc: "QSvgGenerator_outputDevice".}
proc fcQSvgGenerator_setOutputDevice(self: pointer, outputDevice: pointer): void {.importc: "QSvgGenerator_setOutputDevice".}
proc fcQSvgGenerator_setResolution(self: pointer, dpi: cint): void {.importc: "QSvgGenerator_setResolution".}
proc fcQSvgGenerator_resolution(self: pointer, ): cint {.importc: "QSvgGenerator_resolution".}
proc fQSvgGenerator_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSvgGenerator_virtualbase_paintEngine".}
proc fcQSvgGenerator_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_paintEngine".}
proc fQSvgGenerator_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QSvgGenerator_virtualbase_metric".}
proc fcQSvgGenerator_override_virtual_metric(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_metric".}
proc fQSvgGenerator_virtualbase_devType(self: pointer, ): cint{.importc: "QSvgGenerator_virtualbase_devType".}
proc fcQSvgGenerator_override_virtual_devType(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_devType".}
proc fQSvgGenerator_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSvgGenerator_virtualbase_initPainter".}
proc fcQSvgGenerator_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_initPainter".}
proc fQSvgGenerator_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSvgGenerator_virtualbase_redirected".}
proc fcQSvgGenerator_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_redirected".}
proc fQSvgGenerator_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSvgGenerator_virtualbase_sharedPainter".}
proc fcQSvgGenerator_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_sharedPainter".}
proc fcQSvgGenerator_delete(self: pointer) {.importc: "QSvgGenerator_delete".}


func init*(T: type QSvgGenerator, h: ptr cQSvgGenerator): QSvgGenerator =
  T(h: h)
proc create*(T: type QSvgGenerator, ): QSvgGenerator =

  QSvgGenerator.init(fcQSvgGenerator_new())
proc title*(self: QSvgGenerator, ): string =

  let v_ms = fcQSvgGenerator_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: QSvgGenerator, title: string): void =

  fcQSvgGenerator_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc description*(self: QSvgGenerator, ): string =

  let v_ms = fcQSvgGenerator_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: QSvgGenerator, description: string): void =

  fcQSvgGenerator_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc size*(self: QSvgGenerator, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSvgGenerator_size(self.h))

proc setSize*(self: QSvgGenerator, size: gen_qsize.QSize): void =

  fcQSvgGenerator_setSize(self.h, size.h)

proc viewBox*(self: QSvgGenerator, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSvgGenerator_viewBox(self.h))

proc viewBoxF*(self: QSvgGenerator, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSvgGenerator_viewBoxF(self.h))

proc setViewBox*(self: QSvgGenerator, viewBox: gen_qrect.QRect): void =

  fcQSvgGenerator_setViewBox(self.h, viewBox.h)

proc setViewBoxWithViewBox*(self: QSvgGenerator, viewBox: gen_qrect.QRectF): void =

  fcQSvgGenerator_setViewBoxWithViewBox(self.h, viewBox.h)

proc fileName*(self: QSvgGenerator, ): string =

  let v_ms = fcQSvgGenerator_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: QSvgGenerator, fileName: string): void =

  fcQSvgGenerator_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc outputDevice*(self: QSvgGenerator, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQSvgGenerator_outputDevice(self.h))

proc setOutputDevice*(self: QSvgGenerator, outputDevice: gen_qiodevice.QIODevice): void =

  fcQSvgGenerator_setOutputDevice(self.h, outputDevice.h)

proc setResolution*(self: QSvgGenerator, dpi: cint): void =

  fcQSvgGenerator_setResolution(self.h, dpi)

proc resolution*(self: QSvgGenerator, ): cint =

  fcQSvgGenerator_resolution(self.h)

proc callVirtualBase_paintEngine(self: QSvgGenerator, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSvgGenerator_virtualbase_paintEngine(self.h))

type QSvgGeneratorpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSvgGenerator, slot: proc(super: QSvgGeneratorpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratorpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_paintEngine(self: ptr cQSvgGenerator, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_paintEngine ".} =
  type Cb = proc(super: QSvgGeneratorpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSvgGenerator(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QSvgGenerator, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSvgGenerator_virtualbase_metric(self.h, cint(metric))

type QSvgGeneratormetricBase* = proc(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSvgGenerator, slot: proc(super: QSvgGeneratormetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratormetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_metric(self: ptr cQSvgGenerator, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QSvgGenerator_metric ".} =
  type Cb = proc(super: QSvgGeneratormetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSvgGenerator(h: self), metric)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(metric)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QSvgGenerator, ): cint =


  fQSvgGenerator_virtualbase_devType(self.h)

type QSvgGeneratordevTypeBase* = proc(): cint
proc ondevType*(self: QSvgGenerator, slot: proc(super: QSvgGeneratordevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratordevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_devType(self: ptr cQSvgGenerator, slot: int): cint {.exportc: "miqt_exec_callback_QSvgGenerator_devType ".} =
  type Cb = proc(super: QSvgGeneratordevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSvgGenerator(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_initPainter(self: QSvgGenerator, painter: gen_qpainter.QPainter): void =


  fQSvgGenerator_virtualbase_initPainter(self.h, painter.h)

type QSvgGeneratorinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSvgGenerator, slot: proc(super: QSvgGeneratorinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratorinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_initPainter(self: ptr cQSvgGenerator, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSvgGenerator_initPainter ".} =
  type Cb = proc(super: QSvgGeneratorinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSvgGenerator(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSvgGenerator, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSvgGenerator_virtualbase_redirected(self.h, offset.h))

type QSvgGeneratorredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSvgGenerator, slot: proc(super: QSvgGeneratorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_redirected(self: ptr cQSvgGenerator, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_redirected ".} =
  type Cb = proc(super: QSvgGeneratorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSvgGenerator(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSvgGenerator, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSvgGenerator_virtualbase_sharedPainter(self.h))

type QSvgGeneratorsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSvgGenerator, slot: proc(super: QSvgGeneratorsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSvgGeneratorsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_sharedPainter(self: ptr cQSvgGenerator, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_sharedPainter ".} =
  type Cb = proc(super: QSvgGeneratorsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSvgGenerator(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QSvgGenerator) =
  fcQSvgGenerator_delete(self.h)
