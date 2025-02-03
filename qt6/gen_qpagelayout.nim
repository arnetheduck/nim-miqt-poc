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
{.compile("gen_qpagelayout.cpp", cflags).}


type QPageLayoutUnit* = cint
const
  QPageLayoutMillimeter* = 0
  QPageLayoutPoint* = 1
  QPageLayoutInch* = 2
  QPageLayoutPica* = 3
  QPageLayoutDidot* = 4
  QPageLayoutCicero* = 5



type QPageLayoutOrientation* = cint
const
  QPageLayoutPortrait* = 0
  QPageLayoutLandscape* = 1



type QPageLayoutMode* = cint
const
  QPageLayoutStandardMode* = 0
  QPageLayoutFullPageMode* = 1



import gen_qpagelayout_types
export gen_qpagelayout_types

import
  gen_qmargins,
  gen_qpagesize,
  gen_qrect
export
  gen_qmargins,
  gen_qpagesize,
  gen_qrect

type cQPageLayout*{.exportc: "QPageLayout", incompleteStruct.} = object

proc fcQPageLayout_new(): ptr cQPageLayout {.importc: "QPageLayout_new".}
proc fcQPageLayout_new2(pageSize: pointer, orientation: cint, margins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new2".}
proc fcQPageLayout_new3(other: pointer): ptr cQPageLayout {.importc: "QPageLayout_new3".}
proc fcQPageLayout_new4(pageSize: pointer, orientation: cint, margins: pointer, units: cint): ptr cQPageLayout {.importc: "QPageLayout_new4".}
proc fcQPageLayout_new5(pageSize: pointer, orientation: cint, margins: pointer, units: cint, minMargins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new5".}
proc fcQPageLayout_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageLayout_operatorAssign".}
proc fcQPageLayout_swap(self: pointer, other: pointer): void {.importc: "QPageLayout_swap".}
proc fcQPageLayout_isEquivalentTo(self: pointer, other: pointer): bool {.importc: "QPageLayout_isEquivalentTo".}
proc fcQPageLayout_isValid(self: pointer, ): bool {.importc: "QPageLayout_isValid".}
proc fcQPageLayout_setMode(self: pointer, mode: cint): void {.importc: "QPageLayout_setMode".}
proc fcQPageLayout_mode(self: pointer, ): cint {.importc: "QPageLayout_mode".}
proc fcQPageLayout_setPageSize(self: pointer, pageSize: pointer): void {.importc: "QPageLayout_setPageSize".}
proc fcQPageLayout_pageSize(self: pointer, ): pointer {.importc: "QPageLayout_pageSize".}
proc fcQPageLayout_setOrientation(self: pointer, orientation: cint): void {.importc: "QPageLayout_setOrientation".}
proc fcQPageLayout_orientation(self: pointer, ): cint {.importc: "QPageLayout_orientation".}
proc fcQPageLayout_setUnits(self: pointer, units: cint): void {.importc: "QPageLayout_setUnits".}
proc fcQPageLayout_units(self: pointer, ): cint {.importc: "QPageLayout_units".}
proc fcQPageLayout_setMargins(self: pointer, margins: pointer): bool {.importc: "QPageLayout_setMargins".}
proc fcQPageLayout_setLeftMargin(self: pointer, leftMargin: float64): bool {.importc: "QPageLayout_setLeftMargin".}
proc fcQPageLayout_setRightMargin(self: pointer, rightMargin: float64): bool {.importc: "QPageLayout_setRightMargin".}
proc fcQPageLayout_setTopMargin(self: pointer, topMargin: float64): bool {.importc: "QPageLayout_setTopMargin".}
proc fcQPageLayout_setBottomMargin(self: pointer, bottomMargin: float64): bool {.importc: "QPageLayout_setBottomMargin".}
proc fcQPageLayout_margins(self: pointer, ): pointer {.importc: "QPageLayout_margins".}
proc fcQPageLayout_marginsWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_marginsWithUnits".}
proc fcQPageLayout_marginsPoints(self: pointer, ): pointer {.importc: "QPageLayout_marginsPoints".}
proc fcQPageLayout_marginsPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_marginsPixels".}
proc fcQPageLayout_setMinimumMargins(self: pointer, minMargins: pointer): void {.importc: "QPageLayout_setMinimumMargins".}
proc fcQPageLayout_minimumMargins(self: pointer, ): pointer {.importc: "QPageLayout_minimumMargins".}
proc fcQPageLayout_maximumMargins(self: pointer, ): pointer {.importc: "QPageLayout_maximumMargins".}
proc fcQPageLayout_fullRect(self: pointer, ): pointer {.importc: "QPageLayout_fullRect".}
proc fcQPageLayout_fullRectWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_fullRectWithUnits".}
proc fcQPageLayout_fullRectPoints(self: pointer, ): pointer {.importc: "QPageLayout_fullRectPoints".}
proc fcQPageLayout_fullRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_fullRectPixels".}
proc fcQPageLayout_paintRect(self: pointer, ): pointer {.importc: "QPageLayout_paintRect".}
proc fcQPageLayout_paintRectWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_paintRectWithUnits".}
proc fcQPageLayout_paintRectPoints(self: pointer, ): pointer {.importc: "QPageLayout_paintRectPoints".}
proc fcQPageLayout_paintRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_paintRectPixels".}
proc fcQPageLayout_setPageSize2(self: pointer, pageSize: pointer, minMargins: pointer): void {.importc: "QPageLayout_setPageSize2".}
proc fcQPageLayout_delete(self: pointer) {.importc: "QPageLayout_delete".}


func init*(T: type QPageLayout, h: ptr cQPageLayout): QPageLayout =
  T(h: h)
proc create*(T: type QPageLayout, ): QPageLayout =

  QPageLayout.init(fcQPageLayout_new())
proc create*(T: type QPageLayout, pageSize: gen_qpagesize.QPageSize, orientation: QPageLayoutOrientation, margins: gen_qmargins.QMarginsF): QPageLayout =

  QPageLayout.init(fcQPageLayout_new2(pageSize.h, cint(orientation), margins.h))
proc create*(T: type QPageLayout, other: QPageLayout): QPageLayout =

  QPageLayout.init(fcQPageLayout_new3(other.h))
proc create*(T: type QPageLayout, pageSize: gen_qpagesize.QPageSize, orientation: QPageLayoutOrientation, margins: gen_qmargins.QMarginsF, units: QPageLayoutUnit): QPageLayout =

  QPageLayout.init(fcQPageLayout_new4(pageSize.h, cint(orientation), margins.h, cint(units)))
proc create*(T: type QPageLayout, pageSize: gen_qpagesize.QPageSize, orientation: QPageLayoutOrientation, margins: gen_qmargins.QMarginsF, units: QPageLayoutUnit, minMargins: gen_qmargins.QMarginsF): QPageLayout =

  QPageLayout.init(fcQPageLayout_new5(pageSize.h, cint(orientation), margins.h, cint(units), minMargins.h))
proc operatorAssign*(self: QPageLayout, other: QPageLayout): void =

  fcQPageLayout_operatorAssign(self.h, other.h)

proc swap*(self: QPageLayout, other: QPageLayout): void =

  fcQPageLayout_swap(self.h, other.h)

proc isEquivalentTo*(self: QPageLayout, other: QPageLayout): bool =

  fcQPageLayout_isEquivalentTo(self.h, other.h)

proc isValid*(self: QPageLayout, ): bool =

  fcQPageLayout_isValid(self.h)

proc setMode*(self: QPageLayout, mode: QPageLayoutMode): void =

  fcQPageLayout_setMode(self.h, cint(mode))

proc mode*(self: QPageLayout, ): QPageLayoutMode =

  QPageLayoutMode(fcQPageLayout_mode(self.h))

proc setPageSize*(self: QPageLayout, pageSize: gen_qpagesize.QPageSize): void =

  fcQPageLayout_setPageSize(self.h, pageSize.h)

proc pageSize*(self: QPageLayout, ): gen_qpagesize.QPageSize =

  gen_qpagesize.QPageSize(h: fcQPageLayout_pageSize(self.h))

proc setOrientation*(self: QPageLayout, orientation: QPageLayoutOrientation): void =

  fcQPageLayout_setOrientation(self.h, cint(orientation))

proc orientation*(self: QPageLayout, ): QPageLayoutOrientation =

  QPageLayoutOrientation(fcQPageLayout_orientation(self.h))

proc setUnits*(self: QPageLayout, units: QPageLayoutUnit): void =

  fcQPageLayout_setUnits(self.h, cint(units))

proc units*(self: QPageLayout, ): QPageLayoutUnit =

  QPageLayoutUnit(fcQPageLayout_units(self.h))

proc setMargins*(self: QPageLayout, margins: gen_qmargins.QMarginsF): bool =

  fcQPageLayout_setMargins(self.h, margins.h)

proc setLeftMargin*(self: QPageLayout, leftMargin: float64): bool =

  fcQPageLayout_setLeftMargin(self.h, leftMargin)

proc setRightMargin*(self: QPageLayout, rightMargin: float64): bool =

  fcQPageLayout_setRightMargin(self.h, rightMargin)

proc setTopMargin*(self: QPageLayout, topMargin: float64): bool =

  fcQPageLayout_setTopMargin(self.h, topMargin)

proc setBottomMargin*(self: QPageLayout, bottomMargin: float64): bool =

  fcQPageLayout_setBottomMargin(self.h, bottomMargin)

proc margins*(self: QPageLayout, ): gen_qmargins.QMarginsF =

  gen_qmargins.QMarginsF(h: fcQPageLayout_margins(self.h))

proc marginsWithUnits*(self: QPageLayout, units: QPageLayoutUnit): gen_qmargins.QMarginsF =

  gen_qmargins.QMarginsF(h: fcQPageLayout_marginsWithUnits(self.h, cint(units)))

proc marginsPoints*(self: QPageLayout, ): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQPageLayout_marginsPoints(self.h))

proc marginsPixels*(self: QPageLayout, resolution: cint): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQPageLayout_marginsPixels(self.h, resolution))

proc setMinimumMargins*(self: QPageLayout, minMargins: gen_qmargins.QMarginsF): void =

  fcQPageLayout_setMinimumMargins(self.h, minMargins.h)

proc minimumMargins*(self: QPageLayout, ): gen_qmargins.QMarginsF =

  gen_qmargins.QMarginsF(h: fcQPageLayout_minimumMargins(self.h))

proc maximumMargins*(self: QPageLayout, ): gen_qmargins.QMarginsF =

  gen_qmargins.QMarginsF(h: fcQPageLayout_maximumMargins(self.h))

proc fullRect*(self: QPageLayout, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPageLayout_fullRect(self.h))

proc fullRectWithUnits*(self: QPageLayout, units: QPageLayoutUnit): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPageLayout_fullRectWithUnits(self.h, cint(units)))

proc fullRectPoints*(self: QPageLayout, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageLayout_fullRectPoints(self.h))

proc fullRectPixels*(self: QPageLayout, resolution: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageLayout_fullRectPixels(self.h, resolution))

proc paintRect*(self: QPageLayout, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPageLayout_paintRect(self.h))

proc paintRectWithUnits*(self: QPageLayout, units: QPageLayoutUnit): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPageLayout_paintRectWithUnits(self.h, cint(units)))

proc paintRectPoints*(self: QPageLayout, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageLayout_paintRectPoints(self.h))

proc paintRectPixels*(self: QPageLayout, resolution: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageLayout_paintRectPixels(self.h, resolution))

proc setPageSize2*(self: QPageLayout, pageSize: gen_qpagesize.QPageSize, minMargins: gen_qmargins.QMarginsF): void =

  fcQPageLayout_setPageSize2(self.h, pageSize.h, minMargins.h)

proc delete*(self: QPageLayout) =
  fcQPageLayout_delete(self.h)
