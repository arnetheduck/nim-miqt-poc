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
{.compile("gen_qvariant.cpp", cflags).}


type QVariantType* = cint
const
  QVariantInvalid* = 0
  QVariantBool* = 1
  QVariantInt* = 2
  QVariantUInt* = 3
  QVariantLongLong* = 4
  QVariantULongLong* = 5
  QVariantDouble* = 6
  QVariantChar* = 7
  QVariantMap* = 8
  QVariantList* = 9
  QVariantString* = 10
  QVariantStringList* = 11
  QVariantByteArray* = 12
  QVariantBitArray* = 13
  QVariantDate* = 14
  QVariantTime* = 15
  QVariantDateTime* = 16
  QVariantUrl* = 17
  QVariantLocale* = 18
  QVariantRect* = 19
  QVariantRectF* = 20
  QVariantSize* = 21
  QVariantSizeF* = 22
  QVariantLine* = 23
  QVariantLineF* = 24
  QVariantPoint* = 25
  QVariantPointF* = 26
  QVariantRegExp* = 27
  QVariantRegularExpression* = 44
  QVariantHash* = 28
  QVariantEasingCurve* = 29
  QVariantUuid* = 30
  QVariantModelIndex* = 42
  QVariantPersistentModelIndex* = 50
  QVariantLastCoreType* = 55
  QVariantFont* = 64
  QVariantPixmap* = 65
  QVariantBrush* = 66
  QVariantColor* = 67
  QVariantPalette* = 68
  QVariantImage* = 70
  QVariantPolygon* = 71
  QVariantRegion* = 72
  QVariantBitmap* = 73
  QVariantCursor* = 74
  QVariantKeySequence* = 75
  QVariantPen* = 76
  QVariantTextLength* = 77
  QVariantTextFormat* = 78
  QVariantMatrix* = 79
  QVariantTransform* = 80
  QVariantMatrix4x4* = 81
  QVariantVector2D* = 82
  QVariantVector3D* = 83
  QVariantVector4D* = 84
  QVariantQuaternion* = 85
  QVariantPolygonF* = 86
  QVariantIcon* = 69
  QVariantLastGuiType* = 87
  QVariantSizePolicy* = 121
  QVariantUserType* = 1024
  QVariantLastType* = 4294967295



import gen_qvariant_types
export gen_qvariant_types

import
  gen_qabstractitemmodel,
  gen_qbitarray,
  gen_qchar,
  gen_qdatastream,
  gen_qdatetime,
  gen_qeasingcurve,
  gen_qjsonarray,
  gen_qjsondocument,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qline,
  gen_qlocale,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qregexp,
  gen_qregularexpression,
  gen_qsize,
  gen_qurl,
  gen_quuid,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qbitarray,
  gen_qchar,
  gen_qdatastream,
  gen_qdatetime,
  gen_qeasingcurve,
  gen_qjsonarray,
  gen_qjsondocument,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qline,
  gen_qlocale,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qregexp,
  gen_qregularexpression,
  gen_qsize,
  gen_qurl,
  gen_quuid

type cQVariant*{.exportc: "QVariant", incompleteStruct.} = object
type cQVariantComparisonHelper*{.exportc: "QVariantComparisonHelper", incompleteStruct.} = object
type cQVariantHandler*{.exportc: "QVariant__Handler", incompleteStruct.} = object
type cQSequentialIterableconst_iterator*{.exportc: "QSequentialIterable__const_iterator", incompleteStruct.} = object
type cQAssociativeIterableconst_iterator*{.exportc: "QAssociativeIterable__const_iterator", incompleteStruct.} = object

proc fcQVariant_new(): ptr cQVariant {.importc: "QVariant_new".}
proc fcQVariant_new2(typeVal: cint): ptr cQVariant {.importc: "QVariant_new2".}
proc fcQVariant_new3(typeId: cint, copy: pointer): ptr cQVariant {.importc: "QVariant_new3".}
proc fcQVariant_new4(typeId: cint, copy: pointer, flags: cuint): ptr cQVariant {.importc: "QVariant_new4".}
proc fcQVariant_new5(other: pointer): ptr cQVariant {.importc: "QVariant_new5".}
proc fcQVariant_new6(s: pointer): ptr cQVariant {.importc: "QVariant_new6".}
proc fcQVariant_new7(i: cint): ptr cQVariant {.importc: "QVariant_new7".}
proc fcQVariant_new8(ui: cuint): ptr cQVariant {.importc: "QVariant_new8".}
proc fcQVariant_new9(ll: clonglong): ptr cQVariant {.importc: "QVariant_new9".}
proc fcQVariant_new10(ull: culonglong): ptr cQVariant {.importc: "QVariant_new10".}
proc fcQVariant_new11(b: bool): ptr cQVariant {.importc: "QVariant_new11".}
proc fcQVariant_new12(d: float64): ptr cQVariant {.importc: "QVariant_new12".}
proc fcQVariant_new13(f: float32): ptr cQVariant {.importc: "QVariant_new13".}
proc fcQVariant_new14(str: cstring): ptr cQVariant {.importc: "QVariant_new14".}
proc fcQVariant_new15(bytearray: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new15".}
proc fcQVariant_new16(bitarray: pointer): ptr cQVariant {.importc: "QVariant_new16".}
proc fcQVariant_new17(string: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new17".}
proc fcQVariant_new18(stringlist: struct_miqt_array): ptr cQVariant {.importc: "QVariant_new18".}
proc fcQVariant_new19(qchar: pointer): ptr cQVariant {.importc: "QVariant_new19".}
proc fcQVariant_new20(date: pointer): ptr cQVariant {.importc: "QVariant_new20".}
proc fcQVariant_new21(time: pointer): ptr cQVariant {.importc: "QVariant_new21".}
proc fcQVariant_new22(datetime: pointer): ptr cQVariant {.importc: "QVariant_new22".}
proc fcQVariant_new23(map: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new23".}
proc fcQVariant_new24(hash: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new24".}
proc fcQVariant_new25(size: pointer): ptr cQVariant {.importc: "QVariant_new25".}
proc fcQVariant_new26(size: pointer): ptr cQVariant {.importc: "QVariant_new26".}
proc fcQVariant_new27(pt: pointer): ptr cQVariant {.importc: "QVariant_new27".}
proc fcQVariant_new28(pt: pointer): ptr cQVariant {.importc: "QVariant_new28".}
proc fcQVariant_new29(line: pointer): ptr cQVariant {.importc: "QVariant_new29".}
proc fcQVariant_new30(line: pointer): ptr cQVariant {.importc: "QVariant_new30".}
proc fcQVariant_new31(rect: pointer): ptr cQVariant {.importc: "QVariant_new31".}
proc fcQVariant_new32(rect: pointer): ptr cQVariant {.importc: "QVariant_new32".}
proc fcQVariant_new33(locale: pointer): ptr cQVariant {.importc: "QVariant_new33".}
proc fcQVariant_new34(regExp: pointer): ptr cQVariant {.importc: "QVariant_new34".}
proc fcQVariant_new35(re: pointer): ptr cQVariant {.importc: "QVariant_new35".}
proc fcQVariant_new36(easing: pointer): ptr cQVariant {.importc: "QVariant_new36".}
proc fcQVariant_new37(uuid: pointer): ptr cQVariant {.importc: "QVariant_new37".}
proc fcQVariant_new38(url: pointer): ptr cQVariant {.importc: "QVariant_new38".}
proc fcQVariant_new39(jsonValue: pointer): ptr cQVariant {.importc: "QVariant_new39".}
proc fcQVariant_new40(jsonObject: pointer): ptr cQVariant {.importc: "QVariant_new40".}
proc fcQVariant_new41(jsonArray: pointer): ptr cQVariant {.importc: "QVariant_new41".}
proc fcQVariant_new42(jsonDocument: pointer): ptr cQVariant {.importc: "QVariant_new42".}
proc fcQVariant_new43(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new43".}
proc fcQVariant_new44(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new44".}
proc fcQVariant_operatorAssign(self: pointer, other: pointer): void {.importc: "QVariant_operatorAssign".}
proc fcQVariant_swap(self: pointer, other: pointer): void {.importc: "QVariant_swap".}
proc fcQVariant_typeX(self: pointer, ): cint {.importc: "QVariant_type".}
proc fcQVariant_userType(self: pointer, ): cint {.importc: "QVariant_userType".}
proc fcQVariant_typeName(self: pointer, ): cstring {.importc: "QVariant_typeName".}
proc fcQVariant_canConvert(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_canConvert".}
proc fcQVariant_convert(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_convert".}
proc fcQVariant_isValid(self: pointer, ): bool {.importc: "QVariant_isValid".}
proc fcQVariant_isNull(self: pointer, ): bool {.importc: "QVariant_isNull".}
proc fcQVariant_clear(self: pointer, ): void {.importc: "QVariant_clear".}
proc fcQVariant_detach(self: pointer, ): void {.importc: "QVariant_detach".}
proc fcQVariant_isDetached(self: pointer, ): bool {.importc: "QVariant_isDetached".}
proc fcQVariant_toInt(self: pointer, ): cint {.importc: "QVariant_toInt".}
proc fcQVariant_toUInt(self: pointer, ): cuint {.importc: "QVariant_toUInt".}
proc fcQVariant_toLongLong(self: pointer, ): clonglong {.importc: "QVariant_toLongLong".}
proc fcQVariant_toULongLong(self: pointer, ): culonglong {.importc: "QVariant_toULongLong".}
proc fcQVariant_toBool(self: pointer, ): bool {.importc: "QVariant_toBool".}
proc fcQVariant_toDouble(self: pointer, ): float64 {.importc: "QVariant_toDouble".}
proc fcQVariant_toFloat(self: pointer, ): float32 {.importc: "QVariant_toFloat".}
proc fcQVariant_toReal(self: pointer, ): float64 {.importc: "QVariant_toReal".}
proc fcQVariant_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QVariant_toByteArray".}
proc fcQVariant_toBitArray(self: pointer, ): pointer {.importc: "QVariant_toBitArray".}
proc fcQVariant_toString(self: pointer, ): struct_miqt_string {.importc: "QVariant_toString".}
proc fcQVariant_toStringList(self: pointer, ): struct_miqt_array {.importc: "QVariant_toStringList".}
proc fcQVariant_toChar(self: pointer, ): pointer {.importc: "QVariant_toChar".}
proc fcQVariant_toDate(self: pointer, ): pointer {.importc: "QVariant_toDate".}
proc fcQVariant_toTime(self: pointer, ): pointer {.importc: "QVariant_toTime".}
proc fcQVariant_toDateTime(self: pointer, ): pointer {.importc: "QVariant_toDateTime".}
proc fcQVariant_toMap(self: pointer, ): struct_miqt_map {.importc: "QVariant_toMap".}
proc fcQVariant_toHash(self: pointer, ): struct_miqt_map {.importc: "QVariant_toHash".}
proc fcQVariant_toPoint(self: pointer, ): pointer {.importc: "QVariant_toPoint".}
proc fcQVariant_toPointF(self: pointer, ): pointer {.importc: "QVariant_toPointF".}
proc fcQVariant_toRect(self: pointer, ): pointer {.importc: "QVariant_toRect".}
proc fcQVariant_toSize(self: pointer, ): pointer {.importc: "QVariant_toSize".}
proc fcQVariant_toSizeF(self: pointer, ): pointer {.importc: "QVariant_toSizeF".}
proc fcQVariant_toLine(self: pointer, ): pointer {.importc: "QVariant_toLine".}
proc fcQVariant_toLineF(self: pointer, ): pointer {.importc: "QVariant_toLineF".}
proc fcQVariant_toRectF(self: pointer, ): pointer {.importc: "QVariant_toRectF".}
proc fcQVariant_toLocale(self: pointer, ): pointer {.importc: "QVariant_toLocale".}
proc fcQVariant_toRegExp(self: pointer, ): pointer {.importc: "QVariant_toRegExp".}
proc fcQVariant_toRegularExpression(self: pointer, ): pointer {.importc: "QVariant_toRegularExpression".}
proc fcQVariant_toEasingCurve(self: pointer, ): pointer {.importc: "QVariant_toEasingCurve".}
proc fcQVariant_toUuid(self: pointer, ): pointer {.importc: "QVariant_toUuid".}
proc fcQVariant_toUrl(self: pointer, ): pointer {.importc: "QVariant_toUrl".}
proc fcQVariant_toJsonValue(self: pointer, ): pointer {.importc: "QVariant_toJsonValue".}
proc fcQVariant_toJsonObject(self: pointer, ): pointer {.importc: "QVariant_toJsonObject".}
proc fcQVariant_toJsonArray(self: pointer, ): pointer {.importc: "QVariant_toJsonArray".}
proc fcQVariant_toJsonDocument(self: pointer, ): pointer {.importc: "QVariant_toJsonDocument".}
proc fcQVariant_toModelIndex(self: pointer, ): pointer {.importc: "QVariant_toModelIndex".}
proc fcQVariant_toPersistentModelIndex(self: pointer, ): pointer {.importc: "QVariant_toPersistentModelIndex".}
proc fcQVariant_load(self: pointer, ds: pointer): void {.importc: "QVariant_load".}
proc fcQVariant_save(self: pointer, ds: pointer): void {.importc: "QVariant_save".}
proc fcQVariant_typeToName(typeId: cint): cstring {.importc: "QVariant_typeToName".}
proc fcQVariant_nameToType(name: cstring): cint {.importc: "QVariant_nameToType".}
proc fcQVariant_data(self: pointer, ): pointer {.importc: "QVariant_data".}
proc fcQVariant_constData(self: pointer, ): pointer {.importc: "QVariant_constData".}
proc fcQVariant_data2(self: pointer, ): pointer {.importc: "QVariant_data2".}
proc fcQVariant_operatorEqual(self: pointer, v: pointer): bool {.importc: "QVariant_operatorEqual".}
proc fcQVariant_operatorNotEqual(self: pointer, v: pointer): bool {.importc: "QVariant_operatorNotEqual".}
proc fcQVariant_operatorLesser(self: pointer, v: pointer): bool {.importc: "QVariant_operatorLesser".}
proc fcQVariant_operatorLesserOrEqual(self: pointer, v: pointer): bool {.importc: "QVariant_operatorLesserOrEqual".}
proc fcQVariant_operatorGreater(self: pointer, v: pointer): bool {.importc: "QVariant_operatorGreater".}
proc fcQVariant_operatorGreaterOrEqual(self: pointer, v: pointer): bool {.importc: "QVariant_operatorGreaterOrEqual".}
proc fcQVariant_toInt1(self: pointer, ok: ptr bool): cint {.importc: "QVariant_toInt1".}
proc fcQVariant_toUInt1(self: pointer, ok: ptr bool): cuint {.importc: "QVariant_toUInt1".}
proc fcQVariant_toLongLong1(self: pointer, ok: ptr bool): clonglong {.importc: "QVariant_toLongLong1".}
proc fcQVariant_toULongLong1(self: pointer, ok: ptr bool): culonglong {.importc: "QVariant_toULongLong1".}
proc fcQVariant_toDouble1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toDouble1".}
proc fcQVariant_toFloat1(self: pointer, ok: ptr bool): float32 {.importc: "QVariant_toFloat1".}
proc fcQVariant_toReal1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toReal1".}
proc fcQVariant_fromValue(value: pointer): pointer {.importc: "QVariant_fromValue".}
proc fcQVariant_delete(self: pointer) {.importc: "QVariant_delete".}
proc fcQVariantComparisonHelper_new(varVal: pointer): ptr cQVariantComparisonHelper {.importc: "QVariantComparisonHelper_new".}
proc fcQVariantComparisonHelper_new2(param1: pointer): ptr cQVariantComparisonHelper {.importc: "QVariantComparisonHelper_new2".}
proc fcQVariantComparisonHelper_delete(self: pointer) {.importc: "QVariantComparisonHelper_delete".}
proc fcQVariantHandler_delete(self: pointer) {.importc: "QVariant__Handler_delete".}
proc fcQSequentialIterableconst_iterator_new(other: pointer): ptr cQSequentialIterableconst_iterator {.importc: "QSequentialIterable__const_iterator_new".}
proc fcQSequentialIterableconst_iterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QSequentialIterable__const_iterator_operatorAssign".}
proc fcQSequentialIterableconst_iterator_operatorMultiply(self: pointer, ): pointer {.importc: "QSequentialIterable__const_iterator_operatorMultiply".}
proc fcQSequentialIterableconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QSequentialIterable__const_iterator_operatorEqual".}
proc fcQSequentialIterableconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QSequentialIterable__const_iterator_operatorNotEqual".}
proc fcQSequentialIterableconst_iterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QSequentialIterable__const_iterator_operatorPlusPlus".}
proc fcQSequentialIterableconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorPlusPlusWithInt".}
proc fcQSequentialIterableconst_iterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QSequentialIterable__const_iterator_operatorMinusMinus".}
proc fcQSequentialIterableconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorMinusMinusWithInt".}
proc fcQSequentialIterableconst_iterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorPlusAssign".}
proc fcQSequentialIterableconst_iterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorMinusAssign".}
proc fcQSequentialIterableconst_iterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorPlus".}
proc fcQSequentialIterableconst_iterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QSequentialIterable__const_iterator_operatorMinus".}
proc fcQSequentialIterableconst_iterator_delete(self: pointer) {.importc: "QSequentialIterable__const_iterator_delete".}
proc fcQAssociativeIterableconst_iterator_new(other: pointer): ptr cQAssociativeIterableconst_iterator {.importc: "QAssociativeIterable__const_iterator_new".}
proc fcQAssociativeIterableconst_iterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QAssociativeIterable__const_iterator_operatorAssign".}
proc fcQAssociativeIterableconst_iterator_key(self: pointer, ): pointer {.importc: "QAssociativeIterable__const_iterator_key".}
proc fcQAssociativeIterableconst_iterator_value(self: pointer, ): pointer {.importc: "QAssociativeIterable__const_iterator_value".}
proc fcQAssociativeIterableconst_iterator_operatorMultiply(self: pointer, ): pointer {.importc: "QAssociativeIterable__const_iterator_operatorMultiply".}
proc fcQAssociativeIterableconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QAssociativeIterable__const_iterator_operatorEqual".}
proc fcQAssociativeIterableconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QAssociativeIterable__const_iterator_operatorNotEqual".}
proc fcQAssociativeIterableconst_iterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QAssociativeIterable__const_iterator_operatorPlusPlus".}
proc fcQAssociativeIterableconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorPlusPlusWithInt".}
proc fcQAssociativeIterableconst_iterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QAssociativeIterable__const_iterator_operatorMinusMinus".}
proc fcQAssociativeIterableconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorMinusMinusWithInt".}
proc fcQAssociativeIterableconst_iterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorPlusAssign".}
proc fcQAssociativeIterableconst_iterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorMinusAssign".}
proc fcQAssociativeIterableconst_iterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorPlus".}
proc fcQAssociativeIterableconst_iterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QAssociativeIterable__const_iterator_operatorMinus".}
proc fcQAssociativeIterableconst_iterator_delete(self: pointer) {.importc: "QAssociativeIterable__const_iterator_delete".}


func init*(T: type QVariant, h: ptr cQVariant): QVariant =
  T(h: h)
proc create*(T: type QVariant, ): QVariant =

  QVariant.init(fcQVariant_new())
proc create*(T: type QVariant, typeVal: QVariantType): QVariant =

  QVariant.init(fcQVariant_new2(cint(typeVal)))
proc create*(T: type QVariant, typeId: cint, copy: pointer): QVariant =

  QVariant.init(fcQVariant_new3(typeId, copy))
proc create*(T: type QVariant, typeId: cint, copy: pointer, flags: cuint): QVariant =

  QVariant.init(fcQVariant_new4(typeId, copy, flags))
proc create*(T: type QVariant, other: QVariant): QVariant =

  QVariant.init(fcQVariant_new5(other.h))
proc create2*(T: type QVariant, s: gen_qdatastream.QDataStream): QVariant =

  QVariant.init(fcQVariant_new6(s.h))
proc create2*(T: type QVariant, i: cint): QVariant =

  QVariant.init(fcQVariant_new7(i))
proc create*(T: type QVariant, ui: cuint): QVariant =

  QVariant.init(fcQVariant_new8(ui))
proc create*(T: type QVariant, ll: clonglong): QVariant =

  QVariant.init(fcQVariant_new9(ll))
proc create*(T: type QVariant, ull: culonglong): QVariant =

  QVariant.init(fcQVariant_new10(ull))
proc create*(T: type QVariant, b: bool): QVariant =

  QVariant.init(fcQVariant_new11(b))
proc create*(T: type QVariant, d: float64): QVariant =

  QVariant.init(fcQVariant_new12(d))
proc create*(T: type QVariant, f: float32): QVariant =

  QVariant.init(fcQVariant_new13(f))
proc create*(T: type QVariant, str: cstring): QVariant =

  QVariant.init(fcQVariant_new14(str))
proc create*(T: type QVariant, bytearray: seq[byte]): QVariant =

  QVariant.init(fcQVariant_new15(struct_miqt_string(data: cast[cstring](if len(bytearray) == 0: nil else: unsafeAddr bytearray[0]), len: csize_t(len(bytearray)))))
proc create2*(T: type QVariant, bitarray: gen_qbitarray.QBitArray): QVariant =

  QVariant.init(fcQVariant_new16(bitarray.h))
proc create2*(T: type QVariant, string: string): QVariant =

  QVariant.init(fcQVariant_new17(struct_miqt_string(data: string, len: csize_t(len(string)))))
proc create*(T: type QVariant, stringlist: seq[string]): QVariant =

  var stringlist_CArray = newSeq[struct_miqt_string](len(stringlist))
  for i in 0..<len(stringlist):
    stringlist_CArray[i] = struct_miqt_string(data: stringlist[i], len: csize_t(len(stringlist[i])))

  QVariant.init(fcQVariant_new18(struct_miqt_array(len: csize_t(len(stringlist)), data: if len(stringlist) == 0: nil else: addr(stringlist_CArray[0]))))
proc create2*(T: type QVariant, qchar: gen_qchar.QChar): QVariant =

  QVariant.init(fcQVariant_new19(qchar.h))
proc create2*(T: type QVariant, date: gen_qdatetime.QDate): QVariant =

  QVariant.init(fcQVariant_new20(date.h))
proc create2*(T: type QVariant, time: gen_qdatetime.QTime): QVariant =

  QVariant.init(fcQVariant_new21(time.h))
proc create2*(T: type QVariant, datetime: gen_qdatetime.QDateTime): QVariant =

  QVariant.init(fcQVariant_new22(datetime.h))
proc create*(T: type QVariant, map: Table[string,QVariant]): QVariant =

  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for mapk, mapv in map:
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  QVariant.init(fcQVariant_new23(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)))
proc create2*(T: type QVariant, hash: Table[string,QVariant]): QVariant =

  var hash_Keys_CArray = newSeq[struct_miqt_string](len(hash))
  var hash_Values_CArray = newSeq[pointer](len(hash))
  var hash_ctr = 0
  for hashk, hashv in hash:
    hash_Keys_CArray[hash_ctr] = struct_miqt_string(data: hash_k, len: csize_t(len(hash_k)))
    hash_Values_CArray[hash_ctr] = hash_v.h
    hash_ctr += 1

  QVariant.init(fcQVariant_new24(struct_miqt_map(len: csize_t(len(hash)),keys: if len(hash) == 0: nil else: addr(hash_Keys_CArray[0]), values: if len(hash) == 0: nil else: addr(hash_Values_CArray[0]),)))
proc create2*(T: type QVariant, size: gen_qsize.QSize): QVariant =

  QVariant.init(fcQVariant_new25(size.h))
proc create2*(T: type QVariant, size: gen_qsize.QSizeF): QVariant =

  QVariant.init(fcQVariant_new26(size.h))
proc create2*(T: type QVariant, pt: gen_qpoint.QPoint): QVariant =

  QVariant.init(fcQVariant_new27(pt.h))
proc create2*(T: type QVariant, pt: gen_qpoint.QPointF): QVariant =

  QVariant.init(fcQVariant_new28(pt.h))
proc create2*(T: type QVariant, line: gen_qline.QLine): QVariant =

  QVariant.init(fcQVariant_new29(line.h))
proc create2*(T: type QVariant, line: gen_qline.QLineF): QVariant =

  QVariant.init(fcQVariant_new30(line.h))
proc create2*(T: type QVariant, rect: gen_qrect.QRect): QVariant =

  QVariant.init(fcQVariant_new31(rect.h))
proc create2*(T: type QVariant, rect: gen_qrect.QRectF): QVariant =

  QVariant.init(fcQVariant_new32(rect.h))
proc create2*(T: type QVariant, locale: gen_qlocale.QLocale): QVariant =

  QVariant.init(fcQVariant_new33(locale.h))
proc create2*(T: type QVariant, regExp: gen_qregexp.QRegExp): QVariant =

  QVariant.init(fcQVariant_new34(regExp.h))
proc create2*(T: type QVariant, re: gen_qregularexpression.QRegularExpression): QVariant =

  QVariant.init(fcQVariant_new35(re.h))
proc create2*(T: type QVariant, easing: gen_qeasingcurve.QEasingCurve): QVariant =

  QVariant.init(fcQVariant_new36(easing.h))
proc create2*(T: type QVariant, uuid: gen_quuid.QUuid): QVariant =

  QVariant.init(fcQVariant_new37(uuid.h))
proc create2*(T: type QVariant, url: gen_qurl.QUrl): QVariant =

  QVariant.init(fcQVariant_new38(url.h))
proc create2*(T: type QVariant, jsonValue: gen_qjsonvalue.QJsonValue): QVariant =

  QVariant.init(fcQVariant_new39(jsonValue.h))
proc create2*(T: type QVariant, jsonObject: gen_qjsonobject.QJsonObject): QVariant =

  QVariant.init(fcQVariant_new40(jsonObject.h))
proc create2*(T: type QVariant, jsonArray: gen_qjsonarray.QJsonArray): QVariant =

  QVariant.init(fcQVariant_new41(jsonArray.h))
proc create2*(T: type QVariant, jsonDocument: gen_qjsondocument.QJsonDocument): QVariant =

  QVariant.init(fcQVariant_new42(jsonDocument.h))
proc create2*(T: type QVariant, modelIndex: gen_qabstractitemmodel.QModelIndex): QVariant =

  QVariant.init(fcQVariant_new43(modelIndex.h))
proc create2*(T: type QVariant, modelIndex: gen_qabstractitemmodel.QPersistentModelIndex): QVariant =

  QVariant.init(fcQVariant_new44(modelIndex.h))
proc operatorAssign*(self: QVariant, other: QVariant): void =

  fcQVariant_operatorAssign(self.h, other.h)

proc swap*(self: QVariant, other: QVariant): void =

  fcQVariant_swap(self.h, other.h)

proc typeX*(self: QVariant, ): QVariantType =

  QVariantType(fcQVariant_typeX(self.h))

proc userType*(self: QVariant, ): cint =

  fcQVariant_userType(self.h)

proc typeName*(self: QVariant, ): cstring =

  (fcQVariant_typeName(self.h))

proc canConvert*(self: QVariant, targetTypeId: cint): bool =

  fcQVariant_canConvert(self.h, targetTypeId)

proc convert*(self: QVariant, targetTypeId: cint): bool =

  fcQVariant_convert(self.h, targetTypeId)

proc isValid*(self: QVariant, ): bool =

  fcQVariant_isValid(self.h)

proc isNull*(self: QVariant, ): bool =

  fcQVariant_isNull(self.h)

proc clear*(self: QVariant, ): void =

  fcQVariant_clear(self.h)

proc detach*(self: QVariant, ): void =

  fcQVariant_detach(self.h)

proc isDetached*(self: QVariant, ): bool =

  fcQVariant_isDetached(self.h)

proc toInt*(self: QVariant, ): cint =

  fcQVariant_toInt(self.h)

proc toUInt*(self: QVariant, ): cuint =

  fcQVariant_toUInt(self.h)

proc toLongLong*(self: QVariant, ): clonglong =

  fcQVariant_toLongLong(self.h)

proc toULongLong*(self: QVariant, ): culonglong =

  fcQVariant_toULongLong(self.h)

proc toBool*(self: QVariant, ): bool =

  fcQVariant_toBool(self.h)

proc toDouble*(self: QVariant, ): float64 =

  fcQVariant_toDouble(self.h)

proc toFloat*(self: QVariant, ): float32 =

  fcQVariant_toFloat(self.h)

proc toReal*(self: QVariant, ): float64 =

  fcQVariant_toReal(self.h)

proc toByteArray*(self: QVariant, ): seq[byte] =

  var v_bytearray = fcQVariant_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toBitArray*(self: QVariant, ): gen_qbitarray.QBitArray =

  gen_qbitarray.QBitArray(h: fcQVariant_toBitArray(self.h))

proc toString*(self: QVariant, ): string =

  let v_ms = fcQVariant_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringList*(self: QVariant, ): seq[string] =

  var v_ma = fcQVariant_toStringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc toChar*(self: QVariant, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQVariant_toChar(self.h))

proc toDate*(self: QVariant, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQVariant_toDate(self.h))

proc toTime*(self: QVariant, ): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQVariant_toTime(self.h))

proc toDateTime*(self: QVariant, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQVariant_toDateTime(self.h))

proc toMap*(self: QVariant, ): Table[string,QVariant] =

  var v_mm = fcQVariant_toMap(self.h)
  var vx_ret: Table[string, QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc toHash*(self: QVariant, ): Table[string,QVariant] =

  var v_mm = fcQVariant_toHash(self.h)
  var vx_ret: Table[string, QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc toPoint*(self: QVariant, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQVariant_toPoint(self.h))

proc toPointF*(self: QVariant, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQVariant_toPointF(self.h))

proc toRect*(self: QVariant, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQVariant_toRect(self.h))

proc toSize*(self: QVariant, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVariant_toSize(self.h))

proc toSizeF*(self: QVariant, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQVariant_toSizeF(self.h))

proc toLine*(self: QVariant, ): gen_qline.QLine =

  gen_qline.QLine(h: fcQVariant_toLine(self.h))

proc toLineF*(self: QVariant, ): gen_qline.QLineF =

  gen_qline.QLineF(h: fcQVariant_toLineF(self.h))

proc toRectF*(self: QVariant, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQVariant_toRectF(self.h))

proc toLocale*(self: QVariant, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQVariant_toLocale(self.h))

proc toRegExp*(self: QVariant, ): gen_qregexp.QRegExp =

  gen_qregexp.QRegExp(h: fcQVariant_toRegExp(self.h))

proc toRegularExpression*(self: QVariant, ): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQVariant_toRegularExpression(self.h))

proc toEasingCurve*(self: QVariant, ): gen_qeasingcurve.QEasingCurve =

  gen_qeasingcurve.QEasingCurve(h: fcQVariant_toEasingCurve(self.h))

proc toUuid*(self: QVariant, ): gen_quuid.QUuid =

  gen_quuid.QUuid(h: fcQVariant_toUuid(self.h))

proc toUrl*(self: QVariant, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQVariant_toUrl(self.h))

proc toJsonValue*(self: QVariant, ): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQVariant_toJsonValue(self.h))

proc toJsonObject*(self: QVariant, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQVariant_toJsonObject(self.h))

proc toJsonArray*(self: QVariant, ): gen_qjsonarray.QJsonArray =

  gen_qjsonarray.QJsonArray(h: fcQVariant_toJsonArray(self.h))

proc toJsonDocument*(self: QVariant, ): gen_qjsondocument.QJsonDocument =

  gen_qjsondocument.QJsonDocument(h: fcQVariant_toJsonDocument(self.h))

proc toModelIndex*(self: QVariant, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQVariant_toModelIndex(self.h))

proc toPersistentModelIndex*(self: QVariant, ): gen_qabstractitemmodel.QPersistentModelIndex =

  gen_qabstractitemmodel.QPersistentModelIndex(h: fcQVariant_toPersistentModelIndex(self.h))

proc load*(self: QVariant, ds: gen_qdatastream.QDataStream): void =

  fcQVariant_load(self.h, ds.h)

proc save*(self: QVariant, ds: gen_qdatastream.QDataStream): void =

  fcQVariant_save(self.h, ds.h)

proc typeToName*(_: type QVariant, typeId: cint): cstring =

  (fcQVariant_typeToName(typeId))

proc nameToType*(_: type QVariant, name: cstring): QVariantType =

  QVariantType(fcQVariant_nameToType(name))

proc data*(self: QVariant, ): pointer =

  fcQVariant_data(self.h)

proc constData*(self: QVariant, ): pointer =

  fcQVariant_constData(self.h)

proc data2*(self: QVariant, ): pointer =

  fcQVariant_data2(self.h)

proc operatorEqual*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorEqual(self.h, v.h)

proc operatorNotEqual*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorNotEqual(self.h, v.h)

proc operatorLesser*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorLesser(self.h, v.h)

proc operatorLesserOrEqual*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorLesserOrEqual(self.h, v.h)

proc operatorGreater*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorGreater(self.h, v.h)

proc operatorGreaterOrEqual*(self: QVariant, v: QVariant): bool =

  fcQVariant_operatorGreaterOrEqual(self.h, v.h)

proc toInt1*(self: QVariant, ok: ptr bool): cint =

  fcQVariant_toInt1(self.h, ok)

proc toUInt1*(self: QVariant, ok: ptr bool): cuint =

  fcQVariant_toUInt1(self.h, ok)

proc toLongLong1*(self: QVariant, ok: ptr bool): clonglong =

  fcQVariant_toLongLong1(self.h, ok)

proc toULongLong1*(self: QVariant, ok: ptr bool): culonglong =

  fcQVariant_toULongLong1(self.h, ok)

proc toDouble1*(self: QVariant, ok: ptr bool): float64 =

  fcQVariant_toDouble1(self.h, ok)

proc toFloat1*(self: QVariant, ok: ptr bool): float32 =

  fcQVariant_toFloat1(self.h, ok)

proc toReal1*(self: QVariant, ok: ptr bool): float64 =

  fcQVariant_toReal1(self.h, ok)

proc fromValue*(_: type QVariant, value: gen_qobject.QObject): QVariant =

  QVariant(h: fcQVariant_fromValue(value.h))

proc delete*(self: QVariant) =
  fcQVariant_delete(self.h)

func init*(T: type QVariantComparisonHelper, h: ptr cQVariantComparisonHelper): QVariantComparisonHelper =
  T(h: h)
proc create*(T: type QVariantComparisonHelper, varVal: QVariant): QVariantComparisonHelper =

  QVariantComparisonHelper.init(fcQVariantComparisonHelper_new(varVal.h))
proc create2*(T: type QVariantComparisonHelper, param1: QVariantComparisonHelper): QVariantComparisonHelper =

  QVariantComparisonHelper.init(fcQVariantComparisonHelper_new2(param1.h))
proc delete*(self: QVariantComparisonHelper) =
  fcQVariantComparisonHelper_delete(self.h)

func init*(T: type QVariantHandler, h: ptr cQVariantHandler): QVariantHandler =
  T(h: h)
proc delete*(self: QVariantHandler) =
  fcQVariantHandler_delete(self.h)

func init*(T: type QSequentialIterableconst_iterator, h: ptr cQSequentialIterableconst_iterator): QSequentialIterableconst_iterator =
  T(h: h)
proc create*(T: type QSequentialIterableconst_iterator, other: QSequentialIterableconst_iterator): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator.init(fcQSequentialIterableconst_iterator_new(other.h))
proc operatorAssign*(self: QSequentialIterableconst_iterator, other: QSequentialIterableconst_iterator): void =

  fcQSequentialIterableconst_iterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: QSequentialIterableconst_iterator, ): QVariant =

  QVariant(h: fcQSequentialIterableconst_iterator_operatorMultiply(self.h))

proc operatorEqual*(self: QSequentialIterableconst_iterator, o: QSequentialIterableconst_iterator): bool =

  fcQSequentialIterableconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QSequentialIterableconst_iterator, o: QSequentialIterableconst_iterator): bool =

  fcQSequentialIterableconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: QSequentialIterableconst_iterator, ): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QSequentialIterableconst_iterator, param1: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QSequentialIterableconst_iterator, ): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QSequentialIterableconst_iterator, param1: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QSequentialIterableconst_iterator, j: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QSequentialIterableconst_iterator, j: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QSequentialIterableconst_iterator, j: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QSequentialIterableconst_iterator, j: cint): QSequentialIterableconst_iterator =

  QSequentialIterableconst_iterator(h: fcQSequentialIterableconst_iterator_operatorMinus(self.h, j))

proc delete*(self: QSequentialIterableconst_iterator) =
  fcQSequentialIterableconst_iterator_delete(self.h)

func init*(T: type QAssociativeIterableconst_iterator, h: ptr cQAssociativeIterableconst_iterator): QAssociativeIterableconst_iterator =
  T(h: h)
proc create*(T: type QAssociativeIterableconst_iterator, other: QAssociativeIterableconst_iterator): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator.init(fcQAssociativeIterableconst_iterator_new(other.h))
proc operatorAssign*(self: QAssociativeIterableconst_iterator, other: QAssociativeIterableconst_iterator): void =

  fcQAssociativeIterableconst_iterator_operatorAssign(self.h, other.h)

proc key*(self: QAssociativeIterableconst_iterator, ): QVariant =

  QVariant(h: fcQAssociativeIterableconst_iterator_key(self.h))

proc value*(self: QAssociativeIterableconst_iterator, ): QVariant =

  QVariant(h: fcQAssociativeIterableconst_iterator_value(self.h))

proc operatorMultiply*(self: QAssociativeIterableconst_iterator, ): QVariant =

  QVariant(h: fcQAssociativeIterableconst_iterator_operatorMultiply(self.h))

proc operatorEqual*(self: QAssociativeIterableconst_iterator, o: QAssociativeIterableconst_iterator): bool =

  fcQAssociativeIterableconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QAssociativeIterableconst_iterator, o: QAssociativeIterableconst_iterator): bool =

  fcQAssociativeIterableconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: QAssociativeIterableconst_iterator, ): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QAssociativeIterableconst_iterator, param1: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QAssociativeIterableconst_iterator, ): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QAssociativeIterableconst_iterator, param1: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QAssociativeIterableconst_iterator, j: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QAssociativeIterableconst_iterator, j: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QAssociativeIterableconst_iterator, j: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QAssociativeIterableconst_iterator, j: cint): QAssociativeIterableconst_iterator =

  QAssociativeIterableconst_iterator(h: fcQAssociativeIterableconst_iterator_operatorMinus(self.h, j))

proc delete*(self: QAssociativeIterableconst_iterator) =
  fcQAssociativeIterableconst_iterator_delete(self.h)
