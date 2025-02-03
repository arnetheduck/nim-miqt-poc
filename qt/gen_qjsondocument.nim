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
{.compile("gen_qjsondocument.cpp", cflags).}


type QJsonParseErrorParseError* = cint
const
  QJsonParseErrorNoError* = 0
  QJsonParseErrorUnterminatedObject* = 1
  QJsonParseErrorMissingNameSeparator* = 2
  QJsonParseErrorUnterminatedArray* = 3
  QJsonParseErrorMissingValueSeparator* = 4
  QJsonParseErrorIllegalValue* = 5
  QJsonParseErrorTerminationByNumber* = 6
  QJsonParseErrorIllegalNumber* = 7
  QJsonParseErrorIllegalEscapeSequence* = 8
  QJsonParseErrorIllegalUTF8String* = 9
  QJsonParseErrorUnterminatedString* = 10
  QJsonParseErrorMissingObject* = 11
  QJsonParseErrorDeepNesting* = 12
  QJsonParseErrorDocumentTooLarge* = 13
  QJsonParseErrorGarbageAtEnd* = 14



type QJsonDocumentDataValidation* = cint
const
  QJsonDocumentValidate* = 0
  QJsonDocumentBypassValidation* = 1



type QJsonDocumentJsonFormat* = cint
const
  QJsonDocumentIndented* = 0
  QJsonDocumentCompact* = 1



import gen_qjsondocument_types
export gen_qjsondocument_types

import
  gen_qjsonarray,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qvariant
export
  gen_qjsonarray,
  gen_qjsonobject,
  gen_qjsonvalue,
  gen_qvariant

type cQJsonParseError*{.exportc: "QJsonParseError", incompleteStruct.} = object
type cQJsonDocument*{.exportc: "QJsonDocument", incompleteStruct.} = object

proc fcQJsonParseError_errorString(self: pointer, ): struct_miqt_string {.importc: "QJsonParseError_errorString".}
proc fcQJsonParseError_delete(self: pointer) {.importc: "QJsonParseError_delete".}
proc fcQJsonDocument_new(): ptr cQJsonDocument {.importc: "QJsonDocument_new".}
proc fcQJsonDocument_new2(objectVal: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new2".}
proc fcQJsonDocument_new3(array: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new3".}
proc fcQJsonDocument_new4(other: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new4".}
proc fcQJsonDocument_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonDocument_operatorAssign".}
proc fcQJsonDocument_swap(self: pointer, other: pointer): void {.importc: "QJsonDocument_swap".}
proc fcQJsonDocument_fromRawData(data: cstring, size: cint): pointer {.importc: "QJsonDocument_fromRawData".}
proc fcQJsonDocument_rawData(self: pointer, size: ptr cint): cstring {.importc: "QJsonDocument_rawData".}
proc fcQJsonDocument_fromBinaryData(data: struct_miqt_string): pointer {.importc: "QJsonDocument_fromBinaryData".}
proc fcQJsonDocument_toBinaryData(self: pointer, ): struct_miqt_string {.importc: "QJsonDocument_toBinaryData".}
proc fcQJsonDocument_fromVariant(variant: pointer): pointer {.importc: "QJsonDocument_fromVariant".}
proc fcQJsonDocument_toVariant(self: pointer, ): pointer {.importc: "QJsonDocument_toVariant".}
proc fcQJsonDocument_fromJson(json: struct_miqt_string): pointer {.importc: "QJsonDocument_fromJson".}
proc fcQJsonDocument_toJson(self: pointer, ): struct_miqt_string {.importc: "QJsonDocument_toJson".}
proc fcQJsonDocument_toJsonWithFormat(self: pointer, format: cint): struct_miqt_string {.importc: "QJsonDocument_toJsonWithFormat".}
proc fcQJsonDocument_isEmpty(self: pointer, ): bool {.importc: "QJsonDocument_isEmpty".}
proc fcQJsonDocument_isArray(self: pointer, ): bool {.importc: "QJsonDocument_isArray".}
proc fcQJsonDocument_isObject(self: pointer, ): bool {.importc: "QJsonDocument_isObject".}
proc fcQJsonDocument_objectX(self: pointer, ): pointer {.importc: "QJsonDocument_object".}
proc fcQJsonDocument_array(self: pointer, ): pointer {.importc: "QJsonDocument_array".}
proc fcQJsonDocument_setObject(self: pointer, objectVal: pointer): void {.importc: "QJsonDocument_setObject".}
proc fcQJsonDocument_setArray(self: pointer, array: pointer): void {.importc: "QJsonDocument_setArray".}
proc fcQJsonDocument_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonDocument_operatorSubscript".}
proc fcQJsonDocument_operatorSubscriptWithInt(self: pointer, i: cint): pointer {.importc: "QJsonDocument_operatorSubscriptWithInt".}
proc fcQJsonDocument_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonDocument_operatorEqual".}
proc fcQJsonDocument_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonDocument_operatorNotEqual".}
proc fcQJsonDocument_isNull(self: pointer, ): bool {.importc: "QJsonDocument_isNull".}
proc fcQJsonDocument_fromRawData3(data: cstring, size: cint, validation: cint): pointer {.importc: "QJsonDocument_fromRawData3".}
proc fcQJsonDocument_fromBinaryData2(data: struct_miqt_string, validation: cint): pointer {.importc: "QJsonDocument_fromBinaryData2".}
proc fcQJsonDocument_fromJson2(json: struct_miqt_string, error: pointer): pointer {.importc: "QJsonDocument_fromJson2".}
proc fcQJsonDocument_delete(self: pointer) {.importc: "QJsonDocument_delete".}


func init*(T: type QJsonParseError, h: ptr cQJsonParseError): QJsonParseError =
  T(h: h)
proc errorString*(self: QJsonParseError, ): string =

  let v_ms = fcQJsonParseError_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QJsonParseError) =
  fcQJsonParseError_delete(self.h)

func init*(T: type QJsonDocument, h: ptr cQJsonDocument): QJsonDocument =
  T(h: h)
proc create*(T: type QJsonDocument, ): QJsonDocument =

  QJsonDocument.init(fcQJsonDocument_new())
proc create*(T: type QJsonDocument, objectVal: gen_qjsonobject.QJsonObject): QJsonDocument =

  QJsonDocument.init(fcQJsonDocument_new2(objectVal.h))
proc create2*(T: type QJsonDocument, array: gen_qjsonarray.QJsonArray): QJsonDocument =

  QJsonDocument.init(fcQJsonDocument_new3(array.h))
proc create2*(T: type QJsonDocument, other: QJsonDocument): QJsonDocument =

  QJsonDocument.init(fcQJsonDocument_new4(other.h))
proc operatorAssign*(self: QJsonDocument, other: QJsonDocument): void =

  fcQJsonDocument_operatorAssign(self.h, other.h)

proc swap*(self: QJsonDocument, other: QJsonDocument): void =

  fcQJsonDocument_swap(self.h, other.h)

proc fromRawData*(_: type QJsonDocument, data: cstring, size: cint): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromRawData(data, size))

proc rawData*(self: QJsonDocument, size: ptr cint): cstring =

  (fcQJsonDocument_rawData(self.h, size))

proc fromBinaryData*(_: type QJsonDocument, data: seq[byte]): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromBinaryData(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc toBinaryData*(self: QJsonDocument, ): seq[byte] =

  var v_bytearray = fcQJsonDocument_toBinaryData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromVariant*(_: type QJsonDocument, variant: gen_qvariant.QVariant): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromVariant(variant.h))

proc toVariant*(self: QJsonDocument, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQJsonDocument_toVariant(self.h))

proc fromJson*(_: type QJsonDocument, json: seq[byte]): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromJson(struct_miqt_string(data: cast[cstring](if len(json) == 0: nil else: unsafeAddr json[0]), len: csize_t(len(json)))))

proc toJson*(self: QJsonDocument, ): seq[byte] =

  var v_bytearray = fcQJsonDocument_toJson(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toJsonWithFormat*(self: QJsonDocument, format: QJsonDocumentJsonFormat): seq[byte] =

  var v_bytearray = fcQJsonDocument_toJsonWithFormat(self.h, cint(format))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc isEmpty*(self: QJsonDocument, ): bool =

  fcQJsonDocument_isEmpty(self.h)

proc isArray*(self: QJsonDocument, ): bool =

  fcQJsonDocument_isArray(self.h)

proc isObject*(self: QJsonDocument, ): bool =

  fcQJsonDocument_isObject(self.h)

proc objectX*(self: QJsonDocument, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQJsonDocument_objectX(self.h))

proc array*(self: QJsonDocument, ): gen_qjsonarray.QJsonArray =

  gen_qjsonarray.QJsonArray(h: fcQJsonDocument_array(self.h))

proc setObject*(self: QJsonDocument, objectVal: gen_qjsonobject.QJsonObject): void =

  fcQJsonDocument_setObject(self.h, objectVal.h)

proc setArray*(self: QJsonDocument, array: gen_qjsonarray.QJsonArray): void =

  fcQJsonDocument_setArray(self.h, array.h)

proc operatorSubscript*(self: QJsonDocument, key: string): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonDocument_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscriptWithInt*(self: QJsonDocument, i: cint): gen_qjsonvalue.QJsonValue =

  gen_qjsonvalue.QJsonValue(h: fcQJsonDocument_operatorSubscriptWithInt(self.h, i))

proc operatorEqual*(self: QJsonDocument, other: QJsonDocument): bool =

  fcQJsonDocument_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QJsonDocument, other: QJsonDocument): bool =

  fcQJsonDocument_operatorNotEqual(self.h, other.h)

proc isNull*(self: QJsonDocument, ): bool =

  fcQJsonDocument_isNull(self.h)

proc fromRawData3*(_: type QJsonDocument, data: cstring, size: cint, validation: QJsonDocumentDataValidation): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromRawData3(data, size, cint(validation)))

proc fromBinaryData2*(_: type QJsonDocument, data: seq[byte], validation: QJsonDocumentDataValidation): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromBinaryData2(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(validation)))

proc fromJson2*(_: type QJsonDocument, json: seq[byte], error: QJsonParseError): QJsonDocument =

  QJsonDocument(h: fcQJsonDocument_fromJson2(struct_miqt_string(data: cast[cstring](if len(json) == 0: nil else: unsafeAddr json[0]), len: csize_t(len(json))), error.h))

proc delete*(self: QJsonDocument) =
  fcQJsonDocument_delete(self.h)
