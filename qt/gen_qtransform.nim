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
{.compile("gen_qtransform.cpp", cflags).}


type QTransformTransformationType* = cint
const
  QTransformTxNone* = 0
  QTransformTxTranslate* = 1
  QTransformTxScale* = 2
  QTransformTxRotate* = 4
  QTransformTxShear* = 8
  QTransformTxProject* = 16



import gen_qtransform_types
export gen_qtransform_types

import
  gen_qline,
  gen_qmatrix,
  gen_qnamespace,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qvariant
export
  gen_qline,
  gen_qmatrix,
  gen_qnamespace,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qvariant

type cQTransform*{.exportc: "QTransform", incompleteStruct.} = object

proc fcQTransform_new(param1: cint): ptr cQTransform {.importc: "QTransform_new".}
proc fcQTransform_new2(): ptr cQTransform {.importc: "QTransform_new2".}
proc fcQTransform_new3(h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64): ptr cQTransform {.importc: "QTransform_new3".}
proc fcQTransform_new4(h11: float64, h12: float64, h21: float64, h22: float64, dx: float64, dy: float64): ptr cQTransform {.importc: "QTransform_new4".}
proc fcQTransform_new5(mtx: pointer): ptr cQTransform {.importc: "QTransform_new5".}
proc fcQTransform_new6(other: pointer): ptr cQTransform {.importc: "QTransform_new6".}
proc fcQTransform_new7(h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64, h33: float64): ptr cQTransform {.importc: "QTransform_new7".}
proc fcQTransform_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTransform_operatorAssign".}
proc fcQTransform_isAffine(self: pointer, ): bool {.importc: "QTransform_isAffine".}
proc fcQTransform_isIdentity(self: pointer, ): bool {.importc: "QTransform_isIdentity".}
proc fcQTransform_isInvertible(self: pointer, ): bool {.importc: "QTransform_isInvertible".}
proc fcQTransform_isScaling(self: pointer, ): bool {.importc: "QTransform_isScaling".}
proc fcQTransform_isRotating(self: pointer, ): bool {.importc: "QTransform_isRotating".}
proc fcQTransform_isTranslating(self: pointer, ): bool {.importc: "QTransform_isTranslating".}
proc fcQTransform_typeX(self: pointer, ): cint {.importc: "QTransform_type".}
proc fcQTransform_determinant(self: pointer, ): float64 {.importc: "QTransform_determinant".}
proc fcQTransform_det(self: pointer, ): float64 {.importc: "QTransform_det".}
proc fcQTransform_m11(self: pointer, ): float64 {.importc: "QTransform_m11".}
proc fcQTransform_m12(self: pointer, ): float64 {.importc: "QTransform_m12".}
proc fcQTransform_m13(self: pointer, ): float64 {.importc: "QTransform_m13".}
proc fcQTransform_m21(self: pointer, ): float64 {.importc: "QTransform_m21".}
proc fcQTransform_m22(self: pointer, ): float64 {.importc: "QTransform_m22".}
proc fcQTransform_m23(self: pointer, ): float64 {.importc: "QTransform_m23".}
proc fcQTransform_m31(self: pointer, ): float64 {.importc: "QTransform_m31".}
proc fcQTransform_m32(self: pointer, ): float64 {.importc: "QTransform_m32".}
proc fcQTransform_m33(self: pointer, ): float64 {.importc: "QTransform_m33".}
proc fcQTransform_dx(self: pointer, ): float64 {.importc: "QTransform_dx".}
proc fcQTransform_dy(self: pointer, ): float64 {.importc: "QTransform_dy".}
proc fcQTransform_setMatrix(self: pointer, m11: float64, m12: float64, m13: float64, m21: float64, m22: float64, m23: float64, m31: float64, m32: float64, m33: float64): void {.importc: "QTransform_setMatrix".}
proc fcQTransform_inverted(self: pointer, ): pointer {.importc: "QTransform_inverted".}
proc fcQTransform_adjoint(self: pointer, ): pointer {.importc: "QTransform_adjoint".}
proc fcQTransform_transposed(self: pointer, ): pointer {.importc: "QTransform_transposed".}
proc fcQTransform_translate(self: pointer, dx: float64, dy: float64): pointer {.importc: "QTransform_translate".}
proc fcQTransform_scale(self: pointer, sx: float64, sy: float64): pointer {.importc: "QTransform_scale".}
proc fcQTransform_shear(self: pointer, sh: float64, sv: float64): pointer {.importc: "QTransform_shear".}
proc fcQTransform_rotate(self: pointer, a: float64): pointer {.importc: "QTransform_rotate".}
proc fcQTransform_rotateRadians(self: pointer, a: float64): pointer {.importc: "QTransform_rotateRadians".}
proc fcQTransform_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QTransform_operatorEqual".}
proc fcQTransform_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QTransform_operatorNotEqual".}
proc fcQTransform_operatorMultiplyAssign(self: pointer, param1: pointer): pointer {.importc: "QTransform_operatorMultiplyAssign".}
proc fcQTransform_operatorMultiply(self: pointer, o: pointer): pointer {.importc: "QTransform_operatorMultiply".}
proc fcQTransform_ToQVariant(self: pointer, ): pointer {.importc: "QTransform_ToQVariant".}
proc fcQTransform_reset(self: pointer, ): void {.importc: "QTransform_reset".}
proc fcQTransform_map(self: pointer, p: pointer): pointer {.importc: "QTransform_map".}
proc fcQTransform_mapWithQPointF(self: pointer, p: pointer): pointer {.importc: "QTransform_mapWithQPointF".}
proc fcQTransform_mapWithQLine(self: pointer, l: pointer): pointer {.importc: "QTransform_mapWithQLine".}
proc fcQTransform_mapWithQLineF(self: pointer, l: pointer): pointer {.importc: "QTransform_mapWithQLineF".}
proc fcQTransform_mapWithQRegion(self: pointer, r: pointer): pointer {.importc: "QTransform_mapWithQRegion".}
proc fcQTransform_mapWithQPainterPath(self: pointer, p: pointer): pointer {.importc: "QTransform_mapWithQPainterPath".}
proc fcQTransform_mapRect(self: pointer, param1: pointer): pointer {.importc: "QTransform_mapRect".}
proc fcQTransform_mapRectWithQRectF(self: pointer, param1: pointer): pointer {.importc: "QTransform_mapRectWithQRectF".}
proc fcQTransform_map2(self: pointer, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void {.importc: "QTransform_map2".}
proc fcQTransform_map3(self: pointer, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void {.importc: "QTransform_map3".}
proc fcQTransform_toAffine(self: pointer, ): pointer {.importc: "QTransform_toAffine".}
proc fcQTransform_operatorMultiplyAssignWithDiv(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorMultiplyAssignWithDiv".}
proc fcQTransform_operatorDivideAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorDivideAssign".}
proc fcQTransform_operatorPlusAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorPlusAssign".}
proc fcQTransform_operatorMinusAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorMinusAssign".}
proc fcQTransform_fromTranslate(dx: float64, dy: float64): pointer {.importc: "QTransform_fromTranslate".}
proc fcQTransform_fromScale(dx: float64, dy: float64): pointer {.importc: "QTransform_fromScale".}
proc fcQTransform_inverted1(self: pointer, invertible: ptr bool): pointer {.importc: "QTransform_inverted1".}
proc fcQTransform_rotate2(self: pointer, a: float64, axis: cint): pointer {.importc: "QTransform_rotate2".}
proc fcQTransform_rotateRadians2(self: pointer, a: float64, axis: cint): pointer {.importc: "QTransform_rotateRadians2".}
proc fcQTransform_delete(self: pointer) {.importc: "QTransform_delete".}


func init*(T: type QTransform, h: ptr cQTransform): QTransform =
  T(h: h)
proc create*(T: type QTransform, param1: gen_qnamespace.Initialization): QTransform =

  QTransform.init(fcQTransform_new(cint(param1)))
proc create*(T: type QTransform, ): QTransform =

  QTransform.init(fcQTransform_new2())
proc create*(T: type QTransform, h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64): QTransform =

  QTransform.init(fcQTransform_new3(h11, h12, h13, h21, h22, h23, h31, h32))
proc create*(T: type QTransform, h11: float64, h12: float64, h21: float64, h22: float64, dx: float64, dy: float64): QTransform =

  QTransform.init(fcQTransform_new4(h11, h12, h21, h22, dx, dy))
proc create*(T: type QTransform, mtx: gen_qmatrix.QMatrix): QTransform =

  QTransform.init(fcQTransform_new5(mtx.h))
proc create2*(T: type QTransform, other: QTransform): QTransform =

  QTransform.init(fcQTransform_new6(other.h))
proc create*(T: type QTransform, h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64, h33: float64): QTransform =

  QTransform.init(fcQTransform_new7(h11, h12, h13, h21, h22, h23, h31, h32, h33))
proc operatorAssign*(self: QTransform, param1: QTransform): void =

  fcQTransform_operatorAssign(self.h, param1.h)

proc isAffine*(self: QTransform, ): bool =

  fcQTransform_isAffine(self.h)

proc isIdentity*(self: QTransform, ): bool =

  fcQTransform_isIdentity(self.h)

proc isInvertible*(self: QTransform, ): bool =

  fcQTransform_isInvertible(self.h)

proc isScaling*(self: QTransform, ): bool =

  fcQTransform_isScaling(self.h)

proc isRotating*(self: QTransform, ): bool =

  fcQTransform_isRotating(self.h)

proc isTranslating*(self: QTransform, ): bool =

  fcQTransform_isTranslating(self.h)

proc typeX*(self: QTransform, ): QTransformTransformationType =

  QTransformTransformationType(fcQTransform_typeX(self.h))

proc determinant*(self: QTransform, ): float64 =

  fcQTransform_determinant(self.h)

proc det*(self: QTransform, ): float64 =

  fcQTransform_det(self.h)

proc m11*(self: QTransform, ): float64 =

  fcQTransform_m11(self.h)

proc m12*(self: QTransform, ): float64 =

  fcQTransform_m12(self.h)

proc m13*(self: QTransform, ): float64 =

  fcQTransform_m13(self.h)

proc m21*(self: QTransform, ): float64 =

  fcQTransform_m21(self.h)

proc m22*(self: QTransform, ): float64 =

  fcQTransform_m22(self.h)

proc m23*(self: QTransform, ): float64 =

  fcQTransform_m23(self.h)

proc m31*(self: QTransform, ): float64 =

  fcQTransform_m31(self.h)

proc m32*(self: QTransform, ): float64 =

  fcQTransform_m32(self.h)

proc m33*(self: QTransform, ): float64 =

  fcQTransform_m33(self.h)

proc dx*(self: QTransform, ): float64 =

  fcQTransform_dx(self.h)

proc dy*(self: QTransform, ): float64 =

  fcQTransform_dy(self.h)

proc setMatrix*(self: QTransform, m11: float64, m12: float64, m13: float64, m21: float64, m22: float64, m23: float64, m31: float64, m32: float64, m33: float64): void =

  fcQTransform_setMatrix(self.h, m11, m12, m13, m21, m22, m23, m31, m32, m33)

proc inverted*(self: QTransform, ): QTransform =

  QTransform(h: fcQTransform_inverted(self.h))

proc adjoint*(self: QTransform, ): QTransform =

  QTransform(h: fcQTransform_adjoint(self.h))

proc transposed*(self: QTransform, ): QTransform =

  QTransform(h: fcQTransform_transposed(self.h))

proc translate*(self: QTransform, dx: float64, dy: float64): QTransform =

  QTransform(h: fcQTransform_translate(self.h, dx, dy))

proc scale*(self: QTransform, sx: float64, sy: float64): QTransform =

  QTransform(h: fcQTransform_scale(self.h, sx, sy))

proc shear*(self: QTransform, sh: float64, sv: float64): QTransform =

  QTransform(h: fcQTransform_shear(self.h, sh, sv))

proc rotate*(self: QTransform, a: float64): QTransform =

  QTransform(h: fcQTransform_rotate(self.h, a))

proc rotateRadians*(self: QTransform, a: float64): QTransform =

  QTransform(h: fcQTransform_rotateRadians(self.h, a))

proc operatorEqual*(self: QTransform, param1: QTransform): bool =

  fcQTransform_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: QTransform, param1: QTransform): bool =

  fcQTransform_operatorNotEqual(self.h, param1.h)

proc operatorMultiplyAssign*(self: QTransform, param1: QTransform): QTransform =

  QTransform(h: fcQTransform_operatorMultiplyAssign(self.h, param1.h))

proc operatorMultiply*(self: QTransform, o: QTransform): QTransform =

  QTransform(h: fcQTransform_operatorMultiply(self.h, o.h))

proc ToQVariant*(self: QTransform, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTransform_ToQVariant(self.h))

proc reset*(self: QTransform, ): void =

  fcQTransform_reset(self.h)

proc map*(self: QTransform, p: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQTransform_map(self.h, p.h))

proc mapWithQPointF*(self: QTransform, p: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTransform_mapWithQPointF(self.h, p.h))

proc mapWithQLine*(self: QTransform, l: gen_qline.QLine): gen_qline.QLine =

  gen_qline.QLine(h: fcQTransform_mapWithQLine(self.h, l.h))

proc mapWithQLineF*(self: QTransform, l: gen_qline.QLineF): gen_qline.QLineF =

  gen_qline.QLineF(h: fcQTransform_mapWithQLineF(self.h, l.h))

proc mapWithQRegion*(self: QTransform, r: gen_qregion.QRegion): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQTransform_mapWithQRegion(self.h, r.h))

proc mapWithQPainterPath*(self: QTransform, p: gen_qpainterpath.QPainterPath): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQTransform_mapWithQPainterPath(self.h, p.h))

proc mapRect*(self: QTransform, param1: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTransform_mapRect(self.h, param1.h))

proc mapRectWithQRectF*(self: QTransform, param1: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTransform_mapRectWithQRectF(self.h, param1.h))

proc map2*(self: QTransform, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void =

  fcQTransform_map2(self.h, x, y, tx, ty)

proc map3*(self: QTransform, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void =

  fcQTransform_map3(self.h, x, y, tx, ty)

proc toAffine*(self: QTransform, ): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQTransform_toAffine(self.h))

proc operatorMultiplyAssignWithDiv*(self: QTransform, divVal: float64): QTransform =

  QTransform(h: fcQTransform_operatorMultiplyAssignWithDiv(self.h, divVal))

proc operatorDivideAssign*(self: QTransform, divVal: float64): QTransform =

  QTransform(h: fcQTransform_operatorDivideAssign(self.h, divVal))

proc operatorPlusAssign*(self: QTransform, divVal: float64): QTransform =

  QTransform(h: fcQTransform_operatorPlusAssign(self.h, divVal))

proc operatorMinusAssign*(self: QTransform, divVal: float64): QTransform =

  QTransform(h: fcQTransform_operatorMinusAssign(self.h, divVal))

proc fromTranslate*(_: type QTransform, dx: float64, dy: float64): QTransform =

  QTransform(h: fcQTransform_fromTranslate(dx, dy))

proc fromScale*(_: type QTransform, dx: float64, dy: float64): QTransform =

  QTransform(h: fcQTransform_fromScale(dx, dy))

proc inverted1*(self: QTransform, invertible: ptr bool): QTransform =

  QTransform(h: fcQTransform_inverted1(self.h, invertible))

proc rotate2*(self: QTransform, a: float64, axis: gen_qnamespace.Axis): QTransform =

  QTransform(h: fcQTransform_rotate2(self.h, a, cint(axis)))

proc rotateRadians2*(self: QTransform, a: float64, axis: gen_qnamespace.Axis): QTransform =

  QTransform(h: fcQTransform_rotateRadians2(self.h, a, cint(axis)))

proc delete*(self: QTransform) =
  fcQTransform_delete(self.h)
