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
{.compile("gen_qjsonobject.cpp", cflags).}


import gen_qjsonobject_types
export gen_qjsonobject_types

import
  gen_qjsonvalue,
  gen_qvariant,
  std/tables
export
  gen_qjsonvalue,
  gen_qvariant

type cQJsonObject*{.exportc: "QJsonObject", incompleteStruct.} = object
type cQJsonObjectiterator*{.exportc: "QJsonObject__iterator", incompleteStruct.} = object
type cQJsonObjectconst_iterator*{.exportc: "QJsonObject__const_iterator", incompleteStruct.} = object

proc fcQJsonObject_new(): ptr cQJsonObject {.importc: "QJsonObject_new".}
proc fcQJsonObject_new2(other: pointer): ptr cQJsonObject {.importc: "QJsonObject_new2".}
proc fcQJsonObject_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonObject_operatorAssign".}
proc fcQJsonObject_swap(self: pointer, other: pointer): void {.importc: "QJsonObject_swap".}
proc fcQJsonObject_fromVariantMap(map: struct_miqt_map): pointer {.importc: "QJsonObject_fromVariantMap".}
proc fcQJsonObject_toVariantMap(self: pointer, ): struct_miqt_map {.importc: "QJsonObject_toVariantMap".}
proc fcQJsonObject_fromVariantHash(map: struct_miqt_map): pointer {.importc: "QJsonObject_fromVariantHash".}
proc fcQJsonObject_toVariantHash(self: pointer, ): struct_miqt_map {.importc: "QJsonObject_toVariantHash".}
proc fcQJsonObject_keys(self: pointer, ): struct_miqt_array {.importc: "QJsonObject_keys".}
proc fcQJsonObject_size(self: pointer, ): cint {.importc: "QJsonObject_size".}
proc fcQJsonObject_count(self: pointer, ): cint {.importc: "QJsonObject_count".}
proc fcQJsonObject_length(self: pointer, ): cint {.importc: "QJsonObject_length".}
proc fcQJsonObject_isEmpty(self: pointer, ): bool {.importc: "QJsonObject_isEmpty".}
proc fcQJsonObject_value(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_value".}
proc fcQJsonObject_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_operatorSubscript".}
proc fcQJsonObject_operatorSubscriptWithKey(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_operatorSubscriptWithKey".}
proc fcQJsonObject_remove(self: pointer, key: struct_miqt_string): void {.importc: "QJsonObject_remove".}
proc fcQJsonObject_take(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_take".}
proc fcQJsonObject_contains(self: pointer, key: struct_miqt_string): bool {.importc: "QJsonObject_contains".}
proc fcQJsonObject_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject_operatorEqual".}
proc fcQJsonObject_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject_operatorNotEqual".}
proc fcQJsonObject_begin(self: pointer, ): pointer {.importc: "QJsonObject_begin".}
proc fcQJsonObject_begin2(self: pointer, ): pointer {.importc: "QJsonObject_begin2".}
proc fcQJsonObject_constBegin(self: pointer, ): pointer {.importc: "QJsonObject_constBegin".}
proc fcQJsonObject_endX(self: pointer, ): pointer {.importc: "QJsonObject_end".}
proc fcQJsonObject_end2(self: pointer, ): pointer {.importc: "QJsonObject_end2".}
proc fcQJsonObject_constEnd(self: pointer, ): pointer {.importc: "QJsonObject_constEnd".}
proc fcQJsonObject_erase(self: pointer, it: pointer): pointer {.importc: "QJsonObject_erase".}
proc fcQJsonObject_find(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_find".}
proc fcQJsonObject_findWithKey(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_findWithKey".}
proc fcQJsonObject_constFind(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonObject_constFind".}
proc fcQJsonObject_insert(self: pointer, key: struct_miqt_string, value: pointer): pointer {.importc: "QJsonObject_insert".}
proc fcQJsonObject_empty(self: pointer, ): bool {.importc: "QJsonObject_empty".}
proc fcQJsonObject_delete(self: pointer) {.importc: "QJsonObject_delete".}
proc fcQJsonObjectiterator_new(): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new".}
proc fcQJsonObjectiterator_new2(obj: pointer, index: cint): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new2".}
proc fcQJsonObjectiterator_new3(param1: pointer): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new3".}
proc fcQJsonObjectiterator_key(self: pointer, ): struct_miqt_string {.importc: "QJsonObject__iterator_key".}
proc fcQJsonObjectiterator_value(self: pointer, ): pointer {.importc: "QJsonObject__iterator_value".}
proc fcQJsonObjectiterator_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonObject__iterator_operatorMultiply".}
proc fcQJsonObjectiterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonObject__iterator_operatorMinusGreater".}
proc fcQJsonObjectiterator_operatorSubscript(self: pointer, j: cint): pointer {.importc: "QJsonObject__iterator_operatorSubscript".}
proc fcQJsonObjectiterator_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorEqual".}
proc fcQJsonObjectiterator_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorNotEqual".}
proc fcQJsonObjectiterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesser".}
proc fcQJsonObjectiterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesserOrEqual".}
proc fcQJsonObjectiterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreater".}
proc fcQJsonObjectiterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreaterOrEqual".}
proc fcQJsonObjectiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QJsonObject__iterator_operatorPlusPlus".}
proc fcQJsonObjectiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__iterator_operatorPlusPlusWithInt".}
proc fcQJsonObjectiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QJsonObject__iterator_operatorMinusMinus".}
proc fcQJsonObjectiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__iterator_operatorMinusMinusWithInt".}
proc fcQJsonObjectiterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QJsonObject__iterator_operatorPlus".}
proc fcQJsonObjectiterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QJsonObject__iterator_operatorMinus".}
proc fcQJsonObjectiterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QJsonObject__iterator_operatorPlusAssign".}
proc fcQJsonObjectiterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QJsonObject__iterator_operatorMinusAssign".}
proc fcQJsonObjectiterator_operatorMinusWithQJsonObjectiterator(self: pointer, j: pointer): cint {.importc: "QJsonObject__iterator_operatorMinusWithQJsonObjectiterator".}
proc fcQJsonObjectiterator_operatorEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorEqualWithOther".}
proc fcQJsonObjectiterator_operatorNotEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorNotEqualWithOther".}
proc fcQJsonObjectiterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesserWithOther".}
proc fcQJsonObjectiterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesserOrEqualWithOther".}
proc fcQJsonObjectiterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreaterWithOther".}
proc fcQJsonObjectiterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreaterOrEqualWithOther".}
proc fcQJsonObjectiterator_delete(self: pointer) {.importc: "QJsonObject__iterator_delete".}
proc fcQJsonObjectconst_iterator_new(): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new".}
proc fcQJsonObjectconst_iterator_new2(obj: pointer, index: cint): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new2".}
proc fcQJsonObjectconst_iterator_new3(other: pointer): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new3".}
proc fcQJsonObjectconst_iterator_new4(param1: pointer): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new4".}
proc fcQJsonObjectconst_iterator_key(self: pointer, ): struct_miqt_string {.importc: "QJsonObject__const_iterator_key".}
proc fcQJsonObjectconst_iterator_value(self: pointer, ): pointer {.importc: "QJsonObject__const_iterator_value".}
proc fcQJsonObjectconst_iterator_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonObject__const_iterator_operatorMultiply".}
proc fcQJsonObjectconst_iterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonObject__const_iterator_operatorMinusGreater".}
proc fcQJsonObjectconst_iterator_operatorSubscript(self: pointer, j: cint): pointer {.importc: "QJsonObject__const_iterator_operatorSubscript".}
proc fcQJsonObjectconst_iterator_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorEqual".}
proc fcQJsonObjectconst_iterator_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorNotEqual".}
proc fcQJsonObjectconst_iterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesser".}
proc fcQJsonObjectconst_iterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesserOrEqual".}
proc fcQJsonObjectconst_iterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreater".}
proc fcQJsonObjectconst_iterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreaterOrEqual".}
proc fcQJsonObjectconst_iterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QJsonObject__const_iterator_operatorPlusPlus".}
proc fcQJsonObjectconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__const_iterator_operatorPlusPlusWithInt".}
proc fcQJsonObjectconst_iterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QJsonObject__const_iterator_operatorMinusMinus".}
proc fcQJsonObjectconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__const_iterator_operatorMinusMinusWithInt".}
proc fcQJsonObjectconst_iterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QJsonObject__const_iterator_operatorPlus".}
proc fcQJsonObjectconst_iterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QJsonObject__const_iterator_operatorMinus".}
proc fcQJsonObjectconst_iterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QJsonObject__const_iterator_operatorPlusAssign".}
proc fcQJsonObjectconst_iterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QJsonObject__const_iterator_operatorMinusAssign".}
proc fcQJsonObjectconst_iterator_operatorMinusWithQJsonObjectconstIterator(self: pointer, j: pointer): cint {.importc: "QJsonObject__const_iterator_operatorMinusWithQJsonObjectconstIterator".}
proc fcQJsonObjectconst_iterator_operatorEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorEqualWithOther".}
proc fcQJsonObjectconst_iterator_operatorNotEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorNotEqualWithOther".}
proc fcQJsonObjectconst_iterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesserWithOther".}
proc fcQJsonObjectconst_iterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesserOrEqualWithOther".}
proc fcQJsonObjectconst_iterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreaterWithOther".}
proc fcQJsonObjectconst_iterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreaterOrEqualWithOther".}
proc fcQJsonObjectconst_iterator_delete(self: pointer) {.importc: "QJsonObject__const_iterator_delete".}


func init*(T: type QJsonObject, h: ptr cQJsonObject): QJsonObject =
  T(h: h)
proc create*(T: type QJsonObject, ): QJsonObject =

  QJsonObject.init(fcQJsonObject_new())
proc create*(T: type QJsonObject, other: QJsonObject): QJsonObject =

  QJsonObject.init(fcQJsonObject_new2(other.h))
proc operatorAssign*(self: QJsonObject, other: QJsonObject): void =

  fcQJsonObject_operatorAssign(self.h, other.h)

proc swap*(self: QJsonObject, other: QJsonObject): void =

  fcQJsonObject_swap(self.h, other.h)

proc fromVariantMap*(_: type QJsonObject, map: Table[string,gen_qvariant.QVariant]): QJsonObject =

  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for mapk, mapv in map:
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  QJsonObject(h: fcQJsonObject_fromVariantMap(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)))

proc toVariantMap*(self: QJsonObject, ): Table[string,gen_qvariant.QVariant] =

  var v_mm = fcQJsonObject_toVariantMap(self.h)
  var vx_ret: Table[string, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc fromVariantHash*(_: type QJsonObject, map: Table[string,gen_qvariant.QVariant]): QJsonObject =

  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for mapk, mapv in map:
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  QJsonObject(h: fcQJsonObject_fromVariantHash(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)))

proc toVariantHash*(self: QJsonObject, ): Table[string,gen_qvariant.QVariant] =

  var v_mm = fcQJsonObject_toVariantHash(self.h)
  var vx_ret: Table[string, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc keys*(self: QJsonObject, ): seq[string] =

  var v_ma = fcQJsonObject_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc size*(self: QJsonObject, ): cint =

  fcQJsonObject_size(self.h)

proc count*(self: QJsonObject, ): cint =

  fcQJsonObject_count(self.h)

proc length*(self: QJsonObject, ): cint =

  fcQJsonObject_length(self.h)

proc isEmpty*(self: QJsonObject, ): bool =

  fcQJsonObject_isEmpty(self.h)

proc value*(self: QJsonObject, key: string): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObject_value(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript*(self: QJsonObject, key: string): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObject_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscriptWithKey*(self: QJsonObject, key: string): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonObject_operatorSubscriptWithKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc remove*(self: QJsonObject, key: string): void =

  fcQJsonObject_remove(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc take*(self: QJsonObject, key: string): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObject_take(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc contains*(self: QJsonObject, key: string): bool =

  fcQJsonObject_contains(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc operatorEqual*(self: QJsonObject, other: QJsonObject): bool =

  fcQJsonObject_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonObject, other: QJsonObject): bool =

  fcQJsonObject_operatorNotEqual(self.h, other.h)

proc begin*(self: QJsonObject, ): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObject_begin(self.h))

proc begin2*(self: QJsonObject, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_begin2(self.h))

proc constBegin*(self: QJsonObject, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_constBegin(self.h))

proc endX*(self: QJsonObject, ): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObject_endX(self.h))

proc end2*(self: QJsonObject, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_end2(self.h))

proc constEnd*(self: QJsonObject, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_constEnd(self.h))

proc erase*(self: QJsonObject, it: QJsonObjectiterator): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObject_erase(self.h, it.h))

proc find*(self: QJsonObject, key: string): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObject_find(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc findWithKey*(self: QJsonObject, key: string): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_findWithKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc constFind*(self: QJsonObject, key: string): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObject_constFind(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc insert*(self: QJsonObject, key: string, value: gen_qjsonvalue.QJsonValue): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObject_insert(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h))

proc empty*(self: QJsonObject, ): bool =

  fcQJsonObject_empty(self.h)

proc delete*(self: QJsonObject) =
  fcQJsonObject_delete(self.h)

func init*(T: type QJsonObjectiterator, h: ptr cQJsonObjectiterator): QJsonObjectiterator =
  T(h: h)
proc create*(T: type QJsonObjectiterator, ): QJsonObjectiterator =

  QJsonObjectiterator.init(fcQJsonObjectiterator_new())
proc create*(T: type QJsonObjectiterator, obj: QJsonObject, index: cint): QJsonObjectiterator =

  QJsonObjectiterator.init(fcQJsonObjectiterator_new2(obj.h, index))
proc create*(T: type QJsonObjectiterator, param1: QJsonObjectiterator): QJsonObjectiterator =

  QJsonObjectiterator.init(fcQJsonObjectiterator_new3(param1.h))
proc key*(self: QJsonObjectiterator, ): string =

  let v_ms = fcQJsonObjectiterator_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: QJsonObjectiterator, ): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonObjectiterator_value(self.h))

proc operatorMultiply*(self: QJsonObjectiterator, ): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonObjectiterator_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonObjectiterator, ): gen_qjsonvalue.QJsonValueRefPtr =

  gen_qjsonvalue.QJsonValueRefPtr(h: fcQJsonObjectiterator_operatorMinusGreater(self.h))

proc operatorSubscript*(self: QJsonObjectiterator, j: cint): gen_qjsonvalue.QJsonValueRef =

  gen_qjsonvalue.QJsonValueRef(h: fcQJsonObjectiterator_operatorSubscript(self.h, j))

proc operatorEqual*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: QJsonObjectiterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectiterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorPlusPlus*(self: QJsonObjectiterator, ): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QJsonObjectiterator, param1: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QJsonObjectiterator, ): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QJsonObjectiterator, param1: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlus*(self: QJsonObjectiterator, j: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QJsonObjectiterator, j: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinus(self.h, j))

proc operatorPlusAssign*(self: QJsonObjectiterator, j: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QJsonObjectiterator, j: cint): QJsonObjectiterator =

  QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusAssign(self.h, j))

proc operatorMinusWithQJsonObjectiterator*(self: QJsonObjectiterator, j: QJsonObjectiterator): cint =

  fcQJsonObjectiterator_operatorMinusWithQJsonObjectiterator(self.h, j.h)

proc operatorEqualWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorEqualWithOther(self.h, other.h)

proc operatorNotEqualWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorNotEqualWithOther(self.h, other.h)

proc operatorLesserWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqualWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreaterWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqualWithOther*(self: QJsonObjectiterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectiterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc delete*(self: QJsonObjectiterator) =
  fcQJsonObjectiterator_delete(self.h)

func init*(T: type QJsonObjectconst_iterator, h: ptr cQJsonObjectconst_iterator): QJsonObjectconst_iterator =
  T(h: h)
proc create*(T: type QJsonObjectconst_iterator, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator.init(fcQJsonObjectconst_iterator_new())
proc create*(T: type QJsonObjectconst_iterator, obj: QJsonObject, index: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator.init(fcQJsonObjectconst_iterator_new2(obj.h, index))
proc create*(T: type QJsonObjectconst_iterator, other: QJsonObjectiterator): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator.init(fcQJsonObjectconst_iterator_new3(other.h))
proc create2*(T: type QJsonObjectconst_iterator, param1: QJsonObjectconst_iterator): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator.init(fcQJsonObjectconst_iterator_new4(param1.h))
proc key*(self: QJsonObjectconst_iterator, ): string =

  let v_ms = fcQJsonObjectconst_iterator_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: QJsonObjectconst_iterator, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObjectconst_iterator_value(self.h))

proc operatorMultiply*(self: QJsonObjectconst_iterator, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObjectconst_iterator_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonObjectconst_iterator, ): gen_qjsonvalue.QJsonValuePtr =

  gen_qjsonvalue.QJsonValuePtr(h: fcQJsonObjectconst_iterator_operatorMinusGreater(self.h))

proc operatorSubscript*(self: QJsonObjectconst_iterator, j: cint): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonObjectconst_iterator_operatorSubscript(self.h, j))

proc operatorEqual*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: QJsonObjectconst_iterator, other: QJsonObjectconst_iterator): bool =

  fcQJsonObjectconst_iterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorPlusPlus*(self: QJsonObjectconst_iterator, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QJsonObjectconst_iterator, param1: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QJsonObjectconst_iterator, ): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QJsonObjectconst_iterator, param1: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlus*(self: QJsonObjectconst_iterator, j: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QJsonObjectconst_iterator, j: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinus(self.h, j))

proc operatorPlusAssign*(self: QJsonObjectconst_iterator, j: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QJsonObjectconst_iterator, j: cint): QJsonObjectconst_iterator =

  QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusAssign(self.h, j))

proc operatorMinusWithQJsonObjectconstIterator*(self: QJsonObjectconst_iterator, j: QJsonObjectconst_iterator): cint =

  fcQJsonObjectconst_iterator_operatorMinusWithQJsonObjectconstIterator(self.h, j.h)

proc operatorEqualWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorEqualWithOther(self.h, other.h)

proc operatorNotEqualWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorNotEqualWithOther(self.h, other.h)

proc operatorLesserWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqualWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreaterWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqualWithOther*(self: QJsonObjectconst_iterator, other: QJsonObjectiterator): bool =

  fcQJsonObjectconst_iterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc delete*(self: QJsonObjectconst_iterator) =
  fcQJsonObjectconst_iterator_delete(self.h)
