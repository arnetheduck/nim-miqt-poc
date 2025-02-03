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
{.compile("gen_qvector2d.cpp", cflags).}


import gen_qvector2d_types
export gen_qvector2d_types

import
  gen_qnamespace,
  gen_qpoint,
  gen_qvariant,
  gen_qvector3d,
  gen_qvector4d
export
  gen_qnamespace,
  gen_qpoint,
  gen_qvariant,
  gen_qvector3d,
  gen_qvector4d

type cQVector2D*{.exportc: "QVector2D", incompleteStruct.} = object

proc fcQVector2D_new(): ptr cQVector2D {.importc: "QVector2D_new".}
proc fcQVector2D_new2(param1: cint): ptr cQVector2D {.importc: "QVector2D_new2".}
proc fcQVector2D_new3(xpos: float32, ypos: float32): ptr cQVector2D {.importc: "QVector2D_new3".}
proc fcQVector2D_new4(point: pointer): ptr cQVector2D {.importc: "QVector2D_new4".}
proc fcQVector2D_new5(point: pointer): ptr cQVector2D {.importc: "QVector2D_new5".}
proc fcQVector2D_new6(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new6".}
proc fcQVector2D_new7(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new7".}
proc fcQVector2D_new8(param1: pointer): ptr cQVector2D {.importc: "QVector2D_new8".}
proc fcQVector2D_isNull(self: pointer, ): bool {.importc: "QVector2D_isNull".}
proc fcQVector2D_x(self: pointer, ): float32 {.importc: "QVector2D_x".}
proc fcQVector2D_y(self: pointer, ): float32 {.importc: "QVector2D_y".}
proc fcQVector2D_setX(self: pointer, x: float32): void {.importc: "QVector2D_setX".}
proc fcQVector2D_setY(self: pointer, y: float32): void {.importc: "QVector2D_setY".}
proc fcQVector2D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector2D_operatorSubscript".}
proc fcQVector2D_length(self: pointer, ): float32 {.importc: "QVector2D_length".}
proc fcQVector2D_lengthSquared(self: pointer, ): float32 {.importc: "QVector2D_lengthSquared".}
proc fcQVector2D_normalized(self: pointer, ): pointer {.importc: "QVector2D_normalized".}
proc fcQVector2D_normalize(self: pointer, ): void {.importc: "QVector2D_normalize".}
proc fcQVector2D_distanceToPoint(self: pointer, point: pointer): float32 {.importc: "QVector2D_distanceToPoint".}
proc fcQVector2D_distanceToLine(self: pointer, point: pointer, direction: pointer): float32 {.importc: "QVector2D_distanceToLine".}
proc fcQVector2D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorPlusAssign".}
proc fcQVector2D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMinusAssign".}
proc fcQVector2D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector2D_operatorMultiplyAssign".}
proc fcQVector2D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMultiplyAssignWithVector".}
proc fcQVector2D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector2D_operatorDivideAssign".}
proc fcQVector2D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorDivideAssignWithVector".}
proc fcQVector2D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector2D_dotProduct".}
proc fcQVector2D_toVector3D(self: pointer, ): pointer {.importc: "QVector2D_toVector3D".}
proc fcQVector2D_toVector4D(self: pointer, ): pointer {.importc: "QVector2D_toVector4D".}
proc fcQVector2D_toPoint(self: pointer, ): pointer {.importc: "QVector2D_toPoint".}
proc fcQVector2D_toPointF(self: pointer, ): pointer {.importc: "QVector2D_toPointF".}
proc fcQVector2D_ToQVariant(self: pointer, ): pointer {.importc: "QVector2D_ToQVariant".}
proc fcQVector2D_delete(self: pointer) {.importc: "QVector2D_delete".}


func init*(T: type QVector2D, h: ptr cQVector2D): QVector2D =
  T(h: h)
proc create*(T: type QVector2D, ): QVector2D =

  QVector2D.init(fcQVector2D_new())
proc create*(T: type QVector2D, param1: gen_qnamespace.Initialization): QVector2D =

  QVector2D.init(fcQVector2D_new2(cint(param1)))
proc create*(T: type QVector2D, xpos: float32, ypos: float32): QVector2D =

  QVector2D.init(fcQVector2D_new3(xpos, ypos))
proc create*(T: type QVector2D, point: gen_qpoint.QPoint): QVector2D =

  QVector2D.init(fcQVector2D_new4(point.h))
proc create2*(T: type QVector2D, point: gen_qpoint.QPointF): QVector2D =

  QVector2D.init(fcQVector2D_new5(point.h))
proc create2*(T: type QVector2D, vector: gen_qvector3d.QVector3D): QVector2D =

  QVector2D.init(fcQVector2D_new6(vector.h))
proc create2*(T: type QVector2D, vector: gen_qvector4d.QVector4D): QVector2D =

  QVector2D.init(fcQVector2D_new7(vector.h))
proc create2*(T: type QVector2D, param1: QVector2D): QVector2D =

  QVector2D.init(fcQVector2D_new8(param1.h))
proc isNull*(self: QVector2D, ): bool =

  fcQVector2D_isNull(self.h)

proc x*(self: QVector2D, ): float32 =

  fcQVector2D_x(self.h)

proc y*(self: QVector2D, ): float32 =

  fcQVector2D_y(self.h)

proc setX*(self: QVector2D, x: float32): void =

  fcQVector2D_setX(self.h, x)

proc setY*(self: QVector2D, y: float32): void =

  fcQVector2D_setY(self.h, y)

proc operatorSubscript*(self: QVector2D, i: cint): float32 =

  fcQVector2D_operatorSubscript(self.h, i)

proc length*(self: QVector2D, ): float32 =

  fcQVector2D_length(self.h)

proc lengthSquared*(self: QVector2D, ): float32 =

  fcQVector2D_lengthSquared(self.h)

proc normalized*(self: QVector2D, ): QVector2D =

  QVector2D(h: fcQVector2D_normalized(self.h))

proc normalize*(self: QVector2D, ): void =

  fcQVector2D_normalize(self.h)

proc distanceToPoint*(self: QVector2D, point: QVector2D): float32 =

  fcQVector2D_distanceToPoint(self.h, point.h)

proc distanceToLine*(self: QVector2D, point: QVector2D, direction: QVector2D): float32 =

  fcQVector2D_distanceToLine(self.h, point.h, direction.h)

proc operatorPlusAssign*(self: QVector2D, vector: QVector2D): QVector2D =

  QVector2D(h: fcQVector2D_operatorPlusAssign(self.h, vector.h))

proc operatorMinusAssign*(self: QVector2D, vector: QVector2D): QVector2D =

  QVector2D(h: fcQVector2D_operatorMinusAssign(self.h, vector.h))

proc operatorMultiplyAssign*(self: QVector2D, factor: float32): QVector2D =

  QVector2D(h: fcQVector2D_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssignWithVector*(self: QVector2D, vector: QVector2D): QVector2D =

  QVector2D(h: fcQVector2D_operatorMultiplyAssignWithVector(self.h, vector.h))

proc operatorDivideAssign*(self: QVector2D, divisor: float32): QVector2D =

  QVector2D(h: fcQVector2D_operatorDivideAssign(self.h, divisor))

proc operatorDivideAssignWithVector*(self: QVector2D, vector: QVector2D): QVector2D =

  QVector2D(h: fcQVector2D_operatorDivideAssignWithVector(self.h, vector.h))

proc dotProduct*(_: type QVector2D, v1: QVector2D, v2: QVector2D): float32 =

  fcQVector2D_dotProduct(v1.h, v2.h)

proc toVector3D*(self: QVector2D, ): gen_qvector3d.QVector3D =

  gen_qvector3d.QVector3D(h: fcQVector2D_toVector3D(self.h))

proc toVector4D*(self: QVector2D, ): gen_qvector4d.QVector4D =

  gen_qvector4d.QVector4D(h: fcQVector2D_toVector4D(self.h))

proc toPoint*(self: QVector2D, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQVector2D_toPoint(self.h))

proc toPointF*(self: QVector2D, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQVector2D_toPointF(self.h))

proc ToQVariant*(self: QVector2D, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVector2D_ToQVariant(self.h))

proc delete*(self: QVector2D) =
  fcQVector2D_delete(self.h)
