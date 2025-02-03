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
{.compile("gen_qvector3d.cpp", cflags).}


import gen_qvector3d_types
export gen_qvector3d_types

import
  gen_qmatrix4x4,
  gen_qnamespace,
  gen_qpoint,
  gen_qrect,
  gen_qvariant,
  gen_qvector2d,
  gen_qvector4d
export
  gen_qmatrix4x4,
  gen_qnamespace,
  gen_qpoint,
  gen_qrect,
  gen_qvariant,
  gen_qvector2d,
  gen_qvector4d

type cQVector3D*{.exportc: "QVector3D", incompleteStruct.} = object

proc fcQVector3D_new(): ptr cQVector3D {.importc: "QVector3D_new".}
proc fcQVector3D_new2(param1: cint): ptr cQVector3D {.importc: "QVector3D_new2".}
proc fcQVector3D_new3(xpos: float32, ypos: float32, zpos: float32): ptr cQVector3D {.importc: "QVector3D_new3".}
proc fcQVector3D_new4(point: pointer): ptr cQVector3D {.importc: "QVector3D_new4".}
proc fcQVector3D_new5(point: pointer): ptr cQVector3D {.importc: "QVector3D_new5".}
proc fcQVector3D_new6(vector: pointer): ptr cQVector3D {.importc: "QVector3D_new6".}
proc fcQVector3D_new7(vector: pointer, zpos: float32): ptr cQVector3D {.importc: "QVector3D_new7".}
proc fcQVector3D_new8(vector: pointer): ptr cQVector3D {.importc: "QVector3D_new8".}
proc fcQVector3D_new9(param1: pointer): ptr cQVector3D {.importc: "QVector3D_new9".}
proc fcQVector3D_isNull(self: pointer, ): bool {.importc: "QVector3D_isNull".}
proc fcQVector3D_x(self: pointer, ): float32 {.importc: "QVector3D_x".}
proc fcQVector3D_y(self: pointer, ): float32 {.importc: "QVector3D_y".}
proc fcQVector3D_z(self: pointer, ): float32 {.importc: "QVector3D_z".}
proc fcQVector3D_setX(self: pointer, x: float32): void {.importc: "QVector3D_setX".}
proc fcQVector3D_setY(self: pointer, y: float32): void {.importc: "QVector3D_setY".}
proc fcQVector3D_setZ(self: pointer, z: float32): void {.importc: "QVector3D_setZ".}
proc fcQVector3D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector3D_operatorSubscript".}
proc fcQVector3D_length(self: pointer, ): float32 {.importc: "QVector3D_length".}
proc fcQVector3D_lengthSquared(self: pointer, ): float32 {.importc: "QVector3D_lengthSquared".}
proc fcQVector3D_normalized(self: pointer, ): pointer {.importc: "QVector3D_normalized".}
proc fcQVector3D_normalize(self: pointer, ): void {.importc: "QVector3D_normalize".}
proc fcQVector3D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorPlusAssign".}
proc fcQVector3D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorMinusAssign".}
proc fcQVector3D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector3D_operatorMultiplyAssign".}
proc fcQVector3D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorMultiplyAssignWithVector".}
proc fcQVector3D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector3D_operatorDivideAssign".}
proc fcQVector3D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorDivideAssignWithVector".}
proc fcQVector3D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector3D_dotProduct".}
proc fcQVector3D_crossProduct(v1: pointer, v2: pointer): pointer {.importc: "QVector3D_crossProduct".}
proc fcQVector3D_normal(v1: pointer, v2: pointer): pointer {.importc: "QVector3D_normal".}
proc fcQVector3D_normal2(v1: pointer, v2: pointer, v3: pointer): pointer {.importc: "QVector3D_normal2".}
proc fcQVector3D_project(self: pointer, modelView: pointer, projection: pointer, viewport: pointer): pointer {.importc: "QVector3D_project".}
proc fcQVector3D_unproject(self: pointer, modelView: pointer, projection: pointer, viewport: pointer): pointer {.importc: "QVector3D_unproject".}
proc fcQVector3D_distanceToPoint(self: pointer, point: pointer): float32 {.importc: "QVector3D_distanceToPoint".}
proc fcQVector3D_distanceToPlane(self: pointer, plane: pointer, normal: pointer): float32 {.importc: "QVector3D_distanceToPlane".}
proc fcQVector3D_distanceToPlane2(self: pointer, plane1: pointer, plane2: pointer, plane3: pointer): float32 {.importc: "QVector3D_distanceToPlane2".}
proc fcQVector3D_distanceToLine(self: pointer, point: pointer, direction: pointer): float32 {.importc: "QVector3D_distanceToLine".}
proc fcQVector3D_toVector2D(self: pointer, ): pointer {.importc: "QVector3D_toVector2D".}
proc fcQVector3D_toVector4D(self: pointer, ): pointer {.importc: "QVector3D_toVector4D".}
proc fcQVector3D_toPoint(self: pointer, ): pointer {.importc: "QVector3D_toPoint".}
proc fcQVector3D_toPointF(self: pointer, ): pointer {.importc: "QVector3D_toPointF".}
proc fcQVector3D_ToQVariant(self: pointer, ): pointer {.importc: "QVector3D_ToQVariant".}
proc fcQVector3D_delete(self: pointer) {.importc: "QVector3D_delete".}


func init*(T: type QVector3D, h: ptr cQVector3D): QVector3D =
  T(h: h)
proc create*(T: type QVector3D, ): QVector3D =

  QVector3D.init(fcQVector3D_new())
proc create*(T: type QVector3D, param1: gen_qnamespace.Initialization): QVector3D =

  QVector3D.init(fcQVector3D_new2(cint(param1)))
proc create*(T: type QVector3D, xpos: float32, ypos: float32, zpos: float32): QVector3D =

  QVector3D.init(fcQVector3D_new3(xpos, ypos, zpos))
proc create*(T: type QVector3D, point: gen_qpoint.QPoint): QVector3D =

  QVector3D.init(fcQVector3D_new4(point.h))
proc create2*(T: type QVector3D, point: gen_qpoint.QPointF): QVector3D =

  QVector3D.init(fcQVector3D_new5(point.h))
proc create2*(T: type QVector3D, vector: gen_qvector2d.QVector2D): QVector3D =

  QVector3D.init(fcQVector3D_new6(vector.h))
proc create*(T: type QVector3D, vector: gen_qvector2d.QVector2D, zpos: float32): QVector3D =

  QVector3D.init(fcQVector3D_new7(vector.h, zpos))
proc create2*(T: type QVector3D, vector: gen_qvector4d.QVector4D): QVector3D =

  QVector3D.init(fcQVector3D_new8(vector.h))
proc create2*(T: type QVector3D, param1: QVector3D): QVector3D =

  QVector3D.init(fcQVector3D_new9(param1.h))
proc isNull*(self: QVector3D, ): bool =

  fcQVector3D_isNull(self.h)

proc x*(self: QVector3D, ): float32 =

  fcQVector3D_x(self.h)

proc y*(self: QVector3D, ): float32 =

  fcQVector3D_y(self.h)

proc z*(self: QVector3D, ): float32 =

  fcQVector3D_z(self.h)

proc setX*(self: QVector3D, x: float32): void =

  fcQVector3D_setX(self.h, x)

proc setY*(self: QVector3D, y: float32): void =

  fcQVector3D_setY(self.h, y)

proc setZ*(self: QVector3D, z: float32): void =

  fcQVector3D_setZ(self.h, z)

proc operatorSubscript*(self: QVector3D, i: cint): float32 =

  fcQVector3D_operatorSubscript(self.h, i)

proc length*(self: QVector3D, ): float32 =

  fcQVector3D_length(self.h)

proc lengthSquared*(self: QVector3D, ): float32 =

  fcQVector3D_lengthSquared(self.h)

proc normalized*(self: QVector3D, ): QVector3D =

  QVector3D(h: fcQVector3D_normalized(self.h))

proc normalize*(self: QVector3D, ): void =

  fcQVector3D_normalize(self.h)

proc operatorPlusAssign*(self: QVector3D, vector: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_operatorPlusAssign(self.h, vector.h))

proc operatorMinusAssign*(self: QVector3D, vector: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_operatorMinusAssign(self.h, vector.h))

proc operatorMultiplyAssign*(self: QVector3D, factor: float32): QVector3D =

  QVector3D(h: fcQVector3D_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssignWithVector*(self: QVector3D, vector: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_operatorMultiplyAssignWithVector(self.h, vector.h))

proc operatorDivideAssign*(self: QVector3D, divisor: float32): QVector3D =

  QVector3D(h: fcQVector3D_operatorDivideAssign(self.h, divisor))

proc operatorDivideAssignWithVector*(self: QVector3D, vector: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_operatorDivideAssignWithVector(self.h, vector.h))

proc dotProduct*(_: type QVector3D, v1: QVector3D, v2: QVector3D): float32 =

  fcQVector3D_dotProduct(v1.h, v2.h)

proc crossProduct*(_: type QVector3D, v1: QVector3D, v2: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_crossProduct(v1.h, v2.h))

proc normal*(_: type QVector3D, v1: QVector3D, v2: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_normal(v1.h, v2.h))

proc normal2*(_: type QVector3D, v1: QVector3D, v2: QVector3D, v3: QVector3D): QVector3D =

  QVector3D(h: fcQVector3D_normal2(v1.h, v2.h, v3.h))

proc project*(self: QVector3D, modelView: gen_qmatrix4x4.QMatrix4x4, projection: gen_qmatrix4x4.QMatrix4x4, viewport: gen_qrect.QRect): QVector3D =

  QVector3D(h: fcQVector3D_project(self.h, modelView.h, projection.h, viewport.h))

proc unproject*(self: QVector3D, modelView: gen_qmatrix4x4.QMatrix4x4, projection: gen_qmatrix4x4.QMatrix4x4, viewport: gen_qrect.QRect): QVector3D =

  QVector3D(h: fcQVector3D_unproject(self.h, modelView.h, projection.h, viewport.h))

proc distanceToPoint*(self: QVector3D, point: QVector3D): float32 =

  fcQVector3D_distanceToPoint(self.h, point.h)

proc distanceToPlane*(self: QVector3D, plane: QVector3D, normal: QVector3D): float32 =

  fcQVector3D_distanceToPlane(self.h, plane.h, normal.h)

proc distanceToPlane2*(self: QVector3D, plane1: QVector3D, plane2: QVector3D, plane3: QVector3D): float32 =

  fcQVector3D_distanceToPlane2(self.h, plane1.h, plane2.h, plane3.h)

proc distanceToLine*(self: QVector3D, point: QVector3D, direction: QVector3D): float32 =

  fcQVector3D_distanceToLine(self.h, point.h, direction.h)

proc toVector2D*(self: QVector3D, ): gen_qvector2d.QVector2D =

  gen_qvector2d.QVector2D(h: fcQVector3D_toVector2D(self.h))

proc toVector4D*(self: QVector3D, ): gen_qvector4d.QVector4D =

  gen_qvector4d.QVector4D(h: fcQVector3D_toVector4D(self.h))

proc toPoint*(self: QVector3D, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQVector3D_toPoint(self.h))

proc toPointF*(self: QVector3D, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQVector3D_toPointF(self.h))

proc ToQVariant*(self: QVector3D, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVector3D_ToQVariant(self.h))

proc delete*(self: QVector3D) =
  fcQVector3D_delete(self.h)
