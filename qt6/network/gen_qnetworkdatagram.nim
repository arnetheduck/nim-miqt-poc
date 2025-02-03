import Qt6Network_libs

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

const cflags = gorge("pkg-config -cflags Qt6Network")
{.compile("gen_qnetworkdatagram.cpp", cflags).}


import gen_qnetworkdatagram_types
export gen_qnetworkdatagram_types

import
  gen_qhostaddress
export
  gen_qhostaddress

type cQNetworkDatagram*{.exportc: "QNetworkDatagram", incompleteStruct.} = object

proc fcQNetworkDatagram_new(): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new".}
proc fcQNetworkDatagram_new2(data: struct_miqt_string): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new2".}
proc fcQNetworkDatagram_new3(other: pointer): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new3".}
proc fcQNetworkDatagram_new4(data: struct_miqt_string, destinationAddress: pointer): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new4".}
proc fcQNetworkDatagram_new5(data: struct_miqt_string, destinationAddress: pointer, port: cushort): ptr cQNetworkDatagram {.importc: "QNetworkDatagram_new5".}
proc fcQNetworkDatagram_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkDatagram_operatorAssign".}
proc fcQNetworkDatagram_swap(self: pointer, other: pointer): void {.importc: "QNetworkDatagram_swap".}
proc fcQNetworkDatagram_clear(self: pointer, ): void {.importc: "QNetworkDatagram_clear".}
proc fcQNetworkDatagram_isValid(self: pointer, ): bool {.importc: "QNetworkDatagram_isValid".}
proc fcQNetworkDatagram_isNull(self: pointer, ): bool {.importc: "QNetworkDatagram_isNull".}
proc fcQNetworkDatagram_interfaceIndex(self: pointer, ): cuint {.importc: "QNetworkDatagram_interfaceIndex".}
proc fcQNetworkDatagram_setInterfaceIndex(self: pointer, index: cuint): void {.importc: "QNetworkDatagram_setInterfaceIndex".}
proc fcQNetworkDatagram_senderAddress(self: pointer, ): pointer {.importc: "QNetworkDatagram_senderAddress".}
proc fcQNetworkDatagram_destinationAddress(self: pointer, ): pointer {.importc: "QNetworkDatagram_destinationAddress".}
proc fcQNetworkDatagram_senderPort(self: pointer, ): cint {.importc: "QNetworkDatagram_senderPort".}
proc fcQNetworkDatagram_destinationPort(self: pointer, ): cint {.importc: "QNetworkDatagram_destinationPort".}
proc fcQNetworkDatagram_setSender(self: pointer, address: pointer): void {.importc: "QNetworkDatagram_setSender".}
proc fcQNetworkDatagram_setDestination(self: pointer, address: pointer, port: cushort): void {.importc: "QNetworkDatagram_setDestination".}
proc fcQNetworkDatagram_hopLimit(self: pointer, ): cint {.importc: "QNetworkDatagram_hopLimit".}
proc fcQNetworkDatagram_setHopLimit(self: pointer, count: cint): void {.importc: "QNetworkDatagram_setHopLimit".}
proc fcQNetworkDatagram_data(self: pointer, ): struct_miqt_string {.importc: "QNetworkDatagram_data".}
proc fcQNetworkDatagram_setData(self: pointer, data: struct_miqt_string): void {.importc: "QNetworkDatagram_setData".}
proc fcQNetworkDatagram_makeReply(self: pointer, payload: struct_miqt_string): pointer {.importc: "QNetworkDatagram_makeReply".}
proc fcQNetworkDatagram_setSender2(self: pointer, address: pointer, port: cushort): void {.importc: "QNetworkDatagram_setSender2".}
proc fcQNetworkDatagram_delete(self: pointer) {.importc: "QNetworkDatagram_delete".}


func init*(T: type QNetworkDatagram, h: ptr cQNetworkDatagram): QNetworkDatagram =
  T(h: h)
proc create*(T: type QNetworkDatagram, ): QNetworkDatagram =

  QNetworkDatagram.init(fcQNetworkDatagram_new())
proc create*(T: type QNetworkDatagram, data: seq[byte]): QNetworkDatagram =

  QNetworkDatagram.init(fcQNetworkDatagram_new2(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))
proc create*(T: type QNetworkDatagram, other: QNetworkDatagram): QNetworkDatagram =

  QNetworkDatagram.init(fcQNetworkDatagram_new3(other.h))
proc create*(T: type QNetworkDatagram, data: seq[byte], destinationAddress: gen_qhostaddress.QHostAddress): QNetworkDatagram =

  QNetworkDatagram.init(fcQNetworkDatagram_new4(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), destinationAddress.h))
proc create*(T: type QNetworkDatagram, data: seq[byte], destinationAddress: gen_qhostaddress.QHostAddress, port: cushort): QNetworkDatagram =

  QNetworkDatagram.init(fcQNetworkDatagram_new5(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), destinationAddress.h, port))
proc operatorAssign*(self: QNetworkDatagram, other: QNetworkDatagram): void =

  fcQNetworkDatagram_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkDatagram, other: QNetworkDatagram): void =

  fcQNetworkDatagram_swap(self.h, other.h)

proc clear*(self: QNetworkDatagram, ): void =

  fcQNetworkDatagram_clear(self.h)

proc isValid*(self: QNetworkDatagram, ): bool =

  fcQNetworkDatagram_isValid(self.h)

proc isNull*(self: QNetworkDatagram, ): bool =

  fcQNetworkDatagram_isNull(self.h)

proc interfaceIndex*(self: QNetworkDatagram, ): cuint =

  fcQNetworkDatagram_interfaceIndex(self.h)

proc setInterfaceIndex*(self: QNetworkDatagram, index: cuint): void =

  fcQNetworkDatagram_setInterfaceIndex(self.h, index)

proc senderAddress*(self: QNetworkDatagram, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQNetworkDatagram_senderAddress(self.h))

proc destinationAddress*(self: QNetworkDatagram, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQNetworkDatagram_destinationAddress(self.h))

proc senderPort*(self: QNetworkDatagram, ): cint =

  fcQNetworkDatagram_senderPort(self.h)

proc destinationPort*(self: QNetworkDatagram, ): cint =

  fcQNetworkDatagram_destinationPort(self.h)

proc setSender*(self: QNetworkDatagram, address: gen_qhostaddress.QHostAddress): void =

  fcQNetworkDatagram_setSender(self.h, address.h)

proc setDestination*(self: QNetworkDatagram, address: gen_qhostaddress.QHostAddress, port: cushort): void =

  fcQNetworkDatagram_setDestination(self.h, address.h, port)

proc hopLimit*(self: QNetworkDatagram, ): cint =

  fcQNetworkDatagram_hopLimit(self.h)

proc setHopLimit*(self: QNetworkDatagram, count: cint): void =

  fcQNetworkDatagram_setHopLimit(self.h, count)

proc data*(self: QNetworkDatagram, ): seq[byte] =

  var v_bytearray = fcQNetworkDatagram_data(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: QNetworkDatagram, data: seq[byte]): void =

  fcQNetworkDatagram_setData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc makeReply*(self: QNetworkDatagram, payload: seq[byte]): QNetworkDatagram =

  QNetworkDatagram(h: fcQNetworkDatagram_makeReply(self.h, struct_miqt_string(data: cast[cstring](if len(payload) == 0: nil else: unsafeAddr payload[0]), len: csize_t(len(payload)))))

proc setSender2*(self: QNetworkDatagram, address: gen_qhostaddress.QHostAddress, port: cushort): void =

  fcQNetworkDatagram_setSender2(self.h, address.h, port)

proc delete*(self: QNetworkDatagram) =
  fcQNetworkDatagram_delete(self.h)
