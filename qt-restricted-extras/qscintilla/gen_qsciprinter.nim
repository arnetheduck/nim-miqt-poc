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
  gen_qpagedpaintdevice_types,
  gen_qpagelayout_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qprintengine_types,
  gen_qprinter,
  gen_qrect_types,
  gen_qsciscintillabase_types,
  gen_qsize_types
export
  gen_qpagedpaintdevice_types,
  gen_qpagelayout_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qprintengine_types,
  gen_qprinter,
  gen_qrect_types,
  gen_qsciscintillabase_types,
  gen_qsize_types

type cQsciPrinter*{.exportc: "QsciPrinter", incompleteStruct.} = object

proc fcQsciPrinter_formatPage(self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.importc: "QsciPrinter_formatPage".}
proc fcQsciPrinter_magnification(self: pointer, ): cint {.importc: "QsciPrinter_magnification".}
proc fcQsciPrinter_setMagnification(self: pointer, magnification: cint): void {.importc: "QsciPrinter_setMagnification".}
proc fcQsciPrinter_printRange(self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_printRange".}
proc fcQsciPrinter_printRange2(self: pointer, qsb: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_printRange2".}
proc fcQsciPrinter_wrapMode(self: pointer, ): cint {.importc: "QsciPrinter_wrapMode".}
proc fcQsciPrinter_setWrapMode(self: pointer, wmode: cint): void {.importc: "QsciPrinter_setWrapMode".}
type cQsciPrinterVTable = object
  destructor*: proc(vtbl: ptr cQsciPrinterVTable, self: ptr cQsciPrinter) {.cdecl, raises:[], gcsafe.}
  formatPage*: proc(vtbl, self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.cdecl, raises: [], gcsafe.}
  setMagnification*: proc(vtbl, self: pointer, magnification: cint): void {.cdecl, raises: [], gcsafe.}
  printRange*: proc(vtbl, self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.cdecl, raises: [], gcsafe.}
  printRange*: proc(vtbl, self: pointer, qsb: pointer, fromVal: cint, to: cint): cint {.cdecl, raises: [], gcsafe.}
  setWrapMode*: proc(vtbl, self: pointer, wmode: cint): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setPageSize*: proc(vtbl, self: pointer, pageSize: cint): void {.cdecl, raises: [], gcsafe.}
  setPageSizeMM*: proc(vtbl, self: pointer, size: pointer): void {.cdecl, raises: [], gcsafe.}
  newPage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMargins*: proc(vtbl, self: pointer, m: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQsciPrinter_virtualbase_formatPage(self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.importc: "QsciPrinter_virtualbase_formatPage".}
proc fcQsciPrinter_virtualbase_setMagnification(self: pointer, magnification: cint): void {.importc: "QsciPrinter_virtualbase_setMagnification".}
proc fcQsciPrinter_virtualbase_printRange(self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_virtualbase_printRange".}
proc fcQsciPrinter_virtualbase_printRange2(self: pointer, qsb: pointer, fromVal: cint, to: cint): cint {.importc: "QsciPrinter_virtualbase_printRange2".}
proc fcQsciPrinter_virtualbase_setWrapMode(self: pointer, wmode: cint): void {.importc: "QsciPrinter_virtualbase_setWrapMode".}
proc fcQsciPrinter_virtualbase_devType(self: pointer, ): cint {.importc: "QsciPrinter_virtualbase_devType".}
proc fcQsciPrinter_virtualbase_setPageSize(self: pointer, pageSize: cint): void {.importc: "QsciPrinter_virtualbase_setPageSize".}
proc fcQsciPrinter_virtualbase_setPageSizeMM(self: pointer, size: pointer): void {.importc: "QsciPrinter_virtualbase_setPageSizeMM".}
proc fcQsciPrinter_virtualbase_newPage(self: pointer, ): bool {.importc: "QsciPrinter_virtualbase_newPage".}
proc fcQsciPrinter_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QsciPrinter_virtualbase_paintEngine".}
proc fcQsciPrinter_virtualbase_setMargins(self: pointer, m: pointer): void {.importc: "QsciPrinter_virtualbase_setMargins".}
proc fcQsciPrinter_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QsciPrinter_virtualbase_metric".}
proc fcQsciPrinter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QsciPrinter_virtualbase_initPainter".}
proc fcQsciPrinter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QsciPrinter_virtualbase_redirected".}
proc fcQsciPrinter_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QsciPrinter_virtualbase_sharedPainter".}
proc fcQsciPrinter_protectedbase_setEngines(self: pointer, printEngine: pointer, paintEngine: pointer): void {.importc: "QsciPrinter_protectedbase_setEngines".}
proc fcQsciPrinter_protectedbase_devicePageLayout(self: pointer, ): pointer {.importc: "QsciPrinter_protectedbase_devicePageLayout".}
proc fcQsciPrinter_new(vtbl: pointer, ): ptr cQsciPrinter {.importc: "QsciPrinter_new".}
proc fcQsciPrinter_new2(vtbl: pointer, mode: cint): ptr cQsciPrinter {.importc: "QsciPrinter_new2".}
proc fcQsciPrinter_delete(self: pointer) {.importc: "QsciPrinter_delete".}

proc formatPage*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter_types.QPainter, drawing: bool, area: gen_qrect_types.QRect, pagenr: cint): void =
  fcQsciPrinter_formatPage(self.h, painter.h, drawing, area.h, pagenr)

proc magnification*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  fcQsciPrinter_magnification(self.h)

proc setMagnification*(self: gen_qsciprinter_types.QsciPrinter, magnification: cint): void =
  fcQsciPrinter_setMagnification(self.h, magnification)

proc printRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, painter: gen_qpainter_types.QPainter, fromVal: cint, to: cint): cint =
  fcQsciPrinter_printRange(self.h, qsb.h, painter.h, fromVal, to)

proc printRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, fromVal: cint, to: cint): cint =
  fcQsciPrinter_printRange2(self.h, qsb.h, fromVal, to)

proc wrapMode*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  cint(fcQsciPrinter_wrapMode(self.h))

proc setWrapMode*(self: gen_qsciprinter_types.QsciPrinter, wmode: cint): void =
  fcQsciPrinter_setWrapMode(self.h, cint(wmode))

type QsciPrinterformatPageProc* = proc(self: QsciPrinter, painter: gen_qpainter_types.QPainter, drawing: bool, area: gen_qrect_types.QRect, pagenr: cint): void {.raises: [], gcsafe.}
type QsciPrintersetMagnificationProc* = proc(self: QsciPrinter, magnification: cint): void {.raises: [], gcsafe.}
type QsciPrinterprintRangeProc* = proc(self: QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, painter: gen_qpainter_types.QPainter, fromVal: cint, to: cint): cint {.raises: [], gcsafe.}
type QsciPrinterprintRangeProc* = proc(self: QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, fromVal: cint, to: cint): cint {.raises: [], gcsafe.}
type QsciPrintersetWrapModeProc* = proc(self: QsciPrinter, wmode: cint): void {.raises: [], gcsafe.}
type QsciPrinterdevTypeProc* = proc(self: QsciPrinter): cint {.raises: [], gcsafe.}
type QsciPrintersetPageSizeProc* = proc(self: QsciPrinter, pageSize: cint): void {.raises: [], gcsafe.}
type QsciPrintersetPageSizeMMProc* = proc(self: QsciPrinter, size: gen_qsize_types.QSizeF): void {.raises: [], gcsafe.}
type QsciPrinternewPageProc* = proc(self: QsciPrinter): bool {.raises: [], gcsafe.}
type QsciPrinterpaintEngineProc* = proc(self: QsciPrinter): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QsciPrintersetMarginsProc* = proc(self: QsciPrinter, m: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins): void {.raises: [], gcsafe.}
type QsciPrintermetricProc* = proc(self: QsciPrinter, param1: cint): cint {.raises: [], gcsafe.}
type QsciPrinterinitPainterProc* = proc(self: QsciPrinter, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QsciPrinterredirectedProc* = proc(self: QsciPrinter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QsciPrintersharedPainterProc* = proc(self: QsciPrinter): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QsciPrinterVTable* = object
  vtbl: cQsciPrinterVTable
  formatPage*: QsciPrinterformatPageProc
  setMagnification*: QsciPrintersetMagnificationProc
  printRange*: QsciPrinterprintRangeProc
  printRange*: QsciPrinterprintRangeProc
  setWrapMode*: QsciPrintersetWrapModeProc
  devType*: QsciPrinterdevTypeProc
  setPageSize*: QsciPrintersetPageSizeProc
  setPageSizeMM*: QsciPrintersetPageSizeMMProc
  newPage*: QsciPrinternewPageProc
  paintEngine*: QsciPrinterpaintEngineProc
  setMargins*: QsciPrintersetMarginsProc
  metric*: QsciPrintermetricProc
  initPainter*: QsciPrinterinitPainterProc
  redirected*: QsciPrinterredirectedProc
  sharedPainter*: QsciPrintersharedPainterProc
proc QsciPrinterformatPage*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter_types.QPainter, drawing: bool, area: gen_qrect_types.QRect, pagenr: cint): void =
  fcQsciPrinter_virtualbase_formatPage(self.h, painter.h, drawing, area.h, pagenr)

proc miqt_exec_callback_cQsciPrinter_formatPage(vtbl: pointer, self: pointer, painter: pointer, drawing: bool, area: pointer, pagenr: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = drawing
  let slotval3 = gen_qrect_types.QRect(h: area)
  let slotval4 = pagenr
  vtbl[].formatPage(self, slotval1, slotval2, slotval3, slotval4)

proc QsciPrintersetMagnification*(self: gen_qsciprinter_types.QsciPrinter, magnification: cint): void =
  fcQsciPrinter_virtualbase_setMagnification(self.h, magnification)

proc miqt_exec_callback_cQsciPrinter_setMagnification(vtbl: pointer, self: pointer, magnification: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = magnification
  vtbl[].setMagnification(self, slotval1)

proc QsciPrinterprintRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, painter: gen_qpainter_types.QPainter, fromVal: cint, to: cint): cint =
  fcQsciPrinter_virtualbase_printRange(self.h, qsb.h, painter.h, fromVal, to)

proc miqt_exec_callback_cQsciPrinter_printRange(vtbl: pointer, self: pointer, qsb: pointer, painter: pointer, fromVal: cint, to: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qsciscintillabase_types.QsciScintillaBase(h: qsb)
  let slotval2 = gen_qpainter_types.QPainter(h: painter)
  let slotval3 = fromVal
  let slotval4 = to
  let virtualReturn = vtbl[].printRange(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QsciPrinterprintRange*(self: gen_qsciprinter_types.QsciPrinter, qsb: gen_qsciscintillabase_types.QsciScintillaBase, fromVal: cint, to: cint): cint =
  fcQsciPrinter_virtualbase_printRange2(self.h, qsb.h, fromVal, to)

proc miqt_exec_callback_cQsciPrinter_printRange2(vtbl: pointer, self: pointer, qsb: pointer, fromVal: cint, to: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qsciscintillabase_types.QsciScintillaBase(h: qsb)
  let slotval2 = fromVal
  let slotval3 = to
  let virtualReturn = vtbl[].printRange(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciPrintersetWrapMode*(self: gen_qsciprinter_types.QsciPrinter, wmode: cint): void =
  fcQsciPrinter_virtualbase_setWrapMode(self.h, cint(wmode))

proc miqt_exec_callback_cQsciPrinter_setWrapMode(vtbl: pointer, self: pointer, wmode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = cint(wmode)
  vtbl[].setWrapMode(self, slotval1)

proc QsciPrinterdevType*(self: gen_qsciprinter_types.QsciPrinter, ): cint =
  fcQsciPrinter_virtualbase_devType(self.h)

proc miqt_exec_callback_cQsciPrinter_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QsciPrintersetPageSize*(self: gen_qsciprinter_types.QsciPrinter, pageSize: cint): void =
  fcQsciPrinter_virtualbase_setPageSize(self.h, cint(pageSize))

proc miqt_exec_callback_cQsciPrinter_setPageSize(vtbl: pointer, self: pointer, pageSize: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = cint(pageSize)
  vtbl[].setPageSize(self, slotval1)

proc QsciPrintersetPageSizeMM*(self: gen_qsciprinter_types.QsciPrinter, size: gen_qsize_types.QSizeF): void =
  fcQsciPrinter_virtualbase_setPageSizeMM(self.h, size.h)

proc miqt_exec_callback_cQsciPrinter_setPageSizeMM(vtbl: pointer, self: pointer, size: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qsize_types.QSizeF(h: size)
  vtbl[].setPageSizeMM(self, slotval1)

proc QsciPrinternewPage*(self: gen_qsciprinter_types.QsciPrinter, ): bool =
  fcQsciPrinter_virtualbase_newPage(self.h)

proc miqt_exec_callback_cQsciPrinter_newPage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let virtualReturn = vtbl[].newPage(self)
  virtualReturn

proc QsciPrinterpaintEngine*(self: gen_qsciprinter_types.QsciPrinter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQsciPrinter_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQsciPrinter_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QsciPrintersetMargins*(self: gen_qsciprinter_types.QsciPrinter, m: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins): void =
  fcQsciPrinter_virtualbase_setMargins(self.h, m.h)

proc miqt_exec_callback_cQsciPrinter_setMargins(vtbl: pointer, self: pointer, m: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins(h: m)
  vtbl[].setMargins(self, slotval1)

proc QsciPrintermetric*(self: gen_qsciprinter_types.QsciPrinter, param1: cint): cint =
  fcQsciPrinter_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQsciPrinter_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QsciPrinterinitPainter*(self: gen_qsciprinter_types.QsciPrinter, painter: gen_qpainter_types.QPainter): void =
  fcQsciPrinter_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQsciPrinter_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QsciPrinterredirected*(self: gen_qsciprinter_types.QsciPrinter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQsciPrinter_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQsciPrinter_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QsciPrintersharedPainter*(self: gen_qsciprinter_types.QsciPrinter, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQsciPrinter_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQsciPrinter_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciPrinterVTable](vtbl)
  let self = QsciPrinter(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc setEngines*(self: gen_qsciprinter_types.QsciPrinter, printEngine: gen_qprintengine_types.QPrintEngine, paintEngine: gen_qpaintengine_types.QPaintEngine): void =
  fcQsciPrinter_protectedbase_setEngines(self.h, printEngine.h, paintEngine.h)

proc devicePageLayout*(self: gen_qsciprinter_types.QsciPrinter, ): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQsciPrinter_protectedbase_devicePageLayout(self.h))

proc create*(T: type gen_qsciprinter_types.QsciPrinter,
    vtbl: ref QsciPrinterVTable = nil): gen_qsciprinter_types.QsciPrinter =
  let vtbl = if vtbl == nil: new QsciPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciPrinterVTable, _: ptr cQsciPrinter) {.cdecl.} =
    let vtbl = cast[ref QsciPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.formatPage):
    vtbl[].vtbl.formatPage = miqt_exec_callback_cQsciPrinter_formatPage
  if not isNil(vtbl.setMagnification):
    vtbl[].vtbl.setMagnification = miqt_exec_callback_cQsciPrinter_setMagnification
  if not isNil(vtbl.printRange):
    vtbl[].vtbl.printRange = miqt_exec_callback_cQsciPrinter_printRange
  if not isNil(vtbl.printRange):
    vtbl[].vtbl.printRange = miqt_exec_callback_cQsciPrinter_printRange2
  if not isNil(vtbl.setWrapMode):
    vtbl[].vtbl.setWrapMode = miqt_exec_callback_cQsciPrinter_setWrapMode
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciPrinter_devType
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQsciPrinter_setPageSize
  if not isNil(vtbl.setPageSizeMM):
    vtbl[].vtbl.setPageSizeMM = miqt_exec_callback_cQsciPrinter_setPageSizeMM
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQsciPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciPrinter_paintEngine
  if not isNil(vtbl.setMargins):
    vtbl[].vtbl.setMargins = miqt_exec_callback_cQsciPrinter_setMargins
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciPrinter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciPrinter_sharedPainter
  gen_qsciprinter_types.QsciPrinter(h: fcQsciPrinter_new(addr(vtbl[]), ))

proc create*(T: type gen_qsciprinter_types.QsciPrinter,
    mode: cint,
    vtbl: ref QsciPrinterVTable = nil): gen_qsciprinter_types.QsciPrinter =
  let vtbl = if vtbl == nil: new QsciPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciPrinterVTable, _: ptr cQsciPrinter) {.cdecl.} =
    let vtbl = cast[ref QsciPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.formatPage):
    vtbl[].vtbl.formatPage = miqt_exec_callback_cQsciPrinter_formatPage
  if not isNil(vtbl.setMagnification):
    vtbl[].vtbl.setMagnification = miqt_exec_callback_cQsciPrinter_setMagnification
  if not isNil(vtbl.printRange):
    vtbl[].vtbl.printRange = miqt_exec_callback_cQsciPrinter_printRange
  if not isNil(vtbl.printRange):
    vtbl[].vtbl.printRange = miqt_exec_callback_cQsciPrinter_printRange2
  if not isNil(vtbl.setWrapMode):
    vtbl[].vtbl.setWrapMode = miqt_exec_callback_cQsciPrinter_setWrapMode
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciPrinter_devType
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQsciPrinter_setPageSize
  if not isNil(vtbl.setPageSizeMM):
    vtbl[].vtbl.setPageSizeMM = miqt_exec_callback_cQsciPrinter_setPageSizeMM
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQsciPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciPrinter_paintEngine
  if not isNil(vtbl.setMargins):
    vtbl[].vtbl.setMargins = miqt_exec_callback_cQsciPrinter_setMargins
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciPrinter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciPrinter_sharedPainter
  gen_qsciprinter_types.QsciPrinter(h: fcQsciPrinter_new2(addr(vtbl[]), cint(mode)))

proc delete*(self: gen_qsciprinter_types.QsciPrinter) =
  fcQsciPrinter_delete(self.h)
