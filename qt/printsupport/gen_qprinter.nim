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
{.compile("gen_qprinter.cpp", cflags).}


type QPrinterPrinterMode* = cint
const
  QPrinterScreenResolution* = 0
  QPrinterPrinterResolution* = 1
  QPrinterHighResolution* = 2



type QPrinterOrientation* = cint
const
  QPrinterPortrait* = 0
  QPrinterLandscape* = 1



type QPrinterPageOrder* = cint
const
  QPrinterFirstPageFirst* = 0
  QPrinterLastPageFirst* = 1



type QPrinterColorMode* = cint
const
  QPrinterGrayScale* = 0
  QPrinterColor* = 1



type QPrinterPaperSource* = cint
const
  QPrinterOnlyOne* = 0
  QPrinterLower* = 1
  QPrinterMiddle* = 2
  QPrinterManual* = 3
  QPrinterEnvelope* = 4
  QPrinterEnvelopeManual* = 5
  QPrinterAuto* = 6
  QPrinterTractor* = 7
  QPrinterSmallFormat* = 8
  QPrinterLargeFormat* = 9
  QPrinterLargeCapacity* = 10
  QPrinterCassette* = 11
  QPrinterFormSource* = 12
  QPrinterMaxPageSource* = 13
  QPrinterCustomSource* = 14
  QPrinterLastPaperSource* = 14
  QPrinterUpper* = 0



type QPrinterPrinterState* = cint
const
  QPrinterIdle* = 0
  QPrinterActive* = 1
  QPrinterAborted* = 2
  QPrinterError* = 3



type QPrinterOutputFormat* = cint
const
  QPrinterNativeFormat* = 0
  QPrinterPdfFormat* = 1



type QPrinterPrintRange* = cint
const
  QPrinterAllPages* = 0
  QPrinterSelection* = 1
  QPrinterPageRange* = 2
  QPrinterCurrentPage* = 3



type QPrinterUnit* = cint
const
  QPrinterMillimeter* = 0
  QPrinterPoint* = 1
  QPrinterInch* = 2
  QPrinterPica* = 3
  QPrinterDidot* = 4
  QPrinterCicero* = 5
  QPrinterDevicePixel* = 6



type QPrinterDuplexMode* = cint
const
  QPrinterDuplexNone* = 0
  QPrinterDuplexAuto* = 1
  QPrinterDuplexLongSide* = 2
  QPrinterDuplexShortSide* = 3



import gen_qprinter_types
export gen_qprinter_types

import
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprintengine,
  gen_qprinterinfo,
  gen_qrect,
  gen_qsize
export
  gen_qpagedpaintdevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qprintengine,
  gen_qprinterinfo,
  gen_qrect,
  gen_qsize

type cQPrinter*{.exportc: "QPrinter", incompleteStruct.} = object

proc fcQPrinter_new(): ptr cQPrinter {.importc: "QPrinter_new".}
proc fcQPrinter_new2(printer: pointer): ptr cQPrinter {.importc: "QPrinter_new2".}
proc fcQPrinter_new3(mode: cint): ptr cQPrinter {.importc: "QPrinter_new3".}
proc fcQPrinter_new4(printer: pointer, mode: cint): ptr cQPrinter {.importc: "QPrinter_new4".}
proc fcQPrinter_devType(self: pointer, ): cint {.importc: "QPrinter_devType".}
proc fcQPrinter_setOutputFormat(self: pointer, format: cint): void {.importc: "QPrinter_setOutputFormat".}
proc fcQPrinter_outputFormat(self: pointer, ): cint {.importc: "QPrinter_outputFormat".}
proc fcQPrinter_setPdfVersion(self: pointer, version: cint): void {.importc: "QPrinter_setPdfVersion".}
proc fcQPrinter_pdfVersion(self: pointer, ): cint {.importc: "QPrinter_pdfVersion".}
proc fcQPrinter_setPrinterName(self: pointer, printerName: struct_miqt_string): void {.importc: "QPrinter_setPrinterName".}
proc fcQPrinter_printerName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printerName".}
proc fcQPrinter_isValid(self: pointer, ): bool {.importc: "QPrinter_isValid".}
proc fcQPrinter_setOutputFileName(self: pointer, outputFileName: struct_miqt_string): void {.importc: "QPrinter_setOutputFileName".}
proc fcQPrinter_outputFileName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_outputFileName".}
proc fcQPrinter_setPrintProgram(self: pointer, printProgram: struct_miqt_string): void {.importc: "QPrinter_setPrintProgram".}
proc fcQPrinter_printProgram(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printProgram".}
proc fcQPrinter_setDocName(self: pointer, docName: struct_miqt_string): void {.importc: "QPrinter_setDocName".}
proc fcQPrinter_docName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_docName".}
proc fcQPrinter_setCreator(self: pointer, creator: struct_miqt_string): void {.importc: "QPrinter_setCreator".}
proc fcQPrinter_creator(self: pointer, ): struct_miqt_string {.importc: "QPrinter_creator".}
proc fcQPrinter_setOrientation(self: pointer, orientation: cint): void {.importc: "QPrinter_setOrientation".}
proc fcQPrinter_orientation(self: pointer, ): cint {.importc: "QPrinter_orientation".}
proc fcQPrinter_setPageSize(self: pointer, pageSize: cint): void {.importc: "QPrinter_setPageSize".}
proc fcQPrinter_pageSize(self: pointer, ): cint {.importc: "QPrinter_pageSize".}
proc fcQPrinter_setPageSizeMM(self: pointer, size: pointer): void {.importc: "QPrinter_setPageSizeMM".}
proc fcQPrinter_setPaperSize(self: pointer, paperSize: cint): void {.importc: "QPrinter_setPaperSize".}
proc fcQPrinter_paperSize(self: pointer, ): cint {.importc: "QPrinter_paperSize".}
proc fcQPrinter_setPaperSize2(self: pointer, paperSize: pointer, unit: cint): void {.importc: "QPrinter_setPaperSize2".}
proc fcQPrinter_paperSizeWithUnit(self: pointer, unit: cint): pointer {.importc: "QPrinter_paperSizeWithUnit".}
proc fcQPrinter_setPaperName(self: pointer, paperName: struct_miqt_string): void {.importc: "QPrinter_setPaperName".}
proc fcQPrinter_paperName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_paperName".}
proc fcQPrinter_setPageOrder(self: pointer, pageOrder: cint): void {.importc: "QPrinter_setPageOrder".}
proc fcQPrinter_pageOrder(self: pointer, ): cint {.importc: "QPrinter_pageOrder".}
proc fcQPrinter_setResolution(self: pointer, resolution: cint): void {.importc: "QPrinter_setResolution".}
proc fcQPrinter_resolution(self: pointer, ): cint {.importc: "QPrinter_resolution".}
proc fcQPrinter_setColorMode(self: pointer, colorMode: cint): void {.importc: "QPrinter_setColorMode".}
proc fcQPrinter_colorMode(self: pointer, ): cint {.importc: "QPrinter_colorMode".}
proc fcQPrinter_setCollateCopies(self: pointer, collate: bool): void {.importc: "QPrinter_setCollateCopies".}
proc fcQPrinter_collateCopies(self: pointer, ): bool {.importc: "QPrinter_collateCopies".}
proc fcQPrinter_setFullPage(self: pointer, fullPage: bool): void {.importc: "QPrinter_setFullPage".}
proc fcQPrinter_fullPage(self: pointer, ): bool {.importc: "QPrinter_fullPage".}
proc fcQPrinter_setNumCopies(self: pointer, numCopies: cint): void {.importc: "QPrinter_setNumCopies".}
proc fcQPrinter_numCopies(self: pointer, ): cint {.importc: "QPrinter_numCopies".}
proc fcQPrinter_actualNumCopies(self: pointer, ): cint {.importc: "QPrinter_actualNumCopies".}
proc fcQPrinter_setCopyCount(self: pointer, copyCount: cint): void {.importc: "QPrinter_setCopyCount".}
proc fcQPrinter_copyCount(self: pointer, ): cint {.importc: "QPrinter_copyCount".}
proc fcQPrinter_supportsMultipleCopies(self: pointer, ): bool {.importc: "QPrinter_supportsMultipleCopies".}
proc fcQPrinter_setPaperSource(self: pointer, paperSource: cint): void {.importc: "QPrinter_setPaperSource".}
proc fcQPrinter_paperSource(self: pointer, ): cint {.importc: "QPrinter_paperSource".}
proc fcQPrinter_setDuplex(self: pointer, duplex: cint): void {.importc: "QPrinter_setDuplex".}
proc fcQPrinter_duplex(self: pointer, ): cint {.importc: "QPrinter_duplex".}
proc fcQPrinter_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QPrinter_supportedResolutions".}
proc fcQPrinter_setFontEmbeddingEnabled(self: pointer, enable: bool): void {.importc: "QPrinter_setFontEmbeddingEnabled".}
proc fcQPrinter_fontEmbeddingEnabled(self: pointer, ): bool {.importc: "QPrinter_fontEmbeddingEnabled".}
proc fcQPrinter_setDoubleSidedPrinting(self: pointer, enable: bool): void {.importc: "QPrinter_setDoubleSidedPrinting".}
proc fcQPrinter_doubleSidedPrinting(self: pointer, ): bool {.importc: "QPrinter_doubleSidedPrinting".}
proc fcQPrinter_setWinPageSize(self: pointer, winPageSize: cint): void {.importc: "QPrinter_setWinPageSize".}
proc fcQPrinter_winPageSize(self: pointer, ): cint {.importc: "QPrinter_winPageSize".}
proc fcQPrinter_paperRect(self: pointer, ): pointer {.importc: "QPrinter_paperRect".}
proc fcQPrinter_pageRect(self: pointer, ): pointer {.importc: "QPrinter_pageRect".}
proc fcQPrinter_paperRectWithQPrinterUnit(self: pointer, param1: cint): pointer {.importc: "QPrinter_paperRectWithQPrinterUnit".}
proc fcQPrinter_pageRectWithQPrinterUnit(self: pointer, param1: cint): pointer {.importc: "QPrinter_pageRectWithQPrinterUnit".}
proc fcQPrinter_printerSelectionOption(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printerSelectionOption".}
proc fcQPrinter_setPrinterSelectionOption(self: pointer, printerSelectionOption: struct_miqt_string): void {.importc: "QPrinter_setPrinterSelectionOption".}
proc fcQPrinter_newPage(self: pointer, ): bool {.importc: "QPrinter_newPage".}
proc fcQPrinter_abort(self: pointer, ): bool {.importc: "QPrinter_abort".}
proc fcQPrinter_printerState(self: pointer, ): cint {.importc: "QPrinter_printerState".}
proc fcQPrinter_paintEngine(self: pointer, ): pointer {.importc: "QPrinter_paintEngine".}
proc fcQPrinter_printEngine(self: pointer, ): pointer {.importc: "QPrinter_printEngine".}
proc fcQPrinter_setFromTo(self: pointer, fromPage: cint, toPage: cint): void {.importc: "QPrinter_setFromTo".}
proc fcQPrinter_fromPage(self: pointer, ): cint {.importc: "QPrinter_fromPage".}
proc fcQPrinter_toPage(self: pointer, ): cint {.importc: "QPrinter_toPage".}
proc fcQPrinter_setPrintRange(self: pointer, range: cint): void {.importc: "QPrinter_setPrintRange".}
proc fcQPrinter_printRange(self: pointer, ): cint {.importc: "QPrinter_printRange".}
proc fcQPrinter_setMargins(self: pointer, m: pointer): void {.importc: "QPrinter_setMargins".}
proc fcQPrinter_setPageMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64, unit: cint): void {.importc: "QPrinter_setPageMargins".}
proc fcQPrinter_getPageMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64, unit: cint): void {.importc: "QPrinter_getPageMargins".}
proc fQPrinter_virtualbase_devType(self: pointer, ): cint{.importc: "QPrinter_virtualbase_devType".}
proc fcQPrinter_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_devType".}
proc fQPrinter_virtualbase_setPageSize(self: pointer, pageSize: cint): void{.importc: "QPrinter_virtualbase_setPageSize".}
proc fcQPrinter_override_virtual_setPageSize(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_setPageSize".}
proc fQPrinter_virtualbase_setPageSizeMM(self: pointer, size: pointer): void{.importc: "QPrinter_virtualbase_setPageSizeMM".}
proc fcQPrinter_override_virtual_setPageSizeMM(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_setPageSizeMM".}
proc fQPrinter_virtualbase_newPage(self: pointer, ): bool{.importc: "QPrinter_virtualbase_newPage".}
proc fcQPrinter_override_virtual_newPage(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_newPage".}
proc fQPrinter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrinter_virtualbase_paintEngine".}
proc fcQPrinter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_paintEngine".}
proc fQPrinter_virtualbase_setMargins(self: pointer, m: pointer): void{.importc: "QPrinter_virtualbase_setMargins".}
proc fcQPrinter_override_virtual_setMargins(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_setMargins".}
proc fQPrinter_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrinter_virtualbase_metric".}
proc fcQPrinter_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_metric".}
proc fQPrinter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrinter_virtualbase_initPainter".}
proc fcQPrinter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_initPainter".}
proc fQPrinter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrinter_virtualbase_redirected".}
proc fcQPrinter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_redirected".}
proc fQPrinter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrinter_virtualbase_sharedPainter".}
proc fcQPrinter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrinter_override_virtual_sharedPainter".}
proc fcQPrinter_delete(self: pointer) {.importc: "QPrinter_delete".}


func init*(T: type QPrinter, h: ptr cQPrinter): QPrinter =
  T(h: h)
proc create*(T: type QPrinter, ): QPrinter =

  QPrinter.init(fcQPrinter_new())
proc create*(T: type QPrinter, printer: gen_qprinterinfo.QPrinterInfo): QPrinter =

  QPrinter.init(fcQPrinter_new2(printer.h))
proc create*(T: type QPrinter, mode: QPrinterPrinterMode): QPrinter =

  QPrinter.init(fcQPrinter_new3(cint(mode)))
proc create*(T: type QPrinter, printer: gen_qprinterinfo.QPrinterInfo, mode: QPrinterPrinterMode): QPrinter =

  QPrinter.init(fcQPrinter_new4(printer.h, cint(mode)))
proc devType*(self: QPrinter, ): cint =

  fcQPrinter_devType(self.h)

proc setOutputFormat*(self: QPrinter, format: QPrinterOutputFormat): void =

  fcQPrinter_setOutputFormat(self.h, cint(format))

proc outputFormat*(self: QPrinter, ): QPrinterOutputFormat =

  QPrinterOutputFormat(fcQPrinter_outputFormat(self.h))

proc setPdfVersion*(self: QPrinter, version: gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion): void =

  fcQPrinter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: QPrinter, ): gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion =

  gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion(fcQPrinter_pdfVersion(self.h))

proc setPrinterName*(self: QPrinter, printerName: string): void =

  fcQPrinter_setPrinterName(self.h, struct_miqt_string(data: printerName, len: csize_t(len(printerName))))

proc printerName*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_printerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: QPrinter, ): bool =

  fcQPrinter_isValid(self.h)

proc setOutputFileName*(self: QPrinter, outputFileName: string): void =

  fcQPrinter_setOutputFileName(self.h, struct_miqt_string(data: outputFileName, len: csize_t(len(outputFileName))))

proc outputFileName*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_outputFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrintProgram*(self: QPrinter, printProgram: string): void =

  fcQPrinter_setPrintProgram(self.h, struct_miqt_string(data: printProgram, len: csize_t(len(printProgram))))

proc printProgram*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_printProgram(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocName*(self: QPrinter, docName: string): void =

  fcQPrinter_setDocName(self.h, struct_miqt_string(data: docName, len: csize_t(len(docName))))

proc docName*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_docName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: QPrinter, creator: string): void =

  fcQPrinter_setCreator(self.h, struct_miqt_string(data: creator, len: csize_t(len(creator))))

proc creator*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_creator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: QPrinter, orientation: QPrinterOrientation): void =

  fcQPrinter_setOrientation(self.h, cint(orientation))

proc orientation*(self: QPrinter, ): QPrinterOrientation =

  QPrinterOrientation(fcQPrinter_orientation(self.h))

proc setPageSize*(self: QPrinter, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void =

  fcQPrinter_setPageSize(self.h, cint(pageSize))

proc pageSize*(self: QPrinter, ): gen_qpagedpaintdevice.QPagedPaintDevicePageSize =

  gen_qpagedpaintdevice.QPagedPaintDevicePageSize(fcQPrinter_pageSize(self.h))

proc setPageSizeMM*(self: QPrinter, size: gen_qsize.QSizeF): void =

  fcQPrinter_setPageSizeMM(self.h, size.h)

proc setPaperSize*(self: QPrinter, paperSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void =

  fcQPrinter_setPaperSize(self.h, cint(paperSize))

proc paperSize*(self: QPrinter, ): gen_qpagedpaintdevice.QPagedPaintDevicePageSize =

  gen_qpagedpaintdevice.QPagedPaintDevicePageSize(fcQPrinter_paperSize(self.h))

proc setPaperSize2*(self: QPrinter, paperSize: gen_qsize.QSizeF, unit: QPrinterUnit): void =

  fcQPrinter_setPaperSize2(self.h, paperSize.h, cint(unit))

proc paperSizeWithUnit*(self: QPrinter, unit: QPrinterUnit): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPrinter_paperSizeWithUnit(self.h, cint(unit)))

proc setPaperName*(self: QPrinter, paperName: string): void =

  fcQPrinter_setPaperName(self.h, struct_miqt_string(data: paperName, len: csize_t(len(paperName))))

proc paperName*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_paperName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPageOrder*(self: QPrinter, pageOrder: QPrinterPageOrder): void =

  fcQPrinter_setPageOrder(self.h, cint(pageOrder))

proc pageOrder*(self: QPrinter, ): QPrinterPageOrder =

  QPrinterPageOrder(fcQPrinter_pageOrder(self.h))

proc setResolution*(self: QPrinter, resolution: cint): void =

  fcQPrinter_setResolution(self.h, resolution)

proc resolution*(self: QPrinter, ): cint =

  fcQPrinter_resolution(self.h)

proc setColorMode*(self: QPrinter, colorMode: QPrinterColorMode): void =

  fcQPrinter_setColorMode(self.h, cint(colorMode))

proc colorMode*(self: QPrinter, ): QPrinterColorMode =

  QPrinterColorMode(fcQPrinter_colorMode(self.h))

proc setCollateCopies*(self: QPrinter, collate: bool): void =

  fcQPrinter_setCollateCopies(self.h, collate)

proc collateCopies*(self: QPrinter, ): bool =

  fcQPrinter_collateCopies(self.h)

proc setFullPage*(self: QPrinter, fullPage: bool): void =

  fcQPrinter_setFullPage(self.h, fullPage)

proc fullPage*(self: QPrinter, ): bool =

  fcQPrinter_fullPage(self.h)

proc setNumCopies*(self: QPrinter, numCopies: cint): void =

  fcQPrinter_setNumCopies(self.h, numCopies)

proc numCopies*(self: QPrinter, ): cint =

  fcQPrinter_numCopies(self.h)

proc actualNumCopies*(self: QPrinter, ): cint =

  fcQPrinter_actualNumCopies(self.h)

proc setCopyCount*(self: QPrinter, copyCount: cint): void =

  fcQPrinter_setCopyCount(self.h, copyCount)

proc copyCount*(self: QPrinter, ): cint =

  fcQPrinter_copyCount(self.h)

proc supportsMultipleCopies*(self: QPrinter, ): bool =

  fcQPrinter_supportsMultipleCopies(self.h)

proc setPaperSource*(self: QPrinter, paperSource: QPrinterPaperSource): void =

  fcQPrinter_setPaperSource(self.h, cint(paperSource))

proc paperSource*(self: QPrinter, ): QPrinterPaperSource =

  QPrinterPaperSource(fcQPrinter_paperSource(self.h))

proc setDuplex*(self: QPrinter, duplex: QPrinterDuplexMode): void =

  fcQPrinter_setDuplex(self.h, cint(duplex))

proc duplex*(self: QPrinter, ): QPrinterDuplexMode =

  QPrinterDuplexMode(fcQPrinter_duplex(self.h))

proc supportedResolutions*(self: QPrinter, ): seq[cint] =

  var v_ma = fcQPrinter_supportedResolutions(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setFontEmbeddingEnabled*(self: QPrinter, enable: bool): void =

  fcQPrinter_setFontEmbeddingEnabled(self.h, enable)

proc fontEmbeddingEnabled*(self: QPrinter, ): bool =

  fcQPrinter_fontEmbeddingEnabled(self.h)

proc setDoubleSidedPrinting*(self: QPrinter, enable: bool): void =

  fcQPrinter_setDoubleSidedPrinting(self.h, enable)

proc doubleSidedPrinting*(self: QPrinter, ): bool =

  fcQPrinter_doubleSidedPrinting(self.h)

proc setWinPageSize*(self: QPrinter, winPageSize: cint): void =

  fcQPrinter_setWinPageSize(self.h, winPageSize)

proc winPageSize*(self: QPrinter, ): cint =

  fcQPrinter_winPageSize(self.h)

proc paperRect*(self: QPrinter, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPrinter_paperRect(self.h))

proc pageRect*(self: QPrinter, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPrinter_pageRect(self.h))

proc paperRectWithQPrinterUnit*(self: QPrinter, param1: QPrinterUnit): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPrinter_paperRectWithQPrinterUnit(self.h, cint(param1)))

proc pageRectWithQPrinterUnit*(self: QPrinter, param1: QPrinterUnit): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPrinter_pageRectWithQPrinterUnit(self.h, cint(param1)))

proc printerSelectionOption*(self: QPrinter, ): string =

  let v_ms = fcQPrinter_printerSelectionOption(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrinterSelectionOption*(self: QPrinter, printerSelectionOption: string): void =

  fcQPrinter_setPrinterSelectionOption(self.h, struct_miqt_string(data: printerSelectionOption, len: csize_t(len(printerSelectionOption))))

proc newPage*(self: QPrinter, ): bool =

  fcQPrinter_newPage(self.h)

proc abort*(self: QPrinter, ): bool =

  fcQPrinter_abort(self.h)

proc printerState*(self: QPrinter, ): QPrinterPrinterState =

  QPrinterPrinterState(fcQPrinter_printerState(self.h))

proc paintEngine*(self: QPrinter, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQPrinter_paintEngine(self.h))

proc printEngine*(self: QPrinter, ): gen_qprintengine.QPrintEngine =

  gen_qprintengine.QPrintEngine(h: fcQPrinter_printEngine(self.h))

proc setFromTo*(self: QPrinter, fromPage: cint, toPage: cint): void =

  fcQPrinter_setFromTo(self.h, fromPage, toPage)

proc fromPage*(self: QPrinter, ): cint =

  fcQPrinter_fromPage(self.h)

proc toPage*(self: QPrinter, ): cint =

  fcQPrinter_toPage(self.h)

proc setPrintRange*(self: QPrinter, range: QPrinterPrintRange): void =

  fcQPrinter_setPrintRange(self.h, cint(range))

proc printRange*(self: QPrinter, ): QPrinterPrintRange =

  QPrinterPrintRange(fcQPrinter_printRange(self.h))

proc setMargins*(self: QPrinter, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void =

  fcQPrinter_setMargins(self.h, m.h)

proc setPageMargins*(self: QPrinter, left: float64, top: float64, right: float64, bottom: float64, unit: QPrinterUnit): void =

  fcQPrinter_setPageMargins(self.h, left, top, right, bottom, cint(unit))

proc getPageMargins*(self: QPrinter, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64, unit: QPrinterUnit): void =

  fcQPrinter_getPageMargins(self.h, left, top, right, bottom, cint(unit))

proc callVirtualBase_devType(self: QPrinter, ): cint =


  fQPrinter_virtualbase_devType(self.h)

type QPrinterdevTypeBase* = proc(): cint
proc ondevType*(self: QPrinter, slot: proc(super: QPrinterdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrinterdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_devType(self: ptr cQPrinter, slot: int): cint {.exportc: "miqt_exec_callback_QPrinter_devType ".} =
  type Cb = proc(super: QPrinterdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setPageSize(self: QPrinter, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void =


  fQPrinter_virtualbase_setPageSize(self.h, cint(pageSize))

type QPrintersetPageSizeBase* = proc(pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
proc onsetPageSize*(self: QPrinter, slot: proc(super: QPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_setPageSize(self: ptr cQPrinter, slot: int, pageSize: cint): void {.exportc: "miqt_exec_callback_QPrinter_setPageSize ".} =
  type Cb = proc(super: QPrintersetPageSizeBase, pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pageSize: gen_qpagedpaintdevice.QPagedPaintDevicePageSize): auto =
    callVirtualBase_setPageSize(QPrinter(h: self), pageSize)
  let slotval1 = gen_qpagedpaintdevice.QPagedPaintDevicePageSize(pageSize)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setPageSizeMM(self: QPrinter, size: gen_qsize.QSizeF): void =


  fQPrinter_virtualbase_setPageSizeMM(self.h, size.h)

type QPrintersetPageSizeMMBase* = proc(size: gen_qsize.QSizeF): void
proc onsetPageSizeMM*(self: QPrinter, slot: proc(super: QPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_setPageSizeMM(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_setPageSizeMM(self: ptr cQPrinter, slot: int, size: pointer): void {.exportc: "miqt_exec_callback_QPrinter_setPageSizeMM ".} =
  type Cb = proc(super: QPrintersetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: gen_qsize.QSizeF): auto =
    callVirtualBase_setPageSizeMM(QPrinter(h: self), size)
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_newPage(self: QPrinter, ): bool =


  fQPrinter_virtualbase_newPage(self.h)

type QPrinternewPageBase* = proc(): bool
proc onnewPage*(self: QPrinter, slot: proc(super: QPrinternewPageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPrinternewPageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_newPage(self: ptr cQPrinter, slot: int): bool {.exportc: "miqt_exec_callback_QPrinter_newPage ".} =
  type Cb = proc(super: QPrinternewPageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_newPage(QPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPrinter, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPrinter_virtualbase_paintEngine(self.h))

type QPrinterpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPrinter, slot: proc(super: QPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_paintEngine(self: ptr cQPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QPrinter_paintEngine ".} =
  type Cb = proc(super: QPrinterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMargins(self: QPrinter, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void =


  fQPrinter_virtualbase_setMargins(self.h, m.h)

type QPrintersetMarginsBase* = proc(m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
proc onsetMargins*(self: QPrinter, slot: proc(super: QPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void) =
  # TODO check subclass
  type Cb = proc(super: QPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_setMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_setMargins(self: ptr cQPrinter, slot: int, m: pointer): void {.exportc: "miqt_exec_callback_QPrinter_setMargins ".} =
  type Cb = proc(super: QPrintersetMarginsBase, m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(m: gen_qpagedpaintdevice.QPagedPaintDeviceMargins): auto =
    callVirtualBase_setMargins(QPrinter(h: self), m)
  let slotval1 = gen_qpagedpaintdevice.QPagedPaintDeviceMargins(h: m)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QPrinter, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPrinter_virtualbase_metric(self.h, cint(param1))

type QPrintermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPrinter, slot: proc(super: QPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_metric(self: ptr cQPrinter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrinter_metric ".} =
  type Cb = proc(super: QPrintermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPrinter(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPrinter, painter: gen_qpainter.QPainter): void =


  fQPrinter_virtualbase_initPainter(self.h, painter.h)

type QPrinterinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPrinter, slot: proc(super: QPrinterinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPrinterinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_initPainter(self: ptr cQPrinter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrinter_initPainter ".} =
  type Cb = proc(super: QPrinterinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPrinter(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPrinter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPrinter_virtualbase_redirected(self.h, offset.h))

type QPrinterredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPrinter, slot: proc(super: QPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_redirected(self: ptr cQPrinter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrinter_redirected ".} =
  type Cb = proc(super: QPrinterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPrinter(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPrinter, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPrinter_virtualbase_sharedPainter(self.h))

type QPrintersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPrinter, slot: proc(super: QPrintersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPrintersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPrinter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrinter_sharedPainter(self: ptr cQPrinter, slot: int): pointer {.exportc: "miqt_exec_callback_QPrinter_sharedPainter ".} =
  type Cb = proc(super: QPrintersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPrinter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QPrinter) =
  fcQPrinter_delete(self.h)
