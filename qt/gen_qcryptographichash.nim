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
{.compile("gen_qcryptographichash.cpp", cflags).}


type QCryptographicHashAlgorithm* = cint
const
  QCryptographicHashMd4* = 0
  QCryptographicHashMd5* = 1
  QCryptographicHashSha1* = 2
  QCryptographicHashSha224* = 3
  QCryptographicHashSha256* = 4
  QCryptographicHashSha384* = 5
  QCryptographicHashSha512* = 6
  QCryptographicHashKeccak_224* = 7
  QCryptographicHashKeccak_256* = 8
  QCryptographicHashKeccak_384* = 9
  QCryptographicHashKeccak_512* = 10
  QCryptographicHashRealSha3_224* = 11
  QCryptographicHashRealSha3_256* = 12
  QCryptographicHashRealSha3_384* = 13
  QCryptographicHashRealSha3_512* = 14
  QCryptographicHashSha3_224* = 11
  QCryptographicHashSha3_256* = 12
  QCryptographicHashSha3_384* = 13
  QCryptographicHashSha3_512* = 14



import gen_qcryptographichash_types
export gen_qcryptographichash_types

import
  gen_qiodevice
export
  gen_qiodevice

type cQCryptographicHash*{.exportc: "QCryptographicHash", incompleteStruct.} = object

proc fcQCryptographicHash_new(methodVal: cint): ptr cQCryptographicHash {.importc: "QCryptographicHash_new".}
proc fcQCryptographicHash_reset(self: pointer, ): void {.importc: "QCryptographicHash_reset".}
proc fcQCryptographicHash_addData(self: pointer, data: cstring, length: cint): void {.importc: "QCryptographicHash_addData".}
proc fcQCryptographicHash_addDataWithData(self: pointer, data: struct_miqt_string): void {.importc: "QCryptographicHash_addDataWithData".}
proc fcQCryptographicHash_addDataWithDevice(self: pointer, device: pointer): bool {.importc: "QCryptographicHash_addDataWithDevice".}
proc fcQCryptographicHash_resultX(self: pointer, ): struct_miqt_string {.importc: "QCryptographicHash_result".}
proc fcQCryptographicHash_hash(data: struct_miqt_string, methodVal: cint): struct_miqt_string {.importc: "QCryptographicHash_hash".}
proc fcQCryptographicHash_hashLength(methodVal: cint): cint {.importc: "QCryptographicHash_hashLength".}
proc fcQCryptographicHash_delete(self: pointer) {.importc: "QCryptographicHash_delete".}


func init*(T: type QCryptographicHash, h: ptr cQCryptographicHash): QCryptographicHash =
  T(h: h)
proc create*(T: type QCryptographicHash, methodVal: QCryptographicHashAlgorithm): QCryptographicHash =

  QCryptographicHash.init(fcQCryptographicHash_new(cint(methodVal)))
proc reset*(self: QCryptographicHash, ): void =

  fcQCryptographicHash_reset(self.h)

proc addData*(self: QCryptographicHash, data: cstring, length: cint): void =

  fcQCryptographicHash_addData(self.h, data, length)

proc addDataWithData*(self: QCryptographicHash, data: seq[byte]): void =

  fcQCryptographicHash_addDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addDataWithDevice*(self: QCryptographicHash, device: gen_qiodevice.QIODevice): bool =

  fcQCryptographicHash_addDataWithDevice(self.h, device.h)

proc resultX*(self: QCryptographicHash, ): seq[byte] =

  var v_bytearray = fcQCryptographicHash_resultX(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hash*(_: type QCryptographicHash, data: seq[byte], methodVal: QCryptographicHashAlgorithm): seq[byte] =

  var v_bytearray = fcQCryptographicHash_hash(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(methodVal))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hashLength*(_: type QCryptographicHash, methodVal: QCryptographicHashAlgorithm): cint =

  fcQCryptographicHash_hashLength(cint(methodVal))

proc delete*(self: QCryptographicHash) =
  fcQCryptographicHash_delete(self.h)
