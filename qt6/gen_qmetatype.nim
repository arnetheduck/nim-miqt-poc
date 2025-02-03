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
{.compile("gen_qmetatype.cpp", cflags).}


type QCborSimpleType* = uint8

type QMetaTypeType* = cint
const
  QMetaTypeBool* = 1
  QMetaTypeInt* = 2
  QMetaTypeUInt* = 3
  QMetaTypeLongLong* = 4
  QMetaTypeULongLong* = 5
  QMetaTypeDouble* = 6
  QMetaTypeLong* = 32
  QMetaTypeShort* = 33
  QMetaTypeChar* = 34
  QMetaTypeChar16* = 56
  QMetaTypeChar32* = 57
  QMetaTypeULong* = 35
  QMetaTypeUShort* = 36
  QMetaTypeUChar* = 37
  QMetaTypeFloat* = 38
  QMetaTypeSChar* = 40
  QMetaTypeNullptr* = 51
  QMetaTypeQCborSimpleType* = 52
  QMetaTypeVoid* = 43
  QMetaTypeVoidStar* = 31
  QMetaTypeQChar* = 7
  QMetaTypeQString* = 10
  QMetaTypeQByteArray* = 12
  QMetaTypeQBitArray* = 13
  QMetaTypeQDate* = 14
  QMetaTypeQTime* = 15
  QMetaTypeQDateTime* = 16
  QMetaTypeQUrl* = 17
  QMetaTypeQLocale* = 18
  QMetaTypeQRect* = 19
  QMetaTypeQRectF* = 20
  QMetaTypeQSize* = 21
  QMetaTypeQSizeF* = 22
  QMetaTypeQLine* = 23
  QMetaTypeQLineF* = 24
  QMetaTypeQPoint* = 25
  QMetaTypeQPointF* = 26
  QMetaTypeQEasingCurve* = 29
  QMetaTypeQUuid* = 30
  QMetaTypeQVariant* = 41
  QMetaTypeQRegularExpression* = 44
  QMetaTypeQJsonValue* = 45
  QMetaTypeQJsonObject* = 46
  QMetaTypeQJsonArray* = 47
  QMetaTypeQJsonDocument* = 48
  QMetaTypeQCborValue* = 53
  QMetaTypeQCborArray* = 54
  QMetaTypeQCborMap* = 55
  QMetaTypeQModelIndex* = 42
  QMetaTypeQPersistentModelIndex* = 50
  QMetaTypeQObjectStar* = 39
  QMetaTypeQVariantMap* = 8
  QMetaTypeQVariantList* = 9
  QMetaTypeQVariantHash* = 28
  QMetaTypeQVariantPair* = 58
  QMetaTypeQByteArrayList* = 49
  QMetaTypeQStringList* = 11
  QMetaTypeQFont* = 4096
  QMetaTypeQPixmap* = 4097
  QMetaTypeQBrush* = 4098
  QMetaTypeQColor* = 4099
  QMetaTypeQPalette* = 4100
  QMetaTypeQIcon* = 4101
  QMetaTypeQImage* = 4102
  QMetaTypeQPolygon* = 4103
  QMetaTypeQRegion* = 4104
  QMetaTypeQBitmap* = 4105
  QMetaTypeQCursor* = 4106
  QMetaTypeQKeySequence* = 4107
  QMetaTypeQPen* = 4108
  QMetaTypeQTextLength* = 4109
  QMetaTypeQTextFormat* = 4110
  QMetaTypeQTransform* = 4112
  QMetaTypeQMatrix4x4* = 4113
  QMetaTypeQVector2D* = 4114
  QMetaTypeQVector3D* = 4115
  QMetaTypeQVector4D* = 4116
  QMetaTypeQQuaternion* = 4117
  QMetaTypeQPolygonF* = 4118
  QMetaTypeQColorSpace* = 4119
  QMetaTypeQSizePolicy* = 8192
  QMetaTypeFirstCoreType* = 1
  QMetaTypeLastCoreType* = 58
  QMetaTypeFirstGuiType* = 4096
  QMetaTypeLastGuiType* = 4119
  QMetaTypeFirstWidgetsType* = 8192
  QMetaTypeLastWidgetsType* = 8192
  QMetaTypeHighestInternalId* = 8192
  QMetaTypeQReal* = 6
  QMetaTypeUnknownType* = 0
  QMetaTypeUser* = 65536



type QMetaTypeTypeFlag* = cint
const
  QMetaTypeNeedsConstruction* = 1
  QMetaTypeNeedsDestruction* = 2
  QMetaTypeRelocatableType* = 4
  QMetaTypeMovableType* = 4
  QMetaTypePointerToQObject* = 8
  QMetaTypeIsEnumeration* = 16
  QMetaTypeSharedPointerToQObject* = 32
  QMetaTypeWeakPointerToQObject* = 64
  QMetaTypeTrackingPointerToQObject* = 128
  QMetaTypeIsUnsignedEnumeration* = 256
  QMetaTypeIsGadget* = 512
  QMetaTypePointerToGadget* = 1024
  QMetaTypeIsPointer* = 2048
  QMetaTypeIsQmlList* = 4096
  QMetaTypeIsConst* = 8192



import gen_qmetatype_types
export gen_qmetatype_types

import
  gen_qbytearrayview,
  gen_qcompare,
  gen_qdatastream,
  gen_qdebug,
  gen_qobjectdefs
export
  gen_qbytearrayview,
  gen_qcompare,
  gen_qdatastream,
  gen_qdebug,
  gen_qobjectdefs

type cQMetaType*{.exportc: "QMetaType", incompleteStruct.} = object

proc fcQMetaType_new(typeVal: cint): ptr cQMetaType {.importc: "QMetaType_new".}
proc fcQMetaType_new2(): ptr cQMetaType {.importc: "QMetaType_new2".}
proc fcQMetaType_new3(param1: pointer): ptr cQMetaType {.importc: "QMetaType_new3".}
proc fcQMetaType_registerNormalizedTypedef(normalizedTypeName: struct_miqt_string, typeVal: pointer): void {.importc: "QMetaType_registerNormalizedTypedef".}
proc fcQMetaType_typeX(typeName: cstring): cint {.importc: "QMetaType_type".}
proc fcQMetaType_typeWithTypeName(typeName: struct_miqt_string): cint {.importc: "QMetaType_typeWithTypeName".}
proc fcQMetaType_typeName(typeVal: cint): cstring {.importc: "QMetaType_typeName".}
proc fcQMetaType_sizeOf(typeVal: cint): cint {.importc: "QMetaType_sizeOf".}
proc fcQMetaType_typeFlags(typeVal: cint): cint {.importc: "QMetaType_typeFlags".}
proc fcQMetaType_metaObjectForType(typeVal: cint): pointer {.importc: "QMetaType_metaObjectForType".}
proc fcQMetaType_create(typeVal: cint): pointer {.importc: "QMetaType_create".}
proc fcQMetaType_destroy(typeVal: cint, data: pointer): void {.importc: "QMetaType_destroy".}
proc fcQMetaType_construct(typeVal: cint, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct".}
proc fcQMetaType_destruct(typeVal: cint, where: pointer): void {.importc: "QMetaType_destruct".}
proc fcQMetaType_isRegistered(typeVal: cint): bool {.importc: "QMetaType_isRegistered".}
proc fcQMetaType_isValid(self: pointer, ): bool {.importc: "QMetaType_isValid".}
proc fcQMetaType_isRegistered2(self: pointer, ): bool {.importc: "QMetaType_isRegistered2".}
proc fcQMetaType_id(self: pointer, ): cint {.importc: "QMetaType_id".}
proc fcQMetaType_sizeOf2(self: pointer, ): int64 {.importc: "QMetaType_sizeOf2".}
proc fcQMetaType_alignOf(self: pointer, ): int64 {.importc: "QMetaType_alignOf".}
proc fcQMetaType_flags(self: pointer, ): cint {.importc: "QMetaType_flags".}
proc fcQMetaType_metaObject(self: pointer, ): pointer {.importc: "QMetaType_metaObject".}
proc fcQMetaType_name(self: pointer, ): cstring {.importc: "QMetaType_name".}
proc fcQMetaType_create2(self: pointer, ): pointer {.importc: "QMetaType_create2".}
proc fcQMetaType_destroyWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destroyWithData".}
proc fcQMetaType_constructWithWhere(self: pointer, where: pointer): pointer {.importc: "QMetaType_constructWithWhere".}
proc fcQMetaType_destructWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destructWithData".}
proc fcQMetaType_compare(self: pointer, lhs: pointer, rhs: pointer): pointer {.importc: "QMetaType_compare".}
proc fcQMetaType_equals(self: pointer, lhs: pointer, rhs: pointer): bool {.importc: "QMetaType_equals".}
proc fcQMetaType_isEqualityComparable(self: pointer, ): bool {.importc: "QMetaType_isEqualityComparable".}
proc fcQMetaType_isOrdered(self: pointer, ): bool {.importc: "QMetaType_isOrdered".}
proc fcQMetaType_save(self: pointer, stream: pointer, data: pointer): bool {.importc: "QMetaType_save".}
proc fcQMetaType_load(self: pointer, stream: pointer, data: pointer): bool {.importc: "QMetaType_load".}
proc fcQMetaType_hasRegisteredDataStreamOperators(self: pointer, ): bool {.importc: "QMetaType_hasRegisteredDataStreamOperators".}
proc fcQMetaType_save2(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_save2".}
proc fcQMetaType_load2(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_load2".}
proc fcQMetaType_fromName(name: pointer): pointer {.importc: "QMetaType_fromName".}
proc fcQMetaType_debugStream(self: pointer, dbg: pointer, rhs: pointer): bool {.importc: "QMetaType_debugStream".}
proc fcQMetaType_hasRegisteredDebugStreamOperator(self: pointer, ): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperator".}
proc fcQMetaType_debugStream2(dbg: pointer, rhs: pointer, typeId: cint): bool {.importc: "QMetaType_debugStream2".}
proc fcQMetaType_hasRegisteredDebugStreamOperatorWithTypeId(typeId: cint): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperatorWithTypeId".}
proc fcQMetaType_convert(fromType: pointer, fromVal: pointer, toType: pointer, to: pointer): bool {.importc: "QMetaType_convert".}
proc fcQMetaType_canConvert(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_canConvert".}
proc fcQMetaType_view(fromType: pointer, fromVal: pointer, toType: pointer, to: pointer): bool {.importc: "QMetaType_view".}
proc fcQMetaType_canView(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_canView".}
proc fcQMetaType_convert2(fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool {.importc: "QMetaType_convert2".}
proc fcQMetaType_compare2(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_compare2".}
proc fcQMetaType_equals2(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_equals2".}
proc fcQMetaType_hasRegisteredConverterFunction(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_hasRegisteredConverterFunction".}
proc fcQMetaType_hasRegisteredMutableViewFunction(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_hasRegisteredMutableViewFunction".}
proc fcQMetaType_unregisterConverterFunction(fromVal: pointer, to: pointer): void {.importc: "QMetaType_unregisterConverterFunction".}
proc fcQMetaType_unregisterMutableViewFunction(fromVal: pointer, to: pointer): void {.importc: "QMetaType_unregisterMutableViewFunction".}
proc fcQMetaType_unregisterMetaType(typeVal: pointer): void {.importc: "QMetaType_unregisterMetaType".}
proc fcQMetaType_create22(typeVal: cint, copy: pointer): pointer {.importc: "QMetaType_create22".}
proc fcQMetaType_id1(self: pointer, param1: cint): cint {.importc: "QMetaType_id1".}
proc fcQMetaType_create1(self: pointer, copy: pointer): pointer {.importc: "QMetaType_create1".}
proc fcQMetaType_construct2(self: pointer, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct2".}
proc fcQMetaType_delete(self: pointer) {.importc: "QMetaType_delete".}


func init*(T: type QMetaType, h: ptr cQMetaType): QMetaType =
  T(h: h)
proc create*(T: type QMetaType, typeVal: cint): QMetaType =

  QMetaType.init(fcQMetaType_new(typeVal))
proc create*(T: type QMetaType, ): QMetaType =

  QMetaType.init(fcQMetaType_new2())
proc create*(T: type QMetaType, param1: QMetaType): QMetaType =

  QMetaType.init(fcQMetaType_new3(param1.h))
proc registerNormalizedTypedef*(_: type QMetaType, normalizedTypeName: seq[byte], typeVal: QMetaType): void =

  fcQMetaType_registerNormalizedTypedef(struct_miqt_string(data: cast[cstring](if len(normalizedTypeName) == 0: nil else: unsafeAddr normalizedTypeName[0]), len: csize_t(len(normalizedTypeName))), typeVal.h)

proc typeX*(_: type QMetaType, typeName: cstring): cint =

  fcQMetaType_typeX(typeName)

proc typeWithTypeName*(_: type QMetaType, typeName: seq[byte]): cint =

  fcQMetaType_typeWithTypeName(struct_miqt_string(data: cast[cstring](if len(typeName) == 0: nil else: unsafeAddr typeName[0]), len: csize_t(len(typeName))))

proc typeName*(_: type QMetaType, typeVal: cint): cstring =

  (fcQMetaType_typeName(typeVal))

proc sizeOf*(_: type QMetaType, typeVal: cint): cint =

  fcQMetaType_sizeOf(typeVal)

proc typeFlags*(_: type QMetaType, typeVal: cint): QMetaTypeTypeFlag =

  QMetaTypeTypeFlag(fcQMetaType_typeFlags(typeVal))

proc metaObjectForType*(_: type QMetaType, typeVal: cint): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaType_metaObjectForType(typeVal))

proc create*(_: type QMetaType, typeVal: cint): pointer =

  fcQMetaType_create(typeVal)

proc destroy*(_: type QMetaType, typeVal: cint, data: pointer): void =

  fcQMetaType_destroy(typeVal, data)

proc construct*(_: type QMetaType, typeVal: cint, where: pointer, copy: pointer): pointer =

  fcQMetaType_construct(typeVal, where, copy)

proc destruct*(_: type QMetaType, typeVal: cint, where: pointer): void =

  fcQMetaType_destruct(typeVal, where)

proc isRegistered*(_: type QMetaType, typeVal: cint): bool =

  fcQMetaType_isRegistered(typeVal)

proc isValid*(self: QMetaType, ): bool =

  fcQMetaType_isValid(self.h)

proc isRegistered2*(self: QMetaType, ): bool =

  fcQMetaType_isRegistered2(self.h)

proc id*(self: QMetaType, ): cint =

  fcQMetaType_id(self.h)

proc sizeOf2*(self: QMetaType, ): int64 =

  fcQMetaType_sizeOf2(self.h)

proc alignOf*(self: QMetaType, ): int64 =

  fcQMetaType_alignOf(self.h)

proc flags*(self: QMetaType, ): QMetaTypeTypeFlag =

  QMetaTypeTypeFlag(fcQMetaType_flags(self.h))

proc metaObject*(self: QMetaType, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaType_metaObject(self.h))

proc name*(self: QMetaType, ): cstring =

  (fcQMetaType_name(self.h))

proc create2*(self: QMetaType, ): pointer =

  fcQMetaType_create2(self.h)

proc destroyWithData*(self: QMetaType, data: pointer): void =

  fcQMetaType_destroyWithData(self.h, data)

proc constructWithWhere*(self: QMetaType, where: pointer): pointer =

  fcQMetaType_constructWithWhere(self.h, where)

proc destructWithData*(self: QMetaType, data: pointer): void =

  fcQMetaType_destructWithData(self.h, data)

proc compare*(self: QMetaType, lhs: pointer, rhs: pointer): gen_qcompare.QPartialOrdering =

  gen_qcompare.QPartialOrdering(h: fcQMetaType_compare(self.h, lhs, rhs))

proc equals*(self: QMetaType, lhs: pointer, rhs: pointer): bool =

  fcQMetaType_equals(self.h, lhs, rhs)

proc isEqualityComparable*(self: QMetaType, ): bool =

  fcQMetaType_isEqualityComparable(self.h)

proc isOrdered*(self: QMetaType, ): bool =

  fcQMetaType_isOrdered(self.h)

proc save*(self: QMetaType, stream: gen_qdatastream.QDataStream, data: pointer): bool =

  fcQMetaType_save(self.h, stream.h, data)

proc load*(self: QMetaType, stream: gen_qdatastream.QDataStream, data: pointer): bool =

  fcQMetaType_load(self.h, stream.h, data)

proc hasRegisteredDataStreamOperators*(self: QMetaType, ): bool =

  fcQMetaType_hasRegisteredDataStreamOperators(self.h)

proc save2*(_: type QMetaType, stream: gen_qdatastream.QDataStream, typeVal: cint, data: pointer): bool =

  fcQMetaType_save2(stream.h, typeVal, data)

proc load2*(_: type QMetaType, stream: gen_qdatastream.QDataStream, typeVal: cint, data: pointer): bool =

  fcQMetaType_load2(stream.h, typeVal, data)

proc fromName*(_: type QMetaType, name: gen_qbytearrayview.QByteArrayView): QMetaType =

  QMetaType(h: fcQMetaType_fromName(name.h))

proc debugStream*(self: QMetaType, dbg: gen_qdebug.QDebug, rhs: pointer): bool =

  fcQMetaType_debugStream(self.h, dbg.h, rhs)

proc hasRegisteredDebugStreamOperator*(self: QMetaType, ): bool =

  fcQMetaType_hasRegisteredDebugStreamOperator(self.h)

proc debugStream2*(_: type QMetaType, dbg: gen_qdebug.QDebug, rhs: pointer, typeId: cint): bool =

  fcQMetaType_debugStream2(dbg.h, rhs, typeId)

proc hasRegisteredDebugStreamOperatorWithTypeId*(_: type QMetaType, typeId: cint): bool =

  fcQMetaType_hasRegisteredDebugStreamOperatorWithTypeId(typeId)

proc convert*(_: type QMetaType, fromType: QMetaType, fromVal: pointer, toType: QMetaType, to: pointer): bool =

  fcQMetaType_convert(fromType.h, fromVal, toType.h, to)

proc canConvert*(_: type QMetaType, fromType: QMetaType, toType: QMetaType): bool =

  fcQMetaType_canConvert(fromType.h, toType.h)

proc view*(_: type QMetaType, fromType: QMetaType, fromVal: pointer, toType: QMetaType, to: pointer): bool =

  fcQMetaType_view(fromType.h, fromVal, toType.h, to)

proc canView*(_: type QMetaType, fromType: QMetaType, toType: QMetaType): bool =

  fcQMetaType_canView(fromType.h, toType.h)

proc convert2*(_: type QMetaType, fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool =

  fcQMetaType_convert2(fromVal, fromTypeId, to, toTypeId)

proc compare2*(_: type QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =

  fcQMetaType_compare2(lhs, rhs, typeId, resultVal)

proc equals2*(_: type QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =

  fcQMetaType_equals2(lhs, rhs, typeId, resultVal)

proc hasRegisteredConverterFunction*(_: type QMetaType, fromType: QMetaType, toType: QMetaType): bool =

  fcQMetaType_hasRegisteredConverterFunction(fromType.h, toType.h)

proc hasRegisteredMutableViewFunction*(_: type QMetaType, fromType: QMetaType, toType: QMetaType): bool =

  fcQMetaType_hasRegisteredMutableViewFunction(fromType.h, toType.h)

proc unregisterConverterFunction*(_: type QMetaType, fromVal: QMetaType, to: QMetaType): void =

  fcQMetaType_unregisterConverterFunction(fromVal.h, to.h)

proc unregisterMutableViewFunction*(_: type QMetaType, fromVal: QMetaType, to: QMetaType): void =

  fcQMetaType_unregisterMutableViewFunction(fromVal.h, to.h)

proc unregisterMetaType*(_: type QMetaType, typeVal: QMetaType): void =

  fcQMetaType_unregisterMetaType(typeVal.h)

proc create22*(_: type QMetaType, typeVal: cint, copy: pointer): pointer =

  fcQMetaType_create22(typeVal, copy)

proc id1*(self: QMetaType, param1: cint): cint =

  fcQMetaType_id1(self.h, param1)

proc create1*(self: QMetaType, copy: pointer): pointer =

  fcQMetaType_create1(self.h, copy)

proc construct2*(self: QMetaType, where: pointer, copy: pointer): pointer =

  fcQMetaType_construct2(self.h, where, copy)

proc delete*(self: QMetaType) =
  fcQMetaType_delete(self.h)
