import Qt6Core_libs

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

const cflags = gorge("pkg-config -cflags Qt6Core")
{.compile("gen_qcborstreamreader.cpp", cflags).}


type QCborStreamReaderType* = uint8
const
  QCborStreamReaderUnsignedInteger* = 0
  QCborStreamReaderNegativeInteger* = 32
  QCborStreamReaderByteString* = 64
  QCborStreamReaderByteArray* = 64
  QCborStreamReaderTextString* = 96
  QCborStreamReaderString* = 96
  QCborStreamReaderArray* = 128
  QCborStreamReaderMap* = 160
  QCborStreamReaderTag* = 192
  QCborStreamReaderSimpleType* = 224
  QCborStreamReaderHalfFloat* = 249
  QCborStreamReaderFloat16* = 249
  QCborStreamReaderFloat* = 250
  QCborStreamReaderDouble* = 251
  QCborStreamReaderInvalid* = 255



type QCborStreamReaderStringResultCode* = cint
const
  QCborStreamReaderEndOfString* = 0
  QCborStreamReaderOk* = 1
  QCborStreamReaderError* = -1



import gen_qcborstreamreader_types
export gen_qcborstreamreader_types

import
  gen_qcborcommon,
  gen_qiodevice,
  gen_qobjectdefs
export
  gen_qcborcommon,
  gen_qiodevice,
  gen_qobjectdefs

type cQCborStreamReader*{.exportc: "QCborStreamReader", incompleteStruct.} = object

proc fcQCborStreamReader_new(): ptr cQCborStreamReader {.importc: "QCborStreamReader_new".}
proc fcQCborStreamReader_new2(data: cstring, len: int64): ptr cQCborStreamReader {.importc: "QCborStreamReader_new2".}
proc fcQCborStreamReader_new3(data: ptr uint8, len: int64): ptr cQCborStreamReader {.importc: "QCborStreamReader_new3".}
proc fcQCborStreamReader_new4(data: struct_miqt_string): ptr cQCborStreamReader {.importc: "QCborStreamReader_new4".}
proc fcQCborStreamReader_new5(device: pointer): ptr cQCborStreamReader {.importc: "QCborStreamReader_new5".}
proc fcQCborStreamReader_setDevice(self: pointer, device: pointer): void {.importc: "QCborStreamReader_setDevice".}
proc fcQCborStreamReader_device(self: pointer, ): pointer {.importc: "QCborStreamReader_device".}
proc fcQCborStreamReader_addData(self: pointer, data: struct_miqt_string): void {.importc: "QCborStreamReader_addData".}
proc fcQCborStreamReader_addData2(self: pointer, data: cstring, len: int64): void {.importc: "QCborStreamReader_addData2".}
proc fcQCborStreamReader_addData3(self: pointer, data: ptr uint8, len: int64): void {.importc: "QCborStreamReader_addData3".}
proc fcQCborStreamReader_reparse(self: pointer, ): void {.importc: "QCborStreamReader_reparse".}
proc fcQCborStreamReader_clear(self: pointer, ): void {.importc: "QCborStreamReader_clear".}
proc fcQCborStreamReader_reset(self: pointer, ): void {.importc: "QCborStreamReader_reset".}
proc fcQCborStreamReader_lastError(self: pointer, ): pointer {.importc: "QCborStreamReader_lastError".}
proc fcQCborStreamReader_currentOffset(self: pointer, ): clonglong {.importc: "QCborStreamReader_currentOffset".}
proc fcQCborStreamReader_isValid(self: pointer, ): bool {.importc: "QCborStreamReader_isValid".}
proc fcQCborStreamReader_containerDepth(self: pointer, ): cint {.importc: "QCborStreamReader_containerDepth".}
proc fcQCborStreamReader_parentContainerType(self: pointer, ): cint {.importc: "QCborStreamReader_parentContainerType".}
proc fcQCborStreamReader_hasNext(self: pointer, ): bool {.importc: "QCborStreamReader_hasNext".}
proc fcQCborStreamReader_next(self: pointer, ): bool {.importc: "QCborStreamReader_next".}
proc fcQCborStreamReader_typeX(self: pointer, ): cint {.importc: "QCborStreamReader_type".}
proc fcQCborStreamReader_isUnsignedInteger(self: pointer, ): bool {.importc: "QCborStreamReader_isUnsignedInteger".}
proc fcQCborStreamReader_isNegativeInteger(self: pointer, ): bool {.importc: "QCborStreamReader_isNegativeInteger".}
proc fcQCborStreamReader_isInteger(self: pointer, ): bool {.importc: "QCborStreamReader_isInteger".}
proc fcQCborStreamReader_isByteArray(self: pointer, ): bool {.importc: "QCborStreamReader_isByteArray".}
proc fcQCborStreamReader_isString(self: pointer, ): bool {.importc: "QCborStreamReader_isString".}
proc fcQCborStreamReader_isArray(self: pointer, ): bool {.importc: "QCborStreamReader_isArray".}
proc fcQCborStreamReader_isMap(self: pointer, ): bool {.importc: "QCborStreamReader_isMap".}
proc fcQCborStreamReader_isTag(self: pointer, ): bool {.importc: "QCborStreamReader_isTag".}
proc fcQCborStreamReader_isSimpleType(self: pointer, ): bool {.importc: "QCborStreamReader_isSimpleType".}
proc fcQCborStreamReader_isFloat16(self: pointer, ): bool {.importc: "QCborStreamReader_isFloat16".}
proc fcQCborStreamReader_isFloat(self: pointer, ): bool {.importc: "QCborStreamReader_isFloat".}
proc fcQCborStreamReader_isDouble(self: pointer, ): bool {.importc: "QCborStreamReader_isDouble".}
proc fcQCborStreamReader_isInvalid(self: pointer, ): bool {.importc: "QCborStreamReader_isInvalid".}
proc fcQCborStreamReader_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborStreamReader_isSimpleTypeWithSt".}
proc fcQCborStreamReader_isFalse(self: pointer, ): bool {.importc: "QCborStreamReader_isFalse".}
proc fcQCborStreamReader_isTrue(self: pointer, ): bool {.importc: "QCborStreamReader_isTrue".}
proc fcQCborStreamReader_isBool(self: pointer, ): bool {.importc: "QCborStreamReader_isBool".}
proc fcQCborStreamReader_isNull(self: pointer, ): bool {.importc: "QCborStreamReader_isNull".}
proc fcQCborStreamReader_isUndefined(self: pointer, ): bool {.importc: "QCborStreamReader_isUndefined".}
proc fcQCborStreamReader_isLengthKnown(self: pointer, ): bool {.importc: "QCborStreamReader_isLengthKnown".}
proc fcQCborStreamReader_length(self: pointer, ): culonglong {.importc: "QCborStreamReader_length".}
proc fcQCborStreamReader_isContainer(self: pointer, ): bool {.importc: "QCborStreamReader_isContainer".}
proc fcQCborStreamReader_enterContainer(self: pointer, ): bool {.importc: "QCborStreamReader_enterContainer".}
proc fcQCborStreamReader_leaveContainer(self: pointer, ): bool {.importc: "QCborStreamReader_leaveContainer".}
proc fcQCborStreamReader_currentStringChunkSize(self: pointer, ): int64 {.importc: "QCborStreamReader_currentStringChunkSize".}
proc fcQCborStreamReader_toBool(self: pointer, ): bool {.importc: "QCborStreamReader_toBool".}
proc fcQCborStreamReader_toTag(self: pointer, ): cint {.importc: "QCborStreamReader_toTag".}
proc fcQCborStreamReader_toUnsignedInteger(self: pointer, ): culonglong {.importc: "QCborStreamReader_toUnsignedInteger".}
proc fcQCborStreamReader_toNegativeInteger(self: pointer, ): cint {.importc: "QCborStreamReader_toNegativeInteger".}
proc fcQCborStreamReader_toSimpleType(self: pointer, ): cint {.importc: "QCborStreamReader_toSimpleType".}
proc fcQCborStreamReader_toFloat(self: pointer, ): float32 {.importc: "QCborStreamReader_toFloat".}
proc fcQCborStreamReader_toDouble(self: pointer, ): float64 {.importc: "QCborStreamReader_toDouble".}
proc fcQCborStreamReader_toInteger(self: pointer, ): clonglong {.importc: "QCborStreamReader_toInteger".}
proc fcQCborStreamReader_next1(self: pointer, maxRecursion: cint): bool {.importc: "QCborStreamReader_next1".}
proc fcQCborStreamReader_staticMetaObject(): pointer {.importc: "QCborStreamReader_staticMetaObject".}
proc fcQCborStreamReader_delete(self: pointer) {.importc: "QCborStreamReader_delete".}


func init*(T: type QCborStreamReader, h: ptr cQCborStreamReader): QCborStreamReader =
  T(h: h)
proc create*(T: type QCborStreamReader, ): QCborStreamReader =

  QCborStreamReader.init(fcQCborStreamReader_new())
proc create*(T: type QCborStreamReader, data: cstring, len: int64): QCborStreamReader =

  QCborStreamReader.init(fcQCborStreamReader_new2(data, len))
proc create*(T: type QCborStreamReader, data: ptr uint8, len: int64): QCborStreamReader =

  QCborStreamReader.init(fcQCborStreamReader_new3(data, len))
proc create*(T: type QCborStreamReader, data: seq[byte]): QCborStreamReader =

  QCborStreamReader.init(fcQCborStreamReader_new4(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))
proc create*(T: type QCborStreamReader, device: gen_qiodevice.QIODevice): QCborStreamReader =

  QCborStreamReader.init(fcQCborStreamReader_new5(device.h))
proc setDevice*(self: QCborStreamReader, device: gen_qiodevice.QIODevice): void =

  fcQCborStreamReader_setDevice(self.h, device.h)

proc device*(self: QCborStreamReader, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQCborStreamReader_device(self.h))

proc addData*(self: QCborStreamReader, data: seq[byte]): void =

  fcQCborStreamReader_addData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addData2*(self: QCborStreamReader, data: cstring, len: int64): void =

  fcQCborStreamReader_addData2(self.h, data, len)

proc addData3*(self: QCborStreamReader, data: ptr uint8, len: int64): void =

  fcQCborStreamReader_addData3(self.h, data, len)

proc reparse*(self: QCborStreamReader, ): void =

  fcQCborStreamReader_reparse(self.h)

proc clear*(self: QCborStreamReader, ): void =

  fcQCborStreamReader_clear(self.h)

proc reset*(self: QCborStreamReader, ): void =

  fcQCborStreamReader_reset(self.h)

proc lastError*(self: QCborStreamReader, ): gen_qcborcommon.QCborError =

  gen_qcborcommon.QCborError(h: fcQCborStreamReader_lastError(self.h))

proc currentOffset*(self: QCborStreamReader, ): clonglong =

  fcQCborStreamReader_currentOffset(self.h)

proc isValid*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isValid(self.h)

proc containerDepth*(self: QCborStreamReader, ): cint =

  fcQCborStreamReader_containerDepth(self.h)

proc parentContainerType*(self: QCborStreamReader, ): QCborStreamReaderType =

  QCborStreamReaderType(fcQCborStreamReader_parentContainerType(self.h))

proc hasNext*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_hasNext(self.h)

proc next*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_next(self.h)

proc typeX*(self: QCborStreamReader, ): QCborStreamReaderType =

  QCborStreamReaderType(fcQCborStreamReader_typeX(self.h))

proc isUnsignedInteger*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isUnsignedInteger(self.h)

proc isNegativeInteger*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isNegativeInteger(self.h)

proc isInteger*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isInteger(self.h)

proc isByteArray*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isByteArray(self.h)

proc isString*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isString(self.h)

proc isArray*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isArray(self.h)

proc isMap*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isMap(self.h)

proc isTag*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isTag(self.h)

proc isSimpleType*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isSimpleType(self.h)

proc isFloat16*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isFloat16(self.h)

proc isFloat*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isFloat(self.h)

proc isDouble*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isDouble(self.h)

proc isInvalid*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isInvalid(self.h)

proc isSimpleTypeWithSt*(self: QCborStreamReader, st: gen_qcborcommon.QCborSimpleType): bool =

  fcQCborStreamReader_isSimpleTypeWithSt(self.h, cint(st))

proc isFalse*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isFalse(self.h)

proc isTrue*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isTrue(self.h)

proc isBool*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isBool(self.h)

proc isNull*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isNull(self.h)

proc isUndefined*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isUndefined(self.h)

proc isLengthKnown*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isLengthKnown(self.h)

proc length*(self: QCborStreamReader, ): culonglong =

  fcQCborStreamReader_length(self.h)

proc isContainer*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_isContainer(self.h)

proc enterContainer*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_enterContainer(self.h)

proc leaveContainer*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_leaveContainer(self.h)

proc currentStringChunkSize*(self: QCborStreamReader, ): int64 =

  fcQCborStreamReader_currentStringChunkSize(self.h)

proc toBool*(self: QCborStreamReader, ): bool =

  fcQCborStreamReader_toBool(self.h)

proc toTag*(self: QCborStreamReader, ): gen_qcborcommon.QCborTag =

  gen_qcborcommon.QCborTag(fcQCborStreamReader_toTag(self.h))

proc toUnsignedInteger*(self: QCborStreamReader, ): culonglong =

  fcQCborStreamReader_toUnsignedInteger(self.h)

proc toNegativeInteger*(self: QCborStreamReader, ): gen_qcborcommon.QCborNegativeInteger =

  gen_qcborcommon.QCborNegativeInteger(fcQCborStreamReader_toNegativeInteger(self.h))

proc toSimpleType*(self: QCborStreamReader, ): gen_qcborcommon.QCborSimpleType =

  gen_qcborcommon.QCborSimpleType(fcQCborStreamReader_toSimpleType(self.h))

proc toFloat*(self: QCborStreamReader, ): float32 =

  fcQCborStreamReader_toFloat(self.h)

proc toDouble*(self: QCborStreamReader, ): float64 =

  fcQCborStreamReader_toDouble(self.h)

proc toInteger*(self: QCborStreamReader, ): clonglong =

  fcQCborStreamReader_toInteger(self.h)

proc next1*(self: QCborStreamReader, maxRecursion: cint): bool =

  fcQCborStreamReader_next1(self.h, maxRecursion)

proc staticMetaObject*(_: type QCborStreamReader): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCborStreamReader_staticMetaObject())
proc delete*(self: QCborStreamReader) =
  fcQCborStreamReader_delete(self.h)
