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
{.compile("gen_qdnslookup.cpp", cflags).}


type QDnsLookupError* = cint
const
  QDnsLookupNoError* = 0
  QDnsLookupResolverError* = 1
  QDnsLookupOperationCancelledError* = 2
  QDnsLookupInvalidRequestError* = 3
  QDnsLookupInvalidReplyError* = 4
  QDnsLookupServerFailureError* = 5
  QDnsLookupServerRefusedError* = 6
  QDnsLookupNotFoundError* = 7



type QDnsLookupType* = cint
const
  QDnsLookupA* = 1
  QDnsLookupAAAA* = 28
  QDnsLookupANY* = 255
  QDnsLookupCNAME* = 5
  QDnsLookupMX* = 15
  QDnsLookupNS* = 2
  QDnsLookupPTR* = 12
  QDnsLookupSRV* = 33
  QDnsLookupTXT* = 16



import gen_qdnslookup_types
export gen_qdnslookup_types

import
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQDnsDomainNameRecord*{.exportc: "QDnsDomainNameRecord", incompleteStruct.} = object
type cQDnsHostAddressRecord*{.exportc: "QDnsHostAddressRecord", incompleteStruct.} = object
type cQDnsMailExchangeRecord*{.exportc: "QDnsMailExchangeRecord", incompleteStruct.} = object
type cQDnsServiceRecord*{.exportc: "QDnsServiceRecord", incompleteStruct.} = object
type cQDnsTextRecord*{.exportc: "QDnsTextRecord", incompleteStruct.} = object
type cQDnsLookup*{.exportc: "QDnsLookup", incompleteStruct.} = object

proc fcQDnsDomainNameRecord_new(): ptr cQDnsDomainNameRecord {.importc: "QDnsDomainNameRecord_new".}
proc fcQDnsDomainNameRecord_new2(other: pointer): ptr cQDnsDomainNameRecord {.importc: "QDnsDomainNameRecord_new2".}
proc fcQDnsDomainNameRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsDomainNameRecord_operatorAssign".}
proc fcQDnsDomainNameRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsDomainNameRecord_swap".}
proc fcQDnsDomainNameRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsDomainNameRecord_name".}
proc fcQDnsDomainNameRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsDomainNameRecord_timeToLive".}
proc fcQDnsDomainNameRecord_value(self: pointer, ): struct_miqt_string {.importc: "QDnsDomainNameRecord_value".}
proc fcQDnsDomainNameRecord_delete(self: pointer) {.importc: "QDnsDomainNameRecord_delete".}
proc fcQDnsHostAddressRecord_new(): ptr cQDnsHostAddressRecord {.importc: "QDnsHostAddressRecord_new".}
proc fcQDnsHostAddressRecord_new2(other: pointer): ptr cQDnsHostAddressRecord {.importc: "QDnsHostAddressRecord_new2".}
proc fcQDnsHostAddressRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsHostAddressRecord_operatorAssign".}
proc fcQDnsHostAddressRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsHostAddressRecord_swap".}
proc fcQDnsHostAddressRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsHostAddressRecord_name".}
proc fcQDnsHostAddressRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsHostAddressRecord_timeToLive".}
proc fcQDnsHostAddressRecord_value(self: pointer, ): pointer {.importc: "QDnsHostAddressRecord_value".}
proc fcQDnsHostAddressRecord_delete(self: pointer) {.importc: "QDnsHostAddressRecord_delete".}
proc fcQDnsMailExchangeRecord_new(): ptr cQDnsMailExchangeRecord {.importc: "QDnsMailExchangeRecord_new".}
proc fcQDnsMailExchangeRecord_new2(other: pointer): ptr cQDnsMailExchangeRecord {.importc: "QDnsMailExchangeRecord_new2".}
proc fcQDnsMailExchangeRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsMailExchangeRecord_operatorAssign".}
proc fcQDnsMailExchangeRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsMailExchangeRecord_swap".}
proc fcQDnsMailExchangeRecord_exchange(self: pointer, ): struct_miqt_string {.importc: "QDnsMailExchangeRecord_exchange".}
proc fcQDnsMailExchangeRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsMailExchangeRecord_name".}
proc fcQDnsMailExchangeRecord_preference(self: pointer, ): cushort {.importc: "QDnsMailExchangeRecord_preference".}
proc fcQDnsMailExchangeRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsMailExchangeRecord_timeToLive".}
proc fcQDnsMailExchangeRecord_delete(self: pointer) {.importc: "QDnsMailExchangeRecord_delete".}
proc fcQDnsServiceRecord_new(): ptr cQDnsServiceRecord {.importc: "QDnsServiceRecord_new".}
proc fcQDnsServiceRecord_new2(other: pointer): ptr cQDnsServiceRecord {.importc: "QDnsServiceRecord_new2".}
proc fcQDnsServiceRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsServiceRecord_operatorAssign".}
proc fcQDnsServiceRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsServiceRecord_swap".}
proc fcQDnsServiceRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsServiceRecord_name".}
proc fcQDnsServiceRecord_port(self: pointer, ): cushort {.importc: "QDnsServiceRecord_port".}
proc fcQDnsServiceRecord_priority(self: pointer, ): cushort {.importc: "QDnsServiceRecord_priority".}
proc fcQDnsServiceRecord_target(self: pointer, ): struct_miqt_string {.importc: "QDnsServiceRecord_target".}
proc fcQDnsServiceRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsServiceRecord_timeToLive".}
proc fcQDnsServiceRecord_weight(self: pointer, ): cushort {.importc: "QDnsServiceRecord_weight".}
proc fcQDnsServiceRecord_delete(self: pointer) {.importc: "QDnsServiceRecord_delete".}
proc fcQDnsTextRecord_new(): ptr cQDnsTextRecord {.importc: "QDnsTextRecord_new".}
proc fcQDnsTextRecord_new2(other: pointer): ptr cQDnsTextRecord {.importc: "QDnsTextRecord_new2".}
proc fcQDnsTextRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QDnsTextRecord_operatorAssign".}
proc fcQDnsTextRecord_swap(self: pointer, other: pointer): void {.importc: "QDnsTextRecord_swap".}
proc fcQDnsTextRecord_name(self: pointer, ): struct_miqt_string {.importc: "QDnsTextRecord_name".}
proc fcQDnsTextRecord_timeToLive(self: pointer, ): cuint {.importc: "QDnsTextRecord_timeToLive".}
proc fcQDnsTextRecord_values(self: pointer, ): struct_miqt_array {.importc: "QDnsTextRecord_values".}
proc fcQDnsTextRecord_delete(self: pointer) {.importc: "QDnsTextRecord_delete".}
proc fcQDnsLookup_new(): ptr cQDnsLookup {.importc: "QDnsLookup_new".}
proc fcQDnsLookup_new2(typeVal: cint, name: struct_miqt_string): ptr cQDnsLookup {.importc: "QDnsLookup_new2".}
proc fcQDnsLookup_new3(typeVal: cint, name: struct_miqt_string, nameserver: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new3".}
proc fcQDnsLookup_new4(parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new4".}
proc fcQDnsLookup_new5(typeVal: cint, name: struct_miqt_string, parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new5".}
proc fcQDnsLookup_new6(typeVal: cint, name: struct_miqt_string, nameserver: pointer, parent: pointer): ptr cQDnsLookup {.importc: "QDnsLookup_new6".}
proc fcQDnsLookup_metaObject(self: pointer, ): pointer {.importc: "QDnsLookup_metaObject".}
proc fcQDnsLookup_metacast(self: pointer, param1: cstring): pointer {.importc: "QDnsLookup_metacast".}
proc fcQDnsLookup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDnsLookup_metacall".}
proc fcQDnsLookup_tr(s: cstring): struct_miqt_string {.importc: "QDnsLookup_tr".}
proc fcQDnsLookup_error(self: pointer, ): cint {.importc: "QDnsLookup_error".}
proc fcQDnsLookup_errorString(self: pointer, ): struct_miqt_string {.importc: "QDnsLookup_errorString".}
proc fcQDnsLookup_isFinished(self: pointer, ): bool {.importc: "QDnsLookup_isFinished".}
proc fcQDnsLookup_name(self: pointer, ): struct_miqt_string {.importc: "QDnsLookup_name".}
proc fcQDnsLookup_setName(self: pointer, name: struct_miqt_string): void {.importc: "QDnsLookup_setName".}
proc fcQDnsLookup_typeX(self: pointer, ): cint {.importc: "QDnsLookup_type".}
proc fcQDnsLookup_setType(self: pointer, typeVal: cint): void {.importc: "QDnsLookup_setType".}
proc fcQDnsLookup_nameserver(self: pointer, ): pointer {.importc: "QDnsLookup_nameserver".}
proc fcQDnsLookup_setNameserver(self: pointer, nameserver: pointer): void {.importc: "QDnsLookup_setNameserver".}
proc fcQDnsLookup_canonicalNameRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_canonicalNameRecords".}
proc fcQDnsLookup_hostAddressRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_hostAddressRecords".}
proc fcQDnsLookup_mailExchangeRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_mailExchangeRecords".}
proc fcQDnsLookup_nameServerRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_nameServerRecords".}
proc fcQDnsLookup_pointerRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_pointerRecords".}
proc fcQDnsLookup_serviceRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_serviceRecords".}
proc fcQDnsLookup_textRecords(self: pointer, ): struct_miqt_array {.importc: "QDnsLookup_textRecords".}
proc fcQDnsLookup_abort(self: pointer, ): void {.importc: "QDnsLookup_abort".}
proc fcQDnsLookup_lookup(self: pointer, ): void {.importc: "QDnsLookup_lookup".}
proc fcQDnsLookup_finished(self: pointer, ): void {.importc: "QDnsLookup_finished".}
proc fQDnsLookup_connect_finished(self: pointer, slot: int) {.importc: "QDnsLookup_connect_finished".}
proc fcQDnsLookup_nameChanged(self: pointer, name: struct_miqt_string): void {.importc: "QDnsLookup_nameChanged".}
proc fQDnsLookup_connect_nameChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_nameChanged".}
proc fcQDnsLookup_typeChanged(self: pointer, typeVal: cint): void {.importc: "QDnsLookup_typeChanged".}
proc fQDnsLookup_connect_typeChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_typeChanged".}
proc fcQDnsLookup_nameserverChanged(self: pointer, nameserver: pointer): void {.importc: "QDnsLookup_nameserverChanged".}
proc fQDnsLookup_connect_nameserverChanged(self: pointer, slot: int) {.importc: "QDnsLookup_connect_nameserverChanged".}
proc fcQDnsLookup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDnsLookup_tr2".}
proc fcQDnsLookup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDnsLookup_tr3".}
proc fQDnsLookup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDnsLookup_virtualbase_metacall".}
proc fcQDnsLookup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_metacall".}
proc fQDnsLookup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDnsLookup_virtualbase_event".}
proc fcQDnsLookup_override_virtual_event(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_event".}
proc fQDnsLookup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDnsLookup_virtualbase_eventFilter".}
proc fcQDnsLookup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_eventFilter".}
proc fQDnsLookup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_timerEvent".}
proc fcQDnsLookup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_timerEvent".}
proc fQDnsLookup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_childEvent".}
proc fcQDnsLookup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_childEvent".}
proc fQDnsLookup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDnsLookup_virtualbase_customEvent".}
proc fcQDnsLookup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_customEvent".}
proc fQDnsLookup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDnsLookup_virtualbase_connectNotify".}
proc fcQDnsLookup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_connectNotify".}
proc fQDnsLookup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDnsLookup_virtualbase_disconnectNotify".}
proc fcQDnsLookup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDnsLookup_override_virtual_disconnectNotify".}
proc fcQDnsLookup_staticMetaObject(): pointer {.importc: "QDnsLookup_staticMetaObject".}
proc fcQDnsLookup_delete(self: pointer) {.importc: "QDnsLookup_delete".}


func init*(T: type QDnsDomainNameRecord, h: ptr cQDnsDomainNameRecord): QDnsDomainNameRecord =
  T(h: h)
proc create*(T: type QDnsDomainNameRecord, ): QDnsDomainNameRecord =

  QDnsDomainNameRecord.init(fcQDnsDomainNameRecord_new())
proc create*(T: type QDnsDomainNameRecord, other: QDnsDomainNameRecord): QDnsDomainNameRecord =

  QDnsDomainNameRecord.init(fcQDnsDomainNameRecord_new2(other.h))
proc operatorAssign*(self: QDnsDomainNameRecord, other: QDnsDomainNameRecord): void =

  fcQDnsDomainNameRecord_operatorAssign(self.h, other.h)

proc swap*(self: QDnsDomainNameRecord, other: QDnsDomainNameRecord): void =

  fcQDnsDomainNameRecord_swap(self.h, other.h)

proc name*(self: QDnsDomainNameRecord, ): string =

  let v_ms = fcQDnsDomainNameRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: QDnsDomainNameRecord, ): cuint =

  fcQDnsDomainNameRecord_timeToLive(self.h)

proc value*(self: QDnsDomainNameRecord, ): string =

  let v_ms = fcQDnsDomainNameRecord_value(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QDnsDomainNameRecord) =
  fcQDnsDomainNameRecord_delete(self.h)

func init*(T: type QDnsHostAddressRecord, h: ptr cQDnsHostAddressRecord): QDnsHostAddressRecord =
  T(h: h)
proc create*(T: type QDnsHostAddressRecord, ): QDnsHostAddressRecord =

  QDnsHostAddressRecord.init(fcQDnsHostAddressRecord_new())
proc create*(T: type QDnsHostAddressRecord, other: QDnsHostAddressRecord): QDnsHostAddressRecord =

  QDnsHostAddressRecord.init(fcQDnsHostAddressRecord_new2(other.h))
proc operatorAssign*(self: QDnsHostAddressRecord, other: QDnsHostAddressRecord): void =

  fcQDnsHostAddressRecord_operatorAssign(self.h, other.h)

proc swap*(self: QDnsHostAddressRecord, other: QDnsHostAddressRecord): void =

  fcQDnsHostAddressRecord_swap(self.h, other.h)

proc name*(self: QDnsHostAddressRecord, ): string =

  let v_ms = fcQDnsHostAddressRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: QDnsHostAddressRecord, ): cuint =

  fcQDnsHostAddressRecord_timeToLive(self.h)

proc value*(self: QDnsHostAddressRecord, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQDnsHostAddressRecord_value(self.h))

proc delete*(self: QDnsHostAddressRecord) =
  fcQDnsHostAddressRecord_delete(self.h)

func init*(T: type QDnsMailExchangeRecord, h: ptr cQDnsMailExchangeRecord): QDnsMailExchangeRecord =
  T(h: h)
proc create*(T: type QDnsMailExchangeRecord, ): QDnsMailExchangeRecord =

  QDnsMailExchangeRecord.init(fcQDnsMailExchangeRecord_new())
proc create*(T: type QDnsMailExchangeRecord, other: QDnsMailExchangeRecord): QDnsMailExchangeRecord =

  QDnsMailExchangeRecord.init(fcQDnsMailExchangeRecord_new2(other.h))
proc operatorAssign*(self: QDnsMailExchangeRecord, other: QDnsMailExchangeRecord): void =

  fcQDnsMailExchangeRecord_operatorAssign(self.h, other.h)

proc swap*(self: QDnsMailExchangeRecord, other: QDnsMailExchangeRecord): void =

  fcQDnsMailExchangeRecord_swap(self.h, other.h)

proc exchange*(self: QDnsMailExchangeRecord, ): string =

  let v_ms = fcQDnsMailExchangeRecord_exchange(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: QDnsMailExchangeRecord, ): string =

  let v_ms = fcQDnsMailExchangeRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc preference*(self: QDnsMailExchangeRecord, ): cushort =

  fcQDnsMailExchangeRecord_preference(self.h)

proc timeToLive*(self: QDnsMailExchangeRecord, ): cuint =

  fcQDnsMailExchangeRecord_timeToLive(self.h)

proc delete*(self: QDnsMailExchangeRecord) =
  fcQDnsMailExchangeRecord_delete(self.h)

func init*(T: type QDnsServiceRecord, h: ptr cQDnsServiceRecord): QDnsServiceRecord =
  T(h: h)
proc create*(T: type QDnsServiceRecord, ): QDnsServiceRecord =

  QDnsServiceRecord.init(fcQDnsServiceRecord_new())
proc create*(T: type QDnsServiceRecord, other: QDnsServiceRecord): QDnsServiceRecord =

  QDnsServiceRecord.init(fcQDnsServiceRecord_new2(other.h))
proc operatorAssign*(self: QDnsServiceRecord, other: QDnsServiceRecord): void =

  fcQDnsServiceRecord_operatorAssign(self.h, other.h)

proc swap*(self: QDnsServiceRecord, other: QDnsServiceRecord): void =

  fcQDnsServiceRecord_swap(self.h, other.h)

proc name*(self: QDnsServiceRecord, ): string =

  let v_ms = fcQDnsServiceRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc port*(self: QDnsServiceRecord, ): cushort =

  fcQDnsServiceRecord_port(self.h)

proc priority*(self: QDnsServiceRecord, ): cushort =

  fcQDnsServiceRecord_priority(self.h)

proc target*(self: QDnsServiceRecord, ): string =

  let v_ms = fcQDnsServiceRecord_target(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: QDnsServiceRecord, ): cuint =

  fcQDnsServiceRecord_timeToLive(self.h)

proc weight*(self: QDnsServiceRecord, ): cushort =

  fcQDnsServiceRecord_weight(self.h)

proc delete*(self: QDnsServiceRecord) =
  fcQDnsServiceRecord_delete(self.h)

func init*(T: type QDnsTextRecord, h: ptr cQDnsTextRecord): QDnsTextRecord =
  T(h: h)
proc create*(T: type QDnsTextRecord, ): QDnsTextRecord =

  QDnsTextRecord.init(fcQDnsTextRecord_new())
proc create*(T: type QDnsTextRecord, other: QDnsTextRecord): QDnsTextRecord =

  QDnsTextRecord.init(fcQDnsTextRecord_new2(other.h))
proc operatorAssign*(self: QDnsTextRecord, other: QDnsTextRecord): void =

  fcQDnsTextRecord_operatorAssign(self.h, other.h)

proc swap*(self: QDnsTextRecord, other: QDnsTextRecord): void =

  fcQDnsTextRecord_swap(self.h, other.h)

proc name*(self: QDnsTextRecord, ): string =

  let v_ms = fcQDnsTextRecord_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeToLive*(self: QDnsTextRecord, ): cuint =

  fcQDnsTextRecord_timeToLive(self.h)

proc values*(self: QDnsTextRecord, ): seq[seq[byte]] =

  var v_ma = fcQDnsTextRecord_values(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: QDnsTextRecord) =
  fcQDnsTextRecord_delete(self.h)

func init*(T: type QDnsLookup, h: ptr cQDnsLookup): QDnsLookup =
  T(h: h)
proc create*(T: type QDnsLookup, ): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new())
proc create*(T: type QDnsLookup, typeVal: QDnsLookupType, name: string): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new2(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QDnsLookup, typeVal: QDnsLookupType, name: string, nameserver: gen_qhostaddress.QHostAddress): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new3(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), nameserver.h))
proc create*(T: type QDnsLookup, parent: gen_qobject.QObject): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new4(parent.h))
proc create2*(T: type QDnsLookup, typeVal: QDnsLookupType, name: string, parent: gen_qobject.QObject): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new5(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))
proc create*(T: type QDnsLookup, typeVal: QDnsLookupType, name: string, nameserver: gen_qhostaddress.QHostAddress, parent: gen_qobject.QObject): QDnsLookup =

  QDnsLookup.init(fcQDnsLookup_new6(cint(typeVal), struct_miqt_string(data: name, len: csize_t(len(name))), nameserver.h, parent.h))
proc metaObject*(self: QDnsLookup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDnsLookup_metaObject(self.h))

proc metacast*(self: QDnsLookup, param1: cstring): pointer =

  fcQDnsLookup_metacast(self.h, param1)

proc metacall*(self: QDnsLookup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDnsLookup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDnsLookup, s: cstring): string =

  let v_ms = fcQDnsLookup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: QDnsLookup, ): QDnsLookupError =

  QDnsLookupError(fcQDnsLookup_error(self.h))

proc errorString*(self: QDnsLookup, ): string =

  let v_ms = fcQDnsLookup_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: QDnsLookup, ): bool =

  fcQDnsLookup_isFinished(self.h)

proc name*(self: QDnsLookup, ): string =

  let v_ms = fcQDnsLookup_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setName*(self: QDnsLookup, name: string): void =

  fcQDnsLookup_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc typeX*(self: QDnsLookup, ): QDnsLookupType =

  QDnsLookupType(fcQDnsLookup_typeX(self.h))

proc setType*(self: QDnsLookup, typeVal: QDnsLookupType): void =

  fcQDnsLookup_setType(self.h, cint(typeVal))

proc nameserver*(self: QDnsLookup, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQDnsLookup_nameserver(self.h))

proc setNameserver*(self: QDnsLookup, nameserver: gen_qhostaddress.QHostAddress): void =

  fcQDnsLookup_setNameserver(self.h, nameserver.h)

proc canonicalNameRecords*(self: QDnsLookup, ): seq[QDnsDomainNameRecord] =

  var v_ma = fcQDnsLookup_canonicalNameRecords(self.h)
  var vx_ret = newSeq[QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc hostAddressRecords*(self: QDnsLookup, ): seq[QDnsHostAddressRecord] =

  var v_ma = fcQDnsLookup_hostAddressRecords(self.h)
  var vx_ret = newSeq[QDnsHostAddressRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsHostAddressRecord(h: v_outCast[i])
  vx_ret

proc mailExchangeRecords*(self: QDnsLookup, ): seq[QDnsMailExchangeRecord] =

  var v_ma = fcQDnsLookup_mailExchangeRecords(self.h)
  var vx_ret = newSeq[QDnsMailExchangeRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsMailExchangeRecord(h: v_outCast[i])
  vx_ret

proc nameServerRecords*(self: QDnsLookup, ): seq[QDnsDomainNameRecord] =

  var v_ma = fcQDnsLookup_nameServerRecords(self.h)
  var vx_ret = newSeq[QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc pointerRecords*(self: QDnsLookup, ): seq[QDnsDomainNameRecord] =

  var v_ma = fcQDnsLookup_pointerRecords(self.h)
  var vx_ret = newSeq[QDnsDomainNameRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsDomainNameRecord(h: v_outCast[i])
  vx_ret

proc serviceRecords*(self: QDnsLookup, ): seq[QDnsServiceRecord] =

  var v_ma = fcQDnsLookup_serviceRecords(self.h)
  var vx_ret = newSeq[QDnsServiceRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsServiceRecord(h: v_outCast[i])
  vx_ret

proc textRecords*(self: QDnsLookup, ): seq[QDnsTextRecord] =

  var v_ma = fcQDnsLookup_textRecords(self.h)
  var vx_ret = newSeq[QDnsTextRecord](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QDnsTextRecord(h: v_outCast[i])
  vx_ret

proc abort*(self: QDnsLookup, ): void =

  fcQDnsLookup_abort(self.h)

proc lookup*(self: QDnsLookup, ): void =

  fcQDnsLookup_lookup(self.h)

proc finished*(self: QDnsLookup, ): void =

  fcQDnsLookup_finished(self.h)

proc miqt_exec_callback_QDnsLookup_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QDnsLookup, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDnsLookup_connect_finished(self.h, cast[int](addr tmp[]))
proc nameChanged*(self: QDnsLookup, name: string): void =

  fcQDnsLookup_nameChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc miqt_exec_callback_QDnsLookup_nameChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  type Cb = proc(name: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret


  nimfunc[](slotval1)

proc onnameChanged*(self: QDnsLookup, slot: proc(name: string)) =
  type Cb = proc(name: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDnsLookup_connect_nameChanged(self.h, cast[int](addr tmp[]))
proc typeChanged*(self: QDnsLookup, typeVal: QDnsLookupType): void =

  fcQDnsLookup_typeChanged(self.h, cint(typeVal))

proc miqt_exec_callback_QDnsLookup_typeChanged(slot: int, typeVal: cint) {.exportc.} =
  type Cb = proc(typeVal: QDnsLookupType)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QDnsLookupType(typeVal)


  nimfunc[](slotval1)

proc ontypeChanged*(self: QDnsLookup, slot: proc(typeVal: QDnsLookupType)) =
  type Cb = proc(typeVal: QDnsLookupType)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDnsLookup_connect_typeChanged(self.h, cast[int](addr tmp[]))
proc nameserverChanged*(self: QDnsLookup, nameserver: gen_qhostaddress.QHostAddress): void =

  fcQDnsLookup_nameserverChanged(self.h, nameserver.h)

proc miqt_exec_callback_QDnsLookup_nameserverChanged(slot: int, nameserver: pointer) {.exportc.} =
  type Cb = proc(nameserver: gen_qhostaddress.QHostAddress)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qhostaddress.QHostAddress(h: nameserver)


  nimfunc[](slotval1)

proc onnameserverChanged*(self: QDnsLookup, slot: proc(nameserver: gen_qhostaddress.QHostAddress)) =
  type Cb = proc(nameserver: gen_qhostaddress.QHostAddress)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDnsLookup_connect_nameserverChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDnsLookup, s: cstring, c: cstring): string =

  let v_ms = fcQDnsLookup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDnsLookup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDnsLookup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDnsLookup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDnsLookup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDnsLookupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDnsLookup, slot: proc(super: QDnsLookupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_metacall(self: ptr cQDnsLookup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDnsLookup_metacall ".} =
  type Cb = proc(super: QDnsLookupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDnsLookup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QDnsLookup, event: gen_qcoreevent.QEvent): bool =


  fQDnsLookup_virtualbase_event(self.h, event.h)

type QDnsLookupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDnsLookup, slot: proc(super: QDnsLookupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_event(self: ptr cQDnsLookup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDnsLookup_event ".} =
  type Cb = proc(super: QDnsLookupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDnsLookup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDnsLookup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDnsLookup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDnsLookupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDnsLookup, slot: proc(super: QDnsLookupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_eventFilter(self: ptr cQDnsLookup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDnsLookup_eventFilter ".} =
  type Cb = proc(super: QDnsLookupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDnsLookup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDnsLookup, event: gen_qcoreevent.QTimerEvent): void =


  fQDnsLookup_virtualbase_timerEvent(self.h, event.h)

type QDnsLookuptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDnsLookup, slot: proc(super: QDnsLookuptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookuptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_timerEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_timerEvent ".} =
  type Cb = proc(super: QDnsLookuptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDnsLookup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDnsLookup, event: gen_qcoreevent.QChildEvent): void =


  fQDnsLookup_virtualbase_childEvent(self.h, event.h)

type QDnsLookupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDnsLookup, slot: proc(super: QDnsLookupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_childEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_childEvent ".} =
  type Cb = proc(super: QDnsLookupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDnsLookup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDnsLookup, event: gen_qcoreevent.QEvent): void =


  fQDnsLookup_virtualbase_customEvent(self.h, event.h)

type QDnsLookupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDnsLookup, slot: proc(super: QDnsLookupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_customEvent(self: ptr cQDnsLookup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_customEvent ".} =
  type Cb = proc(super: QDnsLookupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDnsLookup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDnsLookup, signal: gen_qmetaobject.QMetaMethod): void =


  fQDnsLookup_virtualbase_connectNotify(self.h, signal.h)

type QDnsLookupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDnsLookup, slot: proc(super: QDnsLookupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_connectNotify(self: ptr cQDnsLookup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_connectNotify ".} =
  type Cb = proc(super: QDnsLookupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDnsLookup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDnsLookup, signal: gen_qmetaobject.QMetaMethod): void =


  fQDnsLookup_virtualbase_disconnectNotify(self.h, signal.h)

type QDnsLookupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDnsLookup, slot: proc(super: QDnsLookupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDnsLookupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDnsLookup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDnsLookup_disconnectNotify(self: ptr cQDnsLookup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDnsLookup_disconnectNotify ".} =
  type Cb = proc(super: QDnsLookupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDnsLookup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDnsLookup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDnsLookup_staticMetaObject())
proc delete*(self: QDnsLookup) =
  fcQDnsLookup_delete(self.h)
