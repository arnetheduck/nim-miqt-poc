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
{.compile("gen_quuid.cpp", cflags).}


type QUuidVariant* = cint
const
  QUuidVarUnknown* = -1
  QUuidNCS* = 0
  QUuidDCE* = 2
  QUuidMicrosoft* = 6
  QUuidReserved* = 7



type QUuidVersion* = cint
const
  QUuidVerUnknown* = -1
  QUuidTime* = 1
  QUuidEmbeddedPOSIX* = 2
  QUuidMd5* = 3
  QUuidName* = 3
  QUuidRandom* = 4
  QUuidSha1* = 5



type QUuidStringFormat* = cint
const
  QUuidWithBraces* = 0
  QUuidWithoutBraces* = 1
  QUuidId128* = 3



import gen_quuid_types
export gen_quuid_types


type cQUuid*{.exportc: "QUuid", incompleteStruct.} = object

proc fcQUuid_new(): ptr cQUuid {.importc: "QUuid_new".}
proc fcQUuid_new2(l: cuint, w1: cushort, w2: cushort, b1: uint8, b2: uint8, b3: uint8, b4: uint8, b5: uint8, b6: uint8, b7: uint8, b8: uint8): ptr cQUuid {.importc: "QUuid_new2".}
proc fcQUuid_new3(param1: struct_miqt_string): ptr cQUuid {.importc: "QUuid_new3".}
proc fcQUuid_new4(param1: cstring): ptr cQUuid {.importc: "QUuid_new4".}
proc fcQUuid_new5(param1: struct_miqt_string): ptr cQUuid {.importc: "QUuid_new5".}
proc fcQUuid_new6(param1: pointer): ptr cQUuid {.importc: "QUuid_new6".}
proc fcQUuid_toString(self: pointer, ): struct_miqt_string {.importc: "QUuid_toString".}
proc fcQUuid_toStringWithMode(self: pointer, mode: cint): struct_miqt_string {.importc: "QUuid_toStringWithMode".}
proc fcQUuid_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QUuid_toByteArray".}
proc fcQUuid_toByteArrayWithMode(self: pointer, mode: cint): struct_miqt_string {.importc: "QUuid_toByteArrayWithMode".}
proc fcQUuid_toRfc4122(self: pointer, ): struct_miqt_string {.importc: "QUuid_toRfc4122".}
proc fcQUuid_fromRfc4122(param1: struct_miqt_string): pointer {.importc: "QUuid_fromRfc4122".}
proc fcQUuid_isNull(self: pointer, ): bool {.importc: "QUuid_isNull".}
proc fcQUuid_operatorEqual(self: pointer, orig: pointer): bool {.importc: "QUuid_operatorEqual".}
proc fcQUuid_operatorNotEqual(self: pointer, orig: pointer): bool {.importc: "QUuid_operatorNotEqual".}
proc fcQUuid_operatorLesser(self: pointer, other: pointer): bool {.importc: "QUuid_operatorLesser".}
proc fcQUuid_operatorGreater(self: pointer, other: pointer): bool {.importc: "QUuid_operatorGreater".}
proc fcQUuid_createUuid(): pointer {.importc: "QUuid_createUuid".}
proc fcQUuid_createUuidV3(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV3".}
proc fcQUuid_createUuidV5(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV5".}
proc fcQUuid_createUuidV32(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV32".}
proc fcQUuid_createUuidV52(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV52".}
proc fcQUuid_variant(self: pointer, ): cint {.importc: "QUuid_variant".}
proc fcQUuid_version(self: pointer, ): cint {.importc: "QUuid_version".}
proc fcQUuid_delete(self: pointer) {.importc: "QUuid_delete".}


func init*(T: type QUuid, h: ptr cQUuid): QUuid =
  T(h: h)
proc create*(T: type QUuid, ): QUuid =

  QUuid.init(fcQUuid_new())
proc create*(T: type QUuid, l: cuint, w1: cushort, w2: cushort, b1: uint8, b2: uint8, b3: uint8, b4: uint8, b5: uint8, b6: uint8, b7: uint8, b8: uint8): QUuid =

  QUuid.init(fcQUuid_new2(l, w1, w2, b1, b2, b3, b4, b5, b6, b7, b8))
proc create*(T: type QUuid, param1: string): QUuid =

  QUuid.init(fcQUuid_new3(struct_miqt_string(data: param1, len: csize_t(len(param1)))))
proc create*(T: type QUuid, param1: cstring): QUuid =

  QUuid.init(fcQUuid_new4(param1))
proc create2*(T: type QUuid, param1: seq[byte]): QUuid =

  QUuid.init(fcQUuid_new5(struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))))
proc create*(T: type QUuid, param1: QUuid): QUuid =

  QUuid.init(fcQUuid_new6(param1.h))
proc toString*(self: QUuid, ): string =

  let v_ms = fcQUuid_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithMode*(self: QUuid, mode: QUuidStringFormat): string =

  let v_ms = fcQUuid_toStringWithMode(self.h, cint(mode))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toByteArray*(self: QUuid, ): seq[byte] =

  var v_bytearray = fcQUuid_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toByteArrayWithMode*(self: QUuid, mode: QUuidStringFormat): seq[byte] =

  var v_bytearray = fcQUuid_toByteArrayWithMode(self.h, cint(mode))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toRfc4122*(self: QUuid, ): seq[byte] =

  var v_bytearray = fcQUuid_toRfc4122(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromRfc4122*(_: type QUuid, param1: seq[byte]): QUuid =

  QUuid(h: fcQUuid_fromRfc4122(struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))))

proc isNull*(self: QUuid, ): bool =

  fcQUuid_isNull(self.h)

proc operatorEqual*(self: QUuid, orig: QUuid): bool =

  fcQUuid_operatorEqual(self.h, orig.h)

proc operatorNotEqual*(self: QUuid, orig: QUuid): bool =

  fcQUuid_operatorNotEqual(self.h, orig.h)

proc operatorLesser*(self: QUuid, other: QUuid): bool =

  fcQUuid_operatorLesser(self.h, other.h)

proc operatorGreater*(self: QUuid, other: QUuid): bool =

  fcQUuid_operatorGreater(self.h, other.h)

proc createUuid*(_: type QUuid, ): QUuid =

  QUuid(h: fcQUuid_createUuid())

proc createUuidV3*(_: type QUuid, ns: QUuid, baseData: seq[byte]): QUuid =

  QUuid(h: fcQUuid_createUuidV3(ns.h, struct_miqt_string(data: cast[cstring](if len(baseData) == 0: nil else: unsafeAddr baseData[0]), len: csize_t(len(baseData)))))

proc createUuidV5*(_: type QUuid, ns: QUuid, baseData: seq[byte]): QUuid =

  QUuid(h: fcQUuid_createUuidV5(ns.h, struct_miqt_string(data: cast[cstring](if len(baseData) == 0: nil else: unsafeAddr baseData[0]), len: csize_t(len(baseData)))))

proc createUuidV32*(_: type QUuid, ns: QUuid, baseData: string): QUuid =

  QUuid(h: fcQUuid_createUuidV32(ns.h, struct_miqt_string(data: baseData, len: csize_t(len(baseData)))))

proc createUuidV52*(_: type QUuid, ns: QUuid, baseData: string): QUuid =

  QUuid(h: fcQUuid_createUuidV52(ns.h, struct_miqt_string(data: baseData, len: csize_t(len(baseData)))))

proc variant*(self: QUuid, ): QUuidVariant =

  QUuidVariant(fcQUuid_variant(self.h))

proc version*(self: QUuid, ): QUuidVersion =

  QUuidVersion(fcQUuid_version(self.h))

proc delete*(self: QUuid) =
  fcQUuid_delete(self.h)
