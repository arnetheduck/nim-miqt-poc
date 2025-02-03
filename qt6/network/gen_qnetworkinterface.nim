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
{.compile("gen_qnetworkinterface.cpp", cflags).}


type QNetworkAddressEntryDnsEligibilityStatus* = cschar
const
  QNetworkAddressEntryDnsEligibilityUnknown* = -1
  QNetworkAddressEntryDnsIneligible* = 0
  QNetworkAddressEntryDnsEligible* = 1



type QNetworkInterfaceInterfaceFlag* = cint
const
  QNetworkInterfaceIsUp* = 1
  QNetworkInterfaceIsRunning* = 2
  QNetworkInterfaceCanBroadcast* = 4
  QNetworkInterfaceIsLoopBack* = 8
  QNetworkInterfaceIsPointToPoint* = 16
  QNetworkInterfaceCanMulticast* = 32



type QNetworkInterfaceInterfaceType* = cint
const
  QNetworkInterfaceLoopback* = 1
  QNetworkInterfaceVirtual* = 2
  QNetworkInterfaceEthernet* = 3
  QNetworkInterfaceSlip* = 4
  QNetworkInterfaceCanBus* = 5
  QNetworkInterfacePpp* = 6
  QNetworkInterfaceFddi* = 7
  QNetworkInterfaceWifi* = 8
  QNetworkInterfaceIeee80211* = 8
  QNetworkInterfacePhonet* = 9
  QNetworkInterfaceIeee802154* = 10
  QNetworkInterfaceSixLoWPAN* = 11
  QNetworkInterfaceIeee80216* = 12
  QNetworkInterfaceIeee1394* = 13
  QNetworkInterfaceUnknown* = 0



import gen_qnetworkinterface_types
export gen_qnetworkinterface_types

import
  gen_qdeadlinetimer,
  gen_qhostaddress
export
  gen_qdeadlinetimer,
  gen_qhostaddress

type cQNetworkAddressEntry*{.exportc: "QNetworkAddressEntry", incompleteStruct.} = object
type cQNetworkInterface*{.exportc: "QNetworkInterface", incompleteStruct.} = object

proc fcQNetworkAddressEntry_new(): ptr cQNetworkAddressEntry {.importc: "QNetworkAddressEntry_new".}
proc fcQNetworkAddressEntry_new2(other: pointer): ptr cQNetworkAddressEntry {.importc: "QNetworkAddressEntry_new2".}
proc fcQNetworkAddressEntry_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkAddressEntry_operatorAssign".}
proc fcQNetworkAddressEntry_swap(self: pointer, other: pointer): void {.importc: "QNetworkAddressEntry_swap".}
proc fcQNetworkAddressEntry_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkAddressEntry_operatorEqual".}
proc fcQNetworkAddressEntry_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkAddressEntry_operatorNotEqual".}
proc fcQNetworkAddressEntry_dnsEligibility(self: pointer, ): cint {.importc: "QNetworkAddressEntry_dnsEligibility".}
proc fcQNetworkAddressEntry_setDnsEligibility(self: pointer, status: cint): void {.importc: "QNetworkAddressEntry_setDnsEligibility".}
proc fcQNetworkAddressEntry_ip(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_ip".}
proc fcQNetworkAddressEntry_setIp(self: pointer, newIp: pointer): void {.importc: "QNetworkAddressEntry_setIp".}
proc fcQNetworkAddressEntry_netmask(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_netmask".}
proc fcQNetworkAddressEntry_setNetmask(self: pointer, newNetmask: pointer): void {.importc: "QNetworkAddressEntry_setNetmask".}
proc fcQNetworkAddressEntry_prefixLength(self: pointer, ): cint {.importc: "QNetworkAddressEntry_prefixLength".}
proc fcQNetworkAddressEntry_setPrefixLength(self: pointer, length: cint): void {.importc: "QNetworkAddressEntry_setPrefixLength".}
proc fcQNetworkAddressEntry_broadcast(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_broadcast".}
proc fcQNetworkAddressEntry_setBroadcast(self: pointer, newBroadcast: pointer): void {.importc: "QNetworkAddressEntry_setBroadcast".}
proc fcQNetworkAddressEntry_isLifetimeKnown(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isLifetimeKnown".}
proc fcQNetworkAddressEntry_preferredLifetime(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_preferredLifetime".}
proc fcQNetworkAddressEntry_validityLifetime(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_validityLifetime".}
proc fcQNetworkAddressEntry_setAddressLifetime(self: pointer, preferred: pointer, validity: pointer): void {.importc: "QNetworkAddressEntry_setAddressLifetime".}
proc fcQNetworkAddressEntry_clearAddressLifetime(self: pointer, ): void {.importc: "QNetworkAddressEntry_clearAddressLifetime".}
proc fcQNetworkAddressEntry_isPermanent(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isPermanent".}
proc fcQNetworkAddressEntry_isTemporary(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isTemporary".}
proc fcQNetworkAddressEntry_delete(self: pointer) {.importc: "QNetworkAddressEntry_delete".}
proc fcQNetworkInterface_new(): ptr cQNetworkInterface {.importc: "QNetworkInterface_new".}
proc fcQNetworkInterface_new2(other: pointer): ptr cQNetworkInterface {.importc: "QNetworkInterface_new2".}
proc fcQNetworkInterface_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkInterface_operatorAssign".}
proc fcQNetworkInterface_swap(self: pointer, other: pointer): void {.importc: "QNetworkInterface_swap".}
proc fcQNetworkInterface_isValid(self: pointer, ): bool {.importc: "QNetworkInterface_isValid".}
proc fcQNetworkInterface_index(self: pointer, ): cint {.importc: "QNetworkInterface_index".}
proc fcQNetworkInterface_maximumTransmissionUnit(self: pointer, ): cint {.importc: "QNetworkInterface_maximumTransmissionUnit".}
proc fcQNetworkInterface_name(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_name".}
proc fcQNetworkInterface_humanReadableName(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_humanReadableName".}
proc fcQNetworkInterface_flags(self: pointer, ): cint {.importc: "QNetworkInterface_flags".}
proc fcQNetworkInterface_typeX(self: pointer, ): cint {.importc: "QNetworkInterface_type".}
proc fcQNetworkInterface_hardwareAddress(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_hardwareAddress".}
proc fcQNetworkInterface_addressEntries(self: pointer, ): struct_miqt_array {.importc: "QNetworkInterface_addressEntries".}
proc fcQNetworkInterface_interfaceIndexFromName(name: struct_miqt_string): cint {.importc: "QNetworkInterface_interfaceIndexFromName".}
proc fcQNetworkInterface_interfaceFromName(name: struct_miqt_string): pointer {.importc: "QNetworkInterface_interfaceFromName".}
proc fcQNetworkInterface_interfaceFromIndex(index: cint): pointer {.importc: "QNetworkInterface_interfaceFromIndex".}
proc fcQNetworkInterface_interfaceNameFromIndex(index: cint): struct_miqt_string {.importc: "QNetworkInterface_interfaceNameFromIndex".}
proc fcQNetworkInterface_allInterfaces(): struct_miqt_array {.importc: "QNetworkInterface_allInterfaces".}
proc fcQNetworkInterface_allAddresses(): struct_miqt_array {.importc: "QNetworkInterface_allAddresses".}
proc fcQNetworkInterface_delete(self: pointer) {.importc: "QNetworkInterface_delete".}


func init*(T: type QNetworkAddressEntry, h: ptr cQNetworkAddressEntry): QNetworkAddressEntry =
  T(h: h)
proc create*(T: type QNetworkAddressEntry, ): QNetworkAddressEntry =

  QNetworkAddressEntry.init(fcQNetworkAddressEntry_new())
proc create*(T: type QNetworkAddressEntry, other: QNetworkAddressEntry): QNetworkAddressEntry =

  QNetworkAddressEntry.init(fcQNetworkAddressEntry_new2(other.h))
proc operatorAssign*(self: QNetworkAddressEntry, other: QNetworkAddressEntry): void =

  fcQNetworkAddressEntry_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkAddressEntry, other: QNetworkAddressEntry): void =

  fcQNetworkAddressEntry_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkAddressEntry, other: QNetworkAddressEntry): bool =

  fcQNetworkAddressEntry_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkAddressEntry, other: QNetworkAddressEntry): bool =

  fcQNetworkAddressEntry_operatorNotEqual(self.h, other.h)

proc dnsEligibility*(self: QNetworkAddressEntry, ): QNetworkAddressEntryDnsEligibilityStatus =

  QNetworkAddressEntryDnsEligibilityStatus(fcQNetworkAddressEntry_dnsEligibility(self.h))

proc setDnsEligibility*(self: QNetworkAddressEntry, status: QNetworkAddressEntryDnsEligibilityStatus): void =

  fcQNetworkAddressEntry_setDnsEligibility(self.h, cint(status))

proc ip*(self: QNetworkAddressEntry, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQNetworkAddressEntry_ip(self.h))

proc setIp*(self: QNetworkAddressEntry, newIp: gen_qhostaddress.QHostAddress): void =

  fcQNetworkAddressEntry_setIp(self.h, newIp.h)

proc netmask*(self: QNetworkAddressEntry, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQNetworkAddressEntry_netmask(self.h))

proc setNetmask*(self: QNetworkAddressEntry, newNetmask: gen_qhostaddress.QHostAddress): void =

  fcQNetworkAddressEntry_setNetmask(self.h, newNetmask.h)

proc prefixLength*(self: QNetworkAddressEntry, ): cint =

  fcQNetworkAddressEntry_prefixLength(self.h)

proc setPrefixLength*(self: QNetworkAddressEntry, length: cint): void =

  fcQNetworkAddressEntry_setPrefixLength(self.h, length)

proc broadcast*(self: QNetworkAddressEntry, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQNetworkAddressEntry_broadcast(self.h))

proc setBroadcast*(self: QNetworkAddressEntry, newBroadcast: gen_qhostaddress.QHostAddress): void =

  fcQNetworkAddressEntry_setBroadcast(self.h, newBroadcast.h)

proc isLifetimeKnown*(self: QNetworkAddressEntry, ): bool =

  fcQNetworkAddressEntry_isLifetimeKnown(self.h)

proc preferredLifetime*(self: QNetworkAddressEntry, ): gen_qdeadlinetimer.QDeadlineTimer =

  gen_qdeadlinetimer.QDeadlineTimer(h: fcQNetworkAddressEntry_preferredLifetime(self.h))

proc validityLifetime*(self: QNetworkAddressEntry, ): gen_qdeadlinetimer.QDeadlineTimer =

  gen_qdeadlinetimer.QDeadlineTimer(h: fcQNetworkAddressEntry_validityLifetime(self.h))

proc setAddressLifetime*(self: QNetworkAddressEntry, preferred: gen_qdeadlinetimer.QDeadlineTimer, validity: gen_qdeadlinetimer.QDeadlineTimer): void =

  fcQNetworkAddressEntry_setAddressLifetime(self.h, preferred.h, validity.h)

proc clearAddressLifetime*(self: QNetworkAddressEntry, ): void =

  fcQNetworkAddressEntry_clearAddressLifetime(self.h)

proc isPermanent*(self: QNetworkAddressEntry, ): bool =

  fcQNetworkAddressEntry_isPermanent(self.h)

proc isTemporary*(self: QNetworkAddressEntry, ): bool =

  fcQNetworkAddressEntry_isTemporary(self.h)

proc delete*(self: QNetworkAddressEntry) =
  fcQNetworkAddressEntry_delete(self.h)

func init*(T: type QNetworkInterface, h: ptr cQNetworkInterface): QNetworkInterface =
  T(h: h)
proc create*(T: type QNetworkInterface, ): QNetworkInterface =

  QNetworkInterface.init(fcQNetworkInterface_new())
proc create*(T: type QNetworkInterface, other: QNetworkInterface): QNetworkInterface =

  QNetworkInterface.init(fcQNetworkInterface_new2(other.h))
proc operatorAssign*(self: QNetworkInterface, other: QNetworkInterface): void =

  fcQNetworkInterface_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkInterface, other: QNetworkInterface): void =

  fcQNetworkInterface_swap(self.h, other.h)

proc isValid*(self: QNetworkInterface, ): bool =

  fcQNetworkInterface_isValid(self.h)

proc index*(self: QNetworkInterface, ): cint =

  fcQNetworkInterface_index(self.h)

proc maximumTransmissionUnit*(self: QNetworkInterface, ): cint =

  fcQNetworkInterface_maximumTransmissionUnit(self.h)

proc name*(self: QNetworkInterface, ): string =

  let v_ms = fcQNetworkInterface_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc humanReadableName*(self: QNetworkInterface, ): string =

  let v_ms = fcQNetworkInterface_humanReadableName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc flags*(self: QNetworkInterface, ): QNetworkInterfaceInterfaceFlag =

  QNetworkInterfaceInterfaceFlag(fcQNetworkInterface_flags(self.h))

proc typeX*(self: QNetworkInterface, ): QNetworkInterfaceInterfaceType =

  QNetworkInterfaceInterfaceType(fcQNetworkInterface_typeX(self.h))

proc hardwareAddress*(self: QNetworkInterface, ): string =

  let v_ms = fcQNetworkInterface_hardwareAddress(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addressEntries*(self: QNetworkInterface, ): seq[QNetworkAddressEntry] =

  var v_ma = fcQNetworkInterface_addressEntries(self.h)
  var vx_ret = newSeq[QNetworkAddressEntry](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkAddressEntry(h: v_outCast[i])
  vx_ret

proc interfaceIndexFromName*(_: type QNetworkInterface, name: string): cint =

  fcQNetworkInterface_interfaceIndexFromName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc interfaceFromName*(_: type QNetworkInterface, name: string): QNetworkInterface =

  QNetworkInterface(h: fcQNetworkInterface_interfaceFromName(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc interfaceFromIndex*(_: type QNetworkInterface, index: cint): QNetworkInterface =

  QNetworkInterface(h: fcQNetworkInterface_interfaceFromIndex(index))

proc interfaceNameFromIndex*(_: type QNetworkInterface, index: cint): string =

  let v_ms = fcQNetworkInterface_interfaceNameFromIndex(index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allInterfaces*(_: type QNetworkInterface, ): seq[QNetworkInterface] =

  var v_ma = fcQNetworkInterface_allInterfaces()
  var vx_ret = newSeq[QNetworkInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkInterface(h: v_outCast[i])
  vx_ret

proc allAddresses*(_: type QNetworkInterface, ): seq[gen_qhostaddress.QHostAddress] =

  var v_ma = fcQNetworkInterface_allAddresses()
  var vx_ret = newSeq[gen_qhostaddress.QHostAddress](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qhostaddress.QHostAddress(h: v_outCast[i])
  vx_ret

proc delete*(self: QNetworkInterface) =
  fcQNetworkInterface_delete(self.h)
