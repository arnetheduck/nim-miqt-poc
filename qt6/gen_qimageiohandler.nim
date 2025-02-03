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
{.compile("gen_qimageiohandler.cpp", cflags).}


type QImageIOHandlerImageOption* = cint
const
  QImageIOHandlerSize* = 0
  QImageIOHandlerClipRect* = 1
  QImageIOHandlerDescription* = 2
  QImageIOHandlerScaledClipRect* = 3
  QImageIOHandlerScaledSize* = 4
  QImageIOHandlerCompressionRatio* = 5
  QImageIOHandlerGamma* = 6
  QImageIOHandlerQuality* = 7
  QImageIOHandlerName* = 8
  QImageIOHandlerSubType* = 9
  QImageIOHandlerIncrementalReading* = 10
  QImageIOHandlerEndianness* = 11
  QImageIOHandlerAnimation* = 12
  QImageIOHandlerBackgroundColor* = 13
  QImageIOHandlerImageFormat* = 14
  QImageIOHandlerSupportedSubTypes* = 15
  QImageIOHandlerOptimizedWrite* = 16
  QImageIOHandlerProgressiveScanWrite* = 17
  QImageIOHandlerImageTransformation* = 18



type QImageIOHandlerTransformation* = cint
const
  QImageIOHandlerTransformationNone* = 0
  QImageIOHandlerTransformationMirror* = 1
  QImageIOHandlerTransformationFlip* = 2
  QImageIOHandlerTransformationRotate180* = 3
  QImageIOHandlerTransformationRotate90* = 4
  QImageIOHandlerTransformationMirrorAndRotate90* = 5
  QImageIOHandlerTransformationFlipAndRotate90* = 6
  QImageIOHandlerTransformationRotate270* = 7



type QImageIOPluginCapability* = cint
const
  QImageIOPluginCanRead* = 1
  QImageIOPluginCanWrite* = 2
  QImageIOPluginCanReadIncremental* = 4



import gen_qimageiohandler_types
export gen_qimageiohandler_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qimage,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qvariant

type cQImageIOHandler*{.exportc: "QImageIOHandler", incompleteStruct.} = object
type cQImageIOPlugin*{.exportc: "QImageIOPlugin", incompleteStruct.} = object

proc fcQImageIOHandler_new(): ptr cQImageIOHandler {.importc: "QImageIOHandler_new".}
proc fcQImageIOHandler_setDevice(self: pointer, device: pointer): void {.importc: "QImageIOHandler_setDevice".}
proc fcQImageIOHandler_device(self: pointer, ): pointer {.importc: "QImageIOHandler_device".}
proc fcQImageIOHandler_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormat".}
proc fcQImageIOHandler_setFormatWithFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormatWithFormat".}
proc fcQImageIOHandler_format(self: pointer, ): struct_miqt_string {.importc: "QImageIOHandler_format".}
proc fcQImageIOHandler_canRead(self: pointer, ): bool {.importc: "QImageIOHandler_canRead".}
proc fcQImageIOHandler_read(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_read".}
proc fcQImageIOHandler_write(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_write".}
proc fcQImageIOHandler_option(self: pointer, option: cint): pointer {.importc: "QImageIOHandler_option".}
proc fcQImageIOHandler_setOption(self: pointer, option: cint, value: pointer): void {.importc: "QImageIOHandler_setOption".}
proc fcQImageIOHandler_supportsOption(self: pointer, option: cint): bool {.importc: "QImageIOHandler_supportsOption".}
proc fcQImageIOHandler_jumpToNextImage(self: pointer, ): bool {.importc: "QImageIOHandler_jumpToNextImage".}
proc fcQImageIOHandler_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageIOHandler_jumpToImage".}
proc fcQImageIOHandler_loopCount(self: pointer, ): cint {.importc: "QImageIOHandler_loopCount".}
proc fcQImageIOHandler_imageCount(self: pointer, ): cint {.importc: "QImageIOHandler_imageCount".}
proc fcQImageIOHandler_nextImageDelay(self: pointer, ): cint {.importc: "QImageIOHandler_nextImageDelay".}
proc fcQImageIOHandler_currentImageNumber(self: pointer, ): cint {.importc: "QImageIOHandler_currentImageNumber".}
proc fcQImageIOHandler_currentImageRect(self: pointer, ): pointer {.importc: "QImageIOHandler_currentImageRect".}
proc fcQImageIOHandler_allocateImage(size: pointer, format: cint, image: pointer): bool {.importc: "QImageIOHandler_allocateImage".}
proc fcQImageIOHandler_override_virtual_canRead(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_canRead".}
proc fcQImageIOHandler_override_virtual_read(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_read".}
proc fQImageIOHandler_virtualbase_write(self: pointer, image: pointer): bool{.importc: "QImageIOHandler_virtualbase_write".}
proc fcQImageIOHandler_override_virtual_write(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_write".}
proc fQImageIOHandler_virtualbase_option(self: pointer, option: cint): pointer{.importc: "QImageIOHandler_virtualbase_option".}
proc fcQImageIOHandler_override_virtual_option(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_option".}
proc fQImageIOHandler_virtualbase_setOption(self: pointer, option: cint, value: pointer): void{.importc: "QImageIOHandler_virtualbase_setOption".}
proc fcQImageIOHandler_override_virtual_setOption(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_setOption".}
proc fQImageIOHandler_virtualbase_supportsOption(self: pointer, option: cint): bool{.importc: "QImageIOHandler_virtualbase_supportsOption".}
proc fcQImageIOHandler_override_virtual_supportsOption(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_supportsOption".}
proc fQImageIOHandler_virtualbase_jumpToNextImage(self: pointer, ): bool{.importc: "QImageIOHandler_virtualbase_jumpToNextImage".}
proc fcQImageIOHandler_override_virtual_jumpToNextImage(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_jumpToNextImage".}
proc fQImageIOHandler_virtualbase_jumpToImage(self: pointer, imageNumber: cint): bool{.importc: "QImageIOHandler_virtualbase_jumpToImage".}
proc fcQImageIOHandler_override_virtual_jumpToImage(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_jumpToImage".}
proc fQImageIOHandler_virtualbase_loopCount(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_loopCount".}
proc fcQImageIOHandler_override_virtual_loopCount(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_loopCount".}
proc fQImageIOHandler_virtualbase_imageCount(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_imageCount".}
proc fcQImageIOHandler_override_virtual_imageCount(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_imageCount".}
proc fQImageIOHandler_virtualbase_nextImageDelay(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_nextImageDelay".}
proc fcQImageIOHandler_override_virtual_nextImageDelay(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_nextImageDelay".}
proc fQImageIOHandler_virtualbase_currentImageNumber(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_currentImageNumber".}
proc fcQImageIOHandler_override_virtual_currentImageNumber(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_currentImageNumber".}
proc fQImageIOHandler_virtualbase_currentImageRect(self: pointer, ): pointer{.importc: "QImageIOHandler_virtualbase_currentImageRect".}
proc fcQImageIOHandler_override_virtual_currentImageRect(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_currentImageRect".}
proc fcQImageIOHandler_delete(self: pointer) {.importc: "QImageIOHandler_delete".}
proc fcQImageIOPlugin_new(): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new".}
proc fcQImageIOPlugin_new2(parent: pointer): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new2".}
proc fcQImageIOPlugin_metaObject(self: pointer, ): pointer {.importc: "QImageIOPlugin_metaObject".}
proc fcQImageIOPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_metacast".}
proc fcQImageIOPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_metacall".}
proc fcQImageIOPlugin_tr(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr".}
proc fcQImageIOPlugin_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.importc: "QImageIOPlugin_capabilities".}
proc fcQImageIOPlugin_create(self: pointer, device: pointer, format: struct_miqt_string): pointer {.importc: "QImageIOPlugin_create".}
proc fcQImageIOPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr2".}
proc fcQImageIOPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_tr3".}
proc fQImageIOPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QImageIOPlugin_virtualbase_metacall".}
proc fcQImageIOPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_metacall".}
proc fcQImageIOPlugin_override_virtual_capabilities(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_capabilities".}
proc fcQImageIOPlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_create".}
proc fQImageIOPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QImageIOPlugin_virtualbase_event".}
proc fcQImageIOPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_event".}
proc fQImageIOPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QImageIOPlugin_virtualbase_eventFilter".}
proc fcQImageIOPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_eventFilter".}
proc fQImageIOPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_timerEvent".}
proc fcQImageIOPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_timerEvent".}
proc fQImageIOPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_childEvent".}
proc fcQImageIOPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_childEvent".}
proc fQImageIOPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_customEvent".}
proc fcQImageIOPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_customEvent".}
proc fQImageIOPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QImageIOPlugin_virtualbase_connectNotify".}
proc fcQImageIOPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_connectNotify".}
proc fQImageIOPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QImageIOPlugin_virtualbase_disconnectNotify".}
proc fcQImageIOPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_disconnectNotify".}
proc fcQImageIOPlugin_delete(self: pointer) {.importc: "QImageIOPlugin_delete".}


func init*(T: type QImageIOHandler, h: ptr cQImageIOHandler): QImageIOHandler =
  T(h: h)
proc create*(T: type QImageIOHandler, ): QImageIOHandler =

  QImageIOHandler.init(fcQImageIOHandler_new())
proc setDevice*(self: QImageIOHandler, device: gen_qiodevice.QIODevice): void =

  fcQImageIOHandler_setDevice(self.h, device.h)

proc device*(self: QImageIOHandler, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQImageIOHandler_device(self.h))

proc setFormat*(self: QImageIOHandler, format: seq[byte]): void =

  fcQImageIOHandler_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc setFormatWithFormat*(self: QImageIOHandler, format: seq[byte]): void =

  fcQImageIOHandler_setFormatWithFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: QImageIOHandler, ): seq[byte] =

  var v_bytearray = fcQImageIOHandler_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canRead*(self: QImageIOHandler, ): bool =

  fcQImageIOHandler_canRead(self.h)

proc read*(self: QImageIOHandler, image: gen_qimage.QImage): bool =

  fcQImageIOHandler_read(self.h, image.h)

proc write*(self: QImageIOHandler, image: gen_qimage.QImage): bool =

  fcQImageIOHandler_write(self.h, image.h)

proc option*(self: QImageIOHandler, option: QImageIOHandlerImageOption): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQImageIOHandler_option(self.h, cint(option)))

proc setOption*(self: QImageIOHandler, option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void =

  fcQImageIOHandler_setOption(self.h, cint(option), value.h)

proc supportsOption*(self: QImageIOHandler, option: QImageIOHandlerImageOption): bool =

  fcQImageIOHandler_supportsOption(self.h, cint(option))

proc jumpToNextImage*(self: QImageIOHandler, ): bool =

  fcQImageIOHandler_jumpToNextImage(self.h)

proc jumpToImage*(self: QImageIOHandler, imageNumber: cint): bool =

  fcQImageIOHandler_jumpToImage(self.h, imageNumber)

proc loopCount*(self: QImageIOHandler, ): cint =

  fcQImageIOHandler_loopCount(self.h)

proc imageCount*(self: QImageIOHandler, ): cint =

  fcQImageIOHandler_imageCount(self.h)

proc nextImageDelay*(self: QImageIOHandler, ): cint =

  fcQImageIOHandler_nextImageDelay(self.h)

proc currentImageNumber*(self: QImageIOHandler, ): cint =

  fcQImageIOHandler_currentImageNumber(self.h)

proc currentImageRect*(self: QImageIOHandler, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQImageIOHandler_currentImageRect(self.h))

proc allocateImage*(_: type QImageIOHandler, size: gen_qsize.QSize, format: gen_qimage.QImageFormat, image: gen_qimage.QImage): bool =

  fcQImageIOHandler_allocateImage(size.h, cint(format), image.h)

type QImageIOHandlercanReadBase* = proc(): bool
proc oncanRead*(self: QImageIOHandler, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_canRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_canRead(self: ptr cQImageIOHandler, slot: int): bool {.exportc: "miqt_exec_callback_QImageIOHandler_canRead ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QImageIOHandlerreadBase* = proc(image: gen_qimage.QImage): bool
proc onread*(self: QImageIOHandler, slot: proc(image: gen_qimage.QImage): bool) =
  # TODO check subclass
  type Cb = proc(image: gen_qimage.QImage): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_read(self: ptr cQImageIOHandler, slot: int, image: pointer): bool {.exportc: "miqt_exec_callback_QImageIOHandler_read ".} =
  type Cb = proc(image: gen_qimage.QImage): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qimage.QImage(h: image)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc callVirtualBase_write(self: QImageIOHandler, image: gen_qimage.QImage): bool =


  fQImageIOHandler_virtualbase_write(self.h, image.h)

type QImageIOHandlerwriteBase* = proc(image: gen_qimage.QImage): bool
proc onwrite*(self: QImageIOHandler, slot: proc(super: QImageIOHandlerwriteBase, image: gen_qimage.QImage): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlerwriteBase, image: gen_qimage.QImage): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_write(self: ptr cQImageIOHandler, slot: int, image: pointer): bool {.exportc: "miqt_exec_callback_QImageIOHandler_write ".} =
  type Cb = proc(super: QImageIOHandlerwriteBase, image: gen_qimage.QImage): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(image: gen_qimage.QImage): auto =
    callVirtualBase_write(QImageIOHandler(h: self), image)
  let slotval1 = gen_qimage.QImage(h: image)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_option(self: QImageIOHandler, option: QImageIOHandlerImageOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQImageIOHandler_virtualbase_option(self.h, cint(option)))

type QImageIOHandleroptionBase* = proc(option: QImageIOHandlerImageOption): gen_qvariant.QVariant
proc onoption*(self: QImageIOHandler, slot: proc(super: QImageIOHandleroptionBase, option: QImageIOHandlerImageOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandleroptionBase, option: QImageIOHandlerImageOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_option(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_option(self: ptr cQImageIOHandler, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QImageIOHandler_option ".} =
  type Cb = proc(super: QImageIOHandleroptionBase, option: QImageIOHandlerImageOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: QImageIOHandlerImageOption): auto =
    callVirtualBase_option(QImageIOHandler(h: self), option)
  let slotval1 = QImageIOHandlerImageOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setOption(self: QImageIOHandler, option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void =


  fQImageIOHandler_virtualbase_setOption(self.h, cint(option), value.h)

type QImageIOHandlersetOptionBase* = proc(option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void
proc onsetOption*(self: QImageIOHandler, slot: proc(super: QImageIOHandlersetOptionBase, option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlersetOptionBase, option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_setOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_setOption(self: ptr cQImageIOHandler, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QImageIOHandler_setOption ".} =
  type Cb = proc(super: QImageIOHandlersetOptionBase, option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: QImageIOHandlerImageOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setOption(QImageIOHandler(h: self), option, value)
  let slotval1 = QImageIOHandlerImageOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_supportsOption(self: QImageIOHandler, option: QImageIOHandlerImageOption): bool =


  fQImageIOHandler_virtualbase_supportsOption(self.h, cint(option))

type QImageIOHandlersupportsOptionBase* = proc(option: QImageIOHandlerImageOption): bool
proc onsupportsOption*(self: QImageIOHandler, slot: proc(super: QImageIOHandlersupportsOptionBase, option: QImageIOHandlerImageOption): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlersupportsOptionBase, option: QImageIOHandlerImageOption): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_supportsOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_supportsOption(self: ptr cQImageIOHandler, slot: int, option: cint): bool {.exportc: "miqt_exec_callback_QImageIOHandler_supportsOption ".} =
  type Cb = proc(super: QImageIOHandlersupportsOptionBase, option: QImageIOHandlerImageOption): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: QImageIOHandlerImageOption): auto =
    callVirtualBase_supportsOption(QImageIOHandler(h: self), option)
  let slotval1 = QImageIOHandlerImageOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_jumpToNextImage(self: QImageIOHandler, ): bool =


  fQImageIOHandler_virtualbase_jumpToNextImage(self.h)

type QImageIOHandlerjumpToNextImageBase* = proc(): bool
proc onjumpToNextImage*(self: QImageIOHandler, slot: proc(super: QImageIOHandlerjumpToNextImageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlerjumpToNextImageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_jumpToNextImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_jumpToNextImage(self: ptr cQImageIOHandler, slot: int): bool {.exportc: "miqt_exec_callback_QImageIOHandler_jumpToNextImage ".} =
  type Cb = proc(super: QImageIOHandlerjumpToNextImageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_jumpToNextImage(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_jumpToImage(self: QImageIOHandler, imageNumber: cint): bool =


  fQImageIOHandler_virtualbase_jumpToImage(self.h, imageNumber)

type QImageIOHandlerjumpToImageBase* = proc(imageNumber: cint): bool
proc onjumpToImage*(self: QImageIOHandler, slot: proc(super: QImageIOHandlerjumpToImageBase, imageNumber: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlerjumpToImageBase, imageNumber: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_jumpToImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_jumpToImage(self: ptr cQImageIOHandler, slot: int, imageNumber: cint): bool {.exportc: "miqt_exec_callback_QImageIOHandler_jumpToImage ".} =
  type Cb = proc(super: QImageIOHandlerjumpToImageBase, imageNumber: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(imageNumber: cint): auto =
    callVirtualBase_jumpToImage(QImageIOHandler(h: self), imageNumber)
  let slotval1 = imageNumber


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_loopCount(self: QImageIOHandler, ): cint =


  fQImageIOHandler_virtualbase_loopCount(self.h)

type QImageIOHandlerloopCountBase* = proc(): cint
proc onloopCount*(self: QImageIOHandler, slot: proc(super: QImageIOHandlerloopCountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlerloopCountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_loopCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_loopCount(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_loopCount ".} =
  type Cb = proc(super: QImageIOHandlerloopCountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_loopCount(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_imageCount(self: QImageIOHandler, ): cint =


  fQImageIOHandler_virtualbase_imageCount(self.h)

type QImageIOHandlerimageCountBase* = proc(): cint
proc onimageCount*(self: QImageIOHandler, slot: proc(super: QImageIOHandlerimageCountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlerimageCountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_imageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_imageCount(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_imageCount ".} =
  type Cb = proc(super: QImageIOHandlerimageCountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_imageCount(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextImageDelay(self: QImageIOHandler, ): cint =


  fQImageIOHandler_virtualbase_nextImageDelay(self.h)

type QImageIOHandlernextImageDelayBase* = proc(): cint
proc onnextImageDelay*(self: QImageIOHandler, slot: proc(super: QImageIOHandlernextImageDelayBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlernextImageDelayBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_nextImageDelay(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_nextImageDelay(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_nextImageDelay ".} =
  type Cb = proc(super: QImageIOHandlernextImageDelayBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextImageDelay(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_currentImageNumber(self: QImageIOHandler, ): cint =


  fQImageIOHandler_virtualbase_currentImageNumber(self.h)

type QImageIOHandlercurrentImageNumberBase* = proc(): cint
proc oncurrentImageNumber*(self: QImageIOHandler, slot: proc(super: QImageIOHandlercurrentImageNumberBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlercurrentImageNumberBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_currentImageNumber(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_currentImageNumber(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_currentImageNumber ".} =
  type Cb = proc(super: QImageIOHandlercurrentImageNumberBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_currentImageNumber(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_currentImageRect(self: QImageIOHandler, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQImageIOHandler_virtualbase_currentImageRect(self.h))

type QImageIOHandlercurrentImageRectBase* = proc(): gen_qrect.QRect
proc oncurrentImageRect*(self: QImageIOHandler, slot: proc(super: QImageIOHandlercurrentImageRectBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QImageIOHandlercurrentImageRectBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_currentImageRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_currentImageRect(self: ptr cQImageIOHandler, slot: int): pointer {.exportc: "miqt_exec_callback_QImageIOHandler_currentImageRect ".} =
  type Cb = proc(super: QImageIOHandlercurrentImageRectBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_currentImageRect(QImageIOHandler(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QImageIOHandler) =
  fcQImageIOHandler_delete(self.h)

func init*(T: type QImageIOPlugin, h: ptr cQImageIOPlugin): QImageIOPlugin =
  T(h: h)
proc create*(T: type QImageIOPlugin, ): QImageIOPlugin =

  QImageIOPlugin.init(fcQImageIOPlugin_new())
proc create*(T: type QImageIOPlugin, parent: gen_qobject.QObject): QImageIOPlugin =

  QImageIOPlugin.init(fcQImageIOPlugin_new2(parent.h))
proc metaObject*(self: QImageIOPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQImageIOPlugin_metaObject(self.h))

proc metacast*(self: QImageIOPlugin, param1: cstring): pointer =

  fcQImageIOPlugin_metacast(self.h, param1)

proc metacall*(self: QImageIOPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQImageIOPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QImageIOPlugin, s: cstring): string =

  let v_ms = fcQImageIOPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: QImageIOPlugin, device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOPluginCapability =

  QImageIOPluginCapability(fcQImageIOPlugin_capabilities(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc create*(self: QImageIOPlugin, device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOHandler =

  QImageIOHandler(h: fcQImageIOPlugin_create(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc tr2*(_: type QImageIOPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQImageIOPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QImageIOPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQImageIOPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QImageIOPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQImageIOPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QImageIOPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QImageIOPlugin, slot: proc(super: QImageIOPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_metacall(self: ptr cQImageIOPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QImageIOPlugin_metacall ".} =
  type Cb = proc(super: QImageIOPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QImageIOPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QImageIOPlugincapabilitiesBase* = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOPluginCapability
proc oncapabilities*(self: QImageIOPlugin, slot: proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOPluginCapability) =
  # TODO check subclass
  type Cb = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOPluginCapability
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_capabilities(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_capabilities(self: ptr cQImageIOPlugin, slot: int, device: pointer, format: struct_miqt_string): cint {.exportc: "miqt_exec_callback_QImageIOPlugin_capabilities ".} =
  type Cb = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOPluginCapability
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qiodevice.QIODevice(h: device)

  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
type QImageIOPlugincreateBase* = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOHandler
proc oncreate*(self: QImageIOPlugin, slot: proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOHandler) =
  # TODO check subclass
  type Cb = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOHandler
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_create(self: ptr cQImageIOPlugin, slot: int, device: pointer, format: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QImageIOPlugin_create ".} =
  type Cb = proc(device: gen_qiodevice.QIODevice, format: seq[byte]): QImageIOHandler
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qiodevice.QIODevice(h: device)

  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QImageIOPlugin, event: gen_qcoreevent.QEvent): bool =


  fQImageIOPlugin_virtualbase_event(self.h, event.h)

type QImageIOPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QImageIOPlugin, slot: proc(super: QImageIOPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_event(self: ptr cQImageIOPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QImageIOPlugin_event ".} =
  type Cb = proc(super: QImageIOPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QImageIOPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QImageIOPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQImageIOPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QImageIOPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QImageIOPlugin, slot: proc(super: QImageIOPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_eventFilter(self: ptr cQImageIOPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QImageIOPlugin_eventFilter ".} =
  type Cb = proc(super: QImageIOPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QImageIOPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QImageIOPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQImageIOPlugin_virtualbase_timerEvent(self.h, event.h)

type QImageIOPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QImageIOPlugin, slot: proc(super: QImageIOPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_timerEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_timerEvent ".} =
  type Cb = proc(super: QImageIOPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QImageIOPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QImageIOPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQImageIOPlugin_virtualbase_childEvent(self.h, event.h)

type QImageIOPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QImageIOPlugin, slot: proc(super: QImageIOPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_childEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_childEvent ".} =
  type Cb = proc(super: QImageIOPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QImageIOPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QImageIOPlugin, event: gen_qcoreevent.QEvent): void =


  fQImageIOPlugin_virtualbase_customEvent(self.h, event.h)

type QImageIOPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QImageIOPlugin, slot: proc(super: QImageIOPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_customEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_customEvent ".} =
  type Cb = proc(super: QImageIOPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QImageIOPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QImageIOPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQImageIOPlugin_virtualbase_connectNotify(self.h, signal.h)

type QImageIOPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QImageIOPlugin, slot: proc(super: QImageIOPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_connectNotify(self: ptr cQImageIOPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_connectNotify ".} =
  type Cb = proc(super: QImageIOPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QImageIOPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QImageIOPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQImageIOPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QImageIOPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QImageIOPlugin, slot: proc(super: QImageIOPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QImageIOPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_disconnectNotify(self: ptr cQImageIOPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_disconnectNotify ".} =
  type Cb = proc(super: QImageIOPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QImageIOPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QImageIOPlugin) =
  fcQImageIOPlugin_delete(self.h)
