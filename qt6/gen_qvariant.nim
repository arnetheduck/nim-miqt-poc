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
  QVariantRegularExpression* = 44
  QVariantHash* = 28
  QVariantEasingCurve* = 29
  QVariantUuid* = 30
  QVariantModelIndex* = 42
  QVariantPersistentModelIndex* = 50
  QVariantLastCoreType* = 58
  QVariantFont* = 4096
  QVariantPixmap* = 4097
  QVariantBrush* = 4098
  QVariantColor* = 4099
  QVariantPalette* = 4100
  QVariantImage* = 4102
  QVariantPolygon* = 4103
  QVariantRegion* = 4104
  QVariantBitmap* = 4105
  QVariantCursor* = 4106
  QVariantKeySequence* = 4107
  QVariantPen* = 4108
  QVariantTextLength* = 4109
  QVariantTextFormat* = 4110
  QVariantTransform* = 4112
  QVariantMatrix4x4* = 4113
  QVariantVector2D* = 4114
  QVariantVector3D* = 4115
  QVariantVector4D* = 4116
  QVariantQuaternion* = 4117
  QVariantPolygonF* = 4118
  QVariantIcon* = 4101
  QVariantLastGuiType* = 4119
  QVariantSizePolicy* = 8192
  QVariantUserType* = 65536
  QVariantLastType* = 4294967295



import gen_qvariant_types
export gen_qvariant_types

import
  gen_qabstractitemmodel,
  gen_qbitarray,
  gen_qchar,
  gen_qcompare,
  gen_qdatastream,
  gen_qdatetime,
  gen_qeasingcurve,
  gen_qjsonarray,
  gen_qjsondocument,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qline,
  gen_qlocale,
  gen_qmetatype,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qregularexpression,
  gen_qsize,
  gen_qurl,
  gen_quuid,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qbitarray,
  gen_qchar,
  gen_qcompare,
  gen_qdatastream,
  gen_qdatetime,
  gen_qeasingcurve,
  gen_qjsonarray,
  gen_qjsondocument,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qline,
  gen_qlocale,
  gen_qmetatype,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qregularexpression,
  gen_qsize,
  gen_qurl,
  gen_quuid

type cQVariant*{.exportc: "QVariant", incompleteStruct.} = object
type cQVariantConstPointer*{.exportc: "QVariantConstPointer", incompleteStruct.} = object

proc fcQVariant_new(): ptr cQVariant {.importc: "QVariant_new".}
proc fcQVariant_new2(typeVal: pointer): ptr cQVariant {.importc: "QVariant_new2".}
proc fcQVariant_new3(other: pointer): ptr cQVariant {.importc: "QVariant_new3".}
proc fcQVariant_new4(i: cint): ptr cQVariant {.importc: "QVariant_new4".}
proc fcQVariant_new5(ui: cuint): ptr cQVariant {.importc: "QVariant_new5".}
proc fcQVariant_new6(ll: clonglong): ptr cQVariant {.importc: "QVariant_new6".}
proc fcQVariant_new7(ull: culonglong): ptr cQVariant {.importc: "QVariant_new7".}
proc fcQVariant_new8(b: bool): ptr cQVariant {.importc: "QVariant_new8".}
proc fcQVariant_new9(d: float64): ptr cQVariant {.importc: "QVariant_new9".}
proc fcQVariant_new10(f: float32): ptr cQVariant {.importc: "QVariant_new10".}
proc fcQVariant_new11(str: cstring): ptr cQVariant {.importc: "QVariant_new11".}
proc fcQVariant_new12(bytearray: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new12".}
proc fcQVariant_new13(bitarray: pointer): ptr cQVariant {.importc: "QVariant_new13".}
proc fcQVariant_new14(string: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new14".}
proc fcQVariant_new15(stringlist: struct_miqt_array): ptr cQVariant {.importc: "QVariant_new15".}
proc fcQVariant_new16(qchar: pointer): ptr cQVariant {.importc: "QVariant_new16".}
proc fcQVariant_new17(date: pointer): ptr cQVariant {.importc: "QVariant_new17".}
proc fcQVariant_new18(time: pointer): ptr cQVariant {.importc: "QVariant_new18".}
proc fcQVariant_new19(datetime: pointer): ptr cQVariant {.importc: "QVariant_new19".}
proc fcQVariant_new20(map: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new20".}
proc fcQVariant_new21(hash: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new21".}
proc fcQVariant_new22(size: pointer): ptr cQVariant {.importc: "QVariant_new22".}
proc fcQVariant_new23(size: pointer): ptr cQVariant {.importc: "QVariant_new23".}
proc fcQVariant_new24(pt: pointer): ptr cQVariant {.importc: "QVariant_new24".}
proc fcQVariant_new25(pt: pointer): ptr cQVariant {.importc: "QVariant_new25".}
proc fcQVariant_new26(line: pointer): ptr cQVariant {.importc: "QVariant_new26".}
proc fcQVariant_new27(line: pointer): ptr cQVariant {.importc: "QVariant_new27".}
proc fcQVariant_new28(rect: pointer): ptr cQVariant {.importc: "QVariant_new28".}
proc fcQVariant_new29(rect: pointer): ptr cQVariant {.importc: "QVariant_new29".}
proc fcQVariant_new30(locale: pointer): ptr cQVariant {.importc: "QVariant_new30".}
proc fcQVariant_new31(re: pointer): ptr cQVariant {.importc: "QVariant_new31".}
proc fcQVariant_new32(easing: pointer): ptr cQVariant {.importc: "QVariant_new32".}
proc fcQVariant_new33(uuid: pointer): ptr cQVariant {.importc: "QVariant_new33".}
proc fcQVariant_new34(url: pointer): ptr cQVariant {.importc: "QVariant_new34".}
proc fcQVariant_new35(jsonValue: pointer): ptr cQVariant {.importc: "QVariant_new35".}
proc fcQVariant_new36(jsonObject: pointer): ptr cQVariant {.importc: "QVariant_new36".}
proc fcQVariant_new37(jsonArray: pointer): ptr cQVariant {.importc: "QVariant_new37".}
proc fcQVariant_new38(jsonDocument: pointer): ptr cQVariant {.importc: "QVariant_new38".}
proc fcQVariant_new39(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new39".}
proc fcQVariant_new40(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new40".}
proc fcQVariant_new41(typeVal: cint): ptr cQVariant {.importc: "QVariant_new41".}
proc fcQVariant_new42(typeVal: pointer, copy: pointer): ptr cQVariant {.importc: "QVariant_new42".}
proc fcQVariant_operatorAssign(self: pointer, other: pointer): void {.importc: "QVariant_operatorAssign".}
proc fcQVariant_swap(self: pointer, other: pointer): void {.importc: "QVariant_swap".}
proc fcQVariant_userType(self: pointer, ): cint {.importc: "QVariant_userType".}
proc fcQVariant_typeId(self: pointer, ): cint {.importc: "QVariant_typeId".}
proc fcQVariant_typeName(self: pointer, ): cstring {.importc: "QVariant_typeName".}
proc fcQVariant_metaType(self: pointer, ): pointer {.importc: "QVariant_metaType".}
proc fcQVariant_canConvert(self: pointer, targetType: pointer): bool {.importc: "QVariant_canConvert".}
proc fcQVariant_convert(self: pointer, typeVal: pointer): bool {.importc: "QVariant_convert".}
proc fcQVariant_canView(self: pointer, targetType: pointer): bool {.importc: "QVariant_canView".}
proc fcQVariant_canConvertWithTargetTypeId(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_canConvertWithTargetTypeId".}
proc fcQVariant_convertWithTargetTypeId(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_convertWithTargetTypeId".}
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
proc fcQVariant_typeX(self: pointer, ): cint {.importc: "QVariant_type".}
proc fcQVariant_typeToName(typeId: cint): cstring {.importc: "QVariant_typeToName".}
proc fcQVariant_nameToType(name: cstring): cint {.importc: "QVariant_nameToType".}
proc fcQVariant_data(self: pointer, ): pointer {.importc: "QVariant_data".}
proc fcQVariant_constData(self: pointer, ): pointer {.importc: "QVariant_constData".}
proc fcQVariant_data2(self: pointer, ): pointer {.importc: "QVariant_data2".}
proc fcQVariant_setValue(self: pointer, avalue: pointer): void {.importc: "QVariant_setValue".}
proc fcQVariant_compare(lhs: pointer, rhs: pointer): pointer {.importc: "QVariant_compare".}
proc fcQVariant_toInt1(self: pointer, ok: ptr bool): cint {.importc: "QVariant_toInt1".}
proc fcQVariant_toUInt1(self: pointer, ok: ptr bool): cuint {.importc: "QVariant_toUInt1".}
proc fcQVariant_toLongLong1(self: pointer, ok: ptr bool): clonglong {.importc: "QVariant_toLongLong1".}
proc fcQVariant_toULongLong1(self: pointer, ok: ptr bool): culonglong {.importc: "QVariant_toULongLong1".}
proc fcQVariant_toDouble1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toDouble1".}
proc fcQVariant_toFloat1(self: pointer, ok: ptr bool): float32 {.importc: "QVariant_toFloat1".}
proc fcQVariant_toReal1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toReal1".}
proc fcQVariant_fromValue(value: pointer): pointer {.importc: "QVariant_fromValue".}
proc fcQVariant_delete(self: pointer) {.importc: "QVariant_delete".}
proc fcQVariantConstPointer_new(variant: pointer): ptr cQVariantConstPointer {.importc: "QVariantConstPointer_new".}
proc fcQVariantConstPointer_new2(param1: pointer): ptr cQVariantConstPointer {.importc: "QVariantConstPointer_new2".}
proc fcQVariantConstPointer_operatorMultiply(self: pointer, ): pointer {.importc: "QVariantConstPointer_operatorMultiply".}
proc fcQVariantConstPointer_operatorMinusGreater(self: pointer, ): pointer {.importc: "QVariantConstPointer_operatorMinusGreater".}
proc fcQVariantConstPointer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QVariantConstPointer_operatorAssign".}
proc fcQVariantConstPointer_delete(self: pointer) {.importc: "QVariantConstPointer_delete".}


func init*(T: type QVariant, h: ptr cQVariant): QVariant =
  T(h: h)
proc create*(T: type QVariant, ): QVariant =

  QVariant.init(fcQVariant_new())
proc create*(T: type QVariant, typeVal: gen_qmetatype.QMetaType): QVariant =

  QVariant.init(fcQVariant_new2(typeVal.h))
proc create2*(T: type QVariant, other: QVariant): QVariant =

  QVariant.init(fcQVariant_new3(other.h))
proc create*(T: type QVariant, i: cint): QVariant =

  QVariant.init(fcQVariant_new4(i))
proc create*(T: type QVariant, ui: cuint): QVariant =

  QVariant.init(fcQVariant_new5(ui))
proc create*(T: type QVariant, ll: clonglong): QVariant =

  QVariant.init(fcQVariant_new6(ll))
proc create*(T: type QVariant, ull: culonglong): QVariant =

  QVariant.init(fcQVariant_new7(ull))
proc create*(T: type QVariant, b: bool): QVariant =

  QVariant.init(fcQVariant_new8(b))
proc create*(T: type QVariant, d: float64): QVariant =

  QVariant.init(fcQVariant_new9(d))
proc create*(T: type QVariant, f: float32): QVariant =

  QVariant.init(fcQVariant_new10(f))
proc create*(T: type QVariant, str: cstring): QVariant =

  QVariant.init(fcQVariant_new11(str))
proc create*(T: type QVariant, bytearray: seq[byte]): QVariant =

  QVariant.init(fcQVariant_new12(struct_miqt_string(data: cast[cstring](if len(bytearray) == 0: nil else: unsafeAddr bytearray[0]), len: csize_t(len(bytearray)))))
proc create2*(T: type QVariant, bitarray: gen_qbitarray.QBitArray): QVariant =

  QVariant.init(fcQVariant_new13(bitarray.h))
proc create2*(T: type QVariant, string: string): QVariant =

  QVariant.init(fcQVariant_new14(struct_miqt_string(data: string, len: csize_t(len(string)))))
proc create*(T: type QVariant, stringlist: seq[string]): QVariant =

  var stringlist_CArray = newSeq[struct_miqt_string](len(stringlist))
  for i in 0..<len(stringlist):
    stringlist_CArray[i] = struct_miqt_string(data: stringlist[i], len: csize_t(len(stringlist[i])))

  QVariant.init(fcQVariant_new15(struct_miqt_array(len: csize_t(len(stringlist)), data: if len(stringlist) == 0: nil else: addr(stringlist_CArray[0]))))
proc create2*(T: type QVariant, qchar: gen_qchar.QChar): QVariant =

  QVariant.init(fcQVariant_new16(qchar.h))
proc create2*(T: type QVariant, date: gen_qdatetime.QDate): QVariant =

  QVariant.init(fcQVariant_new17(date.h))
proc create2*(T: type QVariant, time: gen_qdatetime.QTime): QVariant =

  QVariant.init(fcQVariant_new18(time.h))
proc create2*(T: type QVariant, datetime: gen_qdatetime.QDateTime): QVariant =

  QVariant.init(fcQVariant_new19(datetime.h))
proc create*(T: type QVariant, map: Table[string,QVariant]): QVariant =

  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for mapk, mapv in map:
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  QVariant.init(fcQVariant_new20(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)))
proc create2*(T: type QVariant, hash: Table[string,QVariant]): QVariant =

  var hash_Keys_CArray = newSeq[struct_miqt_string](len(hash))
  var hash_Values_CArray = newSeq[pointer](len(hash))
  var hash_ctr = 0
  for hashk, hashv in hash:
    hash_Keys_CArray[hash_ctr] = struct_miqt_string(data: hash_k, len: csize_t(len(hash_k)))
    hash_Values_CArray[hash_ctr] = hash_v.h
    hash_ctr += 1

  QVariant.init(fcQVariant_new21(struct_miqt_map(len: csize_t(len(hash)),keys: if len(hash) == 0: nil else: addr(hash_Keys_CArray[0]), values: if len(hash) == 0: nil else: addr(hash_Values_CArray[0]),)))
proc create2*(T: type QVariant, size: gen_qsize.QSize): QVariant =

  QVariant.init(fcQVariant_new22(size.h))
proc create2*(T: type QVariant, size: gen_qsize.QSizeF): QVariant =

  QVariant.init(fcQVariant_new23(size.h))
proc create2*(T: type QVariant, pt: gen_qpoint.QPoint): QVariant =

  QVariant.init(fcQVariant_new24(pt.h))
proc create2*(T: type QVariant, pt: gen_qpoint.QPointF): QVariant =

  QVariant.init(fcQVariant_new25(pt.h))
proc create2*(T: type QVariant, line: gen_qline.QLine): QVariant =

  QVariant.init(fcQVariant_new26(line.h))
proc create2*(T: type QVariant, line: gen_qline.QLineF): QVariant =

  QVariant.init(fcQVariant_new27(line.h))
proc create2*(T: type QVariant, rect: gen_qrect.QRect): QVariant =

  QVariant.init(fcQVariant_new28(rect.h))
proc create2*(T: type QVariant, rect: gen_qrect.QRectF): QVariant =

  QVariant.init(fcQVariant_new29(rect.h))
proc create2*(T: type QVariant, locale: gen_qlocale.QLocale): QVariant =

  QVariant.init(fcQVariant_new30(locale.h))
proc create2*(T: type QVariant, re: gen_qregularexpression.QRegularExpression): QVariant =

  QVariant.init(fcQVariant_new31(re.h))
proc create2*(T: type QVariant, easing: gen_qeasingcurve.QEasingCurve): QVariant =

  QVariant.init(fcQVariant_new32(easing.h))
proc create2*(T: type QVariant, uuid: gen_quuid.QUuid): QVariant =

  QVariant.init(fcQVariant_new33(uuid.h))
proc create2*(T: type QVariant, url: gen_qurl.QUrl): QVariant =

  QVariant.init(fcQVariant_new34(url.h))
proc create2*(T: type QVariant, jsonValue: gen_qjsonvalue.QJsonValue): QVariant =

  QVariant.init(fcQVariant_new35(jsonValue.h))
proc create2*(T: type QVariant, jsonObject: gen_qjsonobject.QJsonObject): QVariant =

  QVariant.init(fcQVariant_new36(jsonObject.h))
proc create2*(T: type QVariant, jsonArray: gen_qjsonarray.QJsonArray): QVariant =

  QVariant.init(fcQVariant_new37(jsonArray.h))
proc create2*(T: type QVariant, jsonDocument: gen_qjsondocument.QJsonDocument): QVariant =

  QVariant.init(fcQVariant_new38(jsonDocument.h))
proc create2*(T: type QVariant, modelIndex: gen_qabstractitemmodel.QModelIndex): QVariant =

  QVariant.init(fcQVariant_new39(modelIndex.h))
proc create2*(T: type QVariant, modelIndex: gen_qabstractitemmodel.QPersistentModelIndex): QVariant =

  QVariant.init(fcQVariant_new40(modelIndex.h))
proc create2*(T: type QVariant, typeVal: QVariantType): QVariant =

  QVariant.init(fcQVariant_new41(cint(typeVal)))
proc create*(T: type QVariant, typeVal: gen_qmetatype.QMetaType, copy: pointer): QVariant =

  QVariant.init(fcQVariant_new42(typeVal.h, copy))
proc operatorAssign*(self: QVariant, other: QVariant): void =

  fcQVariant_operatorAssign(self.h, other.h)

proc swap*(self: QVariant, other: QVariant): void =

  fcQVariant_swap(self.h, other.h)

proc userType*(self: QVariant, ): cint =

  fcQVariant_userType(self.h)

proc typeId*(self: QVariant, ): cint =

  fcQVariant_typeId(self.h)

proc typeName*(self: QVariant, ): cstring =

  (fcQVariant_typeName(self.h))

proc metaType*(self: QVariant, ): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQVariant_metaType(self.h))

proc canConvert*(self: QVariant, targetType: gen_qmetatype.QMetaType): bool =

  fcQVariant_canConvert(self.h, targetType.h)

proc convert*(self: QVariant, typeVal: gen_qmetatype.QMetaType): bool =

  fcQVariant_convert(self.h, typeVal.h)

proc canView*(self: QVariant, targetType: gen_qmetatype.QMetaType): bool =

  fcQVariant_canView(self.h, targetType.h)

proc canConvertWithTargetTypeId*(self: QVariant, targetTypeId: cint): bool =

  fcQVariant_canConvertWithTargetTypeId(self.h, targetTypeId)

proc convertWithTargetTypeId*(self: QVariant, targetTypeId: cint): bool =

  fcQVariant_convertWithTargetTypeId(self.h, targetTypeId)

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

proc typeX*(self: QVariant, ): QVariantType =

  QVariantType(fcQVariant_typeX(self.h))

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

proc setValue*(self: QVariant, avalue: QVariant): void =

  fcQVariant_setValue(self.h, avalue.h)

proc compare*(_: type QVariant, lhs: QVariant, rhs: QVariant): gen_qcompare.QPartialOrdering =

  gen_qcompare.QPartialOrdering(h: fcQVariant_compare(lhs.h, rhs.h))

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

func init*(T: type QVariantConstPointer, h: ptr cQVariantConstPointer): QVariantConstPointer =
  T(h: h)
proc create*(T: type QVariantConstPointer, variant: QVariant): QVariantConstPointer =

  QVariantConstPointer.init(fcQVariantConstPointer_new(variant.h))
proc create2*(T: type QVariantConstPointer, param1: QVariantConstPointer): QVariantConstPointer =

  QVariantConstPointer.init(fcQVariantConstPointer_new2(param1.h))
proc operatorMultiply*(self: QVariantConstPointer, ): QVariant =

  QVariant(h: fcQVariantConstPointer_operatorMultiply(self.h))

proc operatorMinusGreater*(self: QVariantConstPointer, ): QVariant =

  QVariant(h: fcQVariantConstPointer_operatorMinusGreater(self.h))

proc operatorAssign*(self: QVariantConstPointer, param1: QVariantConstPointer): void =

  fcQVariantConstPointer_operatorAssign(self.h, param1.h)

proc delete*(self: QVariantConstPointer) =
  fcQVariantConstPointer_delete(self.h)
