import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qsslkey.cpp", cflags).}


import gen_qsslkey_types
export gen_qsslkey_types

import
  gen_qiodevice,
  gen_qssl
export
  gen_qiodevice,
  gen_qssl

type cQSslKey*{.exportc: "QSslKey", incompleteStruct.} = object

proc fcQSslKey_new(): ptr cQSslKey {.importc: "QSslKey_new".}
proc fcQSslKey_new2(encoded: struct_miqt_string, algorithm: cint): ptr cQSslKey {.importc: "QSslKey_new2".}
proc fcQSslKey_new3(device: pointer, algorithm: cint): ptr cQSslKey {.importc: "QSslKey_new3".}
proc fcQSslKey_new4(handle: pointer): ptr cQSslKey {.importc: "QSslKey_new4".}
proc fcQSslKey_new5(other: pointer): ptr cQSslKey {.importc: "QSslKey_new5".}
proc fcQSslKey_new6(encoded: struct_miqt_string, algorithm: cint, format: cint): ptr cQSslKey {.importc: "QSslKey_new6".}
proc fcQSslKey_new7(encoded: struct_miqt_string, algorithm: cint, format: cint, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new7".}
proc fcQSslKey_new8(encoded: struct_miqt_string, algorithm: cint, format: cint, typeVal: cint, passPhrase: struct_miqt_string): ptr cQSslKey {.importc: "QSslKey_new8".}
proc fcQSslKey_new9(device: pointer, algorithm: cint, format: cint): ptr cQSslKey {.importc: "QSslKey_new9".}
proc fcQSslKey_new10(device: pointer, algorithm: cint, format: cint, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new10".}
proc fcQSslKey_new11(device: pointer, algorithm: cint, format: cint, typeVal: cint, passPhrase: struct_miqt_string): ptr cQSslKey {.importc: "QSslKey_new11".}
proc fcQSslKey_new12(handle: pointer, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new12".}
proc fcQSslKey_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslKey_operatorAssign".}
proc fcQSslKey_swap(self: pointer, other: pointer): void {.importc: "QSslKey_swap".}
proc fcQSslKey_isNull(self: pointer, ): bool {.importc: "QSslKey_isNull".}
proc fcQSslKey_clear(self: pointer, ): void {.importc: "QSslKey_clear".}
proc fcQSslKey_length(self: pointer, ): cint {.importc: "QSslKey_length".}
proc fcQSslKey_typeX(self: pointer, ): cint {.importc: "QSslKey_type".}
proc fcQSslKey_algorithm(self: pointer, ): cint {.importc: "QSslKey_algorithm".}
proc fcQSslKey_toPem(self: pointer, ): struct_miqt_string {.importc: "QSslKey_toPem".}
proc fcQSslKey_toDer(self: pointer, ): struct_miqt_string {.importc: "QSslKey_toDer".}
proc fcQSslKey_handle(self: pointer, ): pointer {.importc: "QSslKey_handle".}
proc fcQSslKey_operatorEqual(self: pointer, key: pointer): bool {.importc: "QSslKey_operatorEqual".}
proc fcQSslKey_operatorNotEqual(self: pointer, key: pointer): bool {.importc: "QSslKey_operatorNotEqual".}
proc fcQSslKey_toPem1(self: pointer, passPhrase: struct_miqt_string): struct_miqt_string {.importc: "QSslKey_toPem1".}
proc fcQSslKey_toDer1(self: pointer, passPhrase: struct_miqt_string): struct_miqt_string {.importc: "QSslKey_toDer1".}
proc fcQSslKey_delete(self: pointer) {.importc: "QSslKey_delete".}


func init*(T: type QSslKey, h: ptr cQSslKey): QSslKey =
  T(h: h)
proc create*(T: type QSslKey, ): QSslKey =

  QSslKey.init(fcQSslKey_new())
proc create*(T: type QSslKey, encoded: seq[byte], algorithm: gen_qssl.QSslKeyAlgorithm): QSslKey =

  QSslKey.init(fcQSslKey_new2(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm)))
proc create*(T: type QSslKey, device: gen_qiodevice.QIODevice, algorithm: gen_qssl.QSslKeyAlgorithm): QSslKey =

  QSslKey.init(fcQSslKey_new3(device.h, cint(algorithm)))
proc create*(T: type QSslKey, handle: pointer): QSslKey =

  QSslKey.init(fcQSslKey_new4(handle))
proc create2*(T: type QSslKey, other: QSslKey): QSslKey =

  QSslKey.init(fcQSslKey_new5(other.h))
proc create*(T: type QSslKey, encoded: seq[byte], algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat): QSslKey =

  QSslKey.init(fcQSslKey_new6(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format)))
proc create*(T: type QSslKey, encoded: seq[byte], algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat, typeVal: gen_qssl.QSslKeyType): QSslKey =

  QSslKey.init(fcQSslKey_new7(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format), cint(typeVal)))
proc create*(T: type QSslKey, encoded: seq[byte], algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat, typeVal: gen_qssl.QSslKeyType, passPhrase: seq[byte]): QSslKey =

  QSslKey.init(fcQSslKey_new8(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format), cint(typeVal), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase)))))
proc create*(T: type QSslKey, device: gen_qiodevice.QIODevice, algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat): QSslKey =

  QSslKey.init(fcQSslKey_new9(device.h, cint(algorithm), cint(format)))
proc create*(T: type QSslKey, device: gen_qiodevice.QIODevice, algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat, typeVal: gen_qssl.QSslKeyType): QSslKey =

  QSslKey.init(fcQSslKey_new10(device.h, cint(algorithm), cint(format), cint(typeVal)))
proc create*(T: type QSslKey, device: gen_qiodevice.QIODevice, algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat, typeVal: gen_qssl.QSslKeyType, passPhrase: seq[byte]): QSslKey =

  QSslKey.init(fcQSslKey_new11(device.h, cint(algorithm), cint(format), cint(typeVal), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase)))))
proc create2*(T: type QSslKey, handle: pointer, typeVal: gen_qssl.QSslKeyType): QSslKey =

  QSslKey.init(fcQSslKey_new12(handle, cint(typeVal)))
proc operatorAssign*(self: QSslKey, other: QSslKey): void =

  fcQSslKey_operatorAssign(self.h, other.h)

proc swap*(self: QSslKey, other: QSslKey): void =

  fcQSslKey_swap(self.h, other.h)

proc isNull*(self: QSslKey, ): bool =

  fcQSslKey_isNull(self.h)

proc clear*(self: QSslKey, ): void =

  fcQSslKey_clear(self.h)

proc length*(self: QSslKey, ): cint =

  fcQSslKey_length(self.h)

proc typeX*(self: QSslKey, ): gen_qssl.QSslKeyType =

  gen_qssl.QSslKeyType(fcQSslKey_typeX(self.h))

proc algorithm*(self: QSslKey, ): gen_qssl.QSslKeyAlgorithm =

  gen_qssl.QSslKeyAlgorithm(fcQSslKey_algorithm(self.h))

proc toPem*(self: QSslKey, ): seq[byte] =

  var v_bytearray = fcQSslKey_toPem(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer*(self: QSslKey, ): seq[byte] =

  var v_bytearray = fcQSslKey_toDer(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc handle*(self: QSslKey, ): pointer =

  fcQSslKey_handle(self.h)

proc operatorEqual*(self: QSslKey, key: QSslKey): bool =

  fcQSslKey_operatorEqual(self.h, key.h)

proc operatorNotEqual*(self: QSslKey, key: QSslKey): bool =

  fcQSslKey_operatorNotEqual(self.h, key.h)

proc toPem1*(self: QSslKey, passPhrase: seq[byte]): seq[byte] =

  var v_bytearray = fcQSslKey_toPem1(self.h, struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer1*(self: QSslKey, passPhrase: seq[byte]): seq[byte] =

  var v_bytearray = fcQSslKey_toDer1(self.h, struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: QSslKey) =
  fcQSslKey_delete(self.h)
