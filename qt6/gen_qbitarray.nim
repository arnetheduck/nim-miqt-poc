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
{.compile("gen_qbitarray.cpp", cflags).}


import gen_qbitarray_types
export gen_qbitarray_types

import
  TODO
export
  TODO

type cQBitArray*{.exportc: "QBitArray", incompleteStruct.} = object
type cQBitRef*{.exportc: "QBitRef", incompleteStruct.} = object

proc fcQBitArray_new(): ptr cQBitArray {.importc: "QBitArray_new".}
proc fcQBitArray_new2(size: int64): ptr cQBitArray {.importc: "QBitArray_new2".}
proc fcQBitArray_new3(other: pointer): ptr cQBitArray {.importc: "QBitArray_new3".}
proc fcQBitArray_new4(size: int64, val: bool): ptr cQBitArray {.importc: "QBitArray_new4".}
proc fcQBitArray_operatorAssign(self: pointer, other: pointer): void {.importc: "QBitArray_operatorAssign".}
proc fcQBitArray_swap(self: pointer, other: pointer): void {.importc: "QBitArray_swap".}
proc fcQBitArray_size(self: pointer, ): int64 {.importc: "QBitArray_size".}
proc fcQBitArray_count(self: pointer, ): int64 {.importc: "QBitArray_count".}
proc fcQBitArray_countWithOn(self: pointer, on: bool): int64 {.importc: "QBitArray_countWithOn".}
proc fcQBitArray_isEmpty(self: pointer, ): bool {.importc: "QBitArray_isEmpty".}
proc fcQBitArray_isNull(self: pointer, ): bool {.importc: "QBitArray_isNull".}
proc fcQBitArray_resize(self: pointer, size: int64): void {.importc: "QBitArray_resize".}
proc fcQBitArray_detach(self: pointer, ): void {.importc: "QBitArray_detach".}
proc fcQBitArray_isDetached(self: pointer, ): bool {.importc: "QBitArray_isDetached".}
proc fcQBitArray_clear(self: pointer, ): void {.importc: "QBitArray_clear".}
proc fcQBitArray_testBit(self: pointer, i: int64): bool {.importc: "QBitArray_testBit".}
proc fcQBitArray_setBit(self: pointer, i: int64): void {.importc: "QBitArray_setBit".}
proc fcQBitArray_setBit2(self: pointer, i: int64, val: bool): void {.importc: "QBitArray_setBit2".}
proc fcQBitArray_clearBit(self: pointer, i: int64): void {.importc: "QBitArray_clearBit".}
proc fcQBitArray_toggleBit(self: pointer, i: int64): bool {.importc: "QBitArray_toggleBit".}
proc fcQBitArray_at(self: pointer, i: int64): bool {.importc: "QBitArray_at".}
proc fcQBitArray_operatorSubscript(self: pointer, i: int64): pointer {.importc: "QBitArray_operatorSubscript".}
proc fcQBitArray_operatorSubscriptWithQsizetype(self: pointer, i: int64): bool {.importc: "QBitArray_operatorSubscriptWithQsizetype".}
proc fcQBitArray_operatorBitwiseAndAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseAndAssign".}
proc fcQBitArray_operatorBitwiseOrAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseOrAssign".}
proc fcQBitArray_operatorBitwiseNotAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseNotAssign".}
proc fcQBitArray_operatorEqual(self: pointer, other: pointer): bool {.importc: "QBitArray_operatorEqual".}
proc fcQBitArray_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QBitArray_operatorNotEqual".}
proc fcQBitArray_fill(self: pointer, val: bool): bool {.importc: "QBitArray_fill".}
proc fcQBitArray_fill2(self: pointer, val: bool, first: int64, last: int64): void {.importc: "QBitArray_fill2".}
proc fcQBitArray_truncate(self: pointer, pos: int64): void {.importc: "QBitArray_truncate".}
proc fcQBitArray_bits(self: pointer, ): cstring {.importc: "QBitArray_bits".}
proc fcQBitArray_fromBits(data: cstring, len: int64): pointer {.importc: "QBitArray_fromBits".}
proc fcQBitArray_toUInt32(self: pointer, endianness: cint): cuint {.importc: "QBitArray_toUInt32".}
proc fcQBitArray_fill22(self: pointer, val: bool, size: int64): bool {.importc: "QBitArray_fill22".}
proc fcQBitArray_toUInt322(self: pointer, endianness: cint, ok: ptr bool): cuint {.importc: "QBitArray_toUInt322".}
proc fcQBitArray_delete(self: pointer) {.importc: "QBitArray_delete".}
proc fcQBitRef_new(param1: pointer): ptr cQBitRef {.importc: "QBitRef_new".}
proc fcQBitRef_ToBool(self: pointer, ): bool {.importc: "QBitRef_ToBool".}
proc fcQBitRef_operatorNot(self: pointer, ): bool {.importc: "QBitRef_operatorNot".}
proc fcQBitRef_operatorAssign(self: pointer, val: pointer): void {.importc: "QBitRef_operatorAssign".}
proc fcQBitRef_operatorAssignWithVal(self: pointer, val: bool): void {.importc: "QBitRef_operatorAssignWithVal".}
proc fcQBitRef_delete(self: pointer) {.importc: "QBitRef_delete".}


func init*(T: type QBitArray, h: ptr cQBitArray): QBitArray =
  T(h: h)
proc create*(T: type QBitArray, ): QBitArray =

  QBitArray.init(fcQBitArray_new())
proc create*(T: type QBitArray, size: int64): QBitArray =

  QBitArray.init(fcQBitArray_new2(size))
proc create*(T: type QBitArray, other: QBitArray): QBitArray =

  QBitArray.init(fcQBitArray_new3(other.h))
proc create*(T: type QBitArray, size: int64, val: bool): QBitArray =

  QBitArray.init(fcQBitArray_new4(size, val))
proc operatorAssign*(self: QBitArray, other: QBitArray): void =

  fcQBitArray_operatorAssign(self.h, other.h)

proc swap*(self: QBitArray, other: QBitArray): void =

  fcQBitArray_swap(self.h, other.h)

proc size*(self: QBitArray, ): int64 =

  fcQBitArray_size(self.h)

proc count*(self: QBitArray, ): int64 =

  fcQBitArray_count(self.h)

proc countWithOn*(self: QBitArray, on: bool): int64 =

  fcQBitArray_countWithOn(self.h, on)

proc isEmpty*(self: QBitArray, ): bool =

  fcQBitArray_isEmpty(self.h)

proc isNull*(self: QBitArray, ): bool =

  fcQBitArray_isNull(self.h)

proc resize*(self: QBitArray, size: int64): void =

  fcQBitArray_resize(self.h, size)

proc detach*(self: QBitArray, ): void =

  fcQBitArray_detach(self.h)

proc isDetached*(self: QBitArray, ): bool =

  fcQBitArray_isDetached(self.h)

proc clear*(self: QBitArray, ): void =

  fcQBitArray_clear(self.h)

proc testBit*(self: QBitArray, i: int64): bool =

  fcQBitArray_testBit(self.h, i)

proc setBit*(self: QBitArray, i: int64): void =

  fcQBitArray_setBit(self.h, i)

proc setBit2*(self: QBitArray, i: int64, val: bool): void =

  fcQBitArray_setBit2(self.h, i, val)

proc clearBit*(self: QBitArray, i: int64): void =

  fcQBitArray_clearBit(self.h, i)

proc toggleBit*(self: QBitArray, i: int64): bool =

  fcQBitArray_toggleBit(self.h, i)

proc at*(self: QBitArray, i: int64): bool =

  fcQBitArray_at(self.h, i)

proc operatorSubscript*(self: QBitArray, i: int64): QBitRef =

  QBitRef(h: fcQBitArray_operatorSubscript(self.h, i))

proc operatorSubscriptWithQsizetype*(self: QBitArray, i: int64): bool =

  fcQBitArray_operatorSubscriptWithQsizetype(self.h, i)

proc operatorBitwiseAndAssign*(self: QBitArray, param1: QBitArray): void =

  fcQBitArray_operatorBitwiseAndAssign(self.h, param1.h)

proc operatorBitwiseOrAssign*(self: QBitArray, param1: QBitArray): void =

  fcQBitArray_operatorBitwiseOrAssign(self.h, param1.h)

proc operatorBitwiseNotAssign*(self: QBitArray, param1: QBitArray): void =

  fcQBitArray_operatorBitwiseNotAssign(self.h, param1.h)

proc operatorEqual*(self: QBitArray, other: QBitArray): bool =

  fcQBitArray_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QBitArray, other: QBitArray): bool =

  fcQBitArray_operatorNotEqual(self.h, other.h)

proc fill*(self: QBitArray, val: bool): bool =

  fcQBitArray_fill(self.h, val)

proc fill2*(self: QBitArray, val: bool, first: int64, last: int64): void =

  fcQBitArray_fill2(self.h, val, first, last)

proc truncate*(self: QBitArray, pos: int64): void =

  fcQBitArray_truncate(self.h, pos)

proc bits*(self: QBitArray, ): cstring =

  (fcQBitArray_bits(self.h))

proc fromBits*(_: type QBitArray, data: cstring, len: int64): QBitArray =

  QBitArray(h: fcQBitArray_fromBits(data, len))

proc toUInt32*(self: QBitArray, endianness: TODO.QSysInfoEndian): cuint =

  fcQBitArray_toUInt32(self.h, cint(endianness))

proc fill22*(self: QBitArray, val: bool, size: int64): bool =

  fcQBitArray_fill22(self.h, val, size)

proc toUInt322*(self: QBitArray, endianness: TODO.QSysInfoEndian, ok: ptr bool): cuint =

  fcQBitArray_toUInt322(self.h, cint(endianness), ok)

proc delete*(self: QBitArray) =
  fcQBitArray_delete(self.h)

func init*(T: type QBitRef, h: ptr cQBitRef): QBitRef =
  T(h: h)
proc create*(T: type QBitRef, param1: QBitRef): QBitRef =

  QBitRef.init(fcQBitRef_new(param1.h))
proc ToBool*(self: QBitRef, ): bool =

  fcQBitRef_ToBool(self.h)

proc operatorNot*(self: QBitRef, ): bool =

  fcQBitRef_operatorNot(self.h)

proc operatorAssign*(self: QBitRef, val: QBitRef): void =

  fcQBitRef_operatorAssign(self.h, val.h)

proc operatorAssignWithVal*(self: QBitRef, val: bool): void =

  fcQBitRef_operatorAssignWithVal(self.h, val)

proc delete*(self: QBitRef) =
  fcQBitRef_delete(self.h)
