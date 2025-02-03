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
{.compile("gen_qpoint.cpp", cflags).}


import gen_qpoint_types
export gen_qpoint_types


type cQPoint*{.exportc: "QPoint", incompleteStruct.} = object
type cQPointF*{.exportc: "QPointF", incompleteStruct.} = object

proc fcQPoint_new(): ptr cQPoint {.importc: "QPoint_new".}
proc fcQPoint_new2(xpos: cint, ypos: cint): ptr cQPoint {.importc: "QPoint_new2".}
proc fcQPoint_new3(param1: pointer): ptr cQPoint {.importc: "QPoint_new3".}
proc fcQPoint_isNull(self: pointer, ): bool {.importc: "QPoint_isNull".}
proc fcQPoint_x(self: pointer, ): cint {.importc: "QPoint_x".}
proc fcQPoint_y(self: pointer, ): cint {.importc: "QPoint_y".}
proc fcQPoint_setX(self: pointer, x: cint): void {.importc: "QPoint_setX".}
proc fcQPoint_setY(self: pointer, y: cint): void {.importc: "QPoint_setY".}
proc fcQPoint_manhattanLength(self: pointer, ): cint {.importc: "QPoint_manhattanLength".}
proc fcQPoint_transposed(self: pointer, ): pointer {.importc: "QPoint_transposed".}
proc fcQPoint_operatorPlusAssign(self: pointer, p: pointer): pointer {.importc: "QPoint_operatorPlusAssign".}
proc fcQPoint_operatorMinusAssign(self: pointer, p: pointer): pointer {.importc: "QPoint_operatorMinusAssign".}
proc fcQPoint_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QPoint_operatorMultiplyAssign".}
proc fcQPoint_operatorMultiplyAssignWithFactor(self: pointer, factor: float64): pointer {.importc: "QPoint_operatorMultiplyAssignWithFactor".}
proc fcQPoint_operatorMultiplyAssign2(self: pointer, factor: cint): pointer {.importc: "QPoint_operatorMultiplyAssign2".}
proc fcQPoint_operatorDivideAssign(self: pointer, divisor: float64): pointer {.importc: "QPoint_operatorDivideAssign".}
proc fcQPoint_dotProduct(p1: pointer, p2: pointer): cint {.importc: "QPoint_dotProduct".}
proc fcQPoint_delete(self: pointer) {.importc: "QPoint_delete".}
proc fcQPointF_new(): ptr cQPointF {.importc: "QPointF_new".}
proc fcQPointF_new2(p: pointer): ptr cQPointF {.importc: "QPointF_new2".}
proc fcQPointF_new3(xpos: float64, ypos: float64): ptr cQPointF {.importc: "QPointF_new3".}
proc fcQPointF_new4(param1: pointer): ptr cQPointF {.importc: "QPointF_new4".}
proc fcQPointF_manhattanLength(self: pointer, ): float64 {.importc: "QPointF_manhattanLength".}
proc fcQPointF_isNull(self: pointer, ): bool {.importc: "QPointF_isNull".}
proc fcQPointF_x(self: pointer, ): float64 {.importc: "QPointF_x".}
proc fcQPointF_y(self: pointer, ): float64 {.importc: "QPointF_y".}
proc fcQPointF_setX(self: pointer, x: float64): void {.importc: "QPointF_setX".}
proc fcQPointF_setY(self: pointer, y: float64): void {.importc: "QPointF_setY".}
proc fcQPointF_transposed(self: pointer, ): pointer {.importc: "QPointF_transposed".}
proc fcQPointF_operatorPlusAssign(self: pointer, p: pointer): pointer {.importc: "QPointF_operatorPlusAssign".}
proc fcQPointF_operatorMinusAssign(self: pointer, p: pointer): pointer {.importc: "QPointF_operatorMinusAssign".}
proc fcQPointF_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QPointF_operatorMultiplyAssign".}
proc fcQPointF_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QPointF_operatorDivideAssign".}
proc fcQPointF_dotProduct(p1: pointer, p2: pointer): float64 {.importc: "QPointF_dotProduct".}
proc fcQPointF_toPoint(self: pointer, ): pointer {.importc: "QPointF_toPoint".}
proc fcQPointF_delete(self: pointer) {.importc: "QPointF_delete".}


func init*(T: type QPoint, h: ptr cQPoint): QPoint =
  T(h: h)
proc create*(T: type QPoint, ): QPoint =

  QPoint.init(fcQPoint_new())
proc create*(T: type QPoint, xpos: cint, ypos: cint): QPoint =

  QPoint.init(fcQPoint_new2(xpos, ypos))
proc create*(T: type QPoint, param1: QPoint): QPoint =

  QPoint.init(fcQPoint_new3(param1.h))
proc isNull*(self: QPoint, ): bool =

  fcQPoint_isNull(self.h)

proc x*(self: QPoint, ): cint =

  fcQPoint_x(self.h)

proc y*(self: QPoint, ): cint =

  fcQPoint_y(self.h)

proc setX*(self: QPoint, x: cint): void =

  fcQPoint_setX(self.h, x)

proc setY*(self: QPoint, y: cint): void =

  fcQPoint_setY(self.h, y)

proc manhattanLength*(self: QPoint, ): cint =

  fcQPoint_manhattanLength(self.h)

proc transposed*(self: QPoint, ): QPoint =

  QPoint(h: fcQPoint_transposed(self.h))

proc operatorPlusAssign*(self: QPoint, p: QPoint): QPoint =

  QPoint(h: fcQPoint_operatorPlusAssign(self.h, p.h))

proc operatorMinusAssign*(self: QPoint, p: QPoint): QPoint =

  QPoint(h: fcQPoint_operatorMinusAssign(self.h, p.h))

proc operatorMultiplyAssign*(self: QPoint, factor: float32): QPoint =

  QPoint(h: fcQPoint_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssignWithFactor*(self: QPoint, factor: float64): QPoint =

  QPoint(h: fcQPoint_operatorMultiplyAssignWithFactor(self.h, factor))

proc operatorMultiplyAssign2*(self: QPoint, factor: cint): QPoint =

  QPoint(h: fcQPoint_operatorMultiplyAssign2(self.h, factor))

proc operatorDivideAssign*(self: QPoint, divisor: float64): QPoint =

  QPoint(h: fcQPoint_operatorDivideAssign(self.h, divisor))

proc dotProduct*(_: type QPoint, p1: QPoint, p2: QPoint): cint =

  fcQPoint_dotProduct(p1.h, p2.h)

proc delete*(self: QPoint) =
  fcQPoint_delete(self.h)

func init*(T: type QPointF, h: ptr cQPointF): QPointF =
  T(h: h)
proc create*(T: type QPointF, ): QPointF =

  QPointF.init(fcQPointF_new())
proc create*(T: type QPointF, p: QPoint): QPointF =

  QPointF.init(fcQPointF_new2(p.h))
proc create*(T: type QPointF, xpos: float64, ypos: float64): QPointF =

  QPointF.init(fcQPointF_new3(xpos, ypos))
proc create2*(T: type QPointF, param1: QPointF): QPointF =

  QPointF.init(fcQPointF_new4(param1.h))
proc manhattanLength*(self: QPointF, ): float64 =

  fcQPointF_manhattanLength(self.h)

proc isNull*(self: QPointF, ): bool =

  fcQPointF_isNull(self.h)

proc x*(self: QPointF, ): float64 =

  fcQPointF_x(self.h)

proc y*(self: QPointF, ): float64 =

  fcQPointF_y(self.h)

proc setX*(self: QPointF, x: float64): void =

  fcQPointF_setX(self.h, x)

proc setY*(self: QPointF, y: float64): void =

  fcQPointF_setY(self.h, y)

proc transposed*(self: QPointF, ): QPointF =

  QPointF(h: fcQPointF_transposed(self.h))

proc operatorPlusAssign*(self: QPointF, p: QPointF): QPointF =

  QPointF(h: fcQPointF_operatorPlusAssign(self.h, p.h))

proc operatorMinusAssign*(self: QPointF, p: QPointF): QPointF =

  QPointF(h: fcQPointF_operatorMinusAssign(self.h, p.h))

proc operatorMultiplyAssign*(self: QPointF, c: float64): QPointF =

  QPointF(h: fcQPointF_operatorMultiplyAssign(self.h, c))

proc operatorDivideAssign*(self: QPointF, c: float64): QPointF =

  QPointF(h: fcQPointF_operatorDivideAssign(self.h, c))

proc dotProduct*(_: type QPointF, p1: QPointF, p2: QPointF): float64 =

  fcQPointF_dotProduct(p1.h, p2.h)

proc toPoint*(self: QPointF, ): QPoint =

  QPoint(h: fcQPointF_toPoint(self.h))

proc delete*(self: QPointF) =
  fcQPointF_delete(self.h)
