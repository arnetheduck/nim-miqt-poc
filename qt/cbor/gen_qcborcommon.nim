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
{.compile("gen_qcborcommon.cpp", cflags).}


type QCborSimpleType* = uint8
const
  QCborSimpleTypeFalse* = 20
  QCborSimpleTypeTrue* = 21
  QCborSimpleTypeNull* = 22
  QCborSimpleTypeUndefined* = 23



type QCborTag* = culonglong

type QCborKnownTags* = cint
const
  QCborKnownTagsDateTimeString* = 0
  QCborKnownTagsUnixTime_t* = 1
  QCborKnownTagsPositiveBignum* = 2
  QCborKnownTagsNegativeBignum* = 3
  QCborKnownTagsDecimal* = 4
  QCborKnownTagsBigfloat* = 5
  QCborKnownTagsCOSE_Encrypt0* = 16
  QCborKnownTagsCOSE_Mac0* = 17
  QCborKnownTagsCOSE_Sign1* = 18
  QCborKnownTagsExpectedBase64url* = 21
  QCborKnownTagsExpectedBase64* = 22
  QCborKnownTagsExpectedBase16* = 23
  QCborKnownTagsEncodedCbor* = 24
  QCborKnownTagsUrl* = 32
  QCborKnownTagsBase64url* = 33
  QCborKnownTagsBase64* = 34
  QCborKnownTagsRegularExpression* = 35
  QCborKnownTagsMimeMessage* = 36
  QCborKnownTagsUuid* = 37
  QCborKnownTagsCOSE_Encrypt* = 96
  QCborKnownTagsCOSE_Mac* = 97
  QCborKnownTagsCOSE_Sign* = 98
  QCborKnownTagsSignature* = 55799



type QCborNegativeInteger* = culonglong

type QCborErrorCode* = cint
const
  QCborErrorUnknownError* = 1
  QCborErrorAdvancePastEnd* = 3
  QCborErrorInputOutputError* = 4
  QCborErrorGarbageAtEnd* = 256
  QCborErrorEndOfFile* = 257
  QCborErrorUnexpectedBreak* = 258
  QCborErrorUnknownType* = 259
  QCborErrorIllegalType* = 260
  QCborErrorIllegalNumber* = 261
  QCborErrorIllegalSimpleType* = 262
  QCborErrorInvalidUtf8String* = 516
  QCborErrorDataTooLarge* = 1024
  QCborErrorNestingTooDeep* = 1025
  QCborErrorUnsupportedType* = 1026
  QCborErrorNoError* = 0



import gen_qcborcommon_types
export gen_qcborcommon_types

import
  gen_qobjectdefs
export
  gen_qobjectdefs

type cQCborError*{.exportc: "QCborError", incompleteStruct.} = object

proc fcQCborError_ToQCborError__Code(self: pointer, ): cint {.importc: "QCborError_ToQCborError__Code".}
proc fcQCborError_toString(self: pointer, ): struct_miqt_string {.importc: "QCborError_toString".}
proc fcQCborError_staticMetaObject(): pointer {.importc: "QCborError_staticMetaObject".}
proc fcQCborError_delete(self: pointer) {.importc: "QCborError_delete".}


func init*(T: type QCborError, h: ptr cQCborError): QCborError =
  T(h: h)
proc ToQCborError__Code*(self: QCborError, ): QCborErrorCode =

  QCborErrorCode(fcQCborError_ToQCborError__Code(self.h))

proc toString*(self: QCborError, ): string =

  let v_ms = fcQCborError_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCborError): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCborError_staticMetaObject())
proc delete*(self: QCborError) =
  fcQCborError_delete(self.h)
