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
{.compile("gen_qdtls.cpp", cflags).}


type QDtlsErrorEnum* = distinct uint8
template NoError*(_: type QDtlsErrorEnum): untyped = 0
template InvalidInputParameters*(_: type QDtlsErrorEnum): untyped = 1
template InvalidOperation*(_: type QDtlsErrorEnum): untyped = 2
template UnderlyingSocketError*(_: type QDtlsErrorEnum): untyped = 3
template RemoteClosedConnectionError*(_: type QDtlsErrorEnum): untyped = 4
template PeerVerificationError*(_: type QDtlsErrorEnum): untyped = 5
template TlsInitializationError*(_: type QDtlsErrorEnum): untyped = 6
template TlsFatalError*(_: type QDtlsErrorEnum): untyped = 7
template TlsNonFatalError*(_: type QDtlsErrorEnum): untyped = 8


type QDtlsHandshakeStateEnum* = distinct cint
template HandshakeNotStarted*(_: type QDtlsHandshakeStateEnum): untyped = 0
template HandshakeInProgress*(_: type QDtlsHandshakeStateEnum): untyped = 1
template PeerVerificationFailed*(_: type QDtlsHandshakeStateEnum): untyped = 2
template HandshakeComplete*(_: type QDtlsHandshakeStateEnum): untyped = 3


import gen_qdtls_types
export gen_qdtls_types

import
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qudpsocket
export
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qudpsocket

type cQDtlsClientVerifier*{.exportc: "QDtlsClientVerifier", incompleteStruct.} = object
type cQDtls*{.exportc: "QDtls", incompleteStruct.} = object
type cQDtlsClientVerifierGeneratorParameters*{.exportc: "QDtlsClientVerifier__GeneratorParameters", incompleteStruct.} = object

proc fcQDtlsClientVerifier_new(): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new".}
proc fcQDtlsClientVerifier_new2(parent: pointer): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new2".}
proc fcQDtlsClientVerifier_metaObject(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_metaObject".}
proc fcQDtlsClientVerifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtlsClientVerifier_metacast".}
proc fcQDtlsClientVerifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtlsClientVerifier_metacall".}
proc fcQDtlsClientVerifier_tr(s: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr".}
proc fcQDtlsClientVerifier_trUtf8(s: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_trUtf8".}
proc fcQDtlsClientVerifier_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtlsClientVerifier_setCookieGeneratorParameters".}
proc fcQDtlsClientVerifier_cookieGeneratorParameters(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_cookieGeneratorParameters".}
proc fcQDtlsClientVerifier_verifyClient(self: pointer, socket: pointer, dgram: struct_miqt_string, address: pointer, port: cushort): bool {.importc: "QDtlsClientVerifier_verifyClient".}
proc fcQDtlsClientVerifier_verifiedHello(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_verifiedHello".}
proc fcQDtlsClientVerifier_dtlsError(self: pointer, ): cint {.importc: "QDtlsClientVerifier_dtlsError".}
proc fcQDtlsClientVerifier_dtlsErrorString(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_dtlsErrorString".}
proc fcQDtlsClientVerifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr2".}
proc fcQDtlsClientVerifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtlsClientVerifier_tr3".}
proc fcQDtlsClientVerifier_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_trUtf82".}
proc fcQDtlsClientVerifier_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtlsClientVerifier_trUtf83".}
proc fQDtlsClientVerifier_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDtlsClientVerifier_virtualbase_metaObject".}
proc fcQDtlsClientVerifier_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_metaObject".}
proc fQDtlsClientVerifier_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDtlsClientVerifier_virtualbase_metacast".}
proc fcQDtlsClientVerifier_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_metacast".}
proc fQDtlsClientVerifier_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDtlsClientVerifier_virtualbase_metacall".}
proc fcQDtlsClientVerifier_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_metacall".}
proc fQDtlsClientVerifier_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDtlsClientVerifier_virtualbase_event".}
proc fcQDtlsClientVerifier_override_virtual_event(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_event".}
proc fQDtlsClientVerifier_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDtlsClientVerifier_virtualbase_eventFilter".}
proc fcQDtlsClientVerifier_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_eventFilter".}
proc fQDtlsClientVerifier_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDtlsClientVerifier_virtualbase_timerEvent".}
proc fcQDtlsClientVerifier_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_timerEvent".}
proc fQDtlsClientVerifier_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDtlsClientVerifier_virtualbase_childEvent".}
proc fcQDtlsClientVerifier_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_childEvent".}
proc fQDtlsClientVerifier_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDtlsClientVerifier_virtualbase_customEvent".}
proc fcQDtlsClientVerifier_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_customEvent".}
proc fQDtlsClientVerifier_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDtlsClientVerifier_virtualbase_connectNotify".}
proc fcQDtlsClientVerifier_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_connectNotify".}
proc fQDtlsClientVerifier_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDtlsClientVerifier_virtualbase_disconnectNotify".}
proc fcQDtlsClientVerifier_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDtlsClientVerifier_override_virtual_disconnectNotify".}
proc fcQDtlsClientVerifier_staticMetaObject(): pointer {.importc: "QDtlsClientVerifier_staticMetaObject".}
proc fcQDtlsClientVerifier_delete(self: pointer) {.importc: "QDtlsClientVerifier_delete".}
proc fcQDtls_new(mode: cint): ptr cQDtls {.importc: "QDtls_new".}
proc fcQDtls_new2(mode: cint, parent: pointer): ptr cQDtls {.importc: "QDtls_new2".}
proc fcQDtls_metaObject(self: pointer, ): pointer {.importc: "QDtls_metaObject".}
proc fcQDtls_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtls_metacast".}
proc fcQDtls_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtls_metacall".}
proc fcQDtls_tr(s: cstring): struct_miqt_string {.importc: "QDtls_tr".}
proc fcQDtls_trUtf8(s: cstring): struct_miqt_string {.importc: "QDtls_trUtf8".}
proc fcQDtls_setPeer(self: pointer, address: pointer, port: cushort): bool {.importc: "QDtls_setPeer".}
proc fcQDtls_setPeerVerificationName(self: pointer, name: struct_miqt_string): bool {.importc: "QDtls_setPeerVerificationName".}
proc fcQDtls_peerAddress(self: pointer, ): pointer {.importc: "QDtls_peerAddress".}
proc fcQDtls_peerPort(self: pointer, ): cushort {.importc: "QDtls_peerPort".}
proc fcQDtls_peerVerificationName(self: pointer, ): struct_miqt_string {.importc: "QDtls_peerVerificationName".}
proc fcQDtls_sslMode(self: pointer, ): cint {.importc: "QDtls_sslMode".}
proc fcQDtls_setMtuHint(self: pointer, mtuHint: cushort): void {.importc: "QDtls_setMtuHint".}
proc fcQDtls_mtuHint(self: pointer, ): cushort {.importc: "QDtls_mtuHint".}
proc fcQDtls_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtls_setCookieGeneratorParameters".}
proc fcQDtls_cookieGeneratorParameters(self: pointer, ): pointer {.importc: "QDtls_cookieGeneratorParameters".}
proc fcQDtls_setDtlsConfiguration(self: pointer, configuration: pointer): bool {.importc: "QDtls_setDtlsConfiguration".}
proc fcQDtls_dtlsConfiguration(self: pointer, ): pointer {.importc: "QDtls_dtlsConfiguration".}
proc fcQDtls_handshakeState(self: pointer, ): cint {.importc: "QDtls_handshakeState".}
proc fcQDtls_doHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_doHandshake".}
proc fcQDtls_handleTimeout(self: pointer, socket: pointer): bool {.importc: "QDtls_handleTimeout".}
proc fcQDtls_resumeHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_resumeHandshake".}
proc fcQDtls_abortHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_abortHandshake".}
proc fcQDtls_shutdown(self: pointer, socket: pointer): bool {.importc: "QDtls_shutdown".}
proc fcQDtls_isConnectionEncrypted(self: pointer, ): bool {.importc: "QDtls_isConnectionEncrypted".}
proc fcQDtls_sessionCipher(self: pointer, ): pointer {.importc: "QDtls_sessionCipher".}
proc fcQDtls_sessionProtocol(self: pointer, ): cint {.importc: "QDtls_sessionProtocol".}
proc fcQDtls_writeDatagramEncrypted(self: pointer, socket: pointer, dgram: struct_miqt_string): clonglong {.importc: "QDtls_writeDatagramEncrypted".}
proc fcQDtls_decryptDatagram(self: pointer, socket: pointer, dgram: struct_miqt_string): struct_miqt_string {.importc: "QDtls_decryptDatagram".}
proc fcQDtls_dtlsError(self: pointer, ): cint {.importc: "QDtls_dtlsError".}
proc fcQDtls_dtlsErrorString(self: pointer, ): struct_miqt_string {.importc: "QDtls_dtlsErrorString".}
proc fcQDtls_peerVerificationErrors(self: pointer, ): struct_miqt_array {.importc: "QDtls_peerVerificationErrors".}
proc fcQDtls_ignoreVerificationErrors(self: pointer, errorsToIgnore: struct_miqt_array): void {.importc: "QDtls_ignoreVerificationErrors".}
proc fcQDtls_pskRequired(self: pointer, authenticator: pointer): void {.importc: "QDtls_pskRequired".}
proc fQDtls_connect_pskRequired(self: pointer, slot: int) {.importc: "QDtls_connect_pskRequired".}
proc fcQDtls_handshakeTimeout(self: pointer, ): void {.importc: "QDtls_handshakeTimeout".}
proc fQDtls_connect_handshakeTimeout(self: pointer, slot: int) {.importc: "QDtls_connect_handshakeTimeout".}
proc fcQDtls_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtls_tr2".}
proc fcQDtls_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtls_tr3".}
proc fcQDtls_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtls_trUtf82".}
proc fcQDtls_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtls_trUtf83".}
proc fcQDtls_setPeer3(self: pointer, address: pointer, port: cushort, verificationName: struct_miqt_string): bool {.importc: "QDtls_setPeer3".}
proc fcQDtls_doHandshake2(self: pointer, socket: pointer, dgram: struct_miqt_string): bool {.importc: "QDtls_doHandshake2".}
proc fQDtls_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDtls_virtualbase_metaObject".}
proc fcQDtls_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDtls_override_virtual_metaObject".}
proc fQDtls_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDtls_virtualbase_metacast".}
proc fcQDtls_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDtls_override_virtual_metacast".}
proc fQDtls_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDtls_virtualbase_metacall".}
proc fcQDtls_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDtls_override_virtual_metacall".}
proc fQDtls_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDtls_virtualbase_event".}
proc fcQDtls_override_virtual_event(self: pointer, slot: int) {.importc: "QDtls_override_virtual_event".}
proc fQDtls_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDtls_virtualbase_eventFilter".}
proc fcQDtls_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDtls_override_virtual_eventFilter".}
proc fQDtls_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDtls_virtualbase_timerEvent".}
proc fcQDtls_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDtls_override_virtual_timerEvent".}
proc fQDtls_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDtls_virtualbase_childEvent".}
proc fcQDtls_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDtls_override_virtual_childEvent".}
proc fQDtls_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDtls_virtualbase_customEvent".}
proc fcQDtls_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDtls_override_virtual_customEvent".}
proc fQDtls_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDtls_virtualbase_connectNotify".}
proc fcQDtls_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDtls_override_virtual_connectNotify".}
proc fQDtls_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDtls_virtualbase_disconnectNotify".}
proc fcQDtls_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDtls_override_virtual_disconnectNotify".}
proc fcQDtls_staticMetaObject(): pointer {.importc: "QDtls_staticMetaObject".}
proc fcQDtls_delete(self: pointer) {.importc: "QDtls_delete".}
proc fcQDtlsClientVerifierGeneratorParameters_new(): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new".}
proc fcQDtlsClientVerifierGeneratorParameters_new2(a: cint, s: struct_miqt_string): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new2".}
proc fcQDtlsClientVerifierGeneratorParameters_new3(param1: pointer): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new3".}
proc fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDtlsClientVerifier__GeneratorParameters_operatorAssign".}
proc fcQDtlsClientVerifierGeneratorParameters_delete(self: pointer) {.importc: "QDtlsClientVerifier__GeneratorParameters_delete".}


func init*(T: type gen_qdtls_types.QDtlsClientVerifier, h: ptr cQDtlsClientVerifier): gen_qdtls_types.QDtlsClientVerifier =
  T(h: h)
proc create*(T: type gen_qdtls_types.QDtlsClientVerifier, ): gen_qdtls_types.QDtlsClientVerifier =

  gen_qdtls_types.QDtlsClientVerifier.init(fcQDtlsClientVerifier_new())
proc create*(T: type gen_qdtls_types.QDtlsClientVerifier, parent: gen_qobject.QObject): gen_qdtls_types.QDtlsClientVerifier =

  gen_qdtls_types.QDtlsClientVerifier.init(fcQDtlsClientVerifier_new2(parent.h))
proc metaObject*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDtlsClientVerifier_metaObject(self.h))

proc metacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =

  fcQDtlsClientVerifier_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =

  fcQDtlsClientVerifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring): string =

  let v_ms = fcQDtlsClientVerifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring): string =

  let v_ms = fcQDtlsClientVerifier_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =

  fcQDtlsClientVerifier_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =

  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifier_cookieGeneratorParameters(self.h))

proc verifyClient*(self: gen_qdtls_types.QDtlsClientVerifier, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte], address: gen_qhostaddress.QHostAddress, port: cushort): bool =

  fcQDtlsClientVerifier_verifyClient(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))), address.h, port)

proc verifiedHello*(self: gen_qdtls_types.QDtlsClientVerifier, ): seq[byte] =

  var v_bytearray = fcQDtlsClientVerifier_verifiedHello(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtlsClientVerifier, ): cint =

  cint(fcQDtlsClientVerifier_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtlsClientVerifier, ): string =

  let v_ms = fcQDtlsClientVerifier_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring): string =

  let v_ms = fcQDtlsClientVerifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtlsClientVerifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring): string =

  let v_ms = fcQDtlsClientVerifier_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtlsClientVerifier_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDtlsClientVerifiermetaObject*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQDtlsClientVerifier_virtualbase_metaObject(self.h))

type QDtlsClientVerifiermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiermetaObjectProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_metaObject(self: ptr cQDtlsClientVerifier, slot: int): pointer {.exportc: "miqt_exec_callback_QDtlsClientVerifier_metaObject ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDtlsClientVerifiermetacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =

  fQDtlsClientVerifier_virtualbase_metacast(self.h, param1)

type QDtlsClientVerifiermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiermetacastProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_metacast(self: ptr cQDtlsClientVerifier, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDtlsClientVerifier_metacast ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDtlsClientVerifiermetacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =

  fQDtlsClientVerifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDtlsClientVerifiermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiermetacallProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_metacall(self: ptr cQDtlsClientVerifier, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDtlsClientVerifier_metacall ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDtlsClientVerifierevent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent.QEvent): bool =

  fQDtlsClientVerifier_virtualbase_event(self.h, event.h)

type QDtlsClientVerifiereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiereventProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_event(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDtlsClientVerifier_event ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDtlsClientVerifiereventFilter*(self: gen_qdtls_types.QDtlsClientVerifier, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQDtlsClientVerifier_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDtlsClientVerifiereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiereventFilterProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_eventFilter(self: ptr cQDtlsClientVerifier, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDtlsClientVerifier_eventFilter ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDtlsClientVerifiertimerEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent.QTimerEvent): void =

  fQDtlsClientVerifier_virtualbase_timerEvent(self.h, event.h)

type QDtlsClientVerifiertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiertimerEventProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_timerEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_timerEvent ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDtlsClientVerifierchildEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent.QChildEvent): void =

  fQDtlsClientVerifier_virtualbase_childEvent(self.h, event.h)

type QDtlsClientVerifierchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifierchildEventProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifierchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_childEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_childEvent ".} =
  var nimfunc = cast[ptr QDtlsClientVerifierchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDtlsClientVerifiercustomEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent.QEvent): void =

  fQDtlsClientVerifier_virtualbase_customEvent(self.h, event.h)

type QDtlsClientVerifiercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifiercustomEventProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifiercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_customEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_customEvent ".} =
  var nimfunc = cast[ptr QDtlsClientVerifiercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QDtlsClientVerifierconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject.QMetaMethod): void =

  fQDtlsClientVerifier_virtualbase_connectNotify(self.h, signal.h)

type QDtlsClientVerifierconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifierconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifierconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_connectNotify(self: ptr cQDtlsClientVerifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_connectNotify ".} =
  var nimfunc = cast[ptr QDtlsClientVerifierconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDtlsClientVerifierdisconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject.QMetaMethod): void =

  fQDtlsClientVerifier_virtualbase_disconnectNotify(self.h, signal.h)

type QDtlsClientVerifierdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, slot: QDtlsClientVerifierdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDtlsClientVerifierdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_disconnectNotify(self: ptr cQDtlsClientVerifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_disconnectNotify ".} =
  var nimfunc = cast[ptr QDtlsClientVerifierdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdtls_types.QDtlsClientVerifier): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDtlsClientVerifier_staticMetaObject())
proc delete*(self: gen_qdtls_types.QDtlsClientVerifier) =
  fcQDtlsClientVerifier_delete(self.h)

func init*(T: type gen_qdtls_types.QDtls, h: ptr cQDtls): gen_qdtls_types.QDtls =
  T(h: h)
proc create*(T: type gen_qdtls_types.QDtls, mode: cint): gen_qdtls_types.QDtls =

  gen_qdtls_types.QDtls.init(fcQDtls_new(cint(mode)))
proc create*(T: type gen_qdtls_types.QDtls, mode: cint, parent: gen_qobject.QObject): gen_qdtls_types.QDtls =

  gen_qdtls_types.QDtls.init(fcQDtls_new2(cint(mode), parent.h))
proc metaObject*(self: gen_qdtls_types.QDtls, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDtls_metaObject(self.h))

proc metacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =

  fcQDtls_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =

  fcQDtls_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring): string =

  let v_ms = fcQDtls_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdtls_types.QDtls, s: cstring): string =

  let v_ms = fcQDtls_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress.QHostAddress, port: cushort): bool =

  fcQDtls_setPeer(self.h, address.h, port)

proc setPeerVerificationName*(self: gen_qdtls_types.QDtls, name: string): bool =

  fcQDtls_setPeerVerificationName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc peerAddress*(self: gen_qdtls_types.QDtls, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQDtls_peerAddress(self.h))

proc peerPort*(self: gen_qdtls_types.QDtls, ): cushort =

  fcQDtls_peerPort(self.h)

proc peerVerificationName*(self: gen_qdtls_types.QDtls, ): string =

  let v_ms = fcQDtls_peerVerificationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sslMode*(self: gen_qdtls_types.QDtls, ): cint =

  cint(fcQDtls_sslMode(self.h))

proc setMtuHint*(self: gen_qdtls_types.QDtls, mtuHint: cushort): void =

  fcQDtls_setMtuHint(self.h, mtuHint)

proc mtuHint*(self: gen_qdtls_types.QDtls, ): cushort =

  fcQDtls_mtuHint(self.h)

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtls, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =

  fcQDtls_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtls, ): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =

  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtls_cookieGeneratorParameters(self.h))

proc setDtlsConfiguration*(self: gen_qdtls_types.QDtls, configuration: gen_qsslconfiguration.QSslConfiguration): bool =

  fcQDtls_setDtlsConfiguration(self.h, configuration.h)

proc dtlsConfiguration*(self: gen_qdtls_types.QDtls, ): gen_qsslconfiguration.QSslConfiguration =

  gen_qsslconfiguration.QSslConfiguration(h: fcQDtls_dtlsConfiguration(self.h))

proc handshakeState*(self: gen_qdtls_types.QDtls, ): cint =

  cint(fcQDtls_handshakeState(self.h))

proc doHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_doHandshake(self.h, socket.h)

proc handleTimeout*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_handleTimeout(self.h, socket.h)

proc resumeHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_resumeHandshake(self.h, socket.h)

proc abortHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_abortHandshake(self.h, socket.h)

proc shutdown*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_shutdown(self.h, socket.h)

proc isConnectionEncrypted*(self: gen_qdtls_types.QDtls, ): bool =

  fcQDtls_isConnectionEncrypted(self.h)

proc sessionCipher*(self: gen_qdtls_types.QDtls, ): gen_qsslcipher.QSslCipher =

  gen_qsslcipher.QSslCipher(h: fcQDtls_sessionCipher(self.h))

proc sessionProtocol*(self: gen_qdtls_types.QDtls, ): cint =

  cint(fcQDtls_sessionProtocol(self.h))

proc writeDatagramEncrypted*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): clonglong =

  fcQDtls_writeDatagramEncrypted(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc decryptDatagram*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): seq[byte] =

  var v_bytearray = fcQDtls_decryptDatagram(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtls, ): cint =

  cint(fcQDtls_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtls, ): string =

  let v_ms = fcQDtls_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc peerVerificationErrors*(self: gen_qdtls_types.QDtls, ): seq[gen_qsslerror.QSslError] =

  var v_ma = fcQDtls_peerVerificationErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc ignoreVerificationErrors*(self: gen_qdtls_types.QDtls, errorsToIgnore: seq[gen_qsslerror.QSslError]): void =

  var errorsToIgnore_CArray = newSeq[pointer](len(errorsToIgnore))
  for i in 0..<len(errorsToIgnore):
    errorsToIgnore_CArray[i] = errorsToIgnore[i].h

  fcQDtls_ignoreVerificationErrors(self.h, struct_miqt_array(len: csize_t(len(errorsToIgnore)), data: if len(errorsToIgnore) == 0: nil else: addr(errorsToIgnore_CArray[0])))

proc pskRequired*(self: gen_qdtls_types.QDtls, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator): void =

  fcQDtls_pskRequired(self.h, authenticator.h)

proc miqt_exec_callback_QDtls_pskRequired(slot: int, authenticator: pointer) {.exportc.} =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator(h: authenticator)


  nimfunc[](slotval1)

proc onpskRequired*(self: gen_qdtls_types.QDtls, slot: proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)) =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDtls_connect_pskRequired(self.h, cast[int](addr tmp[]))
proc handshakeTimeout*(self: gen_qdtls_types.QDtls, ): void =

  fcQDtls_handshakeTimeout(self.h)

proc miqt_exec_callback_QDtls_handshakeTimeout(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhandshakeTimeout*(self: gen_qdtls_types.QDtls, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDtls_connect_handshakeTimeout(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring): string =

  let v_ms = fcQDtls_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtls_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring): string =

  let v_ms = fcQDtls_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtls_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer3*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress.QHostAddress, port: cushort, verificationName: string): bool =

  fcQDtls_setPeer3(self.h, address.h, port, struct_miqt_string(data: verificationName, len: csize_t(len(verificationName))))

proc doHandshake2*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): bool =

  fcQDtls_doHandshake2(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc QDtlsmetaObject*(self: gen_qdtls_types.QDtls, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQDtls_virtualbase_metaObject(self.h))

type QDtlsmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qdtls_types.QDtls, slot: QDtlsmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDtlsmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_metaObject(self: ptr cQDtls, slot: int): pointer {.exportc: "miqt_exec_callback_QDtls_metaObject ".} =
  var nimfunc = cast[ptr QDtlsmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDtlsmetacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =

  fQDtls_virtualbase_metacast(self.h, param1)

type QDtlsmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdtls_types.QDtls, slot: QDtlsmetacastProc) =
  # TODO check subclass
  var tmp = new QDtlsmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_metacast(self: ptr cQDtls, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDtls_metacast ".} =
  var nimfunc = cast[ptr QDtlsmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDtlsmetacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =

  fQDtls_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDtlsmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdtls_types.QDtls, slot: QDtlsmetacallProc) =
  # TODO check subclass
  var tmp = new QDtlsmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_metacall(self: ptr cQDtls, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDtls_metacall ".} =
  var nimfunc = cast[ptr QDtlsmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDtlsevent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent.QEvent): bool =

  fQDtls_virtualbase_event(self.h, event.h)

type QDtlseventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qdtls_types.QDtls, slot: QDtlseventProc) =
  # TODO check subclass
  var tmp = new QDtlseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_event(self: ptr cQDtls, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDtls_event ".} =
  var nimfunc = cast[ptr QDtlseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDtlseventFilter*(self: gen_qdtls_types.QDtls, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQDtls_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDtlseventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qdtls_types.QDtls, slot: QDtlseventFilterProc) =
  # TODO check subclass
  var tmp = new QDtlseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_eventFilter(self: ptr cQDtls, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDtls_eventFilter ".} =
  var nimfunc = cast[ptr QDtlseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDtlstimerEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent.QTimerEvent): void =

  fQDtls_virtualbase_timerEvent(self.h, event.h)

type QDtlstimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qdtls_types.QDtls, slot: QDtlstimerEventProc) =
  # TODO check subclass
  var tmp = new QDtlstimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_timerEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_timerEvent ".} =
  var nimfunc = cast[ptr QDtlstimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDtlschildEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent.QChildEvent): void =

  fQDtls_virtualbase_childEvent(self.h, event.h)

type QDtlschildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qdtls_types.QDtls, slot: QDtlschildEventProc) =
  # TODO check subclass
  var tmp = new QDtlschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_childEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_childEvent ".} =
  var nimfunc = cast[ptr QDtlschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDtlscustomEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent.QEvent): void =

  fQDtls_virtualbase_customEvent(self.h, event.h)

type QDtlscustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qdtls_types.QDtls, slot: QDtlscustomEventProc) =
  # TODO check subclass
  var tmp = new QDtlscustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_customEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_customEvent ".} =
  var nimfunc = cast[ptr QDtlscustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QDtlsconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject.QMetaMethod): void =

  fQDtls_virtualbase_connectNotify(self.h, signal.h)

type QDtlsconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qdtls_types.QDtls, slot: QDtlsconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDtlsconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_connectNotify(self: ptr cQDtls, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtls_connectNotify ".} =
  var nimfunc = cast[ptr QDtlsconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDtlsdisconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject.QMetaMethod): void =

  fQDtls_virtualbase_disconnectNotify(self.h, signal.h)

type QDtlsdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdtls_types.QDtls, slot: QDtlsdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDtlsdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_disconnectNotify(self: ptr cQDtls, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtls_disconnectNotify ".} =
  var nimfunc = cast[ptr QDtlsdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdtls_types.QDtls): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDtls_staticMetaObject())
proc delete*(self: gen_qdtls_types.QDtls) =
  fcQDtls_delete(self.h)

func init*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, h: ptr cQDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  T(h: h)
proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, ): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =

  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new())
proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, a: cint, s: seq[byte]): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =

  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new2(cint(a), struct_miqt_string(data: cast[cstring](if len(s) == 0: nil else: unsafeAddr s[0]), len: csize_t(len(s)))))
proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =

  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new3(param1.h))
proc operatorAssign*(self: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): void =

  fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters) =
  fcQDtlsClientVerifierGeneratorParameters_delete(self.h)
