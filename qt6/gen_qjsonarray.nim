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
{.compile("gen_qjsonarray.cpp", cflags).}


import gen_qjsonarray_types
export gen_qjsonarray_types

import
  gen_qjsonvalue
export
  gen_qjsonvalue

type cQJsonArray*{.exportc: "QJsonArray", incompleteStruct.} = object
type cQJsonArrayiterator*{.exportc: "QJsonArray__iterator", incompleteStruct.} = object
type cQJsonArrayconst_iterator*{.exportc: "QJsonArray__const_iterator", incompleteStruct.} = object

proc fcQJsonArray_new(): ptr cQJsonArray {.importc: "QJsonArray_new".}
proc fcQJsonArray_new2(other: pointer): ptr cQJsonArray {.importc: "QJsonArray_new2".}
proc fcQJsonArray_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonArray_operatorAssign".}
proc fcQJsonArray_fromStringList(list: struct_miqt_array): pointer {.importc: "QJsonArray_fromStringList".}
proc fcQJsonArray_size(self: pointer, ): int64 {.importc: "QJsonArray_size".}
proc fcQJsonArray_count(self: pointer, ): int64 {.importc: "QJsonArray_count".}
proc fcQJsonArray_isEmpty(self: pointer, ): bool {.importc: "QJsonArray_isEmpty".}
proc fcQJsonArray_at(self: pointer, i: int64): pointer {.importc: "QJsonArray_at".}
proc fcQJsonArray_first(self: pointer, ): pointer {.importc: "QJsonArray_first".}
proc fcQJsonArray_last(self: pointer, ): pointer {.importc: "QJsonArray_last".}
proc fcQJsonArray_prepend(self: pointer, value: pointer): void {.importc: "QJsonArray_prepend".}
proc fcQJsonArray_append(self: pointer, value: pointer): void {.importc: "QJsonArray_append".}
proc fcQJsonArray_removeAt(self: pointer, i: int64): void {.importc: "QJsonArray_removeAt".}
proc fcQJsonArray_takeAt(self: pointer, i: int64): pointer {.importc: "QJsonArray_takeAt".}
proc fcQJsonArray_removeFirst(self: pointer, ): void {.importc: "QJsonArray_removeFirst".}
proc fcQJsonArray_removeLast(self: pointer, ): void {.importc: "QJsonArray_removeLast".}
proc fcQJsonArray_insert(self: pointer, i: int64, value: pointer): void {.importc: "QJsonArray_insert".}
proc fcQJsonArray_replace(self: pointer, i: int64, value: pointer): void {.importc: "QJsonArray_replace".}
proc fcQJsonArray_contains(self: pointer, element: pointer): bool {.importc: "QJsonArray_contains".}
proc fcQJsonArray_operatorSubscript(self: pointer, i: int64): pointer {.importc: "QJsonArray_operatorSubscript".}
proc fcQJsonArray_operatorSubscriptWithQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonArray_operatorSubscriptWithQsizetype".}
proc fcQJsonArray_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray_operatorEqual".}
proc fcQJsonArray_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray_operatorNotEqual".}
proc fcQJsonArray_swap(self: pointer, other: pointer): void {.importc: "QJsonArray_swap".}
proc fcQJsonArray_begin(self: pointer, ): pointer {.importc: "QJsonArray_begin".}
proc fcQJsonArray_begin2(self: pointer, ): pointer {.importc: "QJsonArray_begin2".}
proc fcQJsonArray_constBegin(self: pointer, ): pointer {.importc: "QJsonArray_constBegin".}
proc fcQJsonArray_cbegin(self: pointer, ): pointer {.importc: "QJsonArray_cbegin".}
proc fcQJsonArray_endX(self: pointer, ): pointer {.importc: "QJsonArray_end".}
proc fcQJsonArray_end2(self: pointer, ): pointer {.importc: "QJsonArray_end2".}
proc fcQJsonArray_constEnd(self: pointer, ): pointer {.importc: "QJsonArray_constEnd".}
proc fcQJsonArray_cend(self: pointer, ): pointer {.importc: "QJsonArray_cend".}
proc fcQJsonArray_insert2(self: pointer, before: pointer, value: pointer): pointer {.importc: "QJsonArray_insert2".}
proc fcQJsonArray_erase(self: pointer, it: pointer): pointer {.importc: "QJsonArray_erase".}
proc fcQJsonArray_operatorPlus(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorPlus".}
proc fcQJsonArray_operatorPlusAssign(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorPlusAssign".}
proc fcQJsonArray_operatorShiftLeft(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorShiftLeft".}
proc fcQJsonArray_pushBack(self: pointer, t: pointer): void {.importc: "QJsonArray_pushBack".}
proc fcQJsonArray_pushFront(self: pointer, t: pointer): void {.importc: "QJsonArray_pushFront".}
proc fcQJsonArray_popFront(self: pointer, ): void {.importc: "QJsonArray_popFront".}
proc fcQJsonArray_popBack(self: pointer, ): void {.importc: "QJsonArray_popBack".}
proc fcQJsonArray_empty(self: pointer, ): bool {.importc: "QJsonArray_empty".}
proc fcQJsonArray_delete(self: pointer) {.importc: "QJsonArray_delete".}
proc fcQJsonArrayiterator_new(): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new".}
proc fcQJsonArrayiterator_new2(array: pointer, index: int64): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new2".}
proc fcQJsonArrayiterator_new3(other: pointer): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new3".}
proc fcQJsonArrayiterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonArray__iterator_operatorAssign".}
proc fcQJsonArrayiterator_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonArray__iterator_operatorMultiply".}
proc fcQJsonArrayiterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonArray__iterator_operatorMinusGreater".}
proc fcQJsonArrayiterator_operatorMinusGreater2(self: pointer, ): pointer {.importc: "QJsonArray__iterator_operatorMinusGreater2".}
proc fcQJsonArrayiterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorSubscript".}
proc fcQJsonArrayiterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorEqual".}
proc fcQJsonArrayiterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorNotEqual".}
proc fcQJsonArrayiterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesser".}
proc fcQJsonArrayiterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesserOrEqual".}
proc fcQJsonArrayiterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreater".}
proc fcQJsonArrayiterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreaterOrEqual".}
proc fcQJsonArrayiterator_operatorEqualWithQJsonArrayconstIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorEqualWithQJsonArrayconstIterator".}
proc fcQJsonArrayiterator_operatorNotEqualWithQJsonArrayconstIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorNotEqualWithQJsonArrayconstIterator".}
proc fcQJsonArrayiterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesserWithOther".}
proc fcQJsonArrayiterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesserOrEqualWithOther".}
proc fcQJsonArrayiterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreaterWithOther".}
proc fcQJsonArrayiterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreaterOrEqualWithOther".}
proc fcQJsonArrayiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QJsonArray__iterator_operatorPlusPlus".}
proc fcQJsonArrayiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__iterator_operatorPlusPlusWithInt".}
proc fcQJsonArrayiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QJsonArray__iterator_operatorMinusMinus".}
proc fcQJsonArrayiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__iterator_operatorMinusMinusWithInt".}
proc fcQJsonArrayiterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorPlusAssign".}
proc fcQJsonArrayiterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorMinusAssign".}
proc fcQJsonArrayiterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorPlus".}
proc fcQJsonArrayiterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorMinus".}
proc fcQJsonArrayiterator_operatorMinusWithQJsonArrayiterator(self: pointer, j: pointer): int64 {.importc: "QJsonArray__iterator_operatorMinusWithQJsonArrayiterator".}
proc fcQJsonArrayiterator_delete(self: pointer) {.importc: "QJsonArray__iterator_delete".}
proc fcQJsonArrayconst_iterator_new(): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new".}
proc fcQJsonArrayconst_iterator_new2(array: pointer, index: int64): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new2".}
proc fcQJsonArrayconst_iterator_new3(o: pointer): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new3".}
proc fcQJsonArrayconst_iterator_new4(other: pointer): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new4".}
proc fcQJsonArrayconst_iterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonArray__const_iterator_operatorAssign".}
proc fcQJsonArrayconst_iterator_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonArray__const_iterator_operatorMultiply".}
proc fcQJsonArrayconst_iterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonArray__const_iterator_operatorMinusGreater".}
proc fcQJsonArrayconst_iterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorSubscript".}
proc fcQJsonArrayconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__const_iterator_operatorEqual".}
proc fcQJsonArrayconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__const_iterator_operatorNotEqual".}
proc fcQJsonArrayconst_iterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorLesser".}
proc fcQJsonArrayconst_iterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorLesserOrEqual".}
proc fcQJsonArrayconst_iterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorGreater".}
proc fcQJsonArrayconst_iterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorGreaterOrEqual".}
proc fcQJsonArrayconst_iterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QJsonArray__const_iterator_operatorPlusPlus".}
proc fcQJsonArrayconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__const_iterator_operatorPlusPlusWithInt".}
proc fcQJsonArrayconst_iterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QJsonArray__const_iterator_operatorMinusMinus".}
proc fcQJsonArrayconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__const_iterator_operatorMinusMinusWithInt".}
proc fcQJsonArrayconst_iterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorPlusAssign".}
proc fcQJsonArrayconst_iterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorMinusAssign".}
proc fcQJsonArrayconst_iterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorPlus".}
proc fcQJsonArrayconst_iterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorMinus".}
proc fcQJsonArrayconst_iterator_operatorMinusWithQJsonArrayconstIterator(self: pointer, j: pointer): int64 {.importc: "QJsonArray__const_iterator_operatorMinusWithQJsonArrayconstIterator".}
proc fcQJsonArrayconst_iterator_delete(self: pointer) {.importc: "QJsonArray__const_iterator_delete".}


func init*(T: type QJsonArray, h: ptr cQJsonArray): QJsonArray =
  T(h: h)
proc create*(T: type QJsonArray, ): QJsonArray =

  QJsonArray.init(fcQJsonArray_new())
proc create*(T: type QJsonArray, other: QJsonArray): QJsonArray =

  QJsonArray.init(fcQJsonArray_new2(other.h))
proc operatorAssign*(self: QJsonArray, other: QJsonArray): void =

  fcQJsonArray_operatorAssign(self.h, other.h)

proc fromStringList*(_: type QJsonArray, list: seq[string]): QJsonArray =

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  QJsonArray(h: fcQJsonArray_fromStringList(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))))

proc size*(self: QJsonArray, ): int64 =

  fcQJsonArray_size(self.h)

proc count*(self: QJsonArray, ): int64 =

  fcQJsonArray_count(self.h)

proc isEmpty*(self: QJsonArray, ): bool =

  fcQJsonArray_isEmpty(self.h)

proc at*(self: QJsonArray, i: int64): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonArray_at(self.h, i))

proc first*(self: QJsonArray, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonArray_first(self.h))

proc last*(self: QJsonArray, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonArray_last(self.h))

proc prepend*(self: QJsonArray, value: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_prepend(self.h, value.h)

proc append*(self: QJsonArray, value: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_append(self.h, value.h)

proc removeAt*(self: QJsonArray, i: int64): void =

  fcQJsonArray_removeAt(self.h, i)

proc takeAt*(self: QJsonArray, i: int64): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonArray_takeAt(self.h, i))

proc removeFirst*(self: QJsonArray, ): void =

  fcQJsonArray_removeFirst(self.h)

proc removeLast*(self: QJsonArray, ): void =

  fcQJsonArray_removeLast(self.h)

proc insert*(self: QJsonArray, i: int64, value: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_insert(self.h, i, value.h)

proc replace*(self: QJsonArray, i: int64, value: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_replace(self.h, i, value.h)

proc contains*(self: QJsonArray, element: gen_qjsonvalue.QJsonValue): bool =

  fcQJsonArray_contains(self.h, element.h)

proc operatorSubscript*(self: QJsonArray, i: int64): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonArray_operatorSubscript(self.h, i))

proc operatorSubscriptWithQsizetype*(self: QJsonArray, i: int64): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonArray_operatorSubscriptWithQsizetype(self.h, i))

proc operatorEqual*(self: QJsonArray, other: QJsonArray): bool =

  fcQJsonArray_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonArray, other: QJsonArray): bool =

  fcQJsonArray_operatorNotEqual(self.h, other.h)

proc swap*(self: QJsonArray, other: QJsonArray): void =

  fcQJsonArray_swap(self.h, other.h)

proc begin*(self: QJsonArray, ): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArray_begin(self.h))

proc begin2*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_begin2(self.h))

proc constBegin*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_constBegin(self.h))

proc cbegin*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_cbegin(self.h))

proc endX*(self: QJsonArray, ): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArray_endX(self.h))

proc end2*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_end2(self.h))

proc constEnd*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_constEnd(self.h))

proc cend*(self: QJsonArray, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArray_cend(self.h))

proc insert2*(self: QJsonArray, before: QJsonArrayiterator, value: gen_qjsonvalue.QJsonValue): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArray_insert2(self.h, before.h, value.h))

proc erase*(self: QJsonArray, it: QJsonArrayiterator): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArray_erase(self.h, it.h))

proc operatorPlus*(self: QJsonArray, v: gen_qjsonvalue.QJsonValue): QJsonArray =

  QJsonArray(h: fcQJsonArray_operatorPlus(self.h, v.h))

proc operatorPlusAssign*(self: QJsonArray, v: gen_qjsonvalue.QJsonValue): QJsonArray =

  QJsonArray(h: fcQJsonArray_operatorPlusAssign(self.h, v.h))

proc operatorShiftLeft*(self: QJsonArray, v: gen_qjsonvalue.QJsonValue): QJsonArray =

  QJsonArray(h: fcQJsonArray_operatorShiftLeft(self.h, v.h))

proc pushBack*(self: QJsonArray, t: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_pushBack(self.h, t.h)

proc pushFront*(self: QJsonArray, t: gen_qjsonvalue.QJsonValue): void =

  fcQJsonArray_pushFront(self.h, t.h)

proc popFront*(self: QJsonArray, ): void =

  fcQJsonArray_popFront(self.h)

proc popBack*(self: QJsonArray, ): void =

  fcQJsonArray_popBack(self.h)

proc empty*(self: QJsonArray, ): bool =

  fcQJsonArray_empty(self.h)

proc delete*(self: QJsonArray) =
  fcQJsonArray_delete(self.h)

func init*(T: type QJsonArrayiterator, h: ptr cQJsonArrayiterator): QJsonArrayiterator =
  T(h: h)
proc create*(T: type QJsonArrayiterator, ): QJsonArrayiterator =

  QJsonArrayiterator.init(fcQJsonArrayiterator_new())
proc create*(T: type QJsonArrayiterator, array: QJsonArray, index: int64): QJsonArrayiterator =

  QJsonArrayiterator.init(fcQJsonArrayiterator_new2(array.h, index))
proc create*(T: type QJsonArrayiterator, other: QJsonArrayiterator): QJsonArrayiterator =

  QJsonArrayiterator.init(fcQJsonArrayiterator_new3(other.h))
proc operatorAssign*(self: QJsonArrayiterator, other: QJsonArrayiterator): void =

  fcQJsonArrayiterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: QJsonArrayiterator, ): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonArrayiterator_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonArrayiterator, ): gen_qjsonvalue.QJsonValueConstRef =

  gen_qjsonvalue.QJsonValueConstRef(h: fcQJsonArrayiterator_operatorMinusGreater(self.h))

proc operatorMinusGreater2*(self: QJsonArrayiterator, ): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonArrayiterator_operatorMinusGreater2(self.h))

proc operatorSubscript*(self: QJsonArrayiterator, j: int64): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonArrayiterator_operatorSubscript(self.h, j))

proc operatorEqual*(self: QJsonArrayiterator, o: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QJsonArrayiterator, o: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QJsonArrayiterator, other: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: QJsonArrayiterator, other: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: QJsonArrayiterator, other: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: QJsonArrayiterator, other: QJsonArrayiterator): bool =

  fcQJsonArrayiterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorEqualWithQJsonArrayconstIterator*(self: QJsonArrayiterator, o: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorEqualWithQJsonArrayconstIterator(self.h, o.h)

proc operatorNotEqualWithQJsonArrayconstIterator*(self: QJsonArrayiterator, o: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorNotEqualWithQJsonArrayconstIterator(self.h, o.h)

proc operatorLesserWithOther*(self: QJsonArrayiterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqualWithOther*(self: QJsonArrayiterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreaterWithOther*(self: QJsonArrayiterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqualWithOther*(self: QJsonArrayiterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayiterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc operatorPlusPlus*(self: QJsonArrayiterator, ): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QJsonArrayiterator, param1: cint): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QJsonArrayiterator, ): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QJsonArrayiterator, param1: cint): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QJsonArrayiterator, j: int64): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QJsonArrayiterator, j: int64): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QJsonArrayiterator, j: int64): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QJsonArrayiterator, j: int64): QJsonArrayiterator =

  QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinus(self.h, j))

proc operatorMinusWithQJsonArrayiterator*(self: QJsonArrayiterator, j: QJsonArrayiterator): int64 =

  fcQJsonArrayiterator_operatorMinusWithQJsonArrayiterator(self.h, j.h)

proc delete*(self: QJsonArrayiterator) =
  fcQJsonArrayiterator_delete(self.h)

func init*(T: type QJsonArrayconst_iterator, h: ptr cQJsonArrayconst_iterator): QJsonArrayconst_iterator =
  T(h: h)
proc create*(T: type QJsonArrayconst_iterator, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator.init(fcQJsonArrayconst_iterator_new())
proc create*(T: type QJsonArrayconst_iterator, array: QJsonArray, index: int64): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator.init(fcQJsonArrayconst_iterator_new2(array.h, index))
proc create*(T: type QJsonArrayconst_iterator, o: QJsonArrayiterator): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator.init(fcQJsonArrayconst_iterator_new3(o.h))
proc create2*(T: type QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator.init(fcQJsonArrayconst_iterator_new4(other.h))
proc operatorAssign*(self: QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): void =

  fcQJsonArrayconst_iterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: QJsonArrayconst_iterator, ): gen_qjsonvalue.QJsonValueConstRef =

  gen_qjsonvalue.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonArrayconst_iterator, ): gen_qjsonvalue.QJsonValueConstRef =

  gen_qjsonvalue.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorMinusGreater(self.h))

proc operatorSubscript*(self: QJsonArrayconst_iterator, j: int64): gen_qjsonvalue.QJsonValueConstRef =

  gen_qjsonvalue.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorSubscript(self.h, j))

proc operatorEqual*(self: QJsonArrayconst_iterator, o: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QJsonArrayconst_iterator, o: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: QJsonArrayconst_iterator, other: QJsonArrayconst_iterator): bool =

  fcQJsonArrayconst_iterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorPlusPlus*(self: QJsonArrayconst_iterator, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QJsonArrayconst_iterator, param1: cint): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QJsonArrayconst_iterator, ): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QJsonArrayconst_iterator, param1: cint): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QJsonArrayconst_iterator, j: int64): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QJsonArrayconst_iterator, j: int64): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QJsonArrayconst_iterator, j: int64): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QJsonArrayconst_iterator, j: int64): QJsonArrayconst_iterator =

  QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinus(self.h, j))

proc operatorMinusWithQJsonArrayconstIterator*(self: QJsonArrayconst_iterator, j: QJsonArrayconst_iterator): int64 =

  fcQJsonArrayconst_iterator_operatorMinusWithQJsonArrayconstIterator(self.h, j.h)

proc delete*(self: QJsonArrayconst_iterator) =
  fcQJsonArrayconst_iterator_delete(self.h)
