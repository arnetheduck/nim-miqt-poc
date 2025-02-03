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
{.compile("gen_qhostaddress.cpp", cflags).}


type QHostAddressSpecialAddress* = cint
const
  QHostAddressNull* = 0
  QHostAddressBroadcast* = 1
  QHostAddressLocalHost* = 2
  QHostAddressLocalHostIPv6* = 3
  QHostAddressAny* = 4
  QHostAddressAnyIPv6* = 5
  QHostAddressAnyIPv4* = 6



type QHostAddressConversionModeFlag* = cint
const
  QHostAddressConvertV4MappedToIPv4* = 1
  QHostAddressConvertV4CompatToIPv4* = 2
  QHostAddressConvertUnspecifiedAddress* = 4
  QHostAddressConvertLocalHost* = 8
  QHostAddressTolerantConversion* = 255
  QHostAddressStrictConversion* = 0



import gen_qhostaddress_types
export gen_qhostaddress_types

import
  gen_qabstractsocket
export
  gen_qabstractsocket

type cQIPv6Address*{.exportc: "QIPv6Address", incompleteStruct.} = object
type cQHostAddress*{.exportc: "QHostAddress", incompleteStruct.} = object

proc fcQIPv6Address_operatorSubscript(self: pointer, index: cint): uint8 {.importc: "QIPv6Address_operatorSubscript".}
proc fcQIPv6Address_delete(self: pointer) {.importc: "QIPv6Address_delete".}
proc fcQHostAddress_new(): ptr cQHostAddress {.importc: "QHostAddress_new".}
proc fcQHostAddress_new2(ip4Addr: cuint): ptr cQHostAddress {.importc: "QHostAddress_new2".}
proc fcQHostAddress_new3(ip6Addr: ptr uint8): ptr cQHostAddress {.importc: "QHostAddress_new3".}
proc fcQHostAddress_new4(ip6Addr: pointer): ptr cQHostAddress {.importc: "QHostAddress_new4".}
proc fcQHostAddress_new5(address: struct_miqt_string): ptr cQHostAddress {.importc: "QHostAddress_new5".}
proc fcQHostAddress_new6(copy: pointer): ptr cQHostAddress {.importc: "QHostAddress_new6".}
proc fcQHostAddress_new7(address: cint): ptr cQHostAddress {.importc: "QHostAddress_new7".}
proc fcQHostAddress_operatorAssign(self: pointer, other: pointer): void {.importc: "QHostAddress_operatorAssign".}
proc fcQHostAddress_operatorAssignWithAddress(self: pointer, address: cint): void {.importc: "QHostAddress_operatorAssignWithAddress".}
proc fcQHostAddress_swap(self: pointer, other: pointer): void {.importc: "QHostAddress_swap".}
proc fcQHostAddress_setAddress(self: pointer, ip4Addr: cuint): void {.importc: "QHostAddress_setAddress".}
proc fcQHostAddress_setAddressWithIp6Addr(self: pointer, ip6Addr: ptr uint8): void {.importc: "QHostAddress_setAddressWithIp6Addr".}
proc fcQHostAddress_setAddress2(self: pointer, ip6Addr: pointer): void {.importc: "QHostAddress_setAddress2".}
proc fcQHostAddress_setAddress3(self: pointer, address: struct_miqt_string): bool {.importc: "QHostAddress_setAddress3".}
proc fcQHostAddress_setAddress4(self: pointer, address: cint): void {.importc: "QHostAddress_setAddress4".}
proc fcQHostAddress_protocol(self: pointer, ): cint {.importc: "QHostAddress_protocol".}
proc fcQHostAddress_toIPv4Address(self: pointer, ): cuint {.importc: "QHostAddress_toIPv4Address".}
proc fcQHostAddress_toIPv6Address(self: pointer, ): pointer {.importc: "QHostAddress_toIPv6Address".}
proc fcQHostAddress_toString(self: pointer, ): struct_miqt_string {.importc: "QHostAddress_toString".}
proc fcQHostAddress_scopeId(self: pointer, ): struct_miqt_string {.importc: "QHostAddress_scopeId".}
proc fcQHostAddress_setScopeId(self: pointer, id: struct_miqt_string): void {.importc: "QHostAddress_setScopeId".}
proc fcQHostAddress_isEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_isEqual".}
proc fcQHostAddress_operatorEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorEqual".}
proc fcQHostAddress_operatorEqualWithAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorEqualWithAddress".}
proc fcQHostAddress_operatorNotEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorNotEqual".}
proc fcQHostAddress_operatorNotEqualWithAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorNotEqualWithAddress".}
proc fcQHostAddress_isNull(self: pointer, ): bool {.importc: "QHostAddress_isNull".}
proc fcQHostAddress_clear(self: pointer, ): void {.importc: "QHostAddress_clear".}
proc fcQHostAddress_isInSubnet(self: pointer, subnet: pointer, netmask: cint): bool {.importc: "QHostAddress_isInSubnet".}
proc fcQHostAddress_isInSubnetWithSubnet(self: pointer, subnet: struct_miqt_map): bool {.importc: "QHostAddress_isInSubnetWithSubnet".}
proc fcQHostAddress_isLoopback(self: pointer, ): bool {.importc: "QHostAddress_isLoopback".}
proc fcQHostAddress_isGlobal(self: pointer, ): bool {.importc: "QHostAddress_isGlobal".}
proc fcQHostAddress_isLinkLocal(self: pointer, ): bool {.importc: "QHostAddress_isLinkLocal".}
proc fcQHostAddress_isSiteLocal(self: pointer, ): bool {.importc: "QHostAddress_isSiteLocal".}
proc fcQHostAddress_isUniqueLocalUnicast(self: pointer, ): bool {.importc: "QHostAddress_isUniqueLocalUnicast".}
proc fcQHostAddress_isMulticast(self: pointer, ): bool {.importc: "QHostAddress_isMulticast".}
proc fcQHostAddress_isBroadcast(self: pointer, ): bool {.importc: "QHostAddress_isBroadcast".}
proc fcQHostAddress_parseSubnet(subnet: struct_miqt_string): struct_miqt_map {.importc: "QHostAddress_parseSubnet".}
proc fcQHostAddress_toIPv4Address1(self: pointer, ok: ptr bool): cuint {.importc: "QHostAddress_toIPv4Address1".}
proc fcQHostAddress_isEqual2(self: pointer, address: pointer, mode: cint): bool {.importc: "QHostAddress_isEqual2".}
proc fcQHostAddress_delete(self: pointer) {.importc: "QHostAddress_delete".}


func init*(T: type QIPv6Address, h: ptr cQIPv6Address): QIPv6Address =
  T(h: h)
proc operatorSubscript*(self: QIPv6Address, index: cint): uint8 =

  fcQIPv6Address_operatorSubscript(self.h, index)

proc delete*(self: QIPv6Address) =
  fcQIPv6Address_delete(self.h)

func init*(T: type QHostAddress, h: ptr cQHostAddress): QHostAddress =
  T(h: h)
proc create*(T: type QHostAddress, ): QHostAddress =

  QHostAddress.init(fcQHostAddress_new())
proc create*(T: type QHostAddress, ip4Addr: cuint): QHostAddress =

  QHostAddress.init(fcQHostAddress_new2(ip4Addr))
proc create*(T: type QHostAddress, ip6Addr: ptr uint8): QHostAddress =

  QHostAddress.init(fcQHostAddress_new3(ip6Addr))
proc create*(T: type QHostAddress, ip6Addr: QIPv6Address): QHostAddress =

  QHostAddress.init(fcQHostAddress_new4(ip6Addr.h))
proc create*(T: type QHostAddress, address: string): QHostAddress =

  QHostAddress.init(fcQHostAddress_new5(struct_miqt_string(data: address, len: csize_t(len(address)))))
proc create2*(T: type QHostAddress, copy: QHostAddress): QHostAddress =

  QHostAddress.init(fcQHostAddress_new6(copy.h))
proc create*(T: type QHostAddress, address: QHostAddressSpecialAddress): QHostAddress =

  QHostAddress.init(fcQHostAddress_new7(cint(address)))
proc operatorAssign*(self: QHostAddress, other: QHostAddress): void =

  fcQHostAddress_operatorAssign(self.h, other.h)

proc operatorAssignWithAddress*(self: QHostAddress, address: QHostAddressSpecialAddress): void =

  fcQHostAddress_operatorAssignWithAddress(self.h, cint(address))

proc swap*(self: QHostAddress, other: QHostAddress): void =

  fcQHostAddress_swap(self.h, other.h)

proc setAddress*(self: QHostAddress, ip4Addr: cuint): void =

  fcQHostAddress_setAddress(self.h, ip4Addr)

proc setAddressWithIp6Addr*(self: QHostAddress, ip6Addr: ptr uint8): void =

  fcQHostAddress_setAddressWithIp6Addr(self.h, ip6Addr)

proc setAddress2*(self: QHostAddress, ip6Addr: QIPv6Address): void =

  fcQHostAddress_setAddress2(self.h, ip6Addr.h)

proc setAddress3*(self: QHostAddress, address: string): bool =

  fcQHostAddress_setAddress3(self.h, struct_miqt_string(data: address, len: csize_t(len(address))))

proc setAddress4*(self: QHostAddress, address: QHostAddressSpecialAddress): void =

  fcQHostAddress_setAddress4(self.h, cint(address))

proc protocol*(self: QHostAddress, ): gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol =

  gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol(fcQHostAddress_protocol(self.h))

proc toIPv4Address*(self: QHostAddress, ): cuint =

  fcQHostAddress_toIPv4Address(self.h)

proc toIPv6Address*(self: QHostAddress, ): QIPv6Address =

  QIPv6Address(h: fcQHostAddress_toIPv6Address(self.h))

proc toString*(self: QHostAddress, ): string =

  let v_ms = fcQHostAddress_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scopeId*(self: QHostAddress, ): string =

  let v_ms = fcQHostAddress_scopeId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setScopeId*(self: QHostAddress, id: string): void =

  fcQHostAddress_setScopeId(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc isEqual*(self: QHostAddress, address: QHostAddress): bool =

  fcQHostAddress_isEqual(self.h, address.h)

proc operatorEqual*(self: QHostAddress, address: QHostAddress): bool =

  fcQHostAddress_operatorEqual(self.h, address.h)

proc operatorEqualWithAddress*(self: QHostAddress, address: QHostAddressSpecialAddress): bool =

  fcQHostAddress_operatorEqualWithAddress(self.h, cint(address))

proc operatorNotEqual*(self: QHostAddress, address: QHostAddress): bool =

  fcQHostAddress_operatorNotEqual(self.h, address.h)

proc operatorNotEqualWithAddress*(self: QHostAddress, address: QHostAddressSpecialAddress): bool =

  fcQHostAddress_operatorNotEqualWithAddress(self.h, cint(address))

proc isNull*(self: QHostAddress, ): bool =

  fcQHostAddress_isNull(self.h)

proc clear*(self: QHostAddress, ): void =

  fcQHostAddress_clear(self.h)

proc isInSubnet*(self: QHostAddress, subnet: QHostAddress, netmask: cint): bool =

  fcQHostAddress_isInSubnet(self.h, subnet.h, netmask)

proc isInSubnetWithSubnet*(self: QHostAddress, subnet: tuple[first: QHostAddress, second: cint]): bool =

  var subnet_CArray_First: pointer
  var subnet_CArray_Second: cint
  subnet_CArray_First = subnet.first.h
  subnet_CArray_Second = subnet.second
  fcQHostAddress_isInSubnetWithSubnet(self.h, struct_miqt_map(len: 1,keys: addr(subnet_CArray_First),values: addr(subnet_CArray_Second),))

proc isLoopback*(self: QHostAddress, ): bool =

  fcQHostAddress_isLoopback(self.h)

proc isGlobal*(self: QHostAddress, ): bool =

  fcQHostAddress_isGlobal(self.h)

proc isLinkLocal*(self: QHostAddress, ): bool =

  fcQHostAddress_isLinkLocal(self.h)

proc isSiteLocal*(self: QHostAddress, ): bool =

  fcQHostAddress_isSiteLocal(self.h)

proc isUniqueLocalUnicast*(self: QHostAddress, ): bool =

  fcQHostAddress_isUniqueLocalUnicast(self.h)

proc isMulticast*(self: QHostAddress, ): bool =

  fcQHostAddress_isMulticast(self.h)

proc isBroadcast*(self: QHostAddress, ): bool =

  fcQHostAddress_isBroadcast(self.h)

proc parseSubnet*(_: type QHostAddress, subnet: string): tuple[first: QHostAddress, second: cint] =

  var v_mm = fcQHostAddress_parseSubnet(struct_miqt_string(data: subnet, len: csize_t(len(subnet))))
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = QHostAddress(h: v_First_CArray[0])

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc toIPv4Address1*(self: QHostAddress, ok: ptr bool): cuint =

  fcQHostAddress_toIPv4Address1(self.h, ok)

proc isEqual2*(self: QHostAddress, address: QHostAddress, mode: QHostAddressConversionModeFlag): bool =

  fcQHostAddress_isEqual2(self.h, address.h, cint(mode))

proc delete*(self: QHostAddress) =
  fcQHostAddress_delete(self.h)
