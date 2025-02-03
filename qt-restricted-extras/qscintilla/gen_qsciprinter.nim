import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qsciprinter.cpp", cflags).}


import gen_qsciprinter_types
export gen_qsciprinter_types

import
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qrect,
  gen_qsciscintilla,
  gen_qsciscintillabase,
  gen_qsize
export
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qrect,
  gen_qsciscintilla,
  gen_qsciscintillabase,
  gen_qsize

type cQsciPrinter*{.exportc: "QsciPrinter", incompleteStruct.} = object

proc fcQsciPrinter_new(): ptr cQsciPrinter {.importc: "QsciPrinter_new".}
proc fcQsciPrinter_new2(mode: cint): ptr cQsciPrinter {.importc: "QsciPrinter_new2".}
proc fcQsciPrinter_formatPage(self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.importc: "QsciPrinter_formatPage".}
proc fcQsciPrinter_magnification(self: pointer, ): cint {.importc: "QsciPrinter_magnification".}
proc fcQsciPrinter_setMagnification(self: pointer, magnification: cint): void {.importc: "QsciPrinter_setMagnification".}
proc fcQsciPrinter_printRange(self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_printRange".}
proc fcQsciPrinter_printRange2(self: pointer, qsb: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_printRange2".}
proc fcQsciPrinter_wrapMode(self: pointer, ): cint {.importc: "QsciPrinter_wrapMode".}
proc fcQsciPrinter_setWrapMode(self: pointer, wmode: cint): void {.importc: "QsciPrinter_setWrapMode".}
proc fQsciPrinter_virtualbase_formatPage(self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void{.importc: "QsciPrinter_virtualbase_formatPage".}
proc fcQsciPrinter_override_virtual_formatPage(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_formatPage".}
proc fQsciPrinter_virtualbase_setMagnification(self: pointer, magnification: cint): void{.importc: "QsciPrinter_virtualbase_setMagnification".}
proc fcQsciPrinter_override_virtual_setMagnification(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setMagnification".}
proc fQsciPrinter_virtualbase_printRange(self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint{.importc: "QsciPrinter_virtualbase_printRange".}
proc fcQsciPrinter_override_virtual_printRange(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_printRange".}
proc fQsciPrinter_virtualbase_printRange2(self: pointer, qsb: pointer, fromVal: cint, to: cint): cint{.importc: "QsciPrinter_virtualbase_printRange2".}
proc fcQsciPrinter_override_virtual_printRange2(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_printRange2".}
proc fQsciPrinter_virtualbase_setWrapMode(self: pointer, wmode: cint): void{.importc: "QsciPrinter_virtualbase_setWrapMode".}
proc fcQsciPrinter_override_virtual_setWrapMode(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setWrapMode".}
proc fQsciPrinter_virtualbase_devType(self: pointer, ): cint{.importc: "QsciPrinter_virtualbase_devType".}
proc fcQsciPrinter_override_virtual_devType(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_devType".}
proc fQsciPrinter_virtualbase_setPageSize(self: pointer, pageSize: cint): void{.importc: "QsciPrinter_virtualbase_setPageSize".}
proc fcQsciPrinter_override_virtual_setPageSize(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageSize".}
proc fQsciPrinter_virtualbase_setPageSizeMM(self: pointer, size: pointer): void{.importc: "QsciPrinter_virtualbase_setPageSizeMM".}
proc fcQsciPrinter_override_virtual_setPageSizeMM(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageSizeMM".}
proc fQsciPrinter_virtualbase_newPage(self: pointer, ): bool{.importc: "QsciPrinter_virtualbase_newPage".}
proc fcQsciPrinter_override_virtual_newPage(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_newPage".}
proc fQsciPrinter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QsciPrinter_virtualbase_paintEngine".}
proc fcQsciPrinter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_paintEngine".}
proc fQsciPrinter_virtualbase_setMargins(self: pointer, m: pointer): void{.importc: "QsciPrinter_virtualbase_setMargins".}
proc fcQsciPrinter_override_virtual_setMargins(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setMargins".}
proc fQsciPrinter_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QsciPrinter_virtualbase_metric".}
proc fcQsciPrinter_override_virtual_metric(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_metric".}
proc fQsciPrinter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QsciPrinter_virtualbase_initPainter".}
proc fcQsciPrinter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_initPainter".}
proc fQsciPrinter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QsciPrinter_virtualbase_redirected".}
proc fcQsciPrinter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_redirected".}
proc fQsciPrinter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QsciPrinter_virtualbase_sharedPainter".}
proc fcQsciPrinter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_sharedPainter".}
proc fcQsciPrinter_delete(self: pointer) {.importc: "QsciPrinter_delete".}


func init*(T: type QsciPrinter, h: ptr cQsciPrinter): QsciPrinter =
  T(h: h)
proc create*(T: type QsciPrinter, ): QsciPrinter =

  QsciPrinter.init(fcQsciPrinter_new())
proc create*(T: type QsciPrinter, mode: gen_qprinter.QPrinterPrinterMode): QsciPrinter =

  QsciPrinter.init(fcQsciPrinter_new2(cint(mode)))
proc formatPage*(self: QsciPrinter, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void =

  fcQsciPrinter_formatPage(self.h, painter.h, drawing, area.h, pagenr)

proc magnification*(self: QsciPrinter, ): cint =

  fcQsciPrinter_magnification(self.h)

proc setMagnification*(self: QsciPrinter, magnification: cint): void =

  fcQsciPrinter_setMagnification(self.h, magnification)

proc printRange*(self: QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint =

  fcQsciPrinter_printRange(self.h, qsb.h, painter.h, fromVal, to)

proc printRange2*(self: QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =

  fcQsciPrinter_printRange2(self.h, qsb.h, fromVal, to)

proc wrapMode*(self: QsciPrinter, ): gen_qsciscintilla.QsciScintillaWrapMode =

  gen_qsciscintilla.QsciScintillaWrapMode(fcQsciPrinter_wrapMode(self.h))

proc setWrapMode*(self: QsciPrinter, wmode: gen_qsciscintilla.QsciScintillaWrapMode): void =

  fcQsciPrinter_setWrapMode(self.h, cint(wmode))

proc callVirtualBase_formatPage(self: QsciPrinter, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void =


  fQsciPrinter_virtualbase_formatPage(self.h, painter.h, drawing, area.h, pagenr)

type QsciPrinterformatPageBase* = proc(painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void
proc onformatPage*(self: QsciPrinter, slot: proc(super: QsciPrinterformatPageBase, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterformatPageBase, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_formatPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_formatPage(self: ptr cQsciPrinter, slot: int, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_formatPage ".} =
  type Cb = proc(super: QsciPrinterformatPageBase, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): auto =
    callVirtualBase_formatPage(QsciPrinter(h: self), painter, drawing, area, pagenr)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = drawing

  let slotval3 = gen_qrect.QRect(h: area)

  let slotval4 = pagenr


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_setMagnification(self: QsciPrinter, magnification: cint): void =


  fQsciPrinter_virtualbase_setMagnification(self.h, magnification)

type QsciPrintersetMagnificationBase* = proc(magnification: cint): void
proc onsetMagnification*(self: QsciPrinter, slot: proc(super: QsciPrintersetMagnificationBase, magnification: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersetMagnificationBase, magnification: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setMagnification(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setMagnification(self: ptr cQsciPrinter, slot: int, magnification: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setMagnification ".} =
  type Cb = proc(super: QsciPrintersetMagnificationBase, magnification: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(magnification: cint): auto =
    callVirtualBase_setMagnification(QsciPrinter(h: self), magnification)
  let slotval1 = magnification


  nimfunc[](superCall, slotval1)
proc callVirtualBase_printRange(self: QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint =


  fQsciPrinter_virtualbase_printRange(self.h, qsb.h, painter.h, fromVal, to)

type QsciPrinterprintRangeBase* = proc(qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint
proc onprintRange*(self: QsciPrinter, slot: proc(super: QsciPrinterprintRangeBase, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterprintRangeBase, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_printRange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_printRange(self: ptr cQsciPrinter, slot: int, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_printRange ".} =
  type Cb = proc(super: QsciPrinterprintRangeBase, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): auto =
    callVirtualBase_printRange(QsciPrinter(h: self), qsb, painter, fromVal, to)
  let slotval1 = gen_qsciscintillabase.QsciScintillaBase(h: qsb)

  let slotval2 = gen_qpainter.QPainter(h: painter)

  let slotval3 = fromVal

  let slotval4 = to


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_printRange2(self: QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =


  fQsciPrinter_virtualbase_printRange2(self.h, qsb.h, fromVal, to)

type QsciPrinterprintRange2Base* = proc(qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint
proc onprintRange2*(self: QsciPrinter, slot: proc(super: QsciPrinterprintRange2Base, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterprintRange2Base, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_printRange2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_printRange2(self: ptr cQsciPrinter, slot: int, qsb: pointer, fromVal: cint, to: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_printRange2 ".} =
  type Cb = proc(super: QsciPrinterprintRange2Base, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): auto =
    callVirtualBase_printRange2(QsciPrinter(h: self), qsb, fromVal, to)
  let slotval1 = gen_qsciscintillabase.QsciScintillaBase(h: qsb)

  let slotval2 = fromVal

  let slotval3 = to


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setWrapMode(self: QsciPrinter, wmode: gen_qsciscintilla.QsciScintillaWrapMode): void =


  fQsciPrinter_virtualbase_setWrapMode(self.h, cint(wmode))

type QsciPrintersetWrapModeBase* = proc(wmode: gen_qsciscintilla.QsciScintillaWrapMode): void
proc onsetWrapMode*(self: QsciPrinter, slot: proc(super: QsciPrintersetWrapModeBase, wmode: gen_qsciscintilla.QsciScintillaWrapMode): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersetWrapModeBase, wmode: gen_qsciscintilla.QsciScintillaWrapMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setWrapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setWrapMode(self: ptr cQsciPrinter, slot: int, wmode: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setWrapMode ".} =
  type Cb = proc(super: QsciPrintersetWrapModeBase, wmode: gen_qsciscintilla.QsciScintillaWrapMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(wmode: gen_qsciscintilla.QsciScintillaWrapMode): auto =
    callVirtualBase_setWrapMode(QsciPrinter(h: self), wmode)
  let slotval1 = gen_qsciscintilla.QsciScintillaWrapMode(wmode)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QsciPrinter, ): cint =


  fQsciPrinter_virtualbase_devType(self.h)

type QsciPrinterdevTypeBase* = proc(): cint
proc ondevType*(self: QsciPrinter, slot: proc(super: QsciPrinterdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_devType(self: ptr cQsciPrinter, slot: int): cint {.exportc: "miqt_exec_callback_QsciPrinter_devType ".} =
  type Cb = proc(super: QsciPrinterdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QsciPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setPageSize(self: QsciPrinter, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void =


  fQsciPrinter_virtualbase_setPageSize(self.h, cint(pageSize))

type QsciPrintersetPageSizeBase* = proc(pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
proc onsetPageSize*(self: QsciPrinter, slot: proc(super: QsciPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageSize(self: ptr cQsciPrinter, slot: int, pageSize: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setPageSize ".} =
  type Cb = proc(super: QsciPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): auto =
    callVirtualBase_setPageSize(QsciPrinter(h: self), pageSize)
  let slotval1 = gen_qpagedpaintdevice.QPagedPaintDevicePageSize(pageSize)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setPageSizeMM(self: QsciPrinter, size: gen_qsize.QSizeF): void =


  fQsciPrinter_virtualbase_setPageSizeMM(self.h, size.h)

type QsciPrintersetPageSizeMMBase* = proc(size: gen_qsize.QSizeF): void
proc onsetPageSizeMM*(self: QsciPrinter, slot: proc(super: QsciPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageSizeMM(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageSizeMM(self: ptr cQsciPrinter, slot: int, size: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_setPageSizeMM ".} =
  type Cb = proc(super: QsciPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: gen_qsize.QSizeF): auto =
    callVirtualBase_setPageSizeMM(QsciPrinter(h: self), size)
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_newPage(self: QsciPrinter, ): bool =


  fQsciPrinter_virtualbase_newPage(self.h)

type QsciPrinternewPageBase* = proc(): bool
proc onnewPage*(self: QsciPrinter, slot: proc(super: QsciPrinternewPageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinternewPageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_newPage(self: ptr cQsciPrinter, slot: int): bool {.exportc: "miqt_exec_callback_QsciPrinter_newPage ".} =
  type Cb = proc(super: QsciPrinternewPageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_newPage(QsciPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QsciPrinter, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQsciPrinter_virtualbase_paintEngine(self.h))

type QsciPrinterpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QsciPrinter, slot: proc(super: QsciPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_paintEngine(self: ptr cQsciPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QsciPrinter_paintEngine ".} =
  type Cb = proc(super: QsciPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QsciPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMargins(self: QsciPrinter, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void =


  fQsciPrinter_virtualbase_setMargins(self.h, m.h)

type QsciPrintersetMarginsBase* = proc(m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
proc onsetMargins*(self: QsciPrinter, slot: proc(super: QsciPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setMargins(self: ptr cQsciPrinter, slot: int, m: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_setMargins ".} =
  type Cb = proc(super: QsciPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): auto =
    callVirtualBase_setMargins(QsciPrinter(h: self), m)
  let slotval1 = gen_qpagedpaintdevice.QPagedPaintDeviceMargins(h: m)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QsciPrinter, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQsciPrinter_virtualbase_metric(self.h, cint(param1))

type QsciPrintermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QsciPrinter, slot: proc(super: QsciPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_metric(self: ptr cQsciPrinter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_metric ".} =
  type Cb = proc(super: QsciPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QsciPrinter(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QsciPrinter, painter: gen_qpainter.QPainter): void =


  fQsciPrinter_virtualbase_initPainter(self.h, painter.h)

type QsciPrinterinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QsciPrinter, slot: proc(super: QsciPrinterinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_initPainter(self: ptr cQsciPrinter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_initPainter ".} =
  type Cb = proc(super: QsciPrinterinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QsciPrinter(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QsciPrinter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQsciPrinter_virtualbase_redirected(self.h, offset.h))

type QsciPrinterredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QsciPrinter, slot: proc(super: QsciPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QsciPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_redirected(self: ptr cQsciPrinter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QsciPrinter_redirected ".} =
  type Cb = proc(super: QsciPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QsciPrinter(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QsciPrinter, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQsciPrinter_virtualbase_sharedPainter(self.h))

type QsciPrintersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QsciPrinter, slot: proc(super: QsciPrintersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QsciPrintersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_sharedPainter(self: ptr cQsciPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QsciPrinter_sharedPainter ".} =
  type Cb = proc(super: QsciPrintersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QsciPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QsciPrinter) =
  fcQsciPrinter_delete(self.h)
