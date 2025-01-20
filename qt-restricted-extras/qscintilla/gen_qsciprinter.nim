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

proc printRange2*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =

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
proc QsciPrinterprintRange2*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint =

  fQsciPrinter_virtualbase_printRange2(self.h, qsb.h, fromVal, to)

type QsciPrinterprintRange2Proc* = proc(qsb: gen_qsciscintillabase.QsciScintillaBase, fromVal: cint, to: cint): cint
proc onprintRange2*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrinterprintRange2Proc) =
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
proc QsciPrintersetPageSize*(self: gen_qsciprinter_types.QsciPrinter, pageSize: cint): void =

  fQsciPrinter_virtualbase_setPageSize(self.h, cint(pageSize))

type QsciPrintersetPageSizeProc* = proc(pageSize: cint): void
proc onsetPageSize*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageSizeProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageSize(self: ptr cQsciPrinter, slot: int, pageSize: cint): void {.exportc: "miqt_exec_callback_QsciPrinter_setPageSize ".} =
  var nimfunc = cast[ptr QsciPrintersetPageSizeProc](cast[pointer](slot))
  let slotval1 = cint(pageSize)


  nimfunc[](slotval1)
proc QsciPrintersetPageSizeMM*(self: gen_qsciprinter_types.QsciPrinter, size: gen_qsize.QSizeF): void =

  fQsciPrinter_virtualbase_setPageSizeMM(self.h, size.h)

type QsciPrintersetPageSizeMMProc* = proc(size: gen_qsize.QSizeF): void
proc onsetPageSizeMM*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetPageSizeMMProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetPageSizeMMProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setPageSizeMM(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setPageSizeMM(self: ptr cQsciPrinter, slot: int, size: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_setPageSizeMM ".} =
  var nimfunc = cast[ptr QsciPrintersetPageSizeMMProc](cast[pointer](slot))
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](slotval1)
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
proc QsciPrintersetMargins*(self: gen_qsciprinter_types.QsciPrinter, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void =

  fQsciPrinter_virtualbase_setMargins(self.h, m.h)

type QsciPrintersetMarginsProc* = proc(m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
proc onsetMargins*(self: gen_qsciprinter_types.QsciPrinter, slot: QsciPrintersetMarginsProc) =
  # TODO check subclass
  var tmp = new QsciPrintersetMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciPrinter_override_virtual_setMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciPrinter_setMargins(self: ptr cQsciPrinter, slot: int, m: pointer): void {.exportc: "miqt_exec_callback_QsciPrinter_setMargins ".} =
  var nimfunc = cast[ptr QsciPrintersetMarginsProc](cast[pointer](slot))
  let slotval1 = gen_qpagedpaintdevice.QPagedPaintDeviceMargins(h: m)


  nimfunc[](slotval1)
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
