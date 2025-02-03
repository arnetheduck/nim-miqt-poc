import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qsize.cpp", cflags).}


import gen_qsize_types
export gen_qsize_types

import
  gen_qmargins,
  gen_qnamespace
export
  gen_qmargins,
  gen_qnamespace

type cQSize*{.exportc: "QSize", incompleteStruct.} = object
type cQSizeF*{.exportc: "QSizeF", incompleteStruct.} = object

proc fcQSize_new(): ptr cQSize {.importc: "QSize_new".}
proc fcQSize_new2(w: cint, h: cint): ptr cQSize {.importc: "QSize_new2".}
proc fcQSize_new3(param1: pointer): ptr cQSize {.importc: "QSize_new3".}
proc fcQSize_isNull(self: pointer, ): bool {.importc: "QSize_isNull".}
proc fcQSize_isEmpty(self: pointer, ): bool {.importc: "QSize_isEmpty".}
proc fcQSize_isValid(self: pointer, ): bool {.importc: "QSize_isValid".}
proc fcQSize_width(self: pointer, ): cint {.importc: "QSize_width".}
proc fcQSize_height(self: pointer, ): cint {.importc: "QSize_height".}
proc fcQSize_setWidth(self: pointer, w: cint): void {.importc: "QSize_setWidth".}
proc fcQSize_setHeight(self: pointer, h: cint): void {.importc: "QSize_setHeight".}
proc fcQSize_transpose(self: pointer, ): void {.importc: "QSize_transpose".}
proc fcQSize_transposed(self: pointer, ): pointer {.importc: "QSize_transposed".}
proc fcQSize_scale(self: pointer, w: cint, h: cint, mode: cint): void {.importc: "QSize_scale".}
proc fcQSize_scale2(self: pointer, s: pointer, mode: cint): void {.importc: "QSize_scale2".}
proc fcQSize_scaled(self: pointer, w: cint, h: cint, mode: cint): pointer {.importc: "QSize_scaled".}
proc fcQSize_scaled2(self: pointer, s: pointer, mode: cint): pointer {.importc: "QSize_scaled2".}
proc fcQSize_expandedTo(self: pointer, param1: pointer): pointer {.importc: "QSize_expandedTo".}
proc fcQSize_boundedTo(self: pointer, param1: pointer): pointer {.importc: "QSize_boundedTo".}
proc fcQSize_grownBy(self: pointer, m: pointer): pointer {.importc: "QSize_grownBy".}
proc fcQSize_shrunkBy(self: pointer, m: pointer): pointer {.importc: "QSize_shrunkBy".}
proc fcQSize_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QSize_operatorPlusAssign".}
proc fcQSize_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QSize_operatorMinusAssign".}
proc fcQSize_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QSize_operatorMultiplyAssign".}
proc fcQSize_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QSize_operatorDivideAssign".}
proc fcQSize_delete(self: pointer) {.importc: "QSize_delete".}
proc fcQSizeF_new(): ptr cQSizeF {.importc: "QSizeF_new".}
proc fcQSizeF_new2(sz: pointer): ptr cQSizeF {.importc: "QSizeF_new2".}
proc fcQSizeF_new3(w: float64, h: float64): ptr cQSizeF {.importc: "QSizeF_new3".}
proc fcQSizeF_new4(param1: pointer): ptr cQSizeF {.importc: "QSizeF_new4".}
proc fcQSizeF_isNull(self: pointer, ): bool {.importc: "QSizeF_isNull".}
proc fcQSizeF_isEmpty(self: pointer, ): bool {.importc: "QSizeF_isEmpty".}
proc fcQSizeF_isValid(self: pointer, ): bool {.importc: "QSizeF_isValid".}
proc fcQSizeF_width(self: pointer, ): float64 {.importc: "QSizeF_width".}
proc fcQSizeF_height(self: pointer, ): float64 {.importc: "QSizeF_height".}
proc fcQSizeF_setWidth(self: pointer, w: float64): void {.importc: "QSizeF_setWidth".}
proc fcQSizeF_setHeight(self: pointer, h: float64): void {.importc: "QSizeF_setHeight".}
proc fcQSizeF_transpose(self: pointer, ): void {.importc: "QSizeF_transpose".}
proc fcQSizeF_transposed(self: pointer, ): pointer {.importc: "QSizeF_transposed".}
proc fcQSizeF_scale(self: pointer, w: float64, h: float64, mode: cint): void {.importc: "QSizeF_scale".}
proc fcQSizeF_scale2(self: pointer, s: pointer, mode: cint): void {.importc: "QSizeF_scale2".}
proc fcQSizeF_scaled(self: pointer, w: float64, h: float64, mode: cint): pointer {.importc: "QSizeF_scaled".}
proc fcQSizeF_scaled2(self: pointer, s: pointer, mode: cint): pointer {.importc: "QSizeF_scaled2".}
proc fcQSizeF_expandedTo(self: pointer, param1: pointer): pointer {.importc: "QSizeF_expandedTo".}
proc fcQSizeF_boundedTo(self: pointer, param1: pointer): pointer {.importc: "QSizeF_boundedTo".}
proc fcQSizeF_grownBy(self: pointer, m: pointer): pointer {.importc: "QSizeF_grownBy".}
proc fcQSizeF_shrunkBy(self: pointer, m: pointer): pointer {.importc: "QSizeF_shrunkBy".}
proc fcQSizeF_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QSizeF_operatorPlusAssign".}
proc fcQSizeF_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QSizeF_operatorMinusAssign".}
proc fcQSizeF_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QSizeF_operatorMultiplyAssign".}
proc fcQSizeF_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QSizeF_operatorDivideAssign".}
proc fcQSizeF_toSize(self: pointer, ): pointer {.importc: "QSizeF_toSize".}
proc fcQSizeF_delete(self: pointer) {.importc: "QSizeF_delete".}


func init*(T: type QSize, h: ptr cQSize): QSize =
  T(h: h)
proc create*(T: type QSize, ): QSize =

  QSize.init(fcQSize_new())
proc create*(T: type QSize, w: cint, h: cint): QSize =

  QSize.init(fcQSize_new2(w, h))
proc create*(T: type QSize, param1: QSize): QSize =

  QSize.init(fcQSize_new3(param1.h))
proc isNull*(self: QSize, ): bool =

  fcQSize_isNull(self.h)

proc isEmpty*(self: QSize, ): bool =

  fcQSize_isEmpty(self.h)

proc isValid*(self: QSize, ): bool =

  fcQSize_isValid(self.h)

proc width*(self: QSize, ): cint =

  fcQSize_width(self.h)

proc height*(self: QSize, ): cint =

  fcQSize_height(self.h)

proc setWidth*(self: QSize, w: cint): void =

  fcQSize_setWidth(self.h, w)

proc setHeight*(self: QSize, h: cint): void =

  fcQSize_setHeight(self.h, h)

proc transpose*(self: QSize, ): void =

  fcQSize_transpose(self.h)

proc transposed*(self: QSize, ): QSize =

  QSize(h: fcQSize_transposed(self.h))

proc scale*(self: QSize, w: cint, h: cint, mode: gen_qnamespace.AspectRatioMode): void =

  fcQSize_scale(self.h, w, h, cint(mode))

proc scale2*(self: QSize, s: QSize, mode: gen_qnamespace.AspectRatioMode): void =

  fcQSize_scale2(self.h, s.h, cint(mode))

proc scaled*(self: QSize, w: cint, h: cint, mode: gen_qnamespace.AspectRatioMode): QSize =

  QSize(h: fcQSize_scaled(self.h, w, h, cint(mode)))

proc scaled2*(self: QSize, s: QSize, mode: gen_qnamespace.AspectRatioMode): QSize =

  QSize(h: fcQSize_scaled2(self.h, s.h, cint(mode)))

proc expandedTo*(self: QSize, param1: QSize): QSize =

  QSize(h: fcQSize_expandedTo(self.h, param1.h))

proc boundedTo*(self: QSize, param1: QSize): QSize =

  QSize(h: fcQSize_boundedTo(self.h, param1.h))

proc grownBy*(self: QSize, m: gen_qmargins.QMargins): QSize =

  QSize(h: fcQSize_grownBy(self.h, m.h))

proc shrunkBy*(self: QSize, m: gen_qmargins.QMargins): QSize =

  QSize(h: fcQSize_shrunkBy(self.h, m.h))

proc operatorPlusAssign*(self: QSize, param1: QSize): QSize =

  QSize(h: fcQSize_operatorPlusAssign(self.h, param1.h))

proc operatorMinusAssign*(self: QSize, param1: QSize): QSize =

  QSize(h: fcQSize_operatorMinusAssign(self.h, param1.h))

proc operatorMultiplyAssign*(self: QSize, c: float64): QSize =

  QSize(h: fcQSize_operatorMultiplyAssign(self.h, c))

proc operatorDivideAssign*(self: QSize, c: float64): QSize =

  QSize(h: fcQSize_operatorDivideAssign(self.h, c))

proc delete*(self: QSize) =
  fcQSize_delete(self.h)

func init*(T: type QSizeF, h: ptr cQSizeF): QSizeF =
  T(h: h)
proc create*(T: type QSizeF, ): QSizeF =

  QSizeF.init(fcQSizeF_new())
proc create*(T: type QSizeF, sz: QSize): QSizeF =

  QSizeF.init(fcQSizeF_new2(sz.h))
proc create*(T: type QSizeF, w: float64, h: float64): QSizeF =

  QSizeF.init(fcQSizeF_new3(w, h))
proc create2*(T: type QSizeF, param1: QSizeF): QSizeF =

  QSizeF.init(fcQSizeF_new4(param1.h))
proc isNull*(self: QSizeF, ): bool =

  fcQSizeF_isNull(self.h)

proc isEmpty*(self: QSizeF, ): bool =

  fcQSizeF_isEmpty(self.h)

proc isValid*(self: QSizeF, ): bool =

  fcQSizeF_isValid(self.h)

proc width*(self: QSizeF, ): float64 =

  fcQSizeF_width(self.h)

proc height*(self: QSizeF, ): float64 =

  fcQSizeF_height(self.h)

proc setWidth*(self: QSizeF, w: float64): void =

  fcQSizeF_setWidth(self.h, w)

proc setHeight*(self: QSizeF, h: float64): void =

  fcQSizeF_setHeight(self.h, h)

proc transpose*(self: QSizeF, ): void =

  fcQSizeF_transpose(self.h)

proc transposed*(self: QSizeF, ): QSizeF =

  QSizeF(h: fcQSizeF_transposed(self.h))

proc scale*(self: QSizeF, w: float64, h: float64, mode: gen_qnamespace.AspectRatioMode): void =

  fcQSizeF_scale(self.h, w, h, cint(mode))

proc scale2*(self: QSizeF, s: QSizeF, mode: gen_qnamespace.AspectRatioMode): void =

  fcQSizeF_scale2(self.h, s.h, cint(mode))

proc scaled*(self: QSizeF, w: float64, h: float64, mode: gen_qnamespace.AspectRatioMode): QSizeF =

  QSizeF(h: fcQSizeF_scaled(self.h, w, h, cint(mode)))

proc scaled2*(self: QSizeF, s: QSizeF, mode: gen_qnamespace.AspectRatioMode): QSizeF =

  QSizeF(h: fcQSizeF_scaled2(self.h, s.h, cint(mode)))

proc expandedTo*(self: QSizeF, param1: QSizeF): QSizeF =

  QSizeF(h: fcQSizeF_expandedTo(self.h, param1.h))

proc boundedTo*(self: QSizeF, param1: QSizeF): QSizeF =

  QSizeF(h: fcQSizeF_boundedTo(self.h, param1.h))

proc grownBy*(self: QSizeF, m: gen_qmargins.QMarginsF): QSizeF =

  QSizeF(h: fcQSizeF_grownBy(self.h, m.h))

proc shrunkBy*(self: QSizeF, m: gen_qmargins.QMarginsF): QSizeF =

  QSizeF(h: fcQSizeF_shrunkBy(self.h, m.h))

proc operatorPlusAssign*(self: QSizeF, param1: QSizeF): QSizeF =

  QSizeF(h: fcQSizeF_operatorPlusAssign(self.h, param1.h))

proc operatorMinusAssign*(self: QSizeF, param1: QSizeF): QSizeF =

  QSizeF(h: fcQSizeF_operatorMinusAssign(self.h, param1.h))

proc operatorMultiplyAssign*(self: QSizeF, c: float64): QSizeF =

  QSizeF(h: fcQSizeF_operatorMultiplyAssign(self.h, c))

proc operatorDivideAssign*(self: QSizeF, c: float64): QSizeF =

  QSizeF(h: fcQSizeF_operatorDivideAssign(self.h, c))

proc toSize*(self: QSizeF, ): QSize =

  QSize(h: fcQSizeF_toSize(self.h))

proc delete*(self: QSizeF) =
  fcQSizeF_delete(self.h)
