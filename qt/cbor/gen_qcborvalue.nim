import Qt5Core_libs

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

const cflags = gorge("pkg-config -cflags Qt5Core")
{.compile("gen_qcborvalue.cpp", cflags).}


type QCborValueEncodingOption* = cint
const
  QCborValueSortKeysInMaps* = 1
  QCborValueUseFloat* = 2
  QCborValueUseFloat16* = 6
  QCborValueUseIntegers* = 8
  QCborValueNoTransformation* = 0



type QCborValueDiagnosticNotationOption* = cint
const
  QCborValueCompact* = 0
  QCborValueLineWrapped* = 1
  QCborValueExtendedFormat* = 2



type QCborValueType* = cint
const
  QCborValueInteger* = 0
  QCborValueByteArray* = 64
  QCborValueString* = 96
  QCborValueArray* = 128
  QCborValueMap* = 160
  QCborValueTag* = 192
  QCborValueSimpleType* = 256
  QCborValueFalse* = 276
  QCborValueTrue* = 277
  QCborValueNull* = 278
  QCborValueUndefined* = 279
  QCborValueDouble* = 514
  QCborValueDateTime* = 65536
  QCborValueUrl* = 65568
  QCborValueRegularExpression* = 65571
  QCborValueUuid* = 65573
  QCborValueInvalid* = -1



import gen_qcborvalue_types
export gen_qcborvalue_types

import
  gen_qcborarray,
  gen_qcborcommon,
  gen_qcbormap,
  gen_qcborstreamreader,
  gen_qcborstreamwriter,
  gen_qdatetime,
  gen_qjsonvalue,
  gen_qregularexpression,
  gen_qurl,
  gen_quuid,
  gen_qvariant
export
  gen_qcborarray,
  gen_qcborcommon,
  gen_qcbormap,
  gen_qcborstreamreader,
  gen_qcborstreamwriter,
  gen_qdatetime,
  gen_qjsonvalue,
  gen_qregularexpression,
  gen_qurl,
  gen_quuid,
  gen_qvariant

type cQCborParserError*{.exportc: "QCborParserError", incompleteStruct.} = object
type cQCborValue*{.exportc: "QCborValue", incompleteStruct.} = object
type cQCborValueRef*{.exportc: "QCborValueRef", incompleteStruct.} = object

proc fcQCborParserError_errorString(self: pointer, ): struct_miqt_string {.importc: "QCborParserError_errorString".}
proc fcQCborParserError_delete(self: pointer) {.importc: "QCborParserError_delete".}
proc fcQCborValue_new(): ptr cQCborValue {.importc: "QCborValue_new".}
proc fcQCborValue_new2(t_x: cint): ptr cQCborValue {.importc: "QCborValue_new2".}
proc fcQCborValue_new3(b_x: bool): ptr cQCborValue {.importc: "QCborValue_new3".}
proc fcQCborValue_new4(i: cint): ptr cQCborValue {.importc: "QCborValue_new4".}
proc fcQCborValue_new5(u: cuint): ptr cQCborValue {.importc: "QCborValue_new5".}
proc fcQCborValue_new6(i: clonglong): ptr cQCborValue {.importc: "QCborValue_new6".}
proc fcQCborValue_new7(v: float64): ptr cQCborValue {.importc: "QCborValue_new7".}
proc fcQCborValue_new8(st: cint): ptr cQCborValue {.importc: "QCborValue_new8".}
proc fcQCborValue_new9(ba: struct_miqt_string): ptr cQCborValue {.importc: "QCborValue_new9".}
proc fcQCborValue_new10(s: struct_miqt_string): ptr cQCborValue {.importc: "QCborValue_new10".}
proc fcQCborValue_new11(s: cstring): ptr cQCborValue {.importc: "QCborValue_new11".}
proc fcQCborValue_new12(a: pointer): ptr cQCborValue {.importc: "QCborValue_new12".}
proc fcQCborValue_new13(m: pointer): ptr cQCborValue {.importc: "QCborValue_new13".}
proc fcQCborValue_new14(tag: cint): ptr cQCborValue {.importc: "QCborValue_new14".}
proc fcQCborValue_new15(t_x: cint): ptr cQCborValue {.importc: "QCborValue_new15".}
proc fcQCborValue_new16(dt: pointer): ptr cQCborValue {.importc: "QCborValue_new16".}
proc fcQCborValue_new17(url: pointer): ptr cQCborValue {.importc: "QCborValue_new17".}
proc fcQCborValue_new18(rx: pointer): ptr cQCborValue {.importc: "QCborValue_new18".}
proc fcQCborValue_new19(uuid: pointer): ptr cQCborValue {.importc: "QCborValue_new19".}
proc fcQCborValue_new20(other: pointer): ptr cQCborValue {.importc: "QCborValue_new20".}
proc fcQCborValue_new21(tag: cint, taggedValue: pointer): ptr cQCborValue {.importc: "QCborValue_new21".}
proc fcQCborValue_new22(t_x: cint, tv: pointer): ptr cQCborValue {.importc: "QCborValue_new22".}
proc fcQCborValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborValue_operatorAssign".}
proc fcQCborValue_swap(self: pointer, other: pointer): void {.importc: "QCborValue_swap".}
proc fcQCborValue_typeX(self: pointer, ): cint {.importc: "QCborValue_type".}
proc fcQCborValue_isInteger(self: pointer, ): bool {.importc: "QCborValue_isInteger".}
proc fcQCborValue_isByteArray(self: pointer, ): bool {.importc: "QCborValue_isByteArray".}
proc fcQCborValue_isString(self: pointer, ): bool {.importc: "QCborValue_isString".}
proc fcQCborValue_isArray(self: pointer, ): bool {.importc: "QCborValue_isArray".}
proc fcQCborValue_isMap(self: pointer, ): bool {.importc: "QCborValue_isMap".}
proc fcQCborValue_isTag(self: pointer, ): bool {.importc: "QCborValue_isTag".}
proc fcQCborValue_isFalse(self: pointer, ): bool {.importc: "QCborValue_isFalse".}
proc fcQCborValue_isTrue(self: pointer, ): bool {.importc: "QCborValue_isTrue".}
proc fcQCborValue_isBool(self: pointer, ): bool {.importc: "QCborValue_isBool".}
proc fcQCborValue_isNull(self: pointer, ): bool {.importc: "QCborValue_isNull".}
proc fcQCborValue_isUndefined(self: pointer, ): bool {.importc: "QCborValue_isUndefined".}
proc fcQCborValue_isDouble(self: pointer, ): bool {.importc: "QCborValue_isDouble".}
proc fcQCborValue_isDateTime(self: pointer, ): bool {.importc: "QCborValue_isDateTime".}
proc fcQCborValue_isUrl(self: pointer, ): bool {.importc: "QCborValue_isUrl".}
proc fcQCborValue_isRegularExpression(self: pointer, ): bool {.importc: "QCborValue_isRegularExpression".}
proc fcQCborValue_isUuid(self: pointer, ): bool {.importc: "QCborValue_isUuid".}
proc fcQCborValue_isInvalid(self: pointer, ): bool {.importc: "QCborValue_isInvalid".}
proc fcQCborValue_isContainer(self: pointer, ): bool {.importc: "QCborValue_isContainer".}
proc fcQCborValue_isSimpleType(self: pointer, ): bool {.importc: "QCborValue_isSimpleType".}
proc fcQCborValue_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborValue_isSimpleTypeWithSt".}
proc fcQCborValue_toSimpleType(self: pointer, ): cint {.importc: "QCborValue_toSimpleType".}
proc fcQCborValue_toInteger(self: pointer, ): clonglong {.importc: "QCborValue_toInteger".}
proc fcQCborValue_toBool(self: pointer, ): bool {.importc: "QCborValue_toBool".}
proc fcQCborValue_toDouble(self: pointer, ): float64 {.importc: "QCborValue_toDouble".}
proc fcQCborValue_tag(self: pointer, ): cint {.importc: "QCborValue_tag".}
proc fcQCborValue_taggedValue(self: pointer, ): pointer {.importc: "QCborValue_taggedValue".}
proc fcQCborValue_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toByteArray".}
proc fcQCborValue_toString(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toString".}
proc fcQCborValue_toDateTime(self: pointer, ): pointer {.importc: "QCborValue_toDateTime".}
proc fcQCborValue_toUrl(self: pointer, ): pointer {.importc: "QCborValue_toUrl".}
proc fcQCborValue_toRegularExpression(self: pointer, ): pointer {.importc: "QCborValue_toRegularExpression".}
proc fcQCborValue_toUuid(self: pointer, ): pointer {.importc: "QCborValue_toUuid".}
proc fcQCborValue_toArray(self: pointer, ): pointer {.importc: "QCborValue_toArray".}
proc fcQCborValue_toArrayWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toArrayWithDefaultValue".}
proc fcQCborValue_toMap(self: pointer, ): pointer {.importc: "QCborValue_toMap".}
proc fcQCborValue_toMapWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toMapWithDefaultValue".}
proc fcQCborValue_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValue_operatorSubscript".}
proc fcQCborValue_operatorSubscript2(self: pointer, key: clonglong): pointer {.importc: "QCborValue_operatorSubscript2".}
proc fcQCborValue_operatorSubscript3(self: pointer, key: clonglong): pointer {.importc: "QCborValue_operatorSubscript3".}
proc fcQCborValue_operatorSubscript5(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValue_operatorSubscript5".}
proc fcQCborValue_compare(self: pointer, other: pointer): cint {.importc: "QCborValue_compare".}
proc fcQCborValue_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorEqual".}
proc fcQCborValue_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorNotEqual".}
proc fcQCborValue_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorLesser".}
proc fcQCborValue_fromVariant(variant: pointer): pointer {.importc: "QCborValue_fromVariant".}
proc fcQCborValue_toVariant(self: pointer, ): pointer {.importc: "QCborValue_toVariant".}
proc fcQCborValue_fromJsonValue(v: pointer): pointer {.importc: "QCborValue_fromJsonValue".}
proc fcQCborValue_toJsonValue(self: pointer, ): pointer {.importc: "QCborValue_toJsonValue".}
proc fcQCborValue_fromCbor(reader: pointer): pointer {.importc: "QCborValue_fromCbor".}
proc fcQCborValue_fromCborWithBa(ba: struct_miqt_string): pointer {.importc: "QCborValue_fromCborWithBa".}
proc fcQCborValue_fromCbor2(data: cstring, len: int64): pointer {.importc: "QCborValue_fromCbor2".}
proc fcQCborValue_fromCbor3(data: ptr uint8, len: int64): pointer {.importc: "QCborValue_fromCbor3".}
proc fcQCborValue_toCbor(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toCbor".}
proc fcQCborValue_toCborWithWriter(self: pointer, writer: pointer): void {.importc: "QCborValue_toCborWithWriter".}
proc fcQCborValue_toDiagnosticNotation(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toDiagnosticNotation".}
proc fcQCborValue_toSimpleType1(self: pointer, defaultValue: cint): cint {.importc: "QCborValue_toSimpleType1".}
proc fcQCborValue_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QCborValue_toInteger1".}
proc fcQCborValue_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QCborValue_toBool1".}
proc fcQCborValue_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QCborValue_toDouble1".}
proc fcQCborValue_tag1(self: pointer, defaultValue: cint): cint {.importc: "QCborValue_tag1".}
proc fcQCborValue_taggedValue1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_taggedValue1".}
proc fcQCborValue_toByteArray1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValue_toByteArray1".}
proc fcQCborValue_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValue_toString1".}
proc fcQCborValue_toDateTime1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toDateTime1".}
proc fcQCborValue_toUrl1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toUrl1".}
proc fcQCborValue_toRegularExpression1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toRegularExpression1".}
proc fcQCborValue_toUuid1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toUuid1".}
proc fcQCborValue_fromCbor22(ba: struct_miqt_string, error: pointer): pointer {.importc: "QCborValue_fromCbor22".}
proc fcQCborValue_fromCbor32(data: cstring, len: int64, error: pointer): pointer {.importc: "QCborValue_fromCbor32".}
proc fcQCborValue_fromCbor33(data: ptr uint8, len: int64, error: pointer): pointer {.importc: "QCborValue_fromCbor33".}
proc fcQCborValue_toCbor1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValue_toCbor1".}
proc fcQCborValue_toCbor2(self: pointer, writer: pointer, opt: cint): void {.importc: "QCborValue_toCbor2".}
proc fcQCborValue_toDiagnosticNotation1(self: pointer, opts: cint): struct_miqt_string {.importc: "QCborValue_toDiagnosticNotation1".}
proc fcQCborValue_delete(self: pointer) {.importc: "QCborValue_delete".}
proc fcQCborValueRef_new(param1: pointer): ptr cQCborValueRef {.importc: "QCborValueRef_new".}
proc fcQCborValueRef_ToQCborValue(self: pointer, ): pointer {.importc: "QCborValueRef_ToQCborValue".}
proc fcQCborValueRef_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborValueRef_operatorAssign".}
proc fcQCborValueRef_operatorAssignWithOther(self: pointer, other: pointer): void {.importc: "QCborValueRef_operatorAssignWithOther".}
proc fcQCborValueRef_typeX(self: pointer, ): cint {.importc: "QCborValueRef_type".}
proc fcQCborValueRef_isInteger(self: pointer, ): bool {.importc: "QCborValueRef_isInteger".}
proc fcQCborValueRef_isByteArray(self: pointer, ): bool {.importc: "QCborValueRef_isByteArray".}
proc fcQCborValueRef_isString(self: pointer, ): bool {.importc: "QCborValueRef_isString".}
proc fcQCborValueRef_isArray(self: pointer, ): bool {.importc: "QCborValueRef_isArray".}
proc fcQCborValueRef_isMap(self: pointer, ): bool {.importc: "QCborValueRef_isMap".}
proc fcQCborValueRef_isTag(self: pointer, ): bool {.importc: "QCborValueRef_isTag".}
proc fcQCborValueRef_isFalse(self: pointer, ): bool {.importc: "QCborValueRef_isFalse".}
proc fcQCborValueRef_isTrue(self: pointer, ): bool {.importc: "QCborValueRef_isTrue".}
proc fcQCborValueRef_isBool(self: pointer, ): bool {.importc: "QCborValueRef_isBool".}
proc fcQCborValueRef_isNull(self: pointer, ): bool {.importc: "QCborValueRef_isNull".}
proc fcQCborValueRef_isUndefined(self: pointer, ): bool {.importc: "QCborValueRef_isUndefined".}
proc fcQCborValueRef_isDouble(self: pointer, ): bool {.importc: "QCborValueRef_isDouble".}
proc fcQCborValueRef_isDateTime(self: pointer, ): bool {.importc: "QCborValueRef_isDateTime".}
proc fcQCborValueRef_isUrl(self: pointer, ): bool {.importc: "QCborValueRef_isUrl".}
proc fcQCborValueRef_isRegularExpression(self: pointer, ): bool {.importc: "QCborValueRef_isRegularExpression".}
proc fcQCborValueRef_isUuid(self: pointer, ): bool {.importc: "QCborValueRef_isUuid".}
proc fcQCborValueRef_isInvalid(self: pointer, ): bool {.importc: "QCborValueRef_isInvalid".}
proc fcQCborValueRef_isContainer(self: pointer, ): bool {.importc: "QCborValueRef_isContainer".}
proc fcQCborValueRef_isSimpleType(self: pointer, ): bool {.importc: "QCborValueRef_isSimpleType".}
proc fcQCborValueRef_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborValueRef_isSimpleTypeWithSt".}
proc fcQCborValueRef_tag(self: pointer, ): cint {.importc: "QCborValueRef_tag".}
proc fcQCborValueRef_taggedValue(self: pointer, ): pointer {.importc: "QCborValueRef_taggedValue".}
proc fcQCborValueRef_toInteger(self: pointer, ): clonglong {.importc: "QCborValueRef_toInteger".}
proc fcQCborValueRef_toBool(self: pointer, ): bool {.importc: "QCborValueRef_toBool".}
proc fcQCborValueRef_toDouble(self: pointer, ): float64 {.importc: "QCborValueRef_toDouble".}
proc fcQCborValueRef_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toByteArray".}
proc fcQCborValueRef_toString(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toString".}
proc fcQCborValueRef_toDateTime(self: pointer, ): pointer {.importc: "QCborValueRef_toDateTime".}
proc fcQCborValueRef_toUrl(self: pointer, ): pointer {.importc: "QCborValueRef_toUrl".}
proc fcQCborValueRef_toRegularExpression(self: pointer, ): pointer {.importc: "QCborValueRef_toRegularExpression".}
proc fcQCborValueRef_toUuid(self: pointer, ): pointer {.importc: "QCborValueRef_toUuid".}
proc fcQCborValueRef_toArray(self: pointer, ): pointer {.importc: "QCborValueRef_toArray".}
proc fcQCborValueRef_toArrayWithQCborArray(self: pointer, a: pointer): pointer {.importc: "QCborValueRef_toArrayWithQCborArray".}
proc fcQCborValueRef_toMap(self: pointer, ): pointer {.importc: "QCborValueRef_toMap".}
proc fcQCborValueRef_toMapWithQCborMap(self: pointer, m: pointer): pointer {.importc: "QCborValueRef_toMapWithQCborMap".}
proc fcQCborValueRef_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValueRef_operatorSubscript".}
proc fcQCborValueRef_operatorSubscript2(self: pointer, key: clonglong): pointer {.importc: "QCborValueRef_operatorSubscript2".}
proc fcQCborValueRef_operatorSubscript3(self: pointer, key: clonglong): pointer {.importc: "QCborValueRef_operatorSubscript3".}
proc fcQCborValueRef_operatorSubscript5(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValueRef_operatorSubscript5".}
proc fcQCborValueRef_compare(self: pointer, other: pointer): cint {.importc: "QCborValueRef_compare".}
proc fcQCborValueRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorEqual".}
proc fcQCborValueRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorNotEqual".}
proc fcQCborValueRef_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorLesser".}
proc fcQCborValueRef_toVariant(self: pointer, ): pointer {.importc: "QCborValueRef_toVariant".}
proc fcQCborValueRef_toJsonValue(self: pointer, ): pointer {.importc: "QCborValueRef_toJsonValue".}
proc fcQCborValueRef_toCbor(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toCbor".}
proc fcQCborValueRef_toCborWithWriter(self: pointer, writer: pointer): void {.importc: "QCborValueRef_toCborWithWriter".}
proc fcQCborValueRef_toDiagnosticNotation(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toDiagnosticNotation".}
proc fcQCborValueRef_tag1(self: pointer, defaultValue: cint): cint {.importc: "QCborValueRef_tag1".}
proc fcQCborValueRef_taggedValue1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_taggedValue1".}
proc fcQCborValueRef_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QCborValueRef_toInteger1".}
proc fcQCborValueRef_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QCborValueRef_toBool1".}
proc fcQCborValueRef_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QCborValueRef_toDouble1".}
proc fcQCborValueRef_toByteArray1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueRef_toByteArray1".}
proc fcQCborValueRef_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueRef_toString1".}
proc fcQCborValueRef_toDateTime1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toDateTime1".}
proc fcQCborValueRef_toUrl1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toUrl1".}
proc fcQCborValueRef_toRegularExpression1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toRegularExpression1".}
proc fcQCborValueRef_toUuid1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toUuid1".}
proc fcQCborValueRef_toCbor1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueRef_toCbor1".}
proc fcQCborValueRef_toCbor2(self: pointer, writer: pointer, opt: cint): void {.importc: "QCborValueRef_toCbor2".}
proc fcQCborValueRef_toDiagnosticNotation1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueRef_toDiagnosticNotation1".}
proc fcQCborValueRef_delete(self: pointer) {.importc: "QCborValueRef_delete".}


func init*(T: type QCborParserError, h: ptr cQCborParserError): QCborParserError =
  T(h: h)
proc errorString*(self: QCborParserError, ): string =

  let v_ms = fcQCborParserError_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCborParserError) =
  fcQCborParserError_delete(self.h)

func init*(T: type QCborValue, h: ptr cQCborValue): QCborValue =
  T(h: h)
proc create*(T: type QCborValue, ): QCborValue =

  QCborValue.init(fcQCborValue_new())
proc create*(T: type QCborValue, t_x: QCborValueType): QCborValue =

  QCborValue.init(fcQCborValue_new2(cint(t_x)))
proc create*(T: type QCborValue, b_x: bool): QCborValue =

  QCborValue.init(fcQCborValue_new3(b_x))
proc create2*(T: type QCborValue, i: cint): QCborValue =

  QCborValue.init(fcQCborValue_new4(i))
proc create*(T: type QCborValue, u: cuint): QCborValue =

  QCborValue.init(fcQCborValue_new5(u))
proc create*(T: type QCborValue, i: clonglong): QCborValue =

  QCborValue.init(fcQCborValue_new6(i))
proc create*(T: type QCborValue, v: float64): QCborValue =

  QCborValue.init(fcQCborValue_new7(v))
proc create2*(T: type QCborValue, st: gen_qcborcommon.QCborSimpleType): QCborValue =

  QCborValue.init(fcQCborValue_new8(cint(st)))
proc create*(T: type QCborValue, ba: seq[byte]): QCborValue =

  QCborValue.init(fcQCborValue_new9(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))))
proc create2*(T: type QCborValue, s: string): QCborValue =

  QCborValue.init(fcQCborValue_new10(struct_miqt_string(data: s, len: csize_t(len(s)))))
proc create*(T: type QCborValue, s: cstring): QCborValue =

  QCborValue.init(fcQCborValue_new11(s))
proc create*(T: type QCborValue, a: gen_qcborarray.QCborArray): QCborValue =

  QCborValue.init(fcQCborValue_new12(a.h))
proc create2*(T: type QCborValue, m: gen_qcbormap.QCborMap): QCborValue =

  QCborValue.init(fcQCborValue_new13(m.h))
proc create2*(T: type QCborValue, tag: gen_qcborcommon.QCborTag): QCborValue =

  QCborValue.init(fcQCborValue_new14(cint(tag)))
proc create2*(T: type QCborValue, t_x: gen_qcborcommon.QCborKnownTags): QCborValue =

  QCborValue.init(fcQCborValue_new15(cint(t_x)))
proc create2*(T: type QCborValue, dt: gen_qdatetime.QDateTime): QCborValue =

  QCborValue.init(fcQCborValue_new16(dt.h))
proc create2*(T: type QCborValue, url: gen_qurl.QUrl): QCborValue =

  QCborValue.init(fcQCborValue_new17(url.h))
proc create2*(T: type QCborValue, rx: gen_qregularexpression.QRegularExpression): QCborValue =

  QCborValue.init(fcQCborValue_new18(rx.h))
proc create2*(T: type QCborValue, uuid: gen_quuid.QUuid): QCborValue =

  QCborValue.init(fcQCborValue_new19(uuid.h))
proc create2*(T: type QCborValue, other: QCborValue): QCborValue =

  QCborValue.init(fcQCborValue_new20(other.h))
proc create*(T: type QCborValue, tag: gen_qcborcommon.QCborTag, taggedValue: QCborValue): QCborValue =

  QCborValue.init(fcQCborValue_new21(cint(tag), taggedValue.h))
proc create2*(T: type QCborValue, t_x: gen_qcborcommon.QCborKnownTags, tv: QCborValue): QCborValue =

  QCborValue.init(fcQCborValue_new22(cint(t_x), tv.h))
proc operatorAssign*(self: QCborValue, other: QCborValue): void =

  fcQCborValue_operatorAssign(self.h, other.h)

proc swap*(self: QCborValue, other: QCborValue): void =

  fcQCborValue_swap(self.h, other.h)

proc typeX*(self: QCborValue, ): QCborValueType =

  QCborValueType(fcQCborValue_typeX(self.h))

proc isInteger*(self: QCborValue, ): bool =

  fcQCborValue_isInteger(self.h)

proc isByteArray*(self: QCborValue, ): bool =

  fcQCborValue_isByteArray(self.h)

proc isString*(self: QCborValue, ): bool =

  fcQCborValue_isString(self.h)

proc isArray*(self: QCborValue, ): bool =

  fcQCborValue_isArray(self.h)

proc isMap*(self: QCborValue, ): bool =

  fcQCborValue_isMap(self.h)

proc isTag*(self: QCborValue, ): bool =

  fcQCborValue_isTag(self.h)

proc isFalse*(self: QCborValue, ): bool =

  fcQCborValue_isFalse(self.h)

proc isTrue*(self: QCborValue, ): bool =

  fcQCborValue_isTrue(self.h)

proc isBool*(self: QCborValue, ): bool =

  fcQCborValue_isBool(self.h)

proc isNull*(self: QCborValue, ): bool =

  fcQCborValue_isNull(self.h)

proc isUndefined*(self: QCborValue, ): bool =

  fcQCborValue_isUndefined(self.h)

proc isDouble*(self: QCborValue, ): bool =

  fcQCborValue_isDouble(self.h)

proc isDateTime*(self: QCborValue, ): bool =

  fcQCborValue_isDateTime(self.h)

proc isUrl*(self: QCborValue, ): bool =

  fcQCborValue_isUrl(self.h)

proc isRegularExpression*(self: QCborValue, ): bool =

  fcQCborValue_isRegularExpression(self.h)

proc isUuid*(self: QCborValue, ): bool =

  fcQCborValue_isUuid(self.h)

proc isInvalid*(self: QCborValue, ): bool =

  fcQCborValue_isInvalid(self.h)

proc isContainer*(self: QCborValue, ): bool =

  fcQCborValue_isContainer(self.h)

proc isSimpleType*(self: QCborValue, ): bool =

  fcQCborValue_isSimpleType(self.h)

proc isSimpleTypeWithSt*(self: QCborValue, st: gen_qcborcommon.QCborSimpleType): bool =

  fcQCborValue_isSimpleTypeWithSt(self.h, cint(st))

proc toSimpleType*(self: QCborValue, ): gen_qcborcommon.QCborSimpleType =

  gen_qcborcommon.QCborSimpleType(fcQCborValue_toSimpleType(self.h))

proc toInteger*(self: QCborValue, ): clonglong =

  fcQCborValue_toInteger(self.h)

proc toBool*(self: QCborValue, ): bool =

  fcQCborValue_toBool(self.h)

proc toDouble*(self: QCborValue, ): float64 =

  fcQCborValue_toDouble(self.h)

proc tag*(self: QCborValue, ): gen_qcborcommon.QCborTag =

  gen_qcborcommon.QCborTag(fcQCborValue_tag(self.h))

proc taggedValue*(self: QCborValue, ): QCborValue =

  QCborValue(h: fcQCborValue_taggedValue(self.h))

proc toByteArray*(self: QCborValue, ): seq[byte] =

  var v_bytearray = fcQCborValue_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: QCborValue, ): string =

  let v_ms = fcQCborValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: QCborValue, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQCborValue_toDateTime(self.h))

proc toUrl*(self: QCborValue, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQCborValue_toUrl(self.h))

proc toRegularExpression*(self: QCborValue, ): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQCborValue_toRegularExpression(self.h))

proc toUuid*(self: QCborValue, ): gen_quuid.QUuid =

  gen_quuid.QUuid(h: fcQCborValue_toUuid(self.h))

proc toArray*(self: QCborValue, ): gen_qcborarray.QCborArray =

  gen_qcborarray.QCborArray(h: fcQCborValue_toArray(self.h))

proc toArrayWithDefaultValue*(self: QCborValue, defaultValue: gen_qcborarray.QCborArray): gen_qcborarray.QCborArray =

  gen_qcborarray.QCborArray(h: fcQCborValue_toArrayWithDefaultValue(self.h, defaultValue.h))

proc toMap*(self: QCborValue, ): gen_qcbormap.QCborMap =

  gen_qcbormap.QCborMap(h: fcQCborValue_toMap(self.h))

proc toMapWithDefaultValue*(self: QCborValue, defaultValue: gen_qcbormap.QCborMap): gen_qcbormap.QCborMap =

  gen_qcbormap.QCborMap(h: fcQCborValue_toMapWithDefaultValue(self.h, defaultValue.h))

proc operatorSubscript*(self: QCborValue, key: string): QCborValue =

  QCborValue(h: fcQCborValue_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript2*(self: QCborValue, key: clonglong): QCborValue =

  QCborValue(h: fcQCborValue_operatorSubscript2(self.h, key))

proc operatorSubscript3*(self: QCborValue, key: clonglong): QCborValueRef =

  QCborValueRef(h: fcQCborValue_operatorSubscript3(self.h, key))

proc operatorSubscript5*(self: QCborValue, key: string): QCborValueRef =

  QCborValueRef(h: fcQCborValue_operatorSubscript5(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc compare*(self: QCborValue, other: QCborValue): cint =

  fcQCborValue_compare(self.h, other.h)

proc operatorEqual*(self: QCborValue, other: QCborValue): bool =

  fcQCborValue_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QCborValue, other: QCborValue): bool =

  fcQCborValue_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QCborValue, other: QCborValue): bool =

  fcQCborValue_operatorLesser(self.h, other.h)

proc fromVariant*(_: type QCborValue, variant: gen_qvariant.QVariant): QCborValue =

  QCborValue(h: fcQCborValue_fromVariant(variant.h))

proc toVariant*(self: QCborValue, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCborValue_toVariant(self.h))

proc fromJsonValue*(_: type QCborValue, v: gen_qjsonvalue.QJsonValue): QCborValue =

  QCborValue(h: fcQCborValue_fromJsonValue(v.h))

proc toJsonValue*(self: QCborValue, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQCborValue_toJsonValue(self.h))

proc fromCbor*(_: type QCborValue, reader: gen_qcborstreamreader.QCborStreamReader): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor(reader.h))

proc fromCborWithBa*(_: type QCborValue, ba: seq[byte]): QCborValue =

  QCborValue(h: fcQCborValue_fromCborWithBa(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))))

proc fromCbor2*(_: type QCborValue, data: cstring, len: int64): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor2(data, len))

proc fromCbor3*(_: type QCborValue, data: ptr uint8, len: int64): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor3(data, len))

proc toCbor*(self: QCborValue, ): seq[byte] =

  var v_bytearray = fcQCborValue_toCbor(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCborWithWriter*(self: QCborValue, writer: gen_qcborstreamwriter.QCborStreamWriter): void =

  fcQCborValue_toCborWithWriter(self.h, writer.h)

proc toDiagnosticNotation*(self: QCborValue, ): string =

  let v_ms = fcQCborValue_toDiagnosticNotation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toSimpleType1*(self: QCborValue, defaultValue: gen_qcborcommon.QCborSimpleType): gen_qcborcommon.QCborSimpleType =

  gen_qcborcommon.QCborSimpleType(fcQCborValue_toSimpleType1(self.h, cint(defaultValue)))

proc toInteger1*(self: QCborValue, defaultValue: clonglong): clonglong =

  fcQCborValue_toInteger1(self.h, defaultValue)

proc toBool1*(self: QCborValue, defaultValue: bool): bool =

  fcQCborValue_toBool1(self.h, defaultValue)

proc toDouble1*(self: QCborValue, defaultValue: float64): float64 =

  fcQCborValue_toDouble1(self.h, defaultValue)

proc tag1*(self: QCborValue, defaultValue: gen_qcborcommon.QCborTag): gen_qcborcommon.QCborTag =

  gen_qcborcommon.QCborTag(fcQCborValue_tag1(self.h, cint(defaultValue)))

proc taggedValue1*(self: QCborValue, defaultValue: QCborValue): QCborValue =

  QCborValue(h: fcQCborValue_taggedValue1(self.h, defaultValue.h))

proc toByteArray1*(self: QCborValue, defaultValue: seq[byte]): seq[byte] =

  var v_bytearray = fcQCborValue_toByteArray1(self.h, struct_miqt_string(data: cast[cstring](if len(defaultValue) == 0: nil else: unsafeAddr defaultValue[0]), len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString1*(self: QCborValue, defaultValue: string): string =

  let v_ms = fcQCborValue_toString1(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime1*(self: QCborValue, defaultValue: gen_qdatetime.QDateTime): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQCborValue_toDateTime1(self.h, defaultValue.h))

proc toUrl1*(self: QCborValue, defaultValue: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQCborValue_toUrl1(self.h, defaultValue.h))

proc toRegularExpression1*(self: QCborValue, defaultValue: gen_qregularexpression.QRegularExpression): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQCborValue_toRegularExpression1(self.h, defaultValue.h))

proc toUuid1*(self: QCborValue, defaultValue: gen_quuid.QUuid): gen_quuid.QUuid =

  gen_quuid.QUuid(h: fcQCborValue_toUuid1(self.h, defaultValue.h))

proc fromCbor22*(_: type QCborValue, ba: seq[byte], error: QCborParserError): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor22(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), error.h))

proc fromCbor32*(_: type QCborValue, data: cstring, len: int64, error: QCborParserError): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor32(data, len, error.h))

proc fromCbor33*(_: type QCborValue, data: ptr uint8, len: int64, error: QCborParserError): QCborValue =

  QCborValue(h: fcQCborValue_fromCbor33(data, len, error.h))

proc toCbor1*(self: QCborValue, opt: QCborValueEncodingOption): seq[byte] =

  var v_bytearray = fcQCborValue_toCbor1(self.h, cint(opt))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor2*(self: QCborValue, writer: gen_qcborstreamwriter.QCborStreamWriter, opt: QCborValueEncodingOption): void =

  fcQCborValue_toCbor2(self.h, writer.h, cint(opt))

proc toDiagnosticNotation1*(self: QCborValue, opts: QCborValueDiagnosticNotationOption): string =

  let v_ms = fcQCborValue_toDiagnosticNotation1(self.h, cint(opts))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCborValue) =
  fcQCborValue_delete(self.h)

func init*(T: type QCborValueRef, h: ptr cQCborValueRef): QCborValueRef =
  T(h: h)
proc create*(T: type QCborValueRef, param1: QCborValueRef): QCborValueRef =

  QCborValueRef.init(fcQCborValueRef_new(param1.h))
proc ToQCborValue*(self: QCborValueRef, ): QCborValue =

  QCborValue(h: fcQCborValueRef_ToQCborValue(self.h))

proc operatorAssign*(self: QCborValueRef, other: QCborValue): void =

  fcQCborValueRef_operatorAssign(self.h, other.h)

proc operatorAssignWithOther*(self: QCborValueRef, other: QCborValueRef): void =

  fcQCborValueRef_operatorAssignWithOther(self.h, other.h)

proc typeX*(self: QCborValueRef, ): QCborValueType =

  QCborValueType(fcQCborValueRef_typeX(self.h))

proc isInteger*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isInteger(self.h)

proc isByteArray*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isByteArray(self.h)

proc isString*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isString(self.h)

proc isArray*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isArray(self.h)

proc isMap*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isMap(self.h)

proc isTag*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isTag(self.h)

proc isFalse*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isFalse(self.h)

proc isTrue*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isTrue(self.h)

proc isBool*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isBool(self.h)

proc isNull*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isNull(self.h)

proc isUndefined*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isUndefined(self.h)

proc isDouble*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isDouble(self.h)

proc isDateTime*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isDateTime(self.h)

proc isUrl*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isUrl(self.h)

proc isRegularExpression*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isRegularExpression(self.h)

proc isUuid*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isUuid(self.h)

proc isInvalid*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isInvalid(self.h)

proc isContainer*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isContainer(self.h)

proc isSimpleType*(self: QCborValueRef, ): bool =

  fcQCborValueRef_isSimpleType(self.h)

proc isSimpleTypeWithSt*(self: QCborValueRef, st: gen_qcborcommon.QCborSimpleType): bool =

  fcQCborValueRef_isSimpleTypeWithSt(self.h, cint(st))

proc tag*(self: QCborValueRef, ): gen_qcborcommon.QCborTag =

  gen_qcborcommon.QCborTag(fcQCborValueRef_tag(self.h))

proc taggedValue*(self: QCborValueRef, ): QCborValue =

  QCborValue(h: fcQCborValueRef_taggedValue(self.h))

proc toInteger*(self: QCborValueRef, ): clonglong =

  fcQCborValueRef_toInteger(self.h)

proc toBool*(self: QCborValueRef, ): bool =

  fcQCborValueRef_toBool(self.h)

proc toDouble*(self: QCborValueRef, ): float64 =

  fcQCborValueRef_toDouble(self.h)

proc toByteArray*(self: QCborValueRef, ): seq[byte] =

  var v_bytearray = fcQCborValueRef_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: QCborValueRef, ): string =

  let v_ms = fcQCborValueRef_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: QCborValueRef, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQCborValueRef_toDateTime(self.h))

proc toUrl*(self: QCborValueRef, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQCborValueRef_toUrl(self.h))

proc toRegularExpression*(self: QCborValueRef, ): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQCborValueRef_toRegularExpression(self.h))

proc toUuid*(self: QCborValueRef, ): gen_quuid.QUuid =

  gen_quuid.QUuid(h: fcQCborValueRef_toUuid(self.h))

proc toArray*(self: QCborValueRef, ): gen_qcborarray.QCborArray =

  gen_qcborarray.QCborArray(h: fcQCborValueRef_toArray(self.h))

proc toArrayWithQCborArray*(self: QCborValueRef, a: gen_qcborarray.QCborArray): gen_qcborarray.QCborArray =

  gen_qcborarray.QCborArray(h: fcQCborValueRef_toArrayWithQCborArray(self.h, a.h))

proc toMap*(self: QCborValueRef, ): gen_qcbormap.QCborMap =

  gen_qcbormap.QCborMap(h: fcQCborValueRef_toMap(self.h))

proc toMapWithQCborMap*(self: QCborValueRef, m: gen_qcbormap.QCborMap): gen_qcbormap.QCborMap =

  gen_qcbormap.QCborMap(h: fcQCborValueRef_toMapWithQCborMap(self.h, m.h))

proc operatorSubscript*(self: QCborValueRef, key: string): QCborValue =

  QCborValue(h: fcQCborValueRef_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript2*(self: QCborValueRef, key: clonglong): QCborValue =

  QCborValue(h: fcQCborValueRef_operatorSubscript2(self.h, key))

proc operatorSubscript3*(self: QCborValueRef, key: clonglong): QCborValueRef =

  QCborValueRef(h: fcQCborValueRef_operatorSubscript3(self.h, key))

proc operatorSubscript5*(self: QCborValueRef, key: string): QCborValueRef =

  QCborValueRef(h: fcQCborValueRef_operatorSubscript5(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc compare*(self: QCborValueRef, other: QCborValue): cint =

  fcQCborValueRef_compare(self.h, other.h)

proc operatorEqual*(self: QCborValueRef, other: QCborValue): bool =

  fcQCborValueRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QCborValueRef, other: QCborValue): bool =

  fcQCborValueRef_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QCborValueRef, other: QCborValue): bool =

  fcQCborValueRef_operatorLesser(self.h, other.h)

proc toVariant*(self: QCborValueRef, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCborValueRef_toVariant(self.h))

proc toJsonValue*(self: QCborValueRef, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQCborValueRef_toJsonValue(self.h))

proc toCbor*(self: QCborValueRef, ): seq[byte] =

  var v_bytearray = fcQCborValueRef_toCbor(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCborWithWriter*(self: QCborValueRef, writer: gen_qcborstreamwriter.QCborStreamWriter): void =

  fcQCborValueRef_toCborWithWriter(self.h, writer.h)

proc toDiagnosticNotation*(self: QCborValueRef, ): string =

  let v_ms = fcQCborValueRef_toDiagnosticNotation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tag1*(self: QCborValueRef, defaultValue: gen_qcborcommon.QCborTag): gen_qcborcommon.QCborTag =

  gen_qcborcommon.QCborTag(fcQCborValueRef_tag1(self.h, cint(defaultValue)))

proc taggedValue1*(self: QCborValueRef, defaultValue: QCborValue): QCborValue =

  QCborValue(h: fcQCborValueRef_taggedValue1(self.h, defaultValue.h))

proc toInteger1*(self: QCborValueRef, defaultValue: clonglong): clonglong =

  fcQCborValueRef_toInteger1(self.h, defaultValue)

proc toBool1*(self: QCborValueRef, defaultValue: bool): bool =

  fcQCborValueRef_toBool1(self.h, defaultValue)

proc toDouble1*(self: QCborValueRef, defaultValue: float64): float64 =

  fcQCborValueRef_toDouble1(self.h, defaultValue)

proc toByteArray1*(self: QCborValueRef, defaultValue: seq[byte]): seq[byte] =

  var v_bytearray = fcQCborValueRef_toByteArray1(self.h, struct_miqt_string(data: cast[cstring](if len(defaultValue) == 0: nil else: unsafeAddr defaultValue[0]), len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString1*(self: QCborValueRef, defaultValue: string): string =

  let v_ms = fcQCborValueRef_toString1(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime1*(self: QCborValueRef, defaultValue: gen_qdatetime.QDateTime): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQCborValueRef_toDateTime1(self.h, defaultValue.h))

proc toUrl1*(self: QCborValueRef, defaultValue: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQCborValueRef_toUrl1(self.h, defaultValue.h))

proc toRegularExpression1*(self: QCborValueRef, defaultValue: gen_qregularexpression.QRegularExpression): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQCborValueRef_toRegularExpression1(self.h, defaultValue.h))

proc toUuid1*(self: QCborValueRef, defaultValue: gen_quuid.QUuid): gen_quuid.QUuid =

  gen_quuid.QUuid(h: fcQCborValueRef_toUuid1(self.h, defaultValue.h))

proc toCbor1*(self: QCborValueRef, opt: QCborValueEncodingOption): seq[byte] =

  var v_bytearray = fcQCborValueRef_toCbor1(self.h, cint(opt))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor2*(self: QCborValueRef, writer: gen_qcborstreamwriter.QCborStreamWriter, opt: QCborValueEncodingOption): void =

  fcQCborValueRef_toCbor2(self.h, writer.h, cint(opt))

proc toDiagnosticNotation1*(self: QCborValueRef, opt: QCborValueDiagnosticNotationOption): string =

  let v_ms = fcQCborValueRef_toDiagnosticNotation1(self.h, cint(opt))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCborValueRef) =
  fcQCborValueRef_delete(self.h)
