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
{.compile("gen_qmargins.cpp", cflags).}


import gen_qmargins_types
export gen_qmargins_types


type cQMargins*{.exportc: "QMargins", incompleteStruct.} = object
type cQMarginsF*{.exportc: "QMarginsF", incompleteStruct.} = object

proc fcQMargins_new(): ptr cQMargins {.importc: "QMargins_new".}
proc fcQMargins_new2(left: cint, top: cint, right: cint, bottom: cint): ptr cQMargins {.importc: "QMargins_new2".}
proc fcQMargins_new3(param1: pointer): ptr cQMargins {.importc: "QMargins_new3".}
proc fcQMargins_isNull(self: pointer, ): bool {.importc: "QMargins_isNull".}
proc fcQMargins_left(self: pointer, ): cint {.importc: "QMargins_left".}
proc fcQMargins_top(self: pointer, ): cint {.importc: "QMargins_top".}
proc fcQMargins_right(self: pointer, ): cint {.importc: "QMargins_right".}
proc fcQMargins_bottom(self: pointer, ): cint {.importc: "QMargins_bottom".}
proc fcQMargins_setLeft(self: pointer, left: cint): void {.importc: "QMargins_setLeft".}
proc fcQMargins_setTop(self: pointer, top: cint): void {.importc: "QMargins_setTop".}
proc fcQMargins_setRight(self: pointer, right: cint): void {.importc: "QMargins_setRight".}
proc fcQMargins_setBottom(self: pointer, bottom: cint): void {.importc: "QMargins_setBottom".}
proc fcQMargins_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorPlusAssign".}
proc fcQMargins_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorMinusAssign".}
proc fcQMargins_operatorPlusAssignWithInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorPlusAssignWithInt".}
proc fcQMargins_operatorMinusAssignWithInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMinusAssignWithInt".}
proc fcQMargins_operatorMultiplyAssign(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMultiplyAssign".}
proc fcQMargins_operatorDivideAssign(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorDivideAssign".}
proc fcQMargins_operatorMultiplyAssignWithQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorMultiplyAssignWithQreal".}
proc fcQMargins_operatorDivideAssignWithQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorDivideAssignWithQreal".}
proc fcQMargins_toMarginsF(self: pointer, ): pointer {.importc: "QMargins_toMarginsF".}
proc fcQMargins_delete(self: pointer) {.importc: "QMargins_delete".}
proc fcQMarginsF_new(): ptr cQMarginsF {.importc: "QMarginsF_new".}
proc fcQMarginsF_new2(left: float64, top: float64, right: float64, bottom: float64): ptr cQMarginsF {.importc: "QMarginsF_new2".}
proc fcQMarginsF_new3(margins: pointer): ptr cQMarginsF {.importc: "QMarginsF_new3".}
proc fcQMarginsF_new4(param1: pointer): ptr cQMarginsF {.importc: "QMarginsF_new4".}
proc fcQMarginsF_isNull(self: pointer, ): bool {.importc: "QMarginsF_isNull".}
proc fcQMarginsF_left(self: pointer, ): float64 {.importc: "QMarginsF_left".}
proc fcQMarginsF_top(self: pointer, ): float64 {.importc: "QMarginsF_top".}
proc fcQMarginsF_right(self: pointer, ): float64 {.importc: "QMarginsF_right".}
proc fcQMarginsF_bottom(self: pointer, ): float64 {.importc: "QMarginsF_bottom".}
proc fcQMarginsF_setLeft(self: pointer, aleft: float64): void {.importc: "QMarginsF_setLeft".}
proc fcQMarginsF_setTop(self: pointer, atop: float64): void {.importc: "QMarginsF_setTop".}
proc fcQMarginsF_setRight(self: pointer, aright: float64): void {.importc: "QMarginsF_setRight".}
proc fcQMarginsF_setBottom(self: pointer, abottom: float64): void {.importc: "QMarginsF_setBottom".}
proc fcQMarginsF_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorPlusAssign".}
proc fcQMarginsF_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorMinusAssign".}
proc fcQMarginsF_operatorPlusAssignWithAddend(self: pointer, addend: float64): pointer {.importc: "QMarginsF_operatorPlusAssignWithAddend".}
proc fcQMarginsF_operatorMinusAssignWithSubtrahend(self: pointer, subtrahend: float64): pointer {.importc: "QMarginsF_operatorMinusAssignWithSubtrahend".}
proc fcQMarginsF_operatorMultiplyAssign(self: pointer, factor: float64): pointer {.importc: "QMarginsF_operatorMultiplyAssign".}
proc fcQMarginsF_operatorDivideAssign(self: pointer, divisor: float64): pointer {.importc: "QMarginsF_operatorDivideAssign".}
proc fcQMarginsF_toMargins(self: pointer, ): pointer {.importc: "QMarginsF_toMargins".}
proc fcQMarginsF_delete(self: pointer) {.importc: "QMarginsF_delete".}


func init*(T: type QMargins, h: ptr cQMargins): QMargins =
  T(h: h)
proc create*(T: type QMargins, ): QMargins =

  QMargins.init(fcQMargins_new())
proc create*(T: type QMargins, left: cint, top: cint, right: cint, bottom: cint): QMargins =

  QMargins.init(fcQMargins_new2(left, top, right, bottom))
proc create*(T: type QMargins, param1: QMargins): QMargins =

  QMargins.init(fcQMargins_new3(param1.h))
proc isNull*(self: QMargins, ): bool =

  fcQMargins_isNull(self.h)

proc left*(self: QMargins, ): cint =

  fcQMargins_left(self.h)

proc top*(self: QMargins, ): cint =

  fcQMargins_top(self.h)

proc right*(self: QMargins, ): cint =

  fcQMargins_right(self.h)

proc bottom*(self: QMargins, ): cint =

  fcQMargins_bottom(self.h)

proc setLeft*(self: QMargins, left: cint): void =

  fcQMargins_setLeft(self.h, left)

proc setTop*(self: QMargins, top: cint): void =

  fcQMargins_setTop(self.h, top)

proc setRight*(self: QMargins, right: cint): void =

  fcQMargins_setRight(self.h, right)

proc setBottom*(self: QMargins, bottom: cint): void =

  fcQMargins_setBottom(self.h, bottom)

proc operatorPlusAssign*(self: QMargins, margins: QMargins): QMargins =

  QMargins(h: fcQMargins_operatorPlusAssign(self.h, margins.h))

proc operatorMinusAssign*(self: QMargins, margins: QMargins): QMargins =

  QMargins(h: fcQMargins_operatorMinusAssign(self.h, margins.h))

proc operatorPlusAssignWithInt*(self: QMargins, param1: cint): QMargins =

  QMargins(h: fcQMargins_operatorPlusAssignWithInt(self.h, param1))

proc operatorMinusAssignWithInt*(self: QMargins, param1: cint): QMargins =

  QMargins(h: fcQMargins_operatorMinusAssignWithInt(self.h, param1))

proc operatorMultiplyAssign*(self: QMargins, param1: cint): QMargins =

  QMargins(h: fcQMargins_operatorMultiplyAssign(self.h, param1))

proc operatorDivideAssign*(self: QMargins, param1: cint): QMargins =

  QMargins(h: fcQMargins_operatorDivideAssign(self.h, param1))

proc operatorMultiplyAssignWithQreal*(self: QMargins, param1: float64): QMargins =

  QMargins(h: fcQMargins_operatorMultiplyAssignWithQreal(self.h, param1))

proc operatorDivideAssignWithQreal*(self: QMargins, param1: float64): QMargins =

  QMargins(h: fcQMargins_operatorDivideAssignWithQreal(self.h, param1))

proc toMarginsF*(self: QMargins, ): QMarginsF =

  QMarginsF(h: fcQMargins_toMarginsF(self.h))

proc delete*(self: QMargins) =
  fcQMargins_delete(self.h)

func init*(T: type QMarginsF, h: ptr cQMarginsF): QMarginsF =
  T(h: h)
proc create*(T: type QMarginsF, ): QMarginsF =

  QMarginsF.init(fcQMarginsF_new())
proc create*(T: type QMarginsF, left: float64, top: float64, right: float64, bottom: float64): QMarginsF =

  QMarginsF.init(fcQMarginsF_new2(left, top, right, bottom))
proc create*(T: type QMarginsF, margins: QMargins): QMarginsF =

  QMarginsF.init(fcQMarginsF_new3(margins.h))
proc create2*(T: type QMarginsF, param1: QMarginsF): QMarginsF =

  QMarginsF.init(fcQMarginsF_new4(param1.h))
proc isNull*(self: QMarginsF, ): bool =

  fcQMarginsF_isNull(self.h)

proc left*(self: QMarginsF, ): float64 =

  fcQMarginsF_left(self.h)

proc top*(self: QMarginsF, ): float64 =

  fcQMarginsF_top(self.h)

proc right*(self: QMarginsF, ): float64 =

  fcQMarginsF_right(self.h)

proc bottom*(self: QMarginsF, ): float64 =

  fcQMarginsF_bottom(self.h)

proc setLeft*(self: QMarginsF, aleft: float64): void =

  fcQMarginsF_setLeft(self.h, aleft)

proc setTop*(self: QMarginsF, atop: float64): void =

  fcQMarginsF_setTop(self.h, atop)

proc setRight*(self: QMarginsF, aright: float64): void =

  fcQMarginsF_setRight(self.h, aright)

proc setBottom*(self: QMarginsF, abottom: float64): void =

  fcQMarginsF_setBottom(self.h, abottom)

proc operatorPlusAssign*(self: QMarginsF, margins: QMarginsF): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorPlusAssign(self.h, margins.h))

proc operatorMinusAssign*(self: QMarginsF, margins: QMarginsF): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorMinusAssign(self.h, margins.h))

proc operatorPlusAssignWithAddend*(self: QMarginsF, addend: float64): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorPlusAssignWithAddend(self.h, addend))

proc operatorMinusAssignWithSubtrahend*(self: QMarginsF, subtrahend: float64): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorMinusAssignWithSubtrahend(self.h, subtrahend))

proc operatorMultiplyAssign*(self: QMarginsF, factor: float64): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorMultiplyAssign(self.h, factor))

proc operatorDivideAssign*(self: QMarginsF, divisor: float64): QMarginsF =

  QMarginsF(h: fcQMarginsF_operatorDivideAssign(self.h, divisor))

proc toMargins*(self: QMarginsF, ): QMargins =

  QMargins(h: fcQMarginsF_toMargins(self.h))

proc delete*(self: QMarginsF) =
  fcQMarginsF_delete(self.h)
