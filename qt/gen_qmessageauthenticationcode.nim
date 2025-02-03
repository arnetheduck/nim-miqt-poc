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
{.compile("gen_qmessageauthenticationcode.cpp", cflags).}


import gen_qmessageauthenticationcode_types
export gen_qmessageauthenticationcode_types

import
  gen_qcryptographichash,
  gen_qiodevice
export
  gen_qcryptographichash,
  gen_qiodevice

type cQMessageAuthenticationCode*{.exportc: "QMessageAuthenticationCode", incompleteStruct.} = object

proc fcQMessageAuthenticationCode_new(methodVal: cint): ptr cQMessageAuthenticationCode {.importc: "QMessageAuthenticationCode_new".}
proc fcQMessageAuthenticationCode_new2(methodVal: cint, key: struct_miqt_string): ptr cQMessageAuthenticationCode {.importc: "QMessageAuthenticationCode_new2".}
proc fcQMessageAuthenticationCode_reset(self: pointer, ): void {.importc: "QMessageAuthenticationCode_reset".}
proc fcQMessageAuthenticationCode_setKey(self: pointer, key: struct_miqt_string): void {.importc: "QMessageAuthenticationCode_setKey".}
proc fcQMessageAuthenticationCode_addData(self: pointer, data: cstring, length: cint): void {.importc: "QMessageAuthenticationCode_addData".}
proc fcQMessageAuthenticationCode_addDataWithData(self: pointer, data: struct_miqt_string): void {.importc: "QMessageAuthenticationCode_addDataWithData".}
proc fcQMessageAuthenticationCode_addDataWithDevice(self: pointer, device: pointer): bool {.importc: "QMessageAuthenticationCode_addDataWithDevice".}
proc fcQMessageAuthenticationCode_resultX(self: pointer, ): struct_miqt_string {.importc: "QMessageAuthenticationCode_result".}
proc fcQMessageAuthenticationCode_hash(message: struct_miqt_string, key: struct_miqt_string, methodVal: cint): struct_miqt_string {.importc: "QMessageAuthenticationCode_hash".}
proc fcQMessageAuthenticationCode_delete(self: pointer) {.importc: "QMessageAuthenticationCode_delete".}


func init*(T: type QMessageAuthenticationCode, h: ptr cQMessageAuthenticationCode): QMessageAuthenticationCode =
  T(h: h)
proc create*(T: type QMessageAuthenticationCode, methodVal: gen_qcryptographichash.QCryptographicHashAlgorithm): QMessageAuthenticationCode =

  QMessageAuthenticationCode.init(fcQMessageAuthenticationCode_new(cint(methodVal)))
proc create*(T: type QMessageAuthenticationCode, methodVal: gen_qcryptographichash.QCryptographicHashAlgorithm, key: seq[byte]): QMessageAuthenticationCode =

  QMessageAuthenticationCode.init(fcQMessageAuthenticationCode_new2(cint(methodVal), struct_miqt_string(data: cast[cstring](if len(key) == 0: nil else: unsafeAddr key[0]), len: csize_t(len(key)))))
proc reset*(self: QMessageAuthenticationCode, ): void =

  fcQMessageAuthenticationCode_reset(self.h)

proc setKey*(self: QMessageAuthenticationCode, key: seq[byte]): void =

  fcQMessageAuthenticationCode_setKey(self.h, struct_miqt_string(data: cast[cstring](if len(key) == 0: nil else: unsafeAddr key[0]), len: csize_t(len(key))))

proc addData*(self: QMessageAuthenticationCode, data: cstring, length: cint): void =

  fcQMessageAuthenticationCode_addData(self.h, data, length)

proc addDataWithData*(self: QMessageAuthenticationCode, data: seq[byte]): void =

  fcQMessageAuthenticationCode_addDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addDataWithDevice*(self: QMessageAuthenticationCode, device: gen_qiodevice.QIODevice): bool =

  fcQMessageAuthenticationCode_addDataWithDevice(self.h, device.h)

proc resultX*(self: QMessageAuthenticationCode, ): seq[byte] =

  var v_bytearray = fcQMessageAuthenticationCode_resultX(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hash*(_: type QMessageAuthenticationCode, message: seq[byte], key: seq[byte], methodVal: gen_qcryptographichash.QCryptographicHashAlgorithm): seq[byte] =

  var v_bytearray = fcQMessageAuthenticationCode_hash(struct_miqt_string(data: cast[cstring](if len(message) == 0: nil else: unsafeAddr message[0]), len: csize_t(len(message))), struct_miqt_string(data: cast[cstring](if len(key) == 0: nil else: unsafeAddr key[0]), len: csize_t(len(key))), cint(methodVal))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: QMessageAuthenticationCode) =
  fcQMessageAuthenticationCode_delete(self.h)
