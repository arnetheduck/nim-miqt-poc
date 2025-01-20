import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qsciprinter.cpp", cflags).}


import gen_qsciprinter_types
export gen_qsciprinter_types

import
  gen_qmargins,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qrect,
  gen_qsciscintillabase
export
  gen_qmargins,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprinter,
  gen_qrect,
  gen_qsciscintillabase

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
proc fQsciPrinter_virtualbase_newPage(self: pointer, ): bool{.importc: "QsciPrinter_virtualbase_newPage".}
proc fcQsciPrinter_override_virtual_newPage(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_newPage".}
proc fQsciPrinter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QsciPrinter_virtualbase_paintEngine".}
proc fcQsciPrinter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_paintEngine".}
proc fQsciPrinter_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QsciPrinter_virtualbase_metric".}
proc fcQsciPrinter_override_virtual_metric(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_metric".}
proc fQsciPrinter_virtualbase_setPageLayout(self: pointer, pageLayout: pointer): bool{.importc: "QsciPrinter_virtualbase_setPageLayout".}
proc fcQsciPrinter_override_virtual_setPageLayout(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageLayout".}
proc fQsciPrinter_virtualbase_setPageSize(self: pointer, pageSize: pointer): bool{.importc: "QsciPrinter_virtualbase_setPageSize".}
proc fcQsciPrinter_override_virtual_setPageSize(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageSize".}
proc fQsciPrinter_virtualbase_setPageOrientation(self: pointer, orientation: cint): bool{.importc: "QsciPrinter_virtualbase_setPageOrientation".}
proc fcQsciPrinter_override_virtual_setPageOrientation(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageOrientation".}
proc fQsciPrinter_virtualbase_setPageMargins(self: pointer, margins: pointer, units: cint): bool{.importc: "QsciPrinter_virtualbase_setPageMargins".}
proc fcQsciPrinter_override_virtual_setPageMargins(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageMargins".}
proc fQsciPrinter_virtualbase_setPageRanges(self: pointer, ranges: pointer): void{.importc: "QsciPrinter_virtualbase_setPageRanges".}
proc fcQsciPrinter_override_virtual_setPageRanges(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_setPageRanges".}
proc fQsciPrinter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QsciPrinter_virtualbase_initPainter".}
proc fcQsciPrinter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_initPainter".}
proc fQsciPrinter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QsciPrinter_virtualbase_redirected".}
proc fcQsciPrinter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_redirected".}
proc fQsciPrinter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QsciPrinter_virtualbase_sharedPainter".}
proc fcQsciPrinter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QsciPrinter_override_virtual_sharedPainter".}
proc fcQsciPrinter_delete(self: pointer) {.importc: "QsciPrinter_delete".}


func init*(T: type gen_qsciprinter_types.QsciPrinter, h: ptr cQsciPrinter): gen_qsciprinter_types.QsciPrinter =
  T(h: h)
proc create*(T: type gen_qsciprinter_types.QsciPrinter, ): gen_qsciprinter_types.QsciPrinter =
  gen_qsciprinter_types.QsciPrinter.init(fcQsciPrinter_new())

proc create*(T: type gen_qsciprinter_types.QsciPrinter, mode: cint): gen_qsciprinter_types.QsciPrinter =
  gen_qsciprinter_types.QsciPrinter.init(fcQsciPrinter_new2(cint(mode)))

proc formatPage*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void =
  fcQsciPrinter_formatPage(self.h, painter.h, drawing, area.h, pagenr)

proc magnification*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  fcQsciPrinter_magnification(self.h)

proc setMagnification*(self: gen_qsciprinter_types.QsciPrinter, magnification: cint): void =
  fcQsciPrinter_setMagnification(self.h, magnification)

proc printRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint =
  fcQsciPrinter_printRange(self.h, qsb.h, painter.h, fromVal, to)

proc printRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =
  fcQsciPrinter_printRange2(self.h, qsb.h, fromVal, to)

proc wrapMode*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  cint(fcQsciPrinter_wrapMode(self.h))

proc setWrapMode*(self: gen_qsciprinter_types.QsciPrinter, wmode: cint): void =
  fcQsciPrinter_setWrapMode(self.h, cint(wmode))

proc QsciPrinterformatPage*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void =
  fQsciPrinter_virtualbase_formatPage(self.h, painter.h, drawing, area.h, pagenr)

type QsciPrinterformatPageProc* = proc(painter: gen_qpainter.QPainter, drawing: bool, area: gen_qrect.QRect, pagenr: cint): void
proc onformatPage*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterformatPageProc) =
  # TODO check subclass
  var tmp = new QsciPrinterformatPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_formatPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_formatPage(self: ptr cQsciPrinter, slot: int, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_formatPage ".} =
  var nimfunc = cast[ptr QsciPrinterformatPageProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = drawing

  let slotval3 = gen_qrect.QRect(h: area)

  let slotval4 = pagenr


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QsciPrintersetMagnification*(self: gen_qsciprinter_types.QsciPrinter, magnification: cint): void =
  fQsciPrinter_virtualbase_setMagnification(self.h, magnification)

type QsciPrintersetMagnificationProc* = proc(magnification: cint): void
proc onsetMagnification*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetMagnificationProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetMagnificationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setMagnification(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setMagnification(self: ptr cQsciPrinter, slot: int, magnification: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setMagnification ".} =
  var nimfunc = cast[ptr QsciPrintersetMagnificationProc](cast[pointer](slot))
  let slotval1 = magnification


  nimfunc[](slotval1)
proc QsciPrinterprintRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint =
  fQsciPrinter_virtualbase_printRange(self.h, qsb.h, painter.h, fromVal, to)

type QsciPrinterprintRangeProc* = proc(qsb: gen_qsciscintillabase.QsciScintillaBase, painter: gen_qpainter.QPainter, fromVal: cint, to: cint): cint
proc onprintRange*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterprintRangeProc) =
  # TODO check subclass
  var tmp = new QsciPrinterprintRangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_printRange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_printRange(self: ptr cQsciPrinter, slot: int, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_printRange ".} =
  var nimfunc = cast[ptr QsciPrinterprintRangeProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintillabase.QsciScintillaBase(h: qsb)

  let slotval2 = gen_qpainter.QPainter(h: painter)

  let slotval3 = fromVal

  let slotval4 = to


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QsciPrinterprintRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =
  fQsciPrinter_virtualbase_printRange2(self.h, qsb.h, fromVal, to)

type QsciPrinterprintRange2Proc* = proc(qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint
proc onprintRange*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterprintRange2Proc) =
  # TODO check subclass
  var tmp = new QsciPrinterprintRange2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_printRange2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_printRange2(self: ptr cQsciPrinter, slot: int, qsb: pointer, fromVal: cint, to: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_printRange2 ".} =
  var nimfunc = cast[ptr QsciPrinterprintRange2Proc](cast[pointer](slot))
  let slotval1 = gen_qsciscintillabase.QsciScintillaBase(h: qsb)

  let slotval2 = fromVal

  let slotval3 = to


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciPrintersetWrapMode*(self: gen_qsciprinter_types.QsciPrinter, wmode: cint): void =
  fQsciPrinter_virtualbase_setWrapMode(self.h, cint(wmode))

type QsciPrintersetWrapModeProc* = proc(wmode: cint): void
proc onsetWrapMode*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetWrapModeProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetWrapModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setWrapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setWrapMode(self: ptr cQsciPrinter, slot: int, wmode: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setWrapMode ".} =
  var nimfunc = cast[ptr QsciPrintersetWrapModeProc](cast[pointer](slot))
  let slotval1 = cint(wmode)


  nimfunc[](slotval1)
proc QsciPrinterdevType*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  fQsciPrinter_virtualbase_devType(self.h)

type QsciPrinterdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterdevTypeProc) =
  # TODO check subclass
  var tmp = new QsciPrinterdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_devType(self: ptr cQsciPrinter, slot: int): cint {.exportc: "miqt_exec_callback_QsciPrinter_devType ".} =
  var nimfunc = cast[ptr QsciPrinterdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciPrinternewPage*(self: gen_qsciprinter_types.QsciPrinter, ): bool =
  fQsciPrinter_virtualbase_newPage(self.h)

type QsciPrinternewPageProc* = proc(): bool
proc onnewPage*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinternewPageProc) =
  # TODO check subclass
  var tmp = new QsciPrinternewPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_newPage(self: ptr cQsciPrinter, slot: int): bool {.exportc: "miqt_exec_callback_QsciPrinter_newPage ".} =
  var nimfunc = cast[ptr QsciPrinternewPageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciPrinterpaintEngine*(self: gen_qsciprinter_types.QsciPrinter, ): gen_qpaintengine.QPaintEngine =
  gen_qpaintengine.QPaintEngine(h: fQsciPrinter_virtualbase_paintEngine(self.h))

type QsciPrinterpaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterpaintEngineProc) =
  # TODO check subclass
  var tmp = new QsciPrinterpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_paintEngine(self: ptr cQsciPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QsciPrinter_paintEngine ".} =
  var nimfunc = cast[ptr QsciPrinterpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciPrintermetric*(self: gen_qsciprinter_types.QsciPrinter, param1: cint): cint =
  fQsciPrinter_virtualbase_metric(self.h, cint(param1))

type QsciPrintermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintermetricProc) =
  # TODO check subclass
  var tmp = new QsciPrintermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_metric(self: ptr cQsciPrinter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciPrinter_metric ".} =
  var nimfunc = cast[ptr QsciPrintermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciPrintersetPageLayout*(self: gen_qsciprinter_types.QsciPrinter, pageLayout: gen_qpagelayout.QPageLayout): bool =
  fQsciPrinter_virtualbase_setPageLayout(self.h, pageLayout.h)

type QsciPrintersetPageLayoutProc* = proc(pageLayout: gen_qpagelayout.QPageLayout): bool
proc onsetPageLayout*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageLayoutProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageLayout(self: ptr cQsciPrinter, slot: int, pageLayout: pointer): bool {.exportc: "miqt_exec_callback_QsciPrinter_setPageLayout ".} =
  var nimfunc = cast[ptr QsciPrintersetPageLayoutProc](cast[pointer](slot))
  let slotval1 = gen_qpagelayout.QPageLayout(h: pageLayout)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciPrintersetPageSize*(self: gen_qsciprinter_types.QsciPrinter, pageSize: gen_qpagesize.QPageSize): bool =
  fQsciPrinter_virtualbase_setPageSize(self.h, pageSize.h)

type QsciPrintersetPageSizeProc* = proc(pageSize: gen_qpagesize.QPageSize): bool
proc onsetPageSize*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageSizeProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageSize(self: ptr cQsciPrinter, slot: int, pageSize: pointer): bool {.exportc: "miqt_exec_callback_QsciPrinter_setPageSize ".} =
  var nimfunc = cast[ptr QsciPrintersetPageSizeProc](cast[pointer](slot))
  let slotval1 = gen_qpagesize.QPageSize(h: pageSize)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciPrintersetPageOrientation*(self: gen_qsciprinter_types.QsciPrinter, orientation: cint): bool =
  fQsciPrinter_virtualbase_setPageOrientation(self.h, cint(orientation))

type QsciPrintersetPageOrientationProc* = proc(orientation: cint): bool
proc onsetPageOrientation*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageOrientationProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageOrientationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageOrientation(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageOrientation(self: ptr cQsciPrinter, slot: int, orientation: cint): bool {.exportc: "miqt_exec_callback_QsciPrinter_setPageOrientation ".} =
  var nimfunc = cast[ptr QsciPrintersetPageOrientationProc](cast[pointer](slot))
  let slotval1 = cint(orientation)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciPrintersetPageMargins*(self: gen_qsciprinter_types.QsciPrinter, margins: gen_qmargins.QMarginsF, units: cint): bool =
  fQsciPrinter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

type QsciPrintersetPageMarginsProc* = proc(margins: gen_qmargins.QMarginsF, units: cint): bool
proc onsetPageMargins*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageMarginsProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageMargins(self: ptr cQsciPrinter, slot: int, margins: pointer, units: cint): bool {.exportc: "miqt_exec_callback_QsciPrinter_setPageMargins ".} =
  var nimfunc = cast[ptr QsciPrintersetPageMarginsProc](cast[pointer](slot))
  let slotval1 = gen_qmargins.QMarginsF(h: margins)

  let slotval2 = cint(units)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciPrintersetPageRanges*(self: gen_qsciprinter_types.QsciPrinter, ranges: gen_qpageranges.QPageRanges): void =
  fQsciPrinter_virtualbase_setPageRanges(self.h, ranges.h)

type QsciPrintersetPageRangesProc* = proc(ranges: gen_qpageranges.QPageRanges): void
proc onsetPageRanges*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageRangesProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageRangesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageRanges(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageRanges(self: ptr cQsciPrinter, slot: int, ranges: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_setPageRanges ".} =
  var nimfunc = cast[ptr QsciPrintersetPageRangesProc](cast[pointer](slot))
  let slotval1 = gen_qpageranges.QPageRanges(h: ranges)


  nimfunc[](slotval1)
proc QsciPrinterinitPainter*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter.QPainter): void =
  fQsciPrinter_virtualbase_initPainter(self.h, painter.h)

type QsciPrinterinitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterinitPainterProc) =
  # TODO check subclass
  var tmp = new QsciPrinterinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_initPainter(self: ptr cQsciPrinter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_initPainter ".} =
  var nimfunc = cast[ptr QsciPrinterinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc QsciPrinterredirected*(self: gen_qsciprinter_types.QsciPrinter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =
  gen_qpaintdevice.QPaintDevice(h: fQsciPrinter_virtualbase_redirected(self.h, offset.h))

type QsciPrinterredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterredirectedProc) =
  # TODO check subclass
  var tmp = new QsciPrinterredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_redirected(self: ptr cQsciPrinter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QsciPrinter_redirected ".} =
  var nimfunc = cast[ptr QsciPrinterredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciPrintersharedPainter*(self: gen_qsciprinter_types.QsciPrinter, ): gen_qpainter.QPainter =
  gen_qpainter.QPainter(h: fQsciPrinter_virtualbase_sharedPainter(self.h))

type QsciPrintersharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersharedPainterProc) =
  # TODO check subclass
  var tmp = new QsciPrintersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_sharedPainter(self: ptr cQsciPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QsciPrinter_sharedPainter ".} =
  var nimfunc = cast[ptr QsciPrintersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qsciprinter_types.QsciPrinter) =
  fcQsciPrinter_delete(self.h)
