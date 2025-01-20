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
{.compile("gen_qmatrix.cpp", cflags).}


import gen_qmatrix_types
export gen_qmatrix_types

import
  gen_qline,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qvariant
export
  gen_qline,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qvariant

type cQMatrix*{.exportc: "QMatrix", incompleteStruct.} = object

proc fcQMatrix_new(param1: cint): ptr cQMatrix {.importc: "QMatrix_new".}
proc fcQMatrix_new2(): ptr cQMatrix {.importc: "QMatrix_new2".}
proc fcQMatrix_new3(m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): ptr cQMatrix {.importc: "QMatrix_new3".}
proc fcQMatrix_new4(other: pointer): ptr cQMatrix {.importc: "QMatrix_new4".}
proc fcQMatrix_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMatrix_operatorAssign".}
proc fcQMatrix_setMatrix(self: pointer, m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): void {.importc: "QMatrix_setMatrix".}
proc fcQMatrix_m11(self: pointer, ): float64 {.importc: "QMatrix_m11".}
proc fcQMatrix_m12(self: pointer, ): float64 {.importc: "QMatrix_m12".}
proc fcQMatrix_m21(self: pointer, ): float64 {.importc: "QMatrix_m21".}
proc fcQMatrix_m22(self: pointer, ): float64 {.importc: "QMatrix_m22".}
proc fcQMatrix_dx(self: pointer, ): float64 {.importc: "QMatrix_dx".}
proc fcQMatrix_dy(self: pointer, ): float64 {.importc: "QMatrix_dy".}
proc fcQMatrix_map(self: pointer, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void {.importc: "QMatrix_map".}
proc fcQMatrix_map2(self: pointer, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void {.importc: "QMatrix_map2".}
proc fcQMatrix_mapRect(self: pointer, param1: pointer): pointer {.importc: "QMatrix_mapRect".}
proc fcQMatrix_mapRectWithQRectF(self: pointer, param1: pointer): pointer {.importc: "QMatrix_mapRectWithQRectF".}
proc fcQMatrix_mapWithQPoint(self: pointer, p: pointer): pointer {.importc: "QMatrix_mapWithQPoint".}
proc fcQMatrix_mapWithQPointF(self: pointer, p: pointer): pointer {.importc: "QMatrix_mapWithQPointF".}
proc fcQMatrix_mapWithQLine(self: pointer, l: pointer): pointer {.importc: "QMatrix_mapWithQLine".}
proc fcQMatrix_mapWithQLineF(self: pointer, l: pointer): pointer {.importc: "QMatrix_mapWithQLineF".}
proc fcQMatrix_mapWithQRegion(self: pointer, r: pointer): pointer {.importc: "QMatrix_mapWithQRegion".}
proc fcQMatrix_mapWithQPainterPath(self: pointer, p: pointer): pointer {.importc: "QMatrix_mapWithQPainterPath".}
proc fcQMatrix_reset(self: pointer, ): void {.importc: "QMatrix_reset".}
proc fcQMatrix_isIdentity(self: pointer, ): bool {.importc: "QMatrix_isIdentity".}
proc fcQMatrix_translate(self: pointer, dx: float64, dy: float64): pointer {.importc: "QMatrix_translate".}
proc fcQMatrix_scale(self: pointer, sx: float64, sy: float64): pointer {.importc: "QMatrix_scale".}
proc fcQMatrix_shear(self: pointer, sh: float64, sv: float64): pointer {.importc: "QMatrix_shear".}
proc fcQMatrix_rotate(self: pointer, a: float64): pointer {.importc: "QMatrix_rotate".}
proc fcQMatrix_isInvertible(self: pointer, ): bool {.importc: "QMatrix_isInvertible".}
proc fcQMatrix_determinant(self: pointer, ): float64 {.importc: "QMatrix_determinant".}
proc fcQMatrix_inverted(self: pointer, ): pointer {.importc: "QMatrix_inverted".}
proc fcQMatrix_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QMatrix_operatorEqual".}
proc fcQMatrix_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QMatrix_operatorNotEqual".}
proc fcQMatrix_operatorMultiplyAssign(self: pointer, param1: pointer): pointer {.importc: "QMatrix_operatorMultiplyAssign".}
proc fcQMatrix_operatorMultiply(self: pointer, o: pointer): pointer {.importc: "QMatrix_operatorMultiply".}
proc fcQMatrix_ToQVariant(self: pointer, ): pointer {.importc: "QMatrix_ToQVariant".}
proc fcQMatrix_inverted1(self: pointer, invertible: ptr bool): pointer {.importc: "QMatrix_inverted1".}
proc fcQMatrix_delete(self: pointer) {.importc: "QMatrix_delete".}


func init*(T: type gen_qmatrix_types.QMatrix, h: ptr cQMatrix): gen_qmatrix_types.QMatrix =
  T(h: h)
proc create*(T: type gen_qmatrix_types.QMatrix, param1: cint): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix.init(fcQMatrix_new(cint(param1)))
proc create*(T: type gen_qmatrix_types.QMatrix, ): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix.init(fcQMatrix_new2())
proc create*(T: type gen_qmatrix_types.QMatrix, m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix.init(fcQMatrix_new3(m11, m12, m21, m22, dx, dy))
proc create*(T: type gen_qmatrix_types.QMatrix, other: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix.init(fcQMatrix_new4(other.h))
proc operatorAssign*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): void =

  fcQMatrix_operatorAssign(self.h, param1.h)

proc setMatrix*(self: gen_qmatrix_types.QMatrix, m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): void =

  fcQMatrix_setMatrix(self.h, m11, m12, m21, m22, dx, dy)

proc m11*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_m11(self.h)

proc m12*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_m12(self.h)

proc m21*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_m21(self.h)

proc m22*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_m22(self.h)

proc dx*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_dx(self.h)

proc dy*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_dy(self.h)

proc map*(self: gen_qmatrix_types.QMatrix, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void =

  fcQMatrix_map(self.h, x, y, tx, ty)

proc map2*(self: gen_qmatrix_types.QMatrix, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void =

  fcQMatrix_map2(self.h, x, y, tx, ty)

proc mapRect*(self: gen_qmatrix_types.QMatrix, param1: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQMatrix_mapRect(self.h, param1.h))

proc mapRectWithQRectF*(self: gen_qmatrix_types.QMatrix, param1: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQMatrix_mapRectWithQRectF(self.h, param1.h))

proc mapWithQPoint*(self: gen_qmatrix_types.QMatrix, p: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMatrix_mapWithQPoint(self.h, p.h))

proc mapWithQPointF*(self: gen_qmatrix_types.QMatrix, p: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQMatrix_mapWithQPointF(self.h, p.h))

proc mapWithQLine*(self: gen_qmatrix_types.QMatrix, l: gen_qline.QLine): gen_qline.QLine =

  gen_qline.QLine(h: fcQMatrix_mapWithQLine(self.h, l.h))

proc mapWithQLineF*(self: gen_qmatrix_types.QMatrix, l: gen_qline.QLineF): gen_qline.QLineF =

  gen_qline.QLineF(h: fcQMatrix_mapWithQLineF(self.h, l.h))

proc mapWithQRegion*(self: gen_qmatrix_types.QMatrix, r: gen_qregion.QRegion): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQMatrix_mapWithQRegion(self.h, r.h))

proc mapWithQPainterPath*(self: gen_qmatrix_types.QMatrix, p: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQMatrix_mapWithQPainterPath(self.h, p.h))

proc reset*(self: gen_qmatrix_types.QMatrix, ): void =

  fcQMatrix_reset(self.h)

proc isIdentity*(self: gen_qmatrix_types.QMatrix, ): bool =

  fcQMatrix_isIdentity(self.h)

proc translate*(self: gen_qmatrix_types.QMatrix, dx: float64, dy: float64): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_translate(self.h, dx, dy))

proc scale*(self: gen_qmatrix_types.QMatrix, sx: float64, sy: float64): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_scale(self.h, sx, sy))

proc shear*(self: gen_qmatrix_types.QMatrix, sh: float64, sv: float64): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_shear(self.h, sh, sv))

proc rotate*(self: gen_qmatrix_types.QMatrix, a: float64): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_rotate(self.h, a))

proc isInvertible*(self: gen_qmatrix_types.QMatrix, ): bool =

  fcQMatrix_isInvertible(self.h)

proc determinant*(self: gen_qmatrix_types.QMatrix, ): float64 =

  fcQMatrix_determinant(self.h)

proc inverted*(self: gen_qmatrix_types.QMatrix, ): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_inverted(self.h))

proc operatorEqual*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): bool =

  fcQMatrix_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): bool =

  fcQMatrix_operatorNotEqual(self.h, param1.h)

proc operatorMultiplyAssign*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_operatorMultiplyAssign(self.h, param1.h))

proc operatorMultiply*(self: gen_qmatrix_types.QMatrix, o: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_operatorMultiply(self.h, o.h))

proc ToQVariant*(self: gen_qmatrix_types.QMatrix, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMatrix_ToQVariant(self.h))

proc inverted1*(self: gen_qmatrix_types.QMatrix, invertible: ptr bool): gen_qmatrix_types.QMatrix =

  gen_qmatrix_types.QMatrix(h: fcQMatrix_inverted1(self.h, invertible))

proc delete*(self: gen_qmatrix_types.QMatrix) =
  fcQMatrix_delete(self.h)
