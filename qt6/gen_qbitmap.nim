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
{.compile("gen_qbitmap.cpp", cflags).}


import gen_qbitmap_types
export gen_qbitmap_types

import
  gen_qimage,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qtransform,
  gen_qvariant
export
  gen_qimage,
  gen_qnamespace,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qtransform,
  gen_qvariant

type cQBitmap*{.exportc: "QBitmap", incompleteStruct.} = object

proc fcQBitmap_new(): ptr cQBitmap {.importc: "QBitmap_new".}
proc fcQBitmap_new2(param1: pointer): ptr cQBitmap {.importc: "QBitmap_new2".}
proc fcQBitmap_new3(w: cint, h: cint): ptr cQBitmap {.importc: "QBitmap_new3".}
proc fcQBitmap_new4(param1: pointer): ptr cQBitmap {.importc: "QBitmap_new4".}
proc fcQBitmap_new5(fileName: struct_miqt_string): ptr cQBitmap {.importc: "QBitmap_new5".}
proc fcQBitmap_new6(param1: pointer): ptr cQBitmap {.importc: "QBitmap_new6".}
proc fcQBitmap_new7(fileName: struct_miqt_string, format: cstring): ptr cQBitmap {.importc: "QBitmap_new7".}
proc fcQBitmap_operatorAssign(self: pointer, param1: pointer): void {.importc: "QBitmap_operatorAssign".}
proc fcQBitmap_swap(self: pointer, other: pointer): void {.importc: "QBitmap_swap".}
proc fcQBitmap_ToQVariant(self: pointer, ): pointer {.importc: "QBitmap_ToQVariant".}
proc fcQBitmap_clear(self: pointer, ): void {.importc: "QBitmap_clear".}
proc fcQBitmap_fromImage(image: pointer): pointer {.importc: "QBitmap_fromImage".}
proc fcQBitmap_fromData(size: pointer, bits: ptr uint8): pointer {.importc: "QBitmap_fromData".}
proc fcQBitmap_fromPixmap(pixmap: pointer): pointer {.importc: "QBitmap_fromPixmap".}
proc fcQBitmap_transformed(self: pointer, matrix: pointer): pointer {.importc: "QBitmap_transformed".}
proc fcQBitmap_operatorAssignWithQBitmap(self: pointer, param1: pointer): void {.importc: "QBitmap_operatorAssignWithQBitmap".}
proc fcQBitmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QBitmap_fromImage2".}
proc fcQBitmap_fromData3(size: pointer, bits: ptr uint8, monoFormat: cint): pointer {.importc: "QBitmap_fromData3".}
proc fQBitmap_virtualbase_devType(self: pointer, ): cint{.importc: "QBitmap_virtualbase_devType".}
proc fcQBitmap_override_virtual_devType(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_devType".}
proc fQBitmap_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QBitmap_virtualbase_paintEngine".}
proc fcQBitmap_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_paintEngine".}
proc fQBitmap_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QBitmap_virtualbase_metric".}
proc fcQBitmap_override_virtual_metric(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_metric".}
proc fQBitmap_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QBitmap_virtualbase_initPainter".}
proc fcQBitmap_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_initPainter".}
proc fQBitmap_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QBitmap_virtualbase_redirected".}
proc fcQBitmap_override_virtual_redirected(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_redirected".}
proc fQBitmap_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QBitmap_virtualbase_sharedPainter".}
proc fcQBitmap_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_sharedPainter".}
proc fcQBitmap_delete(self: pointer) {.importc: "QBitmap_delete".}


func init*(T: type QBitmap, h: ptr cQBitmap): QBitmap =
  T(h: h)
proc create*(T: type QBitmap, ): QBitmap =

  QBitmap.init(fcQBitmap_new())
proc create*(T: type QBitmap, param1: gen_qpixmap.QPixmap): QBitmap =

  QBitmap.init(fcQBitmap_new2(param1.h))
proc create*(T: type QBitmap, w: cint, h: cint): QBitmap =

  QBitmap.init(fcQBitmap_new3(w, h))
proc create2*(T: type QBitmap, param1: gen_qsize.QSize): QBitmap =

  QBitmap.init(fcQBitmap_new4(param1.h))
proc create*(T: type QBitmap, fileName: string): QBitmap =

  QBitmap.init(fcQBitmap_new5(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create2*(T: type QBitmap, param1: QBitmap): QBitmap =

  QBitmap.init(fcQBitmap_new6(param1.h))
proc create*(T: type QBitmap, fileName: string, format: cstring): QBitmap =

  QBitmap.init(fcQBitmap_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))
proc operatorAssign*(self: QBitmap, param1: gen_qpixmap.QPixmap): void =

  fcQBitmap_operatorAssign(self.h, param1.h)

proc swap*(self: QBitmap, other: QBitmap): void =

  fcQBitmap_swap(self.h, other.h)

proc ToQVariant*(self: QBitmap, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQBitmap_ToQVariant(self.h))

proc clear*(self: QBitmap, ): void =

  fcQBitmap_clear(self.h)

proc fromImage*(_: type QBitmap, image: gen_qimage.QImage): QBitmap =

  QBitmap(h: fcQBitmap_fromImage(image.h))

proc fromData*(_: type QBitmap, size: gen_qsize.QSize, bits: ptr uint8): QBitmap =

  QBitmap(h: fcQBitmap_fromData(size.h, bits))

proc fromPixmap*(_: type QBitmap, pixmap: gen_qpixmap.QPixmap): QBitmap =

  QBitmap(h: fcQBitmap_fromPixmap(pixmap.h))

proc transformed*(self: QBitmap, matrix: gen_qtransform.QTransform): QBitmap =

  QBitmap(h: fcQBitmap_transformed(self.h, matrix.h))

proc operatorAssignWithQBitmap*(self: QBitmap, param1: QBitmap): void =

  fcQBitmap_operatorAssignWithQBitmap(self.h, param1.h)

proc fromImage2*(_: type QBitmap, image: gen_qimage.QImage, flags: gen_qnamespace.ImageConversionFlag): QBitmap =

  QBitmap(h: fcQBitmap_fromImage2(image.h, cint(flags)))

proc fromData3*(_: type QBitmap, size: gen_qsize.QSize, bits: ptr uint8, monoFormat: gen_qimage.QImageFormat): QBitmap =

  QBitmap(h: fcQBitmap_fromData3(size.h, bits, cint(monoFormat)))

proc callVirtualBase_devType(self: QBitmap, ): cint =


  fQBitmap_virtualbase_devType(self.h)

type QBitmapdevTypeBase* = proc(): cint
proc ondevType*(self: QBitmap, slot: proc(super: QBitmapdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QBitmapdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_devType(self: ptr cQBitmap, slot: int): cint {.exportc: "miqt_exec_callback_QBitmap_devType ".} =
  type Cb = proc(super: QBitmapdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QBitmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QBitmap, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQBitmap_virtualbase_paintEngine(self.h))

type QBitmappaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QBitmap, slot: proc(super: QBitmappaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QBitmappaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_paintEngine(self: ptr cQBitmap, slot: int): pointer {.exportc: "miqt_exec_callback_QBitmap_paintEngine ".} =
  type Cb = proc(super: QBitmappaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QBitmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QBitmap, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQBitmap_virtualbase_metric(self.h, cint(param1))

type QBitmapmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QBitmap, slot: proc(super: QBitmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QBitmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_metric(self: ptr cQBitmap, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBitmap_metric ".} =
  type Cb = proc(super: QBitmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QBitmap(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QBitmap, painter: gen_qpainter.QPainter): void =


  fQBitmap_virtualbase_initPainter(self.h, painter.h)

type QBitmapinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QBitmap, slot: proc(super: QBitmapinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QBitmapinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_initPainter(self: ptr cQBitmap, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QBitmap_initPainter ".} =
  type Cb = proc(super: QBitmapinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QBitmap(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QBitmap, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQBitmap_virtualbase_redirected(self.h, offset.h))

type QBitmapredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QBitmap, slot: proc(super: QBitmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QBitmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_redirected(self: ptr cQBitmap, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QBitmap_redirected ".} =
  type Cb = proc(super: QBitmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QBitmap(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QBitmap, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQBitmap_virtualbase_sharedPainter(self.h))

type QBitmapsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QBitmap, slot: proc(super: QBitmapsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QBitmapsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_sharedPainter(self: ptr cQBitmap, slot: int): pointer {.exportc: "miqt_exec_callback_QBitmap_sharedPainter ".} =
  type Cb = proc(super: QBitmapsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QBitmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QBitmap) =
  fcQBitmap_delete(self.h)
