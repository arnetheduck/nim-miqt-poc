import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qpixmap.cpp", cflags).}


import gen_qpixmap_types
export gen_qpixmap_types

import
  gen_qbitmap,
  gen_qcolor,
  gen_qimage,
  gen_qimagereader,
  gen_qiodevice,
  gen_qmatrix,
  gen_qnamespace,
  gen_qobject,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qtransform,
  gen_qvariant
export
  gen_qbitmap,
  gen_qcolor,
  gen_qimage,
  gen_qimagereader,
  gen_qiodevice,
  gen_qmatrix,
  gen_qnamespace,
  gen_qobject,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qtransform,
  gen_qvariant

type cQPixmap*{.exportc: "QPixmap", incompleteStruct.} = object

proc fcQPixmap_new(): ptr cQPixmap {.importc: "QPixmap_new".}
proc fcQPixmap_new2(w: cint, h: cint): ptr cQPixmap {.importc: "QPixmap_new2".}
proc fcQPixmap_new3(param1: pointer): ptr cQPixmap {.importc: "QPixmap_new3".}
proc fcQPixmap_new4(fileName: struct_miqt_string): ptr cQPixmap {.importc: "QPixmap_new4".}
proc fcQPixmap_new5(param1: pointer): ptr cQPixmap {.importc: "QPixmap_new5".}
proc fcQPixmap_new6(fileName: struct_miqt_string, format: cstring): ptr cQPixmap {.importc: "QPixmap_new6".}
proc fcQPixmap_new7(fileName: struct_miqt_string, format: cstring, flags: cint): ptr cQPixmap {.importc: "QPixmap_new7".}
proc fcQPixmap_operatorAssign(self: pointer, param1: pointer): void {.importc: "QPixmap_operatorAssign".}
proc fcQPixmap_swap(self: pointer, other: pointer): void {.importc: "QPixmap_swap".}
proc fcQPixmap_ToQVariant(self: pointer, ): pointer {.importc: "QPixmap_ToQVariant".}
proc fcQPixmap_isNull(self: pointer, ): bool {.importc: "QPixmap_isNull".}
proc fcQPixmap_devType(self: pointer, ): cint {.importc: "QPixmap_devType".}
proc fcQPixmap_width(self: pointer, ): cint {.importc: "QPixmap_width".}
proc fcQPixmap_height(self: pointer, ): cint {.importc: "QPixmap_height".}
proc fcQPixmap_size(self: pointer, ): pointer {.importc: "QPixmap_size".}
proc fcQPixmap_rect(self: pointer, ): pointer {.importc: "QPixmap_rect".}
proc fcQPixmap_depth(self: pointer, ): cint {.importc: "QPixmap_depth".}
proc fcQPixmap_defaultDepth(): cint {.importc: "QPixmap_defaultDepth".}
proc fcQPixmap_fill(self: pointer, ): void {.importc: "QPixmap_fill".}
proc fcQPixmap_fill2(self: pointer, device: pointer, ofs: pointer): void {.importc: "QPixmap_fill2".}
proc fcQPixmap_fill3(self: pointer, device: pointer, xofs: cint, yofs: cint): void {.importc: "QPixmap_fill3".}
proc fcQPixmap_mask(self: pointer, ): pointer {.importc: "QPixmap_mask".}
proc fcQPixmap_setMask(self: pointer, mask: pointer): void {.importc: "QPixmap_setMask".}
proc fcQPixmap_devicePixelRatio(self: pointer, ): float64 {.importc: "QPixmap_devicePixelRatio".}
proc fcQPixmap_setDevicePixelRatio(self: pointer, scaleFactor: float64): void {.importc: "QPixmap_setDevicePixelRatio".}
proc fcQPixmap_hasAlpha(self: pointer, ): bool {.importc: "QPixmap_hasAlpha".}
proc fcQPixmap_hasAlphaChannel(self: pointer, ): bool {.importc: "QPixmap_hasAlphaChannel".}
proc fcQPixmap_createHeuristicMask(self: pointer, ): pointer {.importc: "QPixmap_createHeuristicMask".}
proc fcQPixmap_createMaskFromColor(self: pointer, maskColor: pointer): pointer {.importc: "QPixmap_createMaskFromColor".}
proc fcQPixmap_grabWindow(param1: uint): pointer {.importc: "QPixmap_grabWindow".}
proc fcQPixmap_grabWidget(widget: pointer, rect: pointer): pointer {.importc: "QPixmap_grabWidget".}
proc fcQPixmap_grabWidgetWithWidget(widget: pointer): pointer {.importc: "QPixmap_grabWidgetWithWidget".}
proc fcQPixmap_scaled(self: pointer, w: cint, h: cint): pointer {.importc: "QPixmap_scaled".}
proc fcQPixmap_scaledWithQSize(self: pointer, s: pointer): pointer {.importc: "QPixmap_scaledWithQSize".}
proc fcQPixmap_scaledToWidth(self: pointer, w: cint): pointer {.importc: "QPixmap_scaledToWidth".}
proc fcQPixmap_scaledToHeight(self: pointer, h: cint): pointer {.importc: "QPixmap_scaledToHeight".}
proc fcQPixmap_transformed(self: pointer, param1: pointer): pointer {.importc: "QPixmap_transformed".}
proc fcQPixmap_trueMatrix(m: pointer, w: cint, h: cint): pointer {.importc: "QPixmap_trueMatrix".}
proc fcQPixmap_transformedWithQTransform(self: pointer, param1: pointer): pointer {.importc: "QPixmap_transformedWithQTransform".}
proc fcQPixmap_trueMatrix2(m: pointer, w: cint, h: cint): pointer {.importc: "QPixmap_trueMatrix2".}
proc fcQPixmap_toImage(self: pointer, ): pointer {.importc: "QPixmap_toImage".}
proc fcQPixmap_fromImage(image: pointer): pointer {.importc: "QPixmap_fromImage".}
proc fcQPixmap_fromImageReader(imageReader: pointer): pointer {.importc: "QPixmap_fromImageReader".}
proc fcQPixmap_load(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPixmap_load".}
proc fcQPixmap_loadFromData(self: pointer, buf: ptr uint8, len: cuint): bool {.importc: "QPixmap_loadFromData".}
proc fcQPixmap_loadFromDataWithData(self: pointer, data: struct_miqt_string): bool {.importc: "QPixmap_loadFromDataWithData".}
proc fcQPixmap_save(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPixmap_save".}
proc fcQPixmap_saveWithDevice(self: pointer, device: pointer): bool {.importc: "QPixmap_saveWithDevice".}
proc fcQPixmap_convertFromImage(self: pointer, img: pointer): bool {.importc: "QPixmap_convertFromImage".}
proc fcQPixmap_copy(self: pointer, x: cint, y: cint, width: cint, height: cint): pointer {.importc: "QPixmap_copy".}
proc fcQPixmap_copy2(self: pointer, ): pointer {.importc: "QPixmap_copy2".}
proc fcQPixmap_scroll(self: pointer, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint): void {.importc: "QPixmap_scroll".}
proc fcQPixmap_scroll2(self: pointer, dx: cint, dy: cint, rect: pointer): void {.importc: "QPixmap_scroll2".}
proc fcQPixmap_cacheKey(self: pointer, ): clonglong {.importc: "QPixmap_cacheKey".}
proc fcQPixmap_isDetached(self: pointer, ): bool {.importc: "QPixmap_isDetached".}
proc fcQPixmap_detach(self: pointer, ): void {.importc: "QPixmap_detach".}
proc fcQPixmap_isQBitmap(self: pointer, ): bool {.importc: "QPixmap_isQBitmap".}
proc fcQPixmap_paintEngine(self: pointer, ): pointer {.importc: "QPixmap_paintEngine".}
proc fcQPixmap_operatorNot(self: pointer, ): bool {.importc: "QPixmap_operatorNot".}
proc fcQPixmap_fill1(self: pointer, fillColor: pointer): void {.importc: "QPixmap_fill1".}
proc fcQPixmap_createHeuristicMask1(self: pointer, clipTight: bool): pointer {.importc: "QPixmap_createHeuristicMask1".}
proc fcQPixmap_createMaskFromColor2(self: pointer, maskColor: pointer, mode: cint): pointer {.importc: "QPixmap_createMaskFromColor2".}
proc fcQPixmap_grabWindow2(param1: uint, x: cint): pointer {.importc: "QPixmap_grabWindow2".}
proc fcQPixmap_grabWindow3(param1: uint, x: cint, y: cint): pointer {.importc: "QPixmap_grabWindow3".}
proc fcQPixmap_grabWindow4(param1: uint, x: cint, y: cint, w: cint): pointer {.importc: "QPixmap_grabWindow4".}
proc fcQPixmap_grabWindow5(param1: uint, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QPixmap_grabWindow5".}
proc fcQPixmap_grabWidget2(widget: pointer, x: cint): pointer {.importc: "QPixmap_grabWidget2".}
proc fcQPixmap_grabWidget3(widget: pointer, x: cint, y: cint): pointer {.importc: "QPixmap_grabWidget3".}
proc fcQPixmap_grabWidget4(widget: pointer, x: cint, y: cint, w: cint): pointer {.importc: "QPixmap_grabWidget4".}
proc fcQPixmap_grabWidget5(widget: pointer, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QPixmap_grabWidget5".}
proc fcQPixmap_scaled3(self: pointer, w: cint, h: cint, aspectMode: cint): pointer {.importc: "QPixmap_scaled3".}
proc fcQPixmap_scaled4(self: pointer, w: cint, h: cint, aspectMode: cint, mode: cint): pointer {.importc: "QPixmap_scaled4".}
proc fcQPixmap_scaled2(self: pointer, s: pointer, aspectMode: cint): pointer {.importc: "QPixmap_scaled2".}
proc fcQPixmap_scaled32(self: pointer, s: pointer, aspectMode: cint, mode: cint): pointer {.importc: "QPixmap_scaled32".}
proc fcQPixmap_scaledToWidth2(self: pointer, w: cint, mode: cint): pointer {.importc: "QPixmap_scaledToWidth2".}
proc fcQPixmap_scaledToHeight2(self: pointer, h: cint, mode: cint): pointer {.importc: "QPixmap_scaledToHeight2".}
proc fcQPixmap_transformed2(self: pointer, param1: pointer, mode: cint): pointer {.importc: "QPixmap_transformed2".}
proc fcQPixmap_transformed22(self: pointer, param1: pointer, mode: cint): pointer {.importc: "QPixmap_transformed22".}
proc fcQPixmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QPixmap_fromImage2".}
proc fcQPixmap_fromImageReader2(imageReader: pointer, flags: cint): pointer {.importc: "QPixmap_fromImageReader2".}
proc fcQPixmap_load2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_load2".}
proc fcQPixmap_load3(self: pointer, fileName: struct_miqt_string, format: cstring, flags: cint): bool {.importc: "QPixmap_load3".}
proc fcQPixmap_loadFromData3(self: pointer, buf: ptr uint8, len: cuint, format: cstring): bool {.importc: "QPixmap_loadFromData3".}
proc fcQPixmap_loadFromData4(self: pointer, buf: ptr uint8, len: cuint, format: cstring, flags: cint): bool {.importc: "QPixmap_loadFromData4".}
proc fcQPixmap_loadFromData2(self: pointer, data: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_loadFromData2".}
proc fcQPixmap_loadFromData32(self: pointer, data: struct_miqt_string, format: cstring, flags: cint): bool {.importc: "QPixmap_loadFromData32".}
proc fcQPixmap_save2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QPixmap_save2".}
proc fcQPixmap_save3(self: pointer, fileName: struct_miqt_string, format: cstring, quality: cint): bool {.importc: "QPixmap_save3".}
proc fcQPixmap_save22(self: pointer, device: pointer, format: cstring): bool {.importc: "QPixmap_save22".}
proc fcQPixmap_save32(self: pointer, device: pointer, format: cstring, quality: cint): bool {.importc: "QPixmap_save32".}
proc fcQPixmap_convertFromImage2(self: pointer, img: pointer, flags: cint): bool {.importc: "QPixmap_convertFromImage2".}
proc fcQPixmap_copy1(self: pointer, rect: pointer): pointer {.importc: "QPixmap_copy1".}
proc fcQPixmap_scroll7(self: pointer, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint, exposed: pointer): void {.importc: "QPixmap_scroll7".}
proc fcQPixmap_scroll4(self: pointer, dx: cint, dy: cint, rect: pointer, exposed: pointer): void {.importc: "QPixmap_scroll4".}
proc fQPixmap_virtualbase_devType(self: pointer, ): cint{.importc: "QPixmap_virtualbase_devType".}
proc fcQPixmap_override_virtual_devType(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_devType".}
proc fQPixmap_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPixmap_virtualbase_paintEngine".}
proc fcQPixmap_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_paintEngine".}
proc fQPixmap_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPixmap_virtualbase_metric".}
proc fcQPixmap_override_virtual_metric(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_metric".}
proc fQPixmap_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPixmap_virtualbase_initPainter".}
proc fcQPixmap_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_initPainter".}
proc fQPixmap_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPixmap_virtualbase_redirected".}
proc fcQPixmap_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_redirected".}
proc fQPixmap_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPixmap_virtualbase_sharedPainter".}
proc fcQPixmap_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPixmap_override_virtual_sharedPainter".}
proc fcQPixmap_delete(self: pointer) {.importc: "QPixmap_delete".}


func init*(T: type QPixmap, h: ptr cQPixmap): QPixmap =
  T(h: h)
proc create*(T: type QPixmap, ): QPixmap =

  QPixmap.init(fcQPixmap_new())
proc create*(T: type QPixmap, w: cint, h: cint): QPixmap =

  QPixmap.init(fcQPixmap_new2(w, h))
proc create*(T: type QPixmap, param1: gen_qsize.QSize): QPixmap =

  QPixmap.init(fcQPixmap_new3(param1.h))
proc create*(T: type QPixmap, fileName: string): QPixmap =

  QPixmap.init(fcQPixmap_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create2*(T: type QPixmap, param1: QPixmap): QPixmap =

  QPixmap.init(fcQPixmap_new5(param1.h))
proc create*(T: type QPixmap, fileName: string, format: cstring): QPixmap =

  QPixmap.init(fcQPixmap_new6(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))
proc create*(T: type QPixmap, fileName: string, format: cstring, flags: gen_qnamespace.ImageConversionFlag): QPixmap =

  QPixmap.init(fcQPixmap_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, cint(flags)))
proc operatorAssign*(self: QPixmap, param1: QPixmap): void =

  fcQPixmap_operatorAssign(self.h, param1.h)

proc swap*(self: QPixmap, other: QPixmap): void =

  fcQPixmap_swap(self.h, other.h)

proc ToQVariant*(self: QPixmap, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPixmap_ToQVariant(self.h))

proc isNull*(self: QPixmap, ): bool =

  fcQPixmap_isNull(self.h)

proc devType*(self: QPixmap, ): cint =

  fcQPixmap_devType(self.h)

proc width*(self: QPixmap, ): cint =

  fcQPixmap_width(self.h)

proc height*(self: QPixmap, ): cint =

  fcQPixmap_height(self.h)

proc size*(self: QPixmap, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPixmap_size(self.h))

proc rect*(self: QPixmap, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPixmap_rect(self.h))

proc depth*(self: QPixmap, ): cint =

  fcQPixmap_depth(self.h)

proc defaultDepth*(_: type QPixmap, ): cint =

  fcQPixmap_defaultDepth()

proc fill*(self: QPixmap, ): void =

  fcQPixmap_fill(self.h)

proc fill2*(self: QPixmap, device: gen_qpaintdevice.QPaintDevice, ofs: gen_qpoint.QPoint): void =

  fcQPixmap_fill2(self.h, device.h, ofs.h)

proc fill3*(self: QPixmap, device: gen_qpaintdevice.QPaintDevice, xofs: cint, yofs: cint): void =

  fcQPixmap_fill3(self.h, device.h, xofs, yofs)

proc mask*(self: QPixmap, ): gen_qbitmap.QBitmap =

  gen_qbitmap.QBitmap(h: fcQPixmap_mask(self.h))

proc setMask*(self: QPixmap, mask: gen_qbitmap.QBitmap): void =

  fcQPixmap_setMask(self.h, mask.h)

proc devicePixelRatio*(self: QPixmap, ): float64 =

  fcQPixmap_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: QPixmap, scaleFactor: float64): void =

  fcQPixmap_setDevicePixelRatio(self.h, scaleFactor)

proc hasAlpha*(self: QPixmap, ): bool =

  fcQPixmap_hasAlpha(self.h)

proc hasAlphaChannel*(self: QPixmap, ): bool =

  fcQPixmap_hasAlphaChannel(self.h)

proc createHeuristicMask*(self: QPixmap, ): gen_qbitmap.QBitmap =

  gen_qbitmap.QBitmap(h: fcQPixmap_createHeuristicMask(self.h))

proc createMaskFromColor*(self: QPixmap, maskColor: gen_qcolor.QColor): gen_qbitmap.QBitmap =

  gen_qbitmap.QBitmap(h: fcQPixmap_createMaskFromColor(self.h, maskColor.h))

proc grabWindow*(_: type QPixmap, param1: uint): QPixmap =

  QPixmap(h: fcQPixmap_grabWindow(param1))

proc grabWidget*(_: type QPixmap, widget: gen_qobject.QObject, rect: gen_qrect.QRect): QPixmap =

  QPixmap(h: fcQPixmap_grabWidget(widget.h, rect.h))

proc grabWidgetWithWidget*(_: type QPixmap, widget: gen_qobject.QObject): QPixmap =

  QPixmap(h: fcQPixmap_grabWidgetWithWidget(widget.h))

proc scaled*(self: QPixmap, w: cint, h: cint): QPixmap =

  QPixmap(h: fcQPixmap_scaled(self.h, w, h))

proc scaledWithQSize*(self: QPixmap, s: gen_qsize.QSize): QPixmap =

  QPixmap(h: fcQPixmap_scaledWithQSize(self.h, s.h))

proc scaledToWidth*(self: QPixmap, w: cint): QPixmap =

  QPixmap(h: fcQPixmap_scaledToWidth(self.h, w))

proc scaledToHeight*(self: QPixmap, h: cint): QPixmap =

  QPixmap(h: fcQPixmap_scaledToHeight(self.h, h))

proc transformed*(self: QPixmap, param1: gen_qmatrix.QMatrix): QPixmap =

  QPixmap(h: fcQPixmap_transformed(self.h, param1.h))

proc trueMatrix*(_: type QPixmap, m: gen_qmatrix.QMatrix, w: cint, h: cint): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQPixmap_trueMatrix(m.h, w, h))

proc transformedWithQTransform*(self: QPixmap, param1: gen_qtransform.QTransform): QPixmap =

  QPixmap(h: fcQPixmap_transformedWithQTransform(self.h, param1.h))

proc trueMatrix2*(_: type QPixmap, m: gen_qtransform.QTransform, w: cint, h: cint): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQPixmap_trueMatrix2(m.h, w, h))

proc toImage*(self: QPixmap, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQPixmap_toImage(self.h))

proc fromImage*(_: type QPixmap, image: gen_qimage.QImage): QPixmap =

  QPixmap(h: fcQPixmap_fromImage(image.h))

proc fromImageReader*(_: type QPixmap, imageReader: gen_qimagereader.QImageReader): QPixmap =

  QPixmap(h: fcQPixmap_fromImageReader(imageReader.h))

proc load*(self: QPixmap, fileName: string): bool =

  fcQPixmap_load(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc loadFromData*(self: QPixmap, buf: ptr uint8, len: cuint): bool =

  fcQPixmap_loadFromData(self.h, buf, len)

proc loadFromDataWithData*(self: QPixmap, data: seq[byte]): bool =

  fcQPixmap_loadFromDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc save*(self: QPixmap, fileName: string): bool =

  fcQPixmap_save(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc saveWithDevice*(self: QPixmap, device: gen_qiodevice.QIODevice): bool =

  fcQPixmap_saveWithDevice(self.h, device.h)

proc convertFromImage*(self: QPixmap, img: gen_qimage.QImage): bool =

  fcQPixmap_convertFromImage(self.h, img.h)

proc copy*(self: QPixmap, x: cint, y: cint, width: cint, height: cint): QPixmap =

  QPixmap(h: fcQPixmap_copy(self.h, x, y, width, height))

proc copy2*(self: QPixmap, ): QPixmap =

  QPixmap(h: fcQPixmap_copy2(self.h))

proc scroll*(self: QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint): void =

  fcQPixmap_scroll(self.h, dx, dy, x, y, width, height)

proc scroll2*(self: QPixmap, dx: cint, dy: cint, rect: gen_qrect.QRect): void =

  fcQPixmap_scroll2(self.h, dx, dy, rect.h)

proc cacheKey*(self: QPixmap, ): clonglong =

  fcQPixmap_cacheKey(self.h)

proc isDetached*(self: QPixmap, ): bool =

  fcQPixmap_isDetached(self.h)

proc detach*(self: QPixmap, ): void =

  fcQPixmap_detach(self.h)

proc isQBitmap*(self: QPixmap, ): bool =

  fcQPixmap_isQBitmap(self.h)

proc paintEngine*(self: QPixmap, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQPixmap_paintEngine(self.h))

proc operatorNot*(self: QPixmap, ): bool =

  fcQPixmap_operatorNot(self.h)

proc fill1*(self: QPixmap, fillColor: gen_qcolor.QColor): void =

  fcQPixmap_fill1(self.h, fillColor.h)

proc createHeuristicMask1*(self: QPixmap, clipTight: bool): gen_qbitmap.QBitmap =

  gen_qbitmap.QBitmap(h: fcQPixmap_createHeuristicMask1(self.h, clipTight))

proc createMaskFromColor2*(self: QPixmap, maskColor: gen_qcolor.QColor, mode: gen_qnamespace.MaskMode): gen_qbitmap.QBitmap =

  gen_qbitmap.QBitmap(h: fcQPixmap_createMaskFromColor2(self.h, maskColor.h, cint(mode)))

proc grabWindow2*(_: type QPixmap, param1: uint, x: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWindow2(param1, x))

proc grabWindow3*(_: type QPixmap, param1: uint, x: cint, y: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWindow3(param1, x, y))

proc grabWindow4*(_: type QPixmap, param1: uint, x: cint, y: cint, w: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWindow4(param1, x, y, w))

proc grabWindow5*(_: type QPixmap, param1: uint, x: cint, y: cint, w: cint, h: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWindow5(param1, x, y, w, h))

proc grabWidget2*(_: type QPixmap, widget: gen_qobject.QObject, x: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWidget2(widget.h, x))

proc grabWidget3*(_: type QPixmap, widget: gen_qobject.QObject, x: cint, y: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWidget3(widget.h, x, y))

proc grabWidget4*(_: type QPixmap, widget: gen_qobject.QObject, x: cint, y: cint, w: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWidget4(widget.h, x, y, w))

proc grabWidget5*(_: type QPixmap, widget: gen_qobject.QObject, x: cint, y: cint, w: cint, h: cint): QPixmap =

  QPixmap(h: fcQPixmap_grabWidget5(widget.h, x, y, w, h))

proc scaled3*(self: QPixmap, w: cint, h: cint, aspectMode: gen_qnamespace.AspectRatioMode): QPixmap =

  QPixmap(h: fcQPixmap_scaled3(self.h, w, h, cint(aspectMode)))

proc scaled4*(self: QPixmap, w: cint, h: cint, aspectMode: gen_qnamespace.AspectRatioMode, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_scaled4(self.h, w, h, cint(aspectMode), cint(mode)))

proc scaled2*(self: QPixmap, s: gen_qsize.QSize, aspectMode: gen_qnamespace.AspectRatioMode): QPixmap =

  QPixmap(h: fcQPixmap_scaled2(self.h, s.h, cint(aspectMode)))

proc scaled32*(self: QPixmap, s: gen_qsize.QSize, aspectMode: gen_qnamespace.AspectRatioMode, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_scaled32(self.h, s.h, cint(aspectMode), cint(mode)))

proc scaledToWidth2*(self: QPixmap, w: cint, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_scaledToWidth2(self.h, w, cint(mode)))

proc scaledToHeight2*(self: QPixmap, h: cint, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_scaledToHeight2(self.h, h, cint(mode)))

proc transformed2*(self: QPixmap, param1: gen_qmatrix.QMatrix, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_transformed2(self.h, param1.h, cint(mode)))

proc transformed22*(self: QPixmap, param1: gen_qtransform.QTransform, mode: gen_qnamespace.TransformationMode): QPixmap =

  QPixmap(h: fcQPixmap_transformed22(self.h, param1.h, cint(mode)))

proc fromImage2*(_: type QPixmap, image: gen_qimage.QImage, flags: gen_qnamespace.ImageConversionFlag): QPixmap =

  QPixmap(h: fcQPixmap_fromImage2(image.h, cint(flags)))

proc fromImageReader2*(_: type QPixmap, imageReader: gen_qimagereader.QImageReader, flags: gen_qnamespace.ImageConversionFlag): QPixmap =

  QPixmap(h: fcQPixmap_fromImageReader2(imageReader.h, cint(flags)))

proc load2*(self: QPixmap, fileName: string, format: cstring): bool =

  fcQPixmap_load2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc load3*(self: QPixmap, fileName: string, format: cstring, flags: gen_qnamespace.ImageConversionFlag): bool =

  fcQPixmap_load3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, cint(flags))

proc loadFromData3*(self: QPixmap, buf: ptr uint8, len: cuint, format: cstring): bool =

  fcQPixmap_loadFromData3(self.h, buf, len, format)

proc loadFromData4*(self: QPixmap, buf: ptr uint8, len: cuint, format: cstring, flags: gen_qnamespace.ImageConversionFlag): bool =

  fcQPixmap_loadFromData4(self.h, buf, len, format, cint(flags))

proc loadFromData2*(self: QPixmap, data: seq[byte], format: cstring): bool =

  fcQPixmap_loadFromData2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format)

proc loadFromData32*(self: QPixmap, data: seq[byte], format: cstring, flags: gen_qnamespace.ImageConversionFlag): bool =

  fcQPixmap_loadFromData32(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format, cint(flags))

proc save2*(self: QPixmap, fileName: string, format: cstring): bool =

  fcQPixmap_save2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc save3*(self: QPixmap, fileName: string, format: cstring, quality: cint): bool =

  fcQPixmap_save3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, quality)

proc save22*(self: QPixmap, device: gen_qiodevice.QIODevice, format: cstring): bool =

  fcQPixmap_save22(self.h, device.h, format)

proc save32*(self: QPixmap, device: gen_qiodevice.QIODevice, format: cstring, quality: cint): bool =

  fcQPixmap_save32(self.h, device.h, format, quality)

proc convertFromImage2*(self: QPixmap, img: gen_qimage.QImage, flags: gen_qnamespace.ImageConversionFlag): bool =

  fcQPixmap_convertFromImage2(self.h, img.h, cint(flags))

proc copy1*(self: QPixmap, rect: gen_qrect.QRect): QPixmap =

  QPixmap(h: fcQPixmap_copy1(self.h, rect.h))

proc scroll7*(self: QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint, exposed: gen_qregion.QRegion): void =

  fcQPixmap_scroll7(self.h, dx, dy, x, y, width, height, exposed.h)

proc scroll4*(self: QPixmap, dx: cint, dy: cint, rect: gen_qrect.QRect, exposed: gen_qregion.QRegion): void =

  fcQPixmap_scroll4(self.h, dx, dy, rect.h, exposed.h)

proc callVirtualBase_devType(self: QPixmap, ): cint =


  fQPixmap_virtualbase_devType(self.h)

type QPixmapdevTypeBase* = proc(): cint
proc ondevType*(self: QPixmap, slot: proc(super: QPixmapdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPixmapdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_devType(self: ptr cQPixmap, slot: int): cint {.exportc: "miqt_exec_callback_QPixmap_devType ".} =
  type Cb = proc(super: QPixmapdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPixmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPixmap, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPixmap_virtualbase_paintEngine(self.h))

type QPixmappaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPixmap, slot: proc(super: QPixmappaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPixmappaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_paintEngine(self: ptr cQPixmap, slot: int): pointer {.exportc: "miqt_exec_callback_QPixmap_paintEngine ".} =
  type Cb = proc(super: QPixmappaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPixmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QPixmap, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPixmap_virtualbase_metric(self.h, cint(param1))

type QPixmapmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPixmap, slot: proc(super: QPixmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPixmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_metric(self: ptr cQPixmap, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPixmap_metric ".} =
  type Cb = proc(super: QPixmapmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPixmap(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPixmap, painter: gen_qpainter.QPainter): void =


  fQPixmap_virtualbase_initPainter(self.h, painter.h)

type QPixmapinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPixmap, slot: proc(super: QPixmapinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPixmapinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_initPainter(self: ptr cQPixmap, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPixmap_initPainter ".} =
  type Cb = proc(super: QPixmapinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPixmap(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPixmap, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPixmap_virtualbase_redirected(self.h, offset.h))

type QPixmapredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPixmap, slot: proc(super: QPixmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPixmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_redirected(self: ptr cQPixmap, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPixmap_redirected ".} =
  type Cb = proc(super: QPixmapredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPixmap(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPixmap, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPixmap_virtualbase_sharedPainter(self.h))

type QPixmapsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPixmap, slot: proc(super: QPixmapsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPixmapsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPixmap_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPixmap_sharedPainter(self: ptr cQPixmap, slot: int): pointer {.exportc: "miqt_exec_callback_QPixmap_sharedPainter ".} =
  type Cb = proc(super: QPixmapsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPixmap(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QPixmap) =
  fcQPixmap_delete(self.h)
