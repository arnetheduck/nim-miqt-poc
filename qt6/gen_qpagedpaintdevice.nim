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
{.compile("gen_qpagedpaintdevice.cpp", cflags).}


type QPagedPaintDevicePdfVersion* = cint
const
  QPagedPaintDevicePdfVersion_1_4* = 0
  QPagedPaintDevicePdfVersion_A1b* = 1
  QPagedPaintDevicePdfVersion_1_6* = 2



import gen_qpagedpaintdevice_types
export gen_qpagedpaintdevice_types

import
  gen_qmargins,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice
export
  gen_qmargins,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice

type cQPagedPaintDevice*{.exportc: "QPagedPaintDevice", incompleteStruct.} = object

proc fcQPagedPaintDevice_newPage(self: pointer, ): bool {.importc: "QPagedPaintDevice_newPage".}
proc fcQPagedPaintDevice_setPageLayout(self: pointer, pageLayout: pointer): bool {.importc: "QPagedPaintDevice_setPageLayout".}
proc fcQPagedPaintDevice_setPageSize(self: pointer, pageSize: pointer): bool {.importc: "QPagedPaintDevice_setPageSize".}
proc fcQPagedPaintDevice_setPageOrientation(self: pointer, orientation: cint): bool {.importc: "QPagedPaintDevice_setPageOrientation".}
proc fcQPagedPaintDevice_setPageMargins(self: pointer, margins: pointer, units: cint): bool {.importc: "QPagedPaintDevice_setPageMargins".}
proc fcQPagedPaintDevice_pageLayout(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageLayout".}
proc fcQPagedPaintDevice_setPageRanges(self: pointer, ranges: pointer): void {.importc: "QPagedPaintDevice_setPageRanges".}
proc fcQPagedPaintDevice_pageRanges(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageRanges".}
proc fcQPagedPaintDevice_delete(self: pointer) {.importc: "QPagedPaintDevice_delete".}


func init*(T: type QPagedPaintDevice, h: ptr cQPagedPaintDevice): QPagedPaintDevice =
  T(h: h)
proc newPage*(self: QPagedPaintDevice, ): bool =

  fcQPagedPaintDevice_newPage(self.h)

proc setPageLayout*(self: QPagedPaintDevice, pageLayout: gen_qpagelayout.QPageLayout): bool =

  fcQPagedPaintDevice_setPageLayout(self.h, pageLayout.h)

proc setPageSize*(self: QPagedPaintDevice, pageSize: gen_qpagesize.QPageSize): bool =

  fcQPagedPaintDevice_setPageSize(self.h, pageSize.h)

proc setPageOrientation*(self: QPagedPaintDevice, orientation: gen_qpagelayout.QPageLayoutOrientation): bool =

  fcQPagedPaintDevice_setPageOrientation(self.h, cint(orientation))

proc setPageMargins*(self: QPagedPaintDevice, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool =

  fcQPagedPaintDevice_setPageMargins(self.h, margins.h, cint(units))

proc pageLayout*(self: QPagedPaintDevice, ): gen_qpagelayout.QPageLayout =

  gen_qpagelayout.QPageLayout(h: fcQPagedPaintDevice_pageLayout(self.h))

proc setPageRanges*(self: QPagedPaintDevice, ranges: gen_qpageranges.QPageRanges): void =

  fcQPagedPaintDevice_setPageRanges(self.h, ranges.h)

proc pageRanges*(self: QPagedPaintDevice, ): gen_qpageranges.QPageRanges =

  gen_qpageranges.QPageRanges(h: fcQPagedPaintDevice_pageRanges(self.h))

proc delete*(self: QPagedPaintDevice) =
  fcQPagedPaintDevice_delete(self.h)
