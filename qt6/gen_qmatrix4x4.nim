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
{.compile("gen_qmatrix4x4.cpp", cflags).}


type QMatrix4x4Flag* = cint
const
  QMatrix4x4Identity* = 0
  QMatrix4x4Translation* = 1
  QMatrix4x4Scale* = 2
  QMatrix4x4Rotation2D* = 4
  QMatrix4x4Rotation* = 8
  QMatrix4x4Perspective* = 16
  QMatrix4x4General* = 31



import gen_qmatrix4x4_types
export gen_qmatrix4x4_types

import
  gen_qnamespace,
  gen_qpoint,
  gen_qquaternion,
  gen_qrect,
  gen_qtransform,
  gen_qvariant,
  gen_qvectornd
export
  gen_qnamespace,
  gen_qpoint,
  gen_qquaternion,
  gen_qrect,
  gen_qtransform,
  gen_qvariant,
  gen_qvectornd

type cQMatrix4x4*{.exportc: "QMatrix4x4", incompleteStruct.} = object

proc fcQMatrix4x4_new(): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new".}
proc fcQMatrix4x4_new2(param1: cint): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new2".}
proc fcQMatrix4x4_new3(values: ptr float32): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new3".}
proc fcQMatrix4x4_new4(m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new4".}
proc fcQMatrix4x4_new5(values: ptr float32, cols: cint, rows: cint): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new5".}
proc fcQMatrix4x4_new6(transform: pointer): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new6".}
proc fcQMatrix4x4_new7(param1: pointer): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new7".}
proc fcQMatrix4x4_column(self: pointer, index: cint): pointer {.importc: "QMatrix4x4_column".}
proc fcQMatrix4x4_setColumn(self: pointer, index: cint, value: pointer): void {.importc: "QMatrix4x4_setColumn".}
proc fcQMatrix4x4_row(self: pointer, index: cint): pointer {.importc: "QMatrix4x4_row".}
proc fcQMatrix4x4_setRow(self: pointer, index: cint, value: pointer): void {.importc: "QMatrix4x4_setRow".}
proc fcQMatrix4x4_isAffine(self: pointer, ): bool {.importc: "QMatrix4x4_isAffine".}
proc fcQMatrix4x4_isIdentity(self: pointer, ): bool {.importc: "QMatrix4x4_isIdentity".}
proc fcQMatrix4x4_setToIdentity(self: pointer, ): void {.importc: "QMatrix4x4_setToIdentity".}
proc fcQMatrix4x4_fill(self: pointer, value: float32): void {.importc: "QMatrix4x4_fill".}
proc fcQMatrix4x4_determinant(self: pointer, ): float64 {.importc: "QMatrix4x4_determinant".}
proc fcQMatrix4x4_inverted(self: pointer, ): pointer {.importc: "QMatrix4x4_inverted".}
proc fcQMatrix4x4_transposed(self: pointer, ): pointer {.importc: "QMatrix4x4_transposed".}
proc fcQMatrix4x4_operatorPlusAssign(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorPlusAssign".}
proc fcQMatrix4x4_operatorMinusAssign(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorMinusAssign".}
proc fcQMatrix4x4_operatorMultiplyAssign(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorMultiplyAssign".}
proc fcQMatrix4x4_operatorMultiplyAssignWithFactor(self: pointer, factor: float32): pointer {.importc: "QMatrix4x4_operatorMultiplyAssignWithFactor".}
proc fcQMatrix4x4_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QMatrix4x4_operatorDivideAssign".}
proc fcQMatrix4x4_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMatrix4x4_operatorEqual".}
proc fcQMatrix4x4_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMatrix4x4_operatorNotEqual".}
proc fcQMatrix4x4_scale(self: pointer, vector: pointer): void {.importc: "QMatrix4x4_scale".}
proc fcQMatrix4x4_translate(self: pointer, vector: pointer): void {.importc: "QMatrix4x4_translate".}
proc fcQMatrix4x4_rotate(self: pointer, angle: float32, vector: pointer): void {.importc: "QMatrix4x4_rotate".}
proc fcQMatrix4x4_scale2(self: pointer, x: float32, y: float32): void {.importc: "QMatrix4x4_scale2".}
proc fcQMatrix4x4_scale3(self: pointer, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_scale3".}
proc fcQMatrix4x4_scaleWithFactor(self: pointer, factor: float32): void {.importc: "QMatrix4x4_scaleWithFactor".}
proc fcQMatrix4x4_translate2(self: pointer, x: float32, y: float32): void {.importc: "QMatrix4x4_translate2".}
proc fcQMatrix4x4_translate3(self: pointer, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_translate3".}
proc fcQMatrix4x4_rotate2(self: pointer, angle: float32, x: float32, y: float32): void {.importc: "QMatrix4x4_rotate2".}
proc fcQMatrix4x4_rotateWithQuaternion(self: pointer, quaternion: pointer): void {.importc: "QMatrix4x4_rotateWithQuaternion".}
proc fcQMatrix4x4_ortho(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_ortho".}
proc fcQMatrix4x4_orthoWithRect(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_orthoWithRect".}
proc fcQMatrix4x4_ortho2(self: pointer, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_ortho2".}
proc fcQMatrix4x4_frustum(self: pointer, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_frustum".}
proc fcQMatrix4x4_perspective(self: pointer, verticalAngle: float32, aspectRatio: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_perspective".}
proc fcQMatrix4x4_lookAt(self: pointer, eye: pointer, center: pointer, up: pointer): void {.importc: "QMatrix4x4_lookAt".}
proc fcQMatrix4x4_viewport(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_viewport".}
proc fcQMatrix4x4_viewport2(self: pointer, left: float32, bottom: float32, width: float32, height: float32): void {.importc: "QMatrix4x4_viewport2".}
proc fcQMatrix4x4_flipCoordinates(self: pointer, ): void {.importc: "QMatrix4x4_flipCoordinates".}
proc fcQMatrix4x4_copyDataTo(self: pointer, values: ptr float32): void {.importc: "QMatrix4x4_copyDataTo".}
proc fcQMatrix4x4_toTransform(self: pointer, ): pointer {.importc: "QMatrix4x4_toTransform".}
proc fcQMatrix4x4_toTransformWithDistanceToPlane(self: pointer, distanceToPlane: float32): pointer {.importc: "QMatrix4x4_toTransformWithDistanceToPlane".}
proc fcQMatrix4x4_map(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map".}
proc fcQMatrix4x4_mapWithPoint(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_mapWithPoint".}
proc fcQMatrix4x4_map2(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map2".}
proc fcQMatrix4x4_mapVector(self: pointer, vector: pointer): pointer {.importc: "QMatrix4x4_mapVector".}
proc fcQMatrix4x4_map3(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map3".}
proc fcQMatrix4x4_mapRect(self: pointer, rect: pointer): pointer {.importc: "QMatrix4x4_mapRect".}
proc fcQMatrix4x4_mapRectWithRect(self: pointer, rect: pointer): pointer {.importc: "QMatrix4x4_mapRectWithRect".}
proc fcQMatrix4x4_data(self: pointer, ): ptr float32 {.importc: "QMatrix4x4_data".}
proc fcQMatrix4x4_data2(self: pointer, ): ptr float32 {.importc: "QMatrix4x4_data2".}
proc fcQMatrix4x4_constData(self: pointer, ): ptr float32 {.importc: "QMatrix4x4_constData".}
proc fcQMatrix4x4_optimize(self: pointer, ): void {.importc: "QMatrix4x4_optimize".}
proc fcQMatrix4x4_ToQVariant(self: pointer, ): pointer {.importc: "QMatrix4x4_ToQVariant".}
proc fcQMatrix4x4_projectedRotate(self: pointer, angle: float32, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_projectedRotate".}
proc fcQMatrix4x4_flags(self: pointer, ): cint {.importc: "QMatrix4x4_flags".}
proc fcQMatrix4x4_inverted1(self: pointer, invertible: ptr bool): pointer {.importc: "QMatrix4x4_inverted1".}
proc fcQMatrix4x4_rotate4(self: pointer, angle: float32, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_rotate4".}
proc fcQMatrix4x4_viewport5(self: pointer, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32): void {.importc: "QMatrix4x4_viewport5".}
proc fcQMatrix4x4_viewport6(self: pointer, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_viewport6".}
proc fcQMatrix4x4_delete(self: pointer) {.importc: "QMatrix4x4_delete".}


func init*(T: type QMatrix4x4, h: ptr cQMatrix4x4): QMatrix4x4 =
  T(h: h)
proc create*(T: type QMatrix4x4, ): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new())
proc create*(T: type QMatrix4x4, param1: gen_qnamespace.Initialization): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new2(cint(param1)))
proc create*(T: type QMatrix4x4, values: ptr float32): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new3(values))
proc create*(T: type QMatrix4x4, m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new4(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44))
proc create*(T: type QMatrix4x4, values: ptr float32, cols: cint, rows: cint): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new5(values, cols, rows))
proc create*(T: type QMatrix4x4, transform: gen_qtransform.QTransform): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new6(transform.h))
proc create2*(T: type QMatrix4x4, param1: QMatrix4x4): QMatrix4x4 =

  QMatrix4x4.init(fcQMatrix4x4_new7(param1.h))
proc column*(self: QMatrix4x4, index: cint): gen_qvectornd.QVector4D =

  gen_qvectornd.QVector4D(h: fcQMatrix4x4_column(self.h, index))

proc setColumn*(self: QMatrix4x4, index: cint, value: gen_qvectornd.QVector4D): void =

  fcQMatrix4x4_setColumn(self.h, index, value.h)

proc row*(self: QMatrix4x4, index: cint): gen_qvectornd.QVector4D =

  gen_qvectornd.QVector4D(h: fcQMatrix4x4_row(self.h, index))

proc setRow*(self: QMatrix4x4, index: cint, value: gen_qvectornd.QVector4D): void =

  fcQMatrix4x4_setRow(self.h, index, value.h)

proc isAffine*(self: QMatrix4x4, ): bool =

  fcQMatrix4x4_isAffine(self.h)

proc isIdentity*(self: QMatrix4x4, ): bool =

  fcQMatrix4x4_isIdentity(self.h)

proc setToIdentity*(self: QMatrix4x4, ): void =

  fcQMatrix4x4_setToIdentity(self.h)

proc fill*(self: QMatrix4x4, value: float32): void =

  fcQMatrix4x4_fill(self.h, value)

proc determinant*(self: QMatrix4x4, ): float64 =

  fcQMatrix4x4_determinant(self.h)

proc inverted*(self: QMatrix4x4, ): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_inverted(self.h))

proc transposed*(self: QMatrix4x4, ): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_transposed(self.h))

proc operatorPlusAssign*(self: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_operatorPlusAssign(self.h, other.h))

proc operatorMinusAssign*(self: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_operatorMinusAssign(self.h, other.h))

proc operatorMultiplyAssign*(self: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_operatorMultiplyAssign(self.h, other.h))

proc operatorMultiplyAssignWithFactor*(self: QMatrix4x4, factor: float32): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_operatorMultiplyAssignWithFactor(self.h, factor))

proc operatorDivideAssign*(self: QMatrix4x4, divisor: float32): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_operatorDivideAssign(self.h, divisor))

proc operatorEqual*(self: QMatrix4x4, other: QMatrix4x4): bool =

  fcQMatrix4x4_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QMatrix4x4, other: QMatrix4x4): bool =

  fcQMatrix4x4_operatorNotEqual(self.h, other.h)

proc scale*(self: QMatrix4x4, vector: gen_qvectornd.QVector3D): void =

  fcQMatrix4x4_scale(self.h, vector.h)

proc translate*(self: QMatrix4x4, vector: gen_qvectornd.QVector3D): void =

  fcQMatrix4x4_translate(self.h, vector.h)

proc rotate*(self: QMatrix4x4, angle: float32, vector: gen_qvectornd.QVector3D): void =

  fcQMatrix4x4_rotate(self.h, angle, vector.h)

proc scale2*(self: QMatrix4x4, x: float32, y: float32): void =

  fcQMatrix4x4_scale2(self.h, x, y)

proc scale3*(self: QMatrix4x4, x: float32, y: float32, z: float32): void =

  fcQMatrix4x4_scale3(self.h, x, y, z)

proc scaleWithFactor*(self: QMatrix4x4, factor: float32): void =

  fcQMatrix4x4_scaleWithFactor(self.h, factor)

proc translate2*(self: QMatrix4x4, x: float32, y: float32): void =

  fcQMatrix4x4_translate2(self.h, x, y)

proc translate3*(self: QMatrix4x4, x: float32, y: float32, z: float32): void =

  fcQMatrix4x4_translate3(self.h, x, y, z)

proc rotate2*(self: QMatrix4x4, angle: float32, x: float32, y: float32): void =

  fcQMatrix4x4_rotate2(self.h, angle, x, y)

proc rotateWithQuaternion*(self: QMatrix4x4, quaternion: gen_qquaternion.QQuaternion): void =

  fcQMatrix4x4_rotateWithQuaternion(self.h, quaternion.h)

proc ortho*(self: QMatrix4x4, rect: gen_qrect.QRect): void =

  fcQMatrix4x4_ortho(self.h, rect.h)

proc orthoWithRect*(self: QMatrix4x4, rect: gen_qrect.QRectF): void =

  fcQMatrix4x4_orthoWithRect(self.h, rect.h)

proc ortho2*(self: QMatrix4x4, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void =

  fcQMatrix4x4_ortho2(self.h, left, right, bottom, top, nearPlane, farPlane)

proc frustum*(self: QMatrix4x4, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void =

  fcQMatrix4x4_frustum(self.h, left, right, bottom, top, nearPlane, farPlane)

proc perspective*(self: QMatrix4x4, verticalAngle: float32, aspectRatio: float32, nearPlane: float32, farPlane: float32): void =

  fcQMatrix4x4_perspective(self.h, verticalAngle, aspectRatio, nearPlane, farPlane)

proc lookAt*(self: QMatrix4x4, eye: gen_qvectornd.QVector3D, center: gen_qvectornd.QVector3D, up: gen_qvectornd.QVector3D): void =

  fcQMatrix4x4_lookAt(self.h, eye.h, center.h, up.h)

proc viewport*(self: QMatrix4x4, rect: gen_qrect.QRectF): void =

  fcQMatrix4x4_viewport(self.h, rect.h)

proc viewport2*(self: QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32): void =

  fcQMatrix4x4_viewport2(self.h, left, bottom, width, height)

proc flipCoordinates*(self: QMatrix4x4, ): void =

  fcQMatrix4x4_flipCoordinates(self.h)

proc copyDataTo*(self: QMatrix4x4, values: ptr float32): void =

  fcQMatrix4x4_copyDataTo(self.h, values)

proc toTransform*(self: QMatrix4x4, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQMatrix4x4_toTransform(self.h))

proc toTransformWithDistanceToPlane*(self: QMatrix4x4, distanceToPlane: float32): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQMatrix4x4_toTransformWithDistanceToPlane(self.h, distanceToPlane))

proc map*(self: QMatrix4x4, point: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMatrix4x4_map(self.h, point.h))

proc mapWithPoint*(self: QMatrix4x4, point: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQMatrix4x4_mapWithPoint(self.h, point.h))

proc map2*(self: QMatrix4x4, point: gen_qvectornd.QVector3D): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQMatrix4x4_map2(self.h, point.h))

proc mapVector*(self: QMatrix4x4, vector: gen_qvectornd.QVector3D): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQMatrix4x4_mapVector(self.h, vector.h))

proc map3*(self: QMatrix4x4, point: gen_qvectornd.QVector4D): gen_qvectornd.QVector4D =

  gen_qvectornd.QVector4D(h: fcQMatrix4x4_map3(self.h, point.h))

proc mapRect*(self: QMatrix4x4, rect: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQMatrix4x4_mapRect(self.h, rect.h))

proc mapRectWithRect*(self: QMatrix4x4, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQMatrix4x4_mapRectWithRect(self.h, rect.h))

proc data*(self: QMatrix4x4, ): ptr float32 =

  fcQMatrix4x4_data(self.h)

proc data2*(self: QMatrix4x4, ): ptr float32 =

  fcQMatrix4x4_data2(self.h)

proc constData*(self: QMatrix4x4, ): ptr float32 =

  fcQMatrix4x4_constData(self.h)

proc optimize*(self: QMatrix4x4, ): void =

  fcQMatrix4x4_optimize(self.h)

proc ToQVariant*(self: QMatrix4x4, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMatrix4x4_ToQVariant(self.h))

proc projectedRotate*(self: QMatrix4x4, angle: float32, x: float32, y: float32, z: float32): void =

  fcQMatrix4x4_projectedRotate(self.h, angle, x, y, z)

proc flags*(self: QMatrix4x4, ): QMatrix4x4Flag =

  QMatrix4x4Flag(fcQMatrix4x4_flags(self.h))

proc inverted1*(self: QMatrix4x4, invertible: ptr bool): QMatrix4x4 =

  QMatrix4x4(h: fcQMatrix4x4_inverted1(self.h, invertible))

proc rotate4*(self: QMatrix4x4, angle: float32, x: float32, y: float32, z: float32): void =

  fcQMatrix4x4_rotate4(self.h, angle, x, y, z)

proc viewport5*(self: QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32): void =

  fcQMatrix4x4_viewport5(self.h, left, bottom, width, height, nearPlane)

proc viewport6*(self: QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32, farPlane: float32): void =

  fcQMatrix4x4_viewport6(self.h, left, bottom, width, height, nearPlane, farPlane)

proc delete*(self: QMatrix4x4) =
  fcQMatrix4x4_delete(self.h)
