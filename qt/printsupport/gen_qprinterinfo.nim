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
{.compile("gen_qprinterinfo.cpp", cflags).}


import gen_qprinterinfo_types
export gen_qprinterinfo_types

import
  gen_qpagedpaintdevice,
  gen_qpagesize,
  gen_qprinter,
  gen_qsize
export
  gen_qpagedpaintdevice,
  gen_qpagesize,
  gen_qprinter,
  gen_qsize

type cQPrinterInfo*{.exportc: "QPrinterInfo", incompleteStruct.} = object

proc fcQPrinterInfo_new(): ptr cQPrinterInfo {.importc: "QPrinterInfo_new".}
proc fcQPrinterInfo_new2(other: pointer): ptr cQPrinterInfo {.importc: "QPrinterInfo_new2".}
proc fcQPrinterInfo_new3(printer: pointer): ptr cQPrinterInfo {.importc: "QPrinterInfo_new3".}
proc fcQPrinterInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QPrinterInfo_operatorAssign".}
proc fcQPrinterInfo_printerName(self: pointer, ): struct_miqt_string {.importc: "QPrinterInfo_printerName".}
proc fcQPrinterInfo_description(self: pointer, ): struct_miqt_string {.importc: "QPrinterInfo_description".}
proc fcQPrinterInfo_location(self: pointer, ): struct_miqt_string {.importc: "QPrinterInfo_location".}
proc fcQPrinterInfo_makeAndModel(self: pointer, ): struct_miqt_string {.importc: "QPrinterInfo_makeAndModel".}
proc fcQPrinterInfo_isNull(self: pointer, ): bool {.importc: "QPrinterInfo_isNull".}
proc fcQPrinterInfo_isDefault(self: pointer, ): bool {.importc: "QPrinterInfo_isDefault".}
proc fcQPrinterInfo_isRemote(self: pointer, ): bool {.importc: "QPrinterInfo_isRemote".}
proc fcQPrinterInfo_state(self: pointer, ): cint {.importc: "QPrinterInfo_state".}
proc fcQPrinterInfo_supportedPageSizes(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedPageSizes".}
proc fcQPrinterInfo_defaultPageSize(self: pointer, ): pointer {.importc: "QPrinterInfo_defaultPageSize".}
proc fcQPrinterInfo_supportsCustomPageSizes(self: pointer, ): bool {.importc: "QPrinterInfo_supportsCustomPageSizes".}
proc fcQPrinterInfo_minimumPhysicalPageSize(self: pointer, ): pointer {.importc: "QPrinterInfo_minimumPhysicalPageSize".}
proc fcQPrinterInfo_maximumPhysicalPageSize(self: pointer, ): pointer {.importc: "QPrinterInfo_maximumPhysicalPageSize".}
proc fcQPrinterInfo_supportedPaperSizes(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedPaperSizes".}
proc fcQPrinterInfo_supportedSizesWithNames(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedSizesWithNames".}
proc fcQPrinterInfo_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedResolutions".}
proc fcQPrinterInfo_defaultDuplexMode(self: pointer, ): cint {.importc: "QPrinterInfo_defaultDuplexMode".}
proc fcQPrinterInfo_supportedDuplexModes(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedDuplexModes".}
proc fcQPrinterInfo_defaultColorMode(self: pointer, ): cint {.importc: "QPrinterInfo_defaultColorMode".}
proc fcQPrinterInfo_supportedColorModes(self: pointer, ): struct_miqt_array {.importc: "QPrinterInfo_supportedColorModes".}
proc fcQPrinterInfo_availablePrinterNames(): struct_miqt_array {.importc: "QPrinterInfo_availablePrinterNames".}
proc fcQPrinterInfo_availablePrinters(): struct_miqt_array {.importc: "QPrinterInfo_availablePrinters".}
proc fcQPrinterInfo_defaultPrinterName(): struct_miqt_string {.importc: "QPrinterInfo_defaultPrinterName".}
proc fcQPrinterInfo_defaultPrinter(): pointer {.importc: "QPrinterInfo_defaultPrinter".}
proc fcQPrinterInfo_printerInfo(printerName: struct_miqt_string): pointer {.importc: "QPrinterInfo_printerInfo".}
proc fcQPrinterInfo_delete(self: pointer) {.importc: "QPrinterInfo_delete".}


func init*(T: type QPrinterInfo, h: ptr cQPrinterInfo): QPrinterInfo =
  T(h: h)
proc create*(T: type QPrinterInfo, ): QPrinterInfo =

  QPrinterInfo.init(fcQPrinterInfo_new())
proc create*(T: type QPrinterInfo, other: QPrinterInfo): QPrinterInfo =

  QPrinterInfo.init(fcQPrinterInfo_new2(other.h))
proc create2*(T: type QPrinterInfo, printer: gen_qprinter.QPrinter): QPrinterInfo =

  QPrinterInfo.init(fcQPrinterInfo_new3(printer.h))
proc operatorAssign*(self: QPrinterInfo, other: QPrinterInfo): void =

  fcQPrinterInfo_operatorAssign(self.h, other.h)

proc printerName*(self: QPrinterInfo, ): string =

  let v_ms = fcQPrinterInfo_printerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: QPrinterInfo, ): string =

  let v_ms = fcQPrinterInfo_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc location*(self: QPrinterInfo, ): string =

  let v_ms = fcQPrinterInfo_location(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc makeAndModel*(self: QPrinterInfo, ): string =

  let v_ms = fcQPrinterInfo_makeAndModel(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: QPrinterInfo, ): bool =

  fcQPrinterInfo_isNull(self.h)

proc isDefault*(self: QPrinterInfo, ): bool =

  fcQPrinterInfo_isDefault(self.h)

proc isRemote*(self: QPrinterInfo, ): bool =

  fcQPrinterInfo_isRemote(self.h)

proc state*(self: QPrinterInfo, ): gen_qprinter.QPrinterPrinterState =

  gen_qprinter.QPrinterPrinterState(fcQPrinterInfo_state(self.h))

proc supportedPageSizes*(self: QPrinterInfo, ): seq[gen_qpagesize.QPageSize] =

  var v_ma = fcQPrinterInfo_supportedPageSizes(self.h)
  var vx_ret = newSeq[gen_qpagesize.QPageSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpagesize.QPageSize(h: v_outCast[i])
  vx_ret

proc defaultPageSize*(self: QPrinterInfo, ): gen_qpagesize.QPageSize =

  gen_qpagesize.QPageSize(h: fcQPrinterInfo_defaultPageSize(self.h))

proc supportsCustomPageSizes*(self: QPrinterInfo, ): bool =

  fcQPrinterInfo_supportsCustomPageSizes(self.h)

proc minimumPhysicalPageSize*(self: QPrinterInfo, ): gen_qpagesize.QPageSize =

  gen_qpagesize.QPageSize(h: fcQPrinterInfo_minimumPhysicalPageSize(self.h))

proc maximumPhysicalPageSize*(self: QPrinterInfo, ): gen_qpagesize.QPageSize =

  gen_qpagesize.QPageSize(h: fcQPrinterInfo_maximumPhysicalPageSize(self.h))

proc supportedPaperSizes*(self: QPrinterInfo, ): seq[gen_qpagedpaintdevice.QPagedPaintDevicePageSize] =

  var v_ma = fcQPrinterInfo_supportedPaperSizes(self.h)
  var vx_ret = newSeq[gen_qpagedpaintdevice.QPagedPaintDevicePageSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpagedpaintdevice.QPagedPaintDevicePageSize(v_outCast[i])
  vx_ret

proc supportedSizesWithNames*(self: QPrinterInfo, ): seq[tuple[first: string, second: gen_qsize.QSizeF]] =

  var v_ma = fcQPrinterInfo_supportedSizesWithNames(self.h)
  var vx_ret = newSeq[tuple[first: string, second: gen_qsize.QSizeF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    let vx_lv_first_ms = vx_lv_First_CArray[0]
    let vx_lv_firstx_ret = string.fromBytes(toOpenArrayByte(vx_lv_first_ms.data, 0, int(vx_lv_first_ms.len)-1))
    c_free(vx_lv_first_ms.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    var vx_lv_entry_Second = gen_qsize.QSizeF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc supportedResolutions*(self: QPrinterInfo, ): seq[cint] =

  var v_ma = fcQPrinterInfo_supportedResolutions(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc defaultDuplexMode*(self: QPrinterInfo, ): gen_qprinter.QPrinterDuplexMode =

  gen_qprinter.QPrinterDuplexMode(fcQPrinterInfo_defaultDuplexMode(self.h))

proc supportedDuplexModes*(self: QPrinterInfo, ): seq[gen_qprinter.QPrinterDuplexMode] =

  var v_ma = fcQPrinterInfo_supportedDuplexModes(self.h)
  var vx_ret = newSeq[gen_qprinter.QPrinterDuplexMode](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qprinter.QPrinterDuplexMode(v_outCast[i])
  vx_ret

proc defaultColorMode*(self: QPrinterInfo, ): gen_qprinter.QPrinterColorMode =

  gen_qprinter.QPrinterColorMode(fcQPrinterInfo_defaultColorMode(self.h))

proc supportedColorModes*(self: QPrinterInfo, ): seq[gen_qprinter.QPrinterColorMode] =

  var v_ma = fcQPrinterInfo_supportedColorModes(self.h)
  var vx_ret = newSeq[gen_qprinter.QPrinterColorMode](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qprinter.QPrinterColorMode(v_outCast[i])
  vx_ret

proc availablePrinterNames*(_: type QPrinterInfo, ): seq[string] =

  var v_ma = fcQPrinterInfo_availablePrinterNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc availablePrinters*(_: type QPrinterInfo, ): seq[QPrinterInfo] =

  var v_ma = fcQPrinterInfo_availablePrinters()
  var vx_ret = newSeq[QPrinterInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QPrinterInfo(h: v_outCast[i])
  vx_ret

proc defaultPrinterName*(_: type QPrinterInfo, ): string =

  let v_ms = fcQPrinterInfo_defaultPrinterName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultPrinter*(_: type QPrinterInfo, ): QPrinterInfo =

  QPrinterInfo(h: fcQPrinterInfo_defaultPrinter())

proc printerInfo*(_: type QPrinterInfo, printerName: string): QPrinterInfo =

  QPrinterInfo(h: fcQPrinterInfo_printerInfo(struct_miqt_string(data: printerName, len: csize_t(len(printerName)))))

proc delete*(self: QPrinterInfo) =
  fcQPrinterInfo_delete(self.h)
