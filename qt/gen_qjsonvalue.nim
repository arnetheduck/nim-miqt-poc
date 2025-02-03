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
{.compile("gen_qjsonvalue.cpp", cflags).}


type QJsonValueType* = cint
const
  QJsonValueNull* = 0
  QJsonValueBool* = 1
  QJsonValueDouble* = 2
  QJsonValueString* = 3
  QJsonValueArray* = 4
  QJsonValueObject* = 5
  QJsonValueUndefined* = 128



import gen_qjsonvalue_types
export gen_qjsonvalue_types

import
  gen_qjsonarray,
  gen_qjsonobject,
  gen_qvariant
export
  gen_qjsonarray,
  gen_qjsonobject,
  gen_qvariant

type cQJsonValue*{.exportc: "QJsonValue", incompleteStruct.} = object
type cQJsonValueRef*{.exportc: "QJsonValueRef", incompleteStruct.} = object
type cQJsonValuePtr*{.exportc: "QJsonValuePtr", incompleteStruct.} = object
type cQJsonValueRefPtr*{.exportc: "QJsonValueRefPtr", incompleteStruct.} = object

proc fcQJsonValue_new(): ptr cQJsonValue {.importc: "QJsonValue_new".}
proc fcQJsonValue_new2(b: bool): ptr cQJsonValue {.importc: "QJsonValue_new2".}
proc fcQJsonValue_new3(n: float64): ptr cQJsonValue {.importc: "QJsonValue_new3".}
proc fcQJsonValue_new4(n: cint): ptr cQJsonValue {.importc: "QJsonValue_new4".}
proc fcQJsonValue_new5(v: clonglong): ptr cQJsonValue {.importc: "QJsonValue_new5".}
proc fcQJsonValue_new6(s: struct_miqt_string): ptr cQJsonValue {.importc: "QJsonValue_new6".}
proc fcQJsonValue_new7(s: cstring): ptr cQJsonValue {.importc: "QJsonValue_new7".}
proc fcQJsonValue_new8(a: pointer): ptr cQJsonValue {.importc: "QJsonValue_new8".}
proc fcQJsonValue_new9(o: pointer): ptr cQJsonValue {.importc: "QJsonValue_new9".}
proc fcQJsonValue_new10(other: pointer): ptr cQJsonValue {.importc: "QJsonValue_new10".}
proc fcQJsonValue_new11(param1: cint): ptr cQJsonValue {.importc: "QJsonValue_new11".}
proc fcQJsonValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonValue_operatorAssign".}
proc fcQJsonValue_swap(self: pointer, other: pointer): void {.importc: "QJsonValue_swap".}
proc fcQJsonValue_fromVariant(variant: pointer): pointer {.importc: "QJsonValue_fromVariant".}
proc fcQJsonValue_toVariant(self: pointer, ): pointer {.importc: "QJsonValue_toVariant".}
proc fcQJsonValue_typeX(self: pointer, ): cint {.importc: "QJsonValue_type".}
proc fcQJsonValue_isNull(self: pointer, ): bool {.importc: "QJsonValue_isNull".}
proc fcQJsonValue_isBool(self: pointer, ): bool {.importc: "QJsonValue_isBool".}
proc fcQJsonValue_isDouble(self: pointer, ): bool {.importc: "QJsonValue_isDouble".}
proc fcQJsonValue_isString(self: pointer, ): bool {.importc: "QJsonValue_isString".}
proc fcQJsonValue_isArray(self: pointer, ): bool {.importc: "QJsonValue_isArray".}
proc fcQJsonValue_isObject(self: pointer, ): bool {.importc: "QJsonValue_isObject".}
proc fcQJsonValue_isUndefined(self: pointer, ): bool {.importc: "QJsonValue_isUndefined".}
proc fcQJsonValue_toBool(self: pointer, ): bool {.importc: "QJsonValue_toBool".}
proc fcQJsonValue_toInt(self: pointer, ): cint {.importc: "QJsonValue_toInt".}
proc fcQJsonValue_toDouble(self: pointer, ): float64 {.importc: "QJsonValue_toDouble".}
proc fcQJsonValue_toString(self: pointer, ): struct_miqt_string {.importc: "QJsonValue_toString".}
proc fcQJsonValue_toStringWithDefaultValue(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValue_toStringWithDefaultValue".}
proc fcQJsonValue_toArray(self: pointer, ): pointer {.importc: "QJsonValue_toArray".}
proc fcQJsonValue_toArrayWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toArrayWithDefaultValue".}
proc fcQJsonValue_toObject(self: pointer, ): pointer {.importc: "QJsonValue_toObject".}
proc fcQJsonValue_toObjectWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toObjectWithDefaultValue".}
proc fcQJsonValue_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonValue_operatorSubscript".}
proc fcQJsonValue_operatorSubscriptWithInt(self: pointer, i: cint): pointer {.importc: "QJsonValue_operatorSubscriptWithInt".}
proc fcQJsonValue_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorEqual".}
proc fcQJsonValue_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorNotEqual".}
proc fcQJsonValue_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QJsonValue_toBool1".}
proc fcQJsonValue_toInt1(self: pointer, defaultValue: cint): cint {.importc: "QJsonValue_toInt1".}
proc fcQJsonValue_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValue_toDouble1".}
proc fcQJsonValue_delete(self: pointer) {.importc: "QJsonValue_delete".}
proc fcQJsonValueRef_new(param1: pointer): ptr cQJsonValueRef {.importc: "QJsonValueRef_new".}
proc fcQJsonValueRef_new2(array: pointer, idx: cint): ptr cQJsonValueRef {.importc: "QJsonValueRef_new2".}
proc fcQJsonValueRef_new3(objectVal: pointer, idx: cint): ptr cQJsonValueRef {.importc: "QJsonValueRef_new3".}
proc fcQJsonValueRef_ToQJsonValue(self: pointer, ): pointer {.importc: "QJsonValueRef_ToQJsonValue".}
proc fcQJsonValueRef_operatorAssign(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssign".}
proc fcQJsonValueRef_operatorAssignWithVal(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssignWithVal".}
proc fcQJsonValueRef_toVariant(self: pointer, ): pointer {.importc: "QJsonValueRef_toVariant".}
proc fcQJsonValueRef_typeX(self: pointer, ): cint {.importc: "QJsonValueRef_type".}
proc fcQJsonValueRef_isNull(self: pointer, ): bool {.importc: "QJsonValueRef_isNull".}
proc fcQJsonValueRef_isBool(self: pointer, ): bool {.importc: "QJsonValueRef_isBool".}
proc fcQJsonValueRef_isDouble(self: pointer, ): bool {.importc: "QJsonValueRef_isDouble".}
proc fcQJsonValueRef_isString(self: pointer, ): bool {.importc: "QJsonValueRef_isString".}
proc fcQJsonValueRef_isArray(self: pointer, ): bool {.importc: "QJsonValueRef_isArray".}
proc fcQJsonValueRef_isObject(self: pointer, ): bool {.importc: "QJsonValueRef_isObject".}
proc fcQJsonValueRef_isUndefined(self: pointer, ): bool {.importc: "QJsonValueRef_isUndefined".}
proc fcQJsonValueRef_toBool(self: pointer, ): bool {.importc: "QJsonValueRef_toBool".}
proc fcQJsonValueRef_toInt(self: pointer, ): cint {.importc: "QJsonValueRef_toInt".}
proc fcQJsonValueRef_toDouble(self: pointer, ): float64 {.importc: "QJsonValueRef_toDouble".}
proc fcQJsonValueRef_toString(self: pointer, ): struct_miqt_string {.importc: "QJsonValueRef_toString".}
proc fcQJsonValueRef_toArray(self: pointer, ): pointer {.importc: "QJsonValueRef_toArray".}
proc fcQJsonValueRef_toObject(self: pointer, ): pointer {.importc: "QJsonValueRef_toObject".}
proc fcQJsonValueRef_toBoolWithDefaultValue(self: pointer, defaultValue: bool): bool {.importc: "QJsonValueRef_toBoolWithDefaultValue".}
proc fcQJsonValueRef_toIntWithDefaultValue(self: pointer, defaultValue: cint): cint {.importc: "QJsonValueRef_toIntWithDefaultValue".}
proc fcQJsonValueRef_toDoubleWithDefaultValue(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValueRef_toDoubleWithDefaultValue".}
proc fcQJsonValueRef_toStringWithDefaultValue(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValueRef_toStringWithDefaultValue".}
proc fcQJsonValueRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorEqual".}
proc fcQJsonValueRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorNotEqual".}
proc fcQJsonValueRef_delete(self: pointer) {.importc: "QJsonValueRef_delete".}
proc fcQJsonValuePtr_new(val: pointer): ptr cQJsonValuePtr {.importc: "QJsonValuePtr_new".}
proc fcQJsonValuePtr_new2(param1: pointer): ptr cQJsonValuePtr {.importc: "QJsonValuePtr_new2".}
proc fcQJsonValuePtr_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonValuePtr_operatorMultiply".}
proc fcQJsonValuePtr_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonValuePtr_operatorMinusGreater".}
proc fcQJsonValuePtr_operatorAssign(self: pointer, param1: pointer): void {.importc: "QJsonValuePtr_operatorAssign".}
proc fcQJsonValuePtr_delete(self: pointer) {.importc: "QJsonValuePtr_delete".}
proc fcQJsonValueRefPtr_new(array: pointer, idx: cint): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new".}
proc fcQJsonValueRefPtr_new2(objectVal: pointer, idx: cint): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new2".}
proc fcQJsonValueRefPtr_new3(param1: pointer): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new3".}
proc fcQJsonValueRefPtr_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonValueRefPtr_operatorMultiply".}
proc fcQJsonValueRefPtr_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonValueRefPtr_operatorMinusGreater".}
proc fcQJsonValueRefPtr_operatorAssign(self: pointer, param1: pointer): void {.importc: "QJsonValueRefPtr_operatorAssign".}
proc fcQJsonValueRefPtr_delete(self: pointer) {.importc: "QJsonValueRefPtr_delete".}


func init*(T: type QJsonValue, h: ptr cQJsonValue): QJsonValue =
  T(h: h)
proc create*(T: type QJsonValue, ): QJsonValue =

  QJsonValue.init(fcQJsonValue_new())
proc create*(T: type QJsonValue, b: bool): QJsonValue =

  QJsonValue.init(fcQJsonValue_new2(b))
proc create*(T: type QJsonValue, n: float64): QJsonValue =

  QJsonValue.init(fcQJsonValue_new3(n))
proc create*(T: type QJsonValue, n: cint): QJsonValue =

  QJsonValue.init(fcQJsonValue_new4(n))
proc create*(T: type QJsonValue, v: clonglong): QJsonValue =

  QJsonValue.init(fcQJsonValue_new5(v))
proc create*(T: type QJsonValue, s: string): QJsonValue =

  QJsonValue.init(fcQJsonValue_new6(struct_miqt_string(data: s, len: csize_t(len(s)))))
proc create*(T: type QJsonValue, s: cstring): QJsonValue =

  QJsonValue.init(fcQJsonValue_new7(s))
proc create*(T: type QJsonValue, a: gen_qjsonarray.QJsonArray): QJsonValue =

  QJsonValue.init(fcQJsonValue_new8(a.h))
proc create2*(T: type QJsonValue, o: gen_qjsonobject.QJsonObject): QJsonValue =

  QJsonValue.init(fcQJsonValue_new9(o.h))
proc create2*(T: type QJsonValue, other: QJsonValue): QJsonValue =

  QJsonValue.init(fcQJsonValue_new10(other.h))
proc create2*(T: type QJsonValue, param1: QJsonValueType): QJsonValue =

  QJsonValue.init(fcQJsonValue_new11(cint(param1)))
proc operatorAssign*(self: QJsonValue, other: QJsonValue): void =

  fcQJsonValue_operatorAssign(self.h, other.h)

proc swap*(self: QJsonValue, other: QJsonValue): void =

  fcQJsonValue_swap(self.h, other.h)

proc fromVariant*(_: type QJsonValue, variant: gen_qvariant.QVariant): QJsonValue =

  QJsonValue(h: fcQJsonValue_fromVariant(variant.h))

proc toVariant*(self: QJsonValue, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQJsonValue_toVariant(self.h))

proc typeX*(self: QJsonValue, ): QJsonValueType =

  QJsonValueType(fcQJsonValue_typeX(self.h))

proc isNull*(self: QJsonValue, ): bool =

  fcQJsonValue_isNull(self.h)

proc isBool*(self: QJsonValue, ): bool =

  fcQJsonValue_isBool(self.h)

proc isDouble*(self: QJsonValue, ): bool =

  fcQJsonValue_isDouble(self.h)

proc isString*(self: QJsonValue, ): bool =

  fcQJsonValue_isString(self.h)

proc isArray*(self: QJsonValue, ): bool =

  fcQJsonValue_isArray(self.h)

proc isObject*(self: QJsonValue, ): bool =

  fcQJsonValue_isObject(self.h)

proc isUndefined*(self: QJsonValue, ): bool =

  fcQJsonValue_isUndefined(self.h)

proc toBool*(self: QJsonValue, ): bool =

  fcQJsonValue_toBool(self.h)

proc toInt*(self: QJsonValue, ): cint =

  fcQJsonValue_toInt(self.h)

proc toDouble*(self: QJsonValue, ): float64 =

  fcQJsonValue_toDouble(self.h)

proc toString*(self: QJsonValue, ): string =

  let v_ms = fcQJsonValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithDefaultValue*(self: QJsonValue, defaultValue: string): string =

  let v_ms = fcQJsonValue_toStringWithDefaultValue(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: QJsonValue, ): gen_qjsonarray.QJsonArray =

  gen_qjsonarray.QJsonArray(h: fcQJsonValue_toArray(self.h))

proc toArrayWithDefaultValue*(self: QJsonValue, defaultValue: gen_qjsonarray.QJsonArray): gen_qjsonarray.QJsonArray =

  gen_qjsonarray.QJsonArray(h: fcQJsonValue_toArrayWithDefaultValue(self.h, defaultValue.h))

proc toObject*(self: QJsonValue, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQJsonValue_toObject(self.h))

proc toObjectWithDefaultValue*(self: QJsonValue, defaultValue: gen_qjsonobject.QJsonObject): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQJsonValue_toObjectWithDefaultValue(self.h, defaultValue.h))

proc operatorSubscript*(self: QJsonValue, key: string): QJsonValue =

  QJsonValue(h: fcQJsonValue_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscriptWithInt*(self: QJsonValue, i: cint): QJsonValue =

  QJsonValue(h: fcQJsonValue_operatorSubscriptWithInt(self.h, i))

proc operatorEqual*(self: QJsonValue, other: QJsonValue): bool =

  fcQJsonValue_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonValue, other: QJsonValue): bool =

  fcQJsonValue_operatorNotEqual(self.h, other.h)

proc toBool1*(self: QJsonValue, defaultValue: bool): bool =

  fcQJsonValue_toBool1(self.h, defaultValue)

proc toInt1*(self: QJsonValue, defaultValue: cint): cint =

  fcQJsonValue_toInt1(self.h, defaultValue)

proc toDouble1*(self: QJsonValue, defaultValue: float64): float64 =

  fcQJsonValue_toDouble1(self.h, defaultValue)

proc delete*(self: QJsonValue) =
  fcQJsonValue_delete(self.h)

func init*(T: type QJsonValueRef, h: ptr cQJsonValueRef): QJsonValueRef =
  T(h: h)
proc create*(T: type QJsonValueRef, param1: QJsonValueRef): QJsonValueRef =

  QJsonValueRef.init(fcQJsonValueRef_new(param1.h))
proc create*(T: type QJsonValueRef, array: gen_qjsonarray.QJsonArray, idx: cint): QJsonValueRef =

  QJsonValueRef.init(fcQJsonValueRef_new2(array.h, idx))
proc create2*(T: type QJsonValueRef, objectVal: gen_qjsonobject.QJsonObject, idx: cint): QJsonValueRef =

  QJsonValueRef.init(fcQJsonValueRef_new3(objectVal.h, idx))
proc ToQJsonValue*(self: QJsonValueRef, ): QJsonValue =

  QJsonValue(h: fcQJsonValueRef_ToQJsonValue(self.h))

proc operatorAssign*(self: QJsonValueRef, val: QJsonValue): void =

  fcQJsonValueRef_operatorAssign(self.h, val.h)

proc operatorAssignWithVal*(self: QJsonValueRef, val: QJsonValueRef): void =

  fcQJsonValueRef_operatorAssignWithVal(self.h, val.h)

proc toVariant*(self: QJsonValueRef, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQJsonValueRef_toVariant(self.h))

proc typeX*(self: QJsonValueRef, ): QJsonValueType =

  QJsonValueType(fcQJsonValueRef_typeX(self.h))

proc isNull*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isNull(self.h)

proc isBool*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isBool(self.h)

proc isDouble*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isDouble(self.h)

proc isString*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isString(self.h)

proc isArray*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isArray(self.h)

proc isObject*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isObject(self.h)

proc isUndefined*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_isUndefined(self.h)

proc toBool*(self: QJsonValueRef, ): bool =

  fcQJsonValueRef_toBool(self.h)

proc toInt*(self: QJsonValueRef, ): cint =

  fcQJsonValueRef_toInt(self.h)

proc toDouble*(self: QJsonValueRef, ): float64 =

  fcQJsonValueRef_toDouble(self.h)

proc toString*(self: QJsonValueRef, ): string =

  let v_ms = fcQJsonValueRef_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: QJsonValueRef, ): gen_qjsonarray.QJsonArray =

  gen_qjsonarray.QJsonArray(h: fcQJsonValueRef_toArray(self.h))

proc toObject*(self: QJsonValueRef, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQJsonValueRef_toObject(self.h))

proc toBoolWithDefaultValue*(self: QJsonValueRef, defaultValue: bool): bool =

  fcQJsonValueRef_toBoolWithDefaultValue(self.h, defaultValue)

proc toIntWithDefaultValue*(self: QJsonValueRef, defaultValue: cint): cint =

  fcQJsonValueRef_toIntWithDefaultValue(self.h, defaultValue)

proc toDoubleWithDefaultValue*(self: QJsonValueRef, defaultValue: float64): float64 =

  fcQJsonValueRef_toDoubleWithDefaultValue(self.h, defaultValue)

proc toStringWithDefaultValue*(self: QJsonValueRef, defaultValue: string): string =

  let v_ms = fcQJsonValueRef_toStringWithDefaultValue(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: QJsonValueRef, other: QJsonValue): bool =

  fcQJsonValueRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonValueRef, other: QJsonValue): bool =

  fcQJsonValueRef_operatorNotEqual(self.h, other.h)

proc delete*(self: QJsonValueRef) =
  fcQJsonValueRef_delete(self.h)

func init*(T: type QJsonValuePtr, h: ptr cQJsonValuePtr): QJsonValuePtr =
  T(h: h)
proc create*(T: type QJsonValuePtr, val: QJsonValue): QJsonValuePtr =

  QJsonValuePtr.init(fcQJsonValuePtr_new(val.h))
proc create2*(T: type QJsonValuePtr, param1: QJsonValuePtr): QJsonValuePtr =

  QJsonValuePtr.init(fcQJsonValuePtr_new2(param1.h))
proc operatorMultiply*(self: QJsonValuePtr, ): QJsonValue =

  QJsonValue(h: fcQJsonValuePtr_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonValuePtr, ): QJsonValue =

  QJsonValue(h: fcQJsonValuePtr_operatorMinusGreater(self.h))

proc operatorAssign*(self: QJsonValuePtr, param1: QJsonValuePtr): void =

  fcQJsonValuePtr_operatorAssign(self.h, param1.h)

proc delete*(self: QJsonValuePtr) =
  fcQJsonValuePtr_delete(self.h)

func init*(T: type QJsonValueRefPtr, h: ptr cQJsonValueRefPtr): QJsonValueRefPtr =
  T(h: h)
proc create*(T: type QJsonValueRefPtr, array: gen_qjsonarray.QJsonArray, idx: cint): QJsonValueRefPtr =

  QJsonValueRefPtr.init(fcQJsonValueRefPtr_new(array.h, idx))
proc create2*(T: type QJsonValueRefPtr, objectVal: gen_qjsonobject.QJsonObject, idx: cint): QJsonValueRefPtr =

  QJsonValueRefPtr.init(fcQJsonValueRefPtr_new2(objectVal.h, idx))
proc create*(T: type QJsonValueRefPtr, param1: QJsonValueRefPtr): QJsonValueRefPtr =

  QJsonValueRefPtr.init(fcQJsonValueRefPtr_new3(param1.h))
proc operatorMultiply*(self: QJsonValueRefPtr, ): QJsonValueRef =

  QJsonValueRef(h: fcQJsonValueRefPtr_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QJsonValueRefPtr, ): QJsonValueRef =

  QJsonValueRef(h: fcQJsonValueRefPtr_operatorMinusGreater(self.h))

proc operatorAssign*(self: QJsonValueRefPtr, param1: QJsonValueRefPtr): void =

  fcQJsonValueRefPtr_operatorAssign(self.h, param1.h)

proc delete*(self: QJsonValueRefPtr) =
  fcQJsonValueRefPtr_delete(self.h)
