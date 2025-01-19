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
{.compile("gen_qdtls.cpp", cflags).}


type QDtlsError* = uint8
const
  QDtlsErrorNoError* = 0
  QDtlsErrorInvalidInputParameters* = 1
  QDtlsErrorInvalidOperation* = 2
  QDtlsErrorUnderlyingSocketError* = 3
  QDtlsErrorRemoteClosedConnectionError* = 4
  QDtlsErrorPeerVerificationError* = 5
  QDtlsErrorTlsInitializationError* = 6
  QDtlsErrorTlsFatalError* = 7
  QDtlsErrorTlsNonFatalError* = 8



type QDtlsHandshakeState* = cint
const
  QDtlsHandshakeNotStarted* = 0
  QDtlsHandshakeInProgress* = 1
  QDtlsPeerVerificationFailed* = 2
  QDtlsHandshakeComplete* = 3



import gen_qdtls_types
export gen_qdtls_types

import
  gen_qcoreevent,
  gen_qcryptographichash,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qssl,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qsslsocket,
  gen_qudpsocket
export
  gen_qcoreevent,
  gen_qcryptographichash,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qssl,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qsslsocket,
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
proc fcQDtlsClientVerifier_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtlsClientVerifier_setCookieGeneratorParameters".}
proc fcQDtlsClientVerifier_cookieGeneratorParameters(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_cookieGeneratorParameters".}
proc fcQDtlsClientVerifier_verifyClient(self: pointer, socket: pointer, dgram: struct_miqt_string, address: pointer, port: cushort): bool {.importc: "QDtlsClientVerifier_verifyClient".}
proc fcQDtlsClientVerifier_verifiedHello(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_verifiedHello".}
proc fcQDtlsClientVerifier_dtlsError(self: pointer, ): cint {.importc: "QDtlsClientVerifier_dtlsError".}
proc fcQDtlsClientVerifier_dtlsErrorString(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_dtlsErrorString".}
proc fcQDtlsClientVerifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr2".}
proc fcQDtlsClientVerifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtlsClientVerifier_tr3".}
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
proc fcQDtls_setPeer3(self: pointer, address: pointer, port: cushort, verificationName: struct_miqt_string): bool {.importc: "QDtls_setPeer3".}
proc fcQDtls_doHandshake2(self: pointer, socket: pointer, dgram: struct_miqt_string): bool {.importc: "QDtls_doHandshake2".}
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


func init*(T: type QDtlsClientVerifier, h: ptr cQDtlsClientVerifier): QDtlsClientVerifier =
  T(h: h)
proc create*(T: type QDtlsClientVerifier, ): QDtlsClientVerifier =

  QDtlsClientVerifier.init(fcQDtlsClientVerifier_new())
proc create*(T: type QDtlsClientVerifier, parent: gen_qobject.QObject): QDtlsClientVerifier =

  QDtlsClientVerifier.init(fcQDtlsClientVerifier_new2(parent.h))
proc metaObject*(self: QDtlsClientVerifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDtlsClientVerifier_metaObject(self.h))

proc metacast*(self: QDtlsClientVerifier, param1: cstring): pointer =

  fcQDtlsClientVerifier_metacast(self.h, param1)

proc metacall*(self: QDtlsClientVerifier, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDtlsClientVerifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDtlsClientVerifier, s: cstring): string =

  let v_ms = fcQDtlsClientVerifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCookieGeneratorParameters*(self: QDtlsClientVerifier, params: QDtlsClientVerifierGeneratorParameters): bool =

  fcQDtlsClientVerifier_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: QDtlsClientVerifier, ): QDtlsClientVerifierGeneratorParameters =

  QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifier_cookieGeneratorParameters(self.h))

proc verifyClient*(self: QDtlsClientVerifier, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte], address: gen_qhostaddress.QHostAddress, port: cushort): bool =

  fcQDtlsClientVerifier_verifyClient(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))), address.h, port)

proc verifiedHello*(self: QDtlsClientVerifier, ): seq[byte] =

  var v_bytearray = fcQDtlsClientVerifier_verifiedHello(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: QDtlsClientVerifier, ): QDtlsError =

  QDtlsError(fcQDtlsClientVerifier_dtlsError(self.h))

proc dtlsErrorString*(self: QDtlsClientVerifier, ): string =

  let v_ms = fcQDtlsClientVerifier_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QDtlsClientVerifier, s: cstring, c: cstring): string =

  let v_ms = fcQDtlsClientVerifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDtlsClientVerifier, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtlsClientVerifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDtlsClientVerifier, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDtlsClientVerifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDtlsClientVerifiermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_metacall(self: ptr cQDtlsClientVerifier, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDtlsClientVerifier_metacall ".} =
  type Cb = proc(super: QDtlsClientVerifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDtlsClientVerifier(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QDtlsClientVerifier, event: gen_qcoreevent.QEvent): bool =


  fQDtlsClientVerifier_virtualbase_event(self.h, event.h)

type QDtlsClientVerifiereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifiereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifiereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_event(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDtlsClientVerifier_event ".} =
  type Cb = proc(super: QDtlsClientVerifiereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDtlsClientVerifier(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDtlsClientVerifier, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDtlsClientVerifier_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDtlsClientVerifiereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_eventFilter(self: ptr cQDtlsClientVerifier, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDtlsClientVerifier_eventFilter ".} =
  type Cb = proc(super: QDtlsClientVerifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDtlsClientVerifier(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDtlsClientVerifier, event: gen_qcoreevent.QTimerEvent): void =


  fQDtlsClientVerifier_virtualbase_timerEvent(self.h, event.h)

type QDtlsClientVerifiertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_timerEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_timerEvent ".} =
  type Cb = proc(super: QDtlsClientVerifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDtlsClientVerifier(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDtlsClientVerifier, event: gen_qcoreevent.QChildEvent): void =


  fQDtlsClientVerifier_virtualbase_childEvent(self.h, event.h)

type QDtlsClientVerifierchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifierchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifierchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_childEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_childEvent ".} =
  type Cb = proc(super: QDtlsClientVerifierchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDtlsClientVerifier(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDtlsClientVerifier, event: gen_qcoreevent.QEvent): void =


  fQDtlsClientVerifier_virtualbase_customEvent(self.h, event.h)

type QDtlsClientVerifiercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifiercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifiercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_customEvent(self: ptr cQDtlsClientVerifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_customEvent ".} =
  type Cb = proc(super: QDtlsClientVerifiercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDtlsClientVerifier(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDtlsClientVerifier, signal: gen_qmetaobject.QMetaMethod): void =


  fQDtlsClientVerifier_virtualbase_connectNotify(self.h, signal.h)

type QDtlsClientVerifierconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_connectNotify(self: ptr cQDtlsClientVerifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_connectNotify ".} =
  type Cb = proc(super: QDtlsClientVerifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDtlsClientVerifier(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDtlsClientVerifier, signal: gen_qmetaobject.QMetaMethod): void =


  fQDtlsClientVerifier_virtualbase_disconnectNotify(self.h, signal.h)

type QDtlsClientVerifierdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDtlsClientVerifier, slot: proc(super: QDtlsClientVerifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsClientVerifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtlsClientVerifier_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtlsClientVerifier_disconnectNotify(self: ptr cQDtlsClientVerifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtlsClientVerifier_disconnectNotify ".} =
  type Cb = proc(super: QDtlsClientVerifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDtlsClientVerifier(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDtlsClientVerifier): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDtlsClientVerifier_staticMetaObject())
proc delete*(self: QDtlsClientVerifier) =
  fcQDtlsClientVerifier_delete(self.h)

func init*(T: type QDtls, h: ptr cQDtls): QDtls =
  T(h: h)
proc create*(T: type QDtls, mode: gen_qsslsocket.QSslSocketSslMode): QDtls =

  QDtls.init(fcQDtls_new(cint(mode)))
proc create*(T: type QDtls, mode: gen_qsslsocket.QSslSocketSslMode, parent: gen_qobject.QObject): QDtls =

  QDtls.init(fcQDtls_new2(cint(mode), parent.h))
proc metaObject*(self: QDtls, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDtls_metaObject(self.h))

proc metacast*(self: QDtls, param1: cstring): pointer =

  fcQDtls_metacast(self.h, param1)

proc metacall*(self: QDtls, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDtls_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDtls, s: cstring): string =

  let v_ms = fcQDtls_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: QDtls, address: gen_qhostaddress.QHostAddress, port: cushort): bool =

  fcQDtls_setPeer(self.h, address.h, port)

proc setPeerVerificationName*(self: QDtls, name: string): bool =

  fcQDtls_setPeerVerificationName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc peerAddress*(self: QDtls, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQDtls_peerAddress(self.h))

proc peerPort*(self: QDtls, ): cushort =

  fcQDtls_peerPort(self.h)

proc peerVerificationName*(self: QDtls, ): string =

  let v_ms = fcQDtls_peerVerificationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sslMode*(self: QDtls, ): gen_qsslsocket.QSslSocketSslMode =

  gen_qsslsocket.QSslSocketSslMode(fcQDtls_sslMode(self.h))

proc setMtuHint*(self: QDtls, mtuHint: cushort): void =

  fcQDtls_setMtuHint(self.h, mtuHint)

proc mtuHint*(self: QDtls, ): cushort =

  fcQDtls_mtuHint(self.h)

proc setCookieGeneratorParameters*(self: QDtls, params: QDtlsClientVerifierGeneratorParameters): bool =

  fcQDtls_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: QDtls, ): QDtlsClientVerifierGeneratorParameters =

  QDtlsClientVerifierGeneratorParameters(h: fcQDtls_cookieGeneratorParameters(self.h))

proc setDtlsConfiguration*(self: QDtls, configuration: gen_qsslconfiguration.QSslConfiguration): bool =

  fcQDtls_setDtlsConfiguration(self.h, configuration.h)

proc dtlsConfiguration*(self: QDtls, ): gen_qsslconfiguration.QSslConfiguration =

  gen_qsslconfiguration.QSslConfiguration(h: fcQDtls_dtlsConfiguration(self.h))

proc handshakeState*(self: QDtls, ): QDtlsHandshakeState =

  QDtlsHandshakeState(fcQDtls_handshakeState(self.h))

proc doHandshake*(self: QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_doHandshake(self.h, socket.h)

proc handleTimeout*(self: QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_handleTimeout(self.h, socket.h)

proc resumeHandshake*(self: QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_resumeHandshake(self.h, socket.h)

proc abortHandshake*(self: QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_abortHandshake(self.h, socket.h)

proc shutdown*(self: QDtls, socket: gen_qudpsocket.QUdpSocket): bool =

  fcQDtls_shutdown(self.h, socket.h)

proc isConnectionEncrypted*(self: QDtls, ): bool =

  fcQDtls_isConnectionEncrypted(self.h)

proc sessionCipher*(self: QDtls, ): gen_qsslcipher.QSslCipher =

  gen_qsslcipher.QSslCipher(h: fcQDtls_sessionCipher(self.h))

proc sessionProtocol*(self: QDtls, ): gen_qssl.QSslSslProtocol =

  gen_qssl.QSslSslProtocol(fcQDtls_sessionProtocol(self.h))

proc writeDatagramEncrypted*(self: QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): clonglong =

  fcQDtls_writeDatagramEncrypted(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc decryptDatagram*(self: QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): seq[byte] =

  var v_bytearray = fcQDtls_decryptDatagram(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: QDtls, ): QDtlsError =

  QDtlsError(fcQDtls_dtlsError(self.h))

proc dtlsErrorString*(self: QDtls, ): string =

  let v_ms = fcQDtls_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc peerVerificationErrors*(self: QDtls, ): seq[gen_qsslerror.QSslError] =

  var v_ma = fcQDtls_peerVerificationErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc ignoreVerificationErrors*(self: QDtls, errorsToIgnore: seq[gen_qsslerror.QSslError]): void =

  var errorsToIgnore_CArray = newSeq[pointer](len(errorsToIgnore))
  for i in 0..<len(errorsToIgnore):
    errorsToIgnore_CArray[i] = errorsToIgnore[i].h

  fcQDtls_ignoreVerificationErrors(self.h, struct_miqt_array(len: csize_t(len(errorsToIgnore)), data: if len(errorsToIgnore) == 0: nil else: addr(errorsToIgnore_CArray[0])))

proc pskRequired*(self: QDtls, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator): void =

  fcQDtls_pskRequired(self.h, authenticator.h)

proc miqt_exec_callback_QDtls_pskRequired(slot: int, authenticator: pointer) {.exportc.} =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator(h: authenticator)


  nimfunc[](slotval1)

proc onpskRequired*(self: QDtls, slot: proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)) =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDtls_connect_pskRequired(self.h, cast[int](addr tmp[]))
proc handshakeTimeout*(self: QDtls, ): void =

  fcQDtls_handshakeTimeout(self.h)

proc miqt_exec_callback_QDtls_handshakeTimeout(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhandshakeTimeout*(self: QDtls, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDtls_connect_handshakeTimeout(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDtls, s: cstring, c: cstring): string =

  let v_ms = fcQDtls_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDtls, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDtls_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer3*(self: QDtls, address: gen_qhostaddress.QHostAddress, port: cushort, verificationName: string): bool =

  fcQDtls_setPeer3(self.h, address.h, port, struct_miqt_string(data: verificationName, len: csize_t(len(verificationName))))

proc doHandshake2*(self: QDtls, socket: gen_qudpsocket.QUdpSocket, dgram: seq[byte]): bool =

  fcQDtls_doHandshake2(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc callVirtualBase_metacall(self: QDtls, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDtls_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDtlsmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDtls, slot: proc(super: QDtlsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDtlsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_metacall(self: ptr cQDtls, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDtls_metacall ".} =
  type Cb = proc(super: QDtlsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDtls(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QDtls, event: gen_qcoreevent.QEvent): bool =


  fQDtls_virtualbase_event(self.h, event.h)

type QDtlseventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDtls, slot: proc(super: QDtlseventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDtlseventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_event(self: ptr cQDtls, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDtls_event ".} =
  type Cb = proc(super: QDtlseventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDtls(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDtls, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDtls_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDtlseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDtls, slot: proc(super: QDtlseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDtlseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_eventFilter(self: ptr cQDtls, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDtls_eventFilter ".} =
  type Cb = proc(super: QDtlseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDtls(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDtls, event: gen_qcoreevent.QTimerEvent): void =


  fQDtls_virtualbase_timerEvent(self.h, event.h)

type QDtlstimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDtls, slot: proc(super: QDtlstimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_timerEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_timerEvent ".} =
  type Cb = proc(super: QDtlstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDtls(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDtls, event: gen_qcoreevent.QChildEvent): void =


  fQDtls_virtualbase_childEvent(self.h, event.h)

type QDtlschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDtls, slot: proc(super: QDtlschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_childEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_childEvent ".} =
  type Cb = proc(super: QDtlschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDtls(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDtls, event: gen_qcoreevent.QEvent): void =


  fQDtls_virtualbase_customEvent(self.h, event.h)

type QDtlscustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDtls, slot: proc(super: QDtlscustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlscustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_customEvent(self: ptr cQDtls, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDtls_customEvent ".} =
  type Cb = proc(super: QDtlscustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDtls(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDtls, signal: gen_qmetaobject.QMetaMethod): void =


  fQDtls_virtualbase_connectNotify(self.h, signal.h)

type QDtlsconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDtls, slot: proc(super: QDtlsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_connectNotify(self: ptr cQDtls, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtls_connectNotify ".} =
  type Cb = proc(super: QDtlsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDtls(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDtls, signal: gen_qmetaobject.QMetaMethod): void =


  fQDtls_virtualbase_disconnectNotify(self.h, signal.h)

type QDtlsdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDtls, slot: proc(super: QDtlsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDtlsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDtls_disconnectNotify(self: ptr cQDtls, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDtls_disconnectNotify ".} =
  type Cb = proc(super: QDtlsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDtls(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDtls): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDtls_staticMetaObject())
proc delete*(self: QDtls) =
  fcQDtls_delete(self.h)

func init*(T: type QDtlsClientVerifierGeneratorParameters, h: ptr cQDtlsClientVerifierGeneratorParameters): QDtlsClientVerifierGeneratorParameters =
  T(h: h)
proc create*(T: type QDtlsClientVerifierGeneratorParameters, ): QDtlsClientVerifierGeneratorParameters =

  QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new())
proc create*(T: type QDtlsClientVerifierGeneratorParameters, a: gen_qcryptographichash.QCryptographicHashAlgorithm, s: seq[byte]): QDtlsClientVerifierGeneratorParameters =

  QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new2(cint(a), struct_miqt_string(data: cast[cstring](if len(s) == 0: nil else: unsafeAddr s[0]), len: csize_t(len(s)))))
proc create*(T: type QDtlsClientVerifierGeneratorParameters, param1: QDtlsClientVerifierGeneratorParameters): QDtlsClientVerifierGeneratorParameters =

  QDtlsClientVerifierGeneratorParameters.init(fcQDtlsClientVerifierGeneratorParameters_new3(param1.h))
proc operatorAssign*(self: QDtlsClientVerifierGeneratorParameters, param1: QDtlsClientVerifierGeneratorParameters): void =

  fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self.h, param1.h)

proc delete*(self: QDtlsClientVerifierGeneratorParameters) =
  fcQDtlsClientVerifierGeneratorParameters_delete(self.h)
