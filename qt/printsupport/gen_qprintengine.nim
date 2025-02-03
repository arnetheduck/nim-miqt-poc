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
{.compile("gen_qprintengine.cpp", cflags).}


type QPrintEnginePrintEnginePropertyKey* = cint
const
  QPrintEnginePPK_CollateCopies* = 0
  QPrintEnginePPK_ColorMode* = 1
  QPrintEnginePPK_Creator* = 2
  QPrintEnginePPK_DocumentName* = 3
  QPrintEnginePPK_FullPage* = 4
  QPrintEnginePPK_NumberOfCopies* = 5
  QPrintEnginePPK_Orientation* = 6
  QPrintEnginePPK_OutputFileName* = 7
  QPrintEnginePPK_PageOrder* = 8
  QPrintEnginePPK_PageRect* = 9
  QPrintEnginePPK_PageSize* = 10
  QPrintEnginePPK_PaperRect* = 11
  QPrintEnginePPK_PaperSource* = 12
  QPrintEnginePPK_PrinterName* = 13
  QPrintEnginePPK_PrinterProgram* = 14
  QPrintEnginePPK_Resolution* = 15
  QPrintEnginePPK_SelectionOption* = 16
  QPrintEnginePPK_SupportedResolutions* = 17
  QPrintEnginePPK_WindowsPageSize* = 18
  QPrintEnginePPK_FontEmbedding* = 19
  QPrintEnginePPK_Duplex* = 20
  QPrintEnginePPK_PaperSources* = 21
  QPrintEnginePPK_CustomPaperSize* = 22
  QPrintEnginePPK_PageMargins* = 23
  QPrintEnginePPK_CopyCount* = 24
  QPrintEnginePPK_SupportsMultipleCopies* = 25
  QPrintEnginePPK_PaperName* = 26
  QPrintEnginePPK_QPageSize* = 27
  QPrintEnginePPK_QPageMargins* = 28
  QPrintEnginePPK_QPageLayout* = 29
  QPrintEnginePPK_PaperSize* = 10
  QPrintEnginePPK_CustomBase* = 65280



import gen_qprintengine_types
export gen_qprintengine_types

import
  gen_qpaintdevice,
  gen_qprinter,
  gen_qvariant
export
  gen_qpaintdevice,
  gen_qprinter,
  gen_qvariant

type cQPrintEngine*{.exportc: "QPrintEngine", incompleteStruct.} = object

proc fcQPrintEngine_setProperty(self: pointer, key: cint, value: pointer): void {.importc: "QPrintEngine_setProperty".}
proc fcQPrintEngine_property(self: pointer, key: cint): pointer {.importc: "QPrintEngine_property".}
proc fcQPrintEngine_newPage(self: pointer, ): bool {.importc: "QPrintEngine_newPage".}
proc fcQPrintEngine_abort(self: pointer, ): bool {.importc: "QPrintEngine_abort".}
proc fcQPrintEngine_metric(self: pointer, param1: cint): cint {.importc: "QPrintEngine_metric".}
proc fcQPrintEngine_printerState(self: pointer, ): cint {.importc: "QPrintEngine_printerState".}
proc fcQPrintEngine_operatorAssign(self: pointer, param1: pointer): void {.importc: "QPrintEngine_operatorAssign".}
proc fcQPrintEngine_delete(self: pointer) {.importc: "QPrintEngine_delete".}


func init*(T: type QPrintEngine, h: ptr cQPrintEngine): QPrintEngine =
  T(h: h)
proc setProperty*(self: QPrintEngine, key: QPrintEnginePrintEnginePropertyKey, value: gen_qvariant.QVariant): void =

  fcQPrintEngine_setProperty(self.h, cint(key), value.h)

proc property*(self: QPrintEngine, key: QPrintEnginePrintEnginePropertyKey): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPrintEngine_property(self.h, cint(key)))

proc newPage*(self: QPrintEngine, ): bool =

  fcQPrintEngine_newPage(self.h)

proc abort*(self: QPrintEngine, ): bool =

  fcQPrintEngine_abort(self.h)

proc metric*(self: QPrintEngine, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =

  fcQPrintEngine_metric(self.h, cint(param1))

proc printerState*(self: QPrintEngine, ): gen_qprinter.QPrinterPrinterState =

  gen_qprinter.QPrinterPrinterState(fcQPrintEngine_printerState(self.h))

proc operatorAssign*(self: QPrintEngine, param1: QPrintEngine): void =

  fcQPrintEngine_operatorAssign(self.h, param1.h)

proc delete*(self: QPrintEngine) =
  fcQPrintEngine_delete(self.h)
