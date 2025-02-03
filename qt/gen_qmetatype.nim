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
{.compile("gen_qmetatype.cpp", cflags).}


type QCborSimpleType* = uint8

type QtMetaTypePrivateIteratorCapability* = cint
const
  QtMetaTypePrivateForwardCapability* = 1
  QtMetaTypePrivateBiDirectionalCapability* = 2
  QtMetaTypePrivateRandomAccessCapability* = 4



type QtMetaTypePrivateContainerCapability* = cint
const
  QtMetaTypePrivateContainerIsAppendable* = 1



type QMetaTypeType* = cint
const
  QMetaTypeVoid* = 43
  QMetaTypeBool* = 1
  QMetaTypeInt* = 2
  QMetaTypeUInt* = 3
  QMetaTypeLongLong* = 4
  QMetaTypeULongLong* = 5
  QMetaTypeDouble* = 6
  QMetaTypeLong* = 32
  QMetaTypeShort* = 33
  QMetaTypeChar* = 34
  QMetaTypeULong* = 35
  QMetaTypeUShort* = 36
  QMetaTypeUChar* = 37
  QMetaTypeFloat* = 38
  QMetaTypeSChar* = 40
  QMetaTypeNullptr* = 51
  QMetaTypeQCborSimpleType* = 52
  QMetaTypeVoidStar* = 31
  QMetaTypeQChar* = 7
  QMetaTypeQString* = 10
  QMetaTypeQStringList* = 11
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
  QMetaTypeQRegExp* = 27
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
  QMetaTypeQByteArrayList* = 49
  QMetaTypeQFont* = 64
  QMetaTypeQPixmap* = 65
  QMetaTypeQBrush* = 66
  QMetaTypeQColor* = 67
  QMetaTypeQPalette* = 68
  QMetaTypeQIcon* = 69
  QMetaTypeQImage* = 70
  QMetaTypeQPolygon* = 71
  QMetaTypeQRegion* = 72
  QMetaTypeQBitmap* = 73
  QMetaTypeQCursor* = 74
  QMetaTypeQKeySequence* = 75
  QMetaTypeQPen* = 76
  QMetaTypeQTextLength* = 77
  QMetaTypeQTextFormat* = 78
  QMetaTypeQMatrix* = 79
  QMetaTypeQTransform* = 80
  QMetaTypeQMatrix4x4* = 81
  QMetaTypeQVector2D* = 82
  QMetaTypeQVector3D* = 83
  QMetaTypeQVector4D* = 84
  QMetaTypeQQuaternion* = 85
  QMetaTypeQPolygonF* = 86
  QMetaTypeQColorSpace* = 87
  QMetaTypeQSizePolicy* = 121
  QMetaTypeFirstCoreType* = 1
  QMetaTypeLastCoreType* = 55
  QMetaTypeFirstGuiType* = 64
  QMetaTypeLastGuiType* = 87
  QMetaTypeFirstWidgetsType* = 121
  QMetaTypeLastWidgetsType* = 121
  QMetaTypeHighestInternalId* = 121
  QMetaTypeQReal* = 6
  QMetaTypeUnknownType* = 0
  QMetaTypeUser* = 1024



type QMetaTypeTypeFlag* = cint
const
  QMetaTypeNeedsConstruction* = 1
  QMetaTypeNeedsDestruction* = 2
  QMetaTypeMovableType* = 4
  QMetaTypePointerToQObject* = 8
  QMetaTypeIsEnumeration* = 16
  QMetaTypeSharedPointerToQObject* = 32
  QMetaTypeWeakPointerToQObject* = 64
  QMetaTypeTrackingPointerToQObject* = 128
  QMetaTypeWasDeclaredAsMetaType* = 256
  QMetaTypeIsGadget* = 512
  QMetaTypePointerToGadget* = 1024



type QtMetaTypePrivateQSequentialIterableImplPosition* = cint
const
  QtMetaTypePrivateQSequentialIterableImplToBegin* = 0
  QtMetaTypePrivateQSequentialIterableImplToEnd* = 1



import gen_qmetatype_types
export gen_qmetatype_types

import
  gen_qdatastream,
  gen_qdebug,
  gen_qobjectdefs
export
  gen_qdatastream,
  gen_qdebug,
  gen_qobjectdefs

type cQMetaType*{.exportc: "QMetaType", incompleteStruct.} = object

proc fcQMetaType_new(): ptr cQMetaType {.importc: "QMetaType_new".}
proc fcQMetaType_new2(typeVal: cint): ptr cQMetaType {.importc: "QMetaType_new2".}
proc fcQMetaType_unregisterType(typeVal: cint): bool {.importc: "QMetaType_unregisterType".}
proc fcQMetaType_registerTypedef(typeName: cstring, aliasId: cint): cint {.importc: "QMetaType_registerTypedef".}
proc fcQMetaType_registerNormalizedTypedef(normalizedTypeName: struct_miqt_string, aliasId: cint): cint {.importc: "QMetaType_registerNormalizedTypedef".}
proc fcQMetaType_typeX(typeName: cstring): cint {.importc: "QMetaType_type".}
proc fcQMetaType_typeWithTypeName(typeName: struct_miqt_string): cint {.importc: "QMetaType_typeWithTypeName".}
proc fcQMetaType_typeName(typeVal: cint): cstring {.importc: "QMetaType_typeName".}
proc fcQMetaType_sizeOf(typeVal: cint): cint {.importc: "QMetaType_sizeOf".}
proc fcQMetaType_typeFlags(typeVal: cint): cint {.importc: "QMetaType_typeFlags".}
proc fcQMetaType_metaObjectForType(typeVal: cint): pointer {.importc: "QMetaType_metaObjectForType".}
proc fcQMetaType_isRegistered(typeVal: cint): bool {.importc: "QMetaType_isRegistered".}
proc fcQMetaType_create(typeVal: cint): pointer {.importc: "QMetaType_create".}
proc fcQMetaType_destroy(typeVal: cint, data: pointer): void {.importc: "QMetaType_destroy".}
proc fcQMetaType_construct(typeVal: cint, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct".}
proc fcQMetaType_destruct(typeVal: cint, where: pointer): void {.importc: "QMetaType_destruct".}
proc fcQMetaType_save(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_save".}
proc fcQMetaType_load(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_load".}
proc fcQMetaType_isValid(self: pointer, ): bool {.importc: "QMetaType_isValid".}
proc fcQMetaType_isRegistered2(self: pointer, ): bool {.importc: "QMetaType_isRegistered2".}
proc fcQMetaType_id(self: pointer, ): cint {.importc: "QMetaType_id".}
proc fcQMetaType_sizeOf2(self: pointer, ): cint {.importc: "QMetaType_sizeOf2".}
proc fcQMetaType_flags(self: pointer, ): cint {.importc: "QMetaType_flags".}
proc fcQMetaType_metaObject(self: pointer, ): pointer {.importc: "QMetaType_metaObject".}
proc fcQMetaType_name(self: pointer, ): struct_miqt_string {.importc: "QMetaType_name".}
proc fcQMetaType_create2(self: pointer, ): pointer {.importc: "QMetaType_create2".}
proc fcQMetaType_destroyWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destroyWithData".}
proc fcQMetaType_constructWithWhere(self: pointer, where: pointer): pointer {.importc: "QMetaType_constructWithWhere".}
proc fcQMetaType_destructWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destructWithData".}
proc fcQMetaType_hasRegisteredComparators(typeId: cint): bool {.importc: "QMetaType_hasRegisteredComparators".}
proc fcQMetaType_hasRegisteredDebugStreamOperator(typeId: cint): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperator".}
proc fcQMetaType_convert(fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool {.importc: "QMetaType_convert".}
proc fcQMetaType_compare(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_compare".}
proc fcQMetaType_equals(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_equals".}
proc fcQMetaType_debugStream(dbg: pointer, rhs: pointer, typeId: cint): bool {.importc: "QMetaType_debugStream".}
proc fcQMetaType_hasRegisteredConverterFunction(fromTypeId: cint, toTypeId: cint): bool {.importc: "QMetaType_hasRegisteredConverterFunction".}
proc fcQMetaType_create22(typeVal: cint, copy: pointer): pointer {.importc: "QMetaType_create22".}
proc fcQMetaType_create1(self: pointer, copy: pointer): pointer {.importc: "QMetaType_create1".}
proc fcQMetaType_construct2(self: pointer, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct2".}
proc fcQMetaType_delete(self: pointer) {.importc: "QMetaType_delete".}


func init*(T: type QMetaType, h: ptr cQMetaType): QMetaType =
  T(h: h)
proc create*(T: type QMetaType, ): QMetaType =

  QMetaType.init(fcQMetaType_new())
proc create*(T: type QMetaType, typeVal: cint): QMetaType =

  QMetaType.init(fcQMetaType_new2(typeVal))
proc unregisterType*(_: type QMetaType, typeVal: cint): bool =

  fcQMetaType_unregisterType(typeVal)

proc registerTypedef*(_: type QMetaType, typeName: cstring, aliasId: cint): cint =

  fcQMetaType_registerTypedef(typeName, aliasId)

proc registerNormalizedTypedef*(_: type QMetaType, normalizedTypeName: seq[byte], aliasId: cint): cint =

  fcQMetaType_registerNormalizedTypedef(struct_miqt_string(data: cast[cstring](if len(normalizedTypeName) == 0: nil else: unsafeAddr normalizedTypeName[0]), len: csize_t(len(normalizedTypeName))), aliasId)

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

proc isRegistered*(_: type QMetaType, typeVal: cint): bool =

  fcQMetaType_isRegistered(typeVal)

proc create*(_: type QMetaType, typeVal: cint): pointer =

  fcQMetaType_create(typeVal)

proc destroy*(_: type QMetaType, typeVal: cint, data: pointer): void =

  fcQMetaType_destroy(typeVal, data)

proc construct*(_: type QMetaType, typeVal: cint, where: pointer, copy: pointer): pointer =

  fcQMetaType_construct(typeVal, where, copy)

proc destruct*(_: type QMetaType, typeVal: cint, where: pointer): void =

  fcQMetaType_destruct(typeVal, where)

proc save*(_: type QMetaType, stream: gen_qdatastream.QDataStream, typeVal: cint, data: pointer): bool =

  fcQMetaType_save(stream.h, typeVal, data)

proc load*(_: type QMetaType, stream: gen_qdatastream.QDataStream, typeVal: cint, data: pointer): bool =

  fcQMetaType_load(stream.h, typeVal, data)

proc isValid*(self: QMetaType, ): bool =

  fcQMetaType_isValid(self.h)

proc isRegistered2*(self: QMetaType, ): bool =

  fcQMetaType_isRegistered2(self.h)

proc id*(self: QMetaType, ): cint =

  fcQMetaType_id(self.h)

proc sizeOf2*(self: QMetaType, ): cint =

  fcQMetaType_sizeOf2(self.h)

proc flags*(self: QMetaType, ): QMetaTypeTypeFlag =

  QMetaTypeTypeFlag(fcQMetaType_flags(self.h))

proc metaObject*(self: QMetaType, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaType_metaObject(self.h))

proc name*(self: QMetaType, ): seq[byte] =

  var v_bytearray = fcQMetaType_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create2*(self: QMetaType, ): pointer =

  fcQMetaType_create2(self.h)

proc destroyWithData*(self: QMetaType, data: pointer): void =

  fcQMetaType_destroyWithData(self.h, data)

proc constructWithWhere*(self: QMetaType, where: pointer): pointer =

  fcQMetaType_constructWithWhere(self.h, where)

proc destructWithData*(self: QMetaType, data: pointer): void =

  fcQMetaType_destructWithData(self.h, data)

proc hasRegisteredComparators*(_: type QMetaType, typeId: cint): bool =

  fcQMetaType_hasRegisteredComparators(typeId)

proc hasRegisteredDebugStreamOperator*(_: type QMetaType, typeId: cint): bool =

  fcQMetaType_hasRegisteredDebugStreamOperator(typeId)

proc convert*(_: type QMetaType, fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool =

  fcQMetaType_convert(fromVal, fromTypeId, to, toTypeId)

proc compare*(_: type QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =

  fcQMetaType_compare(lhs, rhs, typeId, resultVal)

proc equals*(_: type QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =

  fcQMetaType_equals(lhs, rhs, typeId, resultVal)

proc debugStream*(_: type QMetaType, dbg: gen_qdebug.QDebug, rhs: pointer, typeId: cint): bool =

  fcQMetaType_debugStream(dbg.h, rhs, typeId)

proc hasRegisteredConverterFunction*(_: type QMetaType, fromTypeId: cint, toTypeId: cint): bool =

  fcQMetaType_hasRegisteredConverterFunction(fromTypeId, toTypeId)

proc create22*(_: type QMetaType, typeVal: cint, copy: pointer): pointer =

  fcQMetaType_create22(typeVal, copy)

proc create1*(self: QMetaType, copy: pointer): pointer =

  fcQMetaType_create1(self.h, copy)

proc construct2*(self: QMetaType, where: pointer, copy: pointer): pointer =

  fcQMetaType_construct2(self.h, where, copy)

proc delete*(self: QMetaType) =
  fcQMetaType_delete(self.h)
