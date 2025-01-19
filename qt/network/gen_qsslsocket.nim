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
{.compile("gen_qsslsocket.cpp", cflags).}


type QSslSocketSslMode* = cint
const
  QSslSocketUnencryptedMode* = 0
  QSslSocketSslClientMode* = 1
  QSslSocketSslServerMode* = 2



type QSslSocketPeerVerifyMode* = cint
const
  QSslSocketVerifyNone* = 0
  QSslSocketQueryPeer* = 1
  QSslSocketVerifyPeer* = 2
  QSslSocketAutoVerifyPeer* = 3



import gen_qsslsocket_types
export gen_qsslsocket_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qocspresponse,
  gen_qregexp,
  gen_qssl,
  gen_qsslcertificate,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslkey,
  gen_qsslpresharedkeyauthenticator,
  gen_qtcpsocket,
  gen_qvariant
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qocspresponse,
  gen_qregexp,
  gen_qssl,
  gen_qsslcertificate,
  gen_qsslcipher,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslkey,
  gen_qsslpresharedkeyauthenticator,
  gen_qtcpsocket,
  gen_qvariant

type cQSslSocket*{.exportc: "QSslSocket", incompleteStruct.} = object

proc fcQSslSocket_new(): ptr cQSslSocket {.importc: "QSslSocket_new".}
proc fcQSslSocket_new2(parent: pointer): ptr cQSslSocket {.importc: "QSslSocket_new2".}
proc fcQSslSocket_metaObject(self: pointer, ): pointer {.importc: "QSslSocket_metaObject".}
proc fcQSslSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslSocket_metacast".}
proc fcQSslSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSslSocket_metacall".}
proc fcQSslSocket_tr(s: cstring): struct_miqt_string {.importc: "QSslSocket_tr".}
proc fcQSslSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QSslSocket_trUtf8".}
proc fcQSslSocket_resume(self: pointer, ): void {.importc: "QSslSocket_resume".}
proc fcQSslSocket_connectToHostEncrypted(self: pointer, hostName: struct_miqt_string, port: cushort): void {.importc: "QSslSocket_connectToHostEncrypted".}
proc fcQSslSocket_connectToHostEncrypted2(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string): void {.importc: "QSslSocket_connectToHostEncrypted2".}
proc fcQSslSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSslSocket_setSocketDescriptor".}
proc fcQSslSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHost".}
proc fcQSslSocket_disconnectFromHost(self: pointer, ): void {.importc: "QSslSocket_disconnectFromHost".}
proc fcQSslSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSslSocket_setSocketOption".}
proc fcQSslSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QSslSocket_socketOption".}
proc fcQSslSocket_mode(self: pointer, ): cint {.importc: "QSslSocket_mode".}
proc fcQSslSocket_isEncrypted(self: pointer, ): bool {.importc: "QSslSocket_isEncrypted".}
proc fcQSslSocket_protocol(self: pointer, ): cint {.importc: "QSslSocket_protocol".}
proc fcQSslSocket_setProtocol(self: pointer, protocol: cint): void {.importc: "QSslSocket_setProtocol".}
proc fcQSslSocket_peerVerifyMode(self: pointer, ): cint {.importc: "QSslSocket_peerVerifyMode".}
proc fcQSslSocket_setPeerVerifyMode(self: pointer, mode: cint): void {.importc: "QSslSocket_setPeerVerifyMode".}
proc fcQSslSocket_peerVerifyDepth(self: pointer, ): cint {.importc: "QSslSocket_peerVerifyDepth".}
proc fcQSslSocket_setPeerVerifyDepth(self: pointer, depth: cint): void {.importc: "QSslSocket_setPeerVerifyDepth".}
proc fcQSslSocket_peerVerifyName(self: pointer, ): struct_miqt_string {.importc: "QSslSocket_peerVerifyName".}
proc fcQSslSocket_setPeerVerifyName(self: pointer, hostName: struct_miqt_string): void {.importc: "QSslSocket_setPeerVerifyName".}
proc fcQSslSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QSslSocket_bytesAvailable".}
proc fcQSslSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QSslSocket_bytesToWrite".}
proc fcQSslSocket_canReadLine(self: pointer, ): bool {.importc: "QSslSocket_canReadLine".}
proc fcQSslSocket_close(self: pointer, ): void {.importc: "QSslSocket_close".}
proc fcQSslSocket_atEnd(self: pointer, ): bool {.importc: "QSslSocket_atEnd".}
proc fcQSslSocket_flush(self: pointer, ): bool {.importc: "QSslSocket_flush".}
proc fcQSslSocket_abort(self: pointer, ): void {.importc: "QSslSocket_abort".}
proc fcQSslSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSslSocket_setReadBufferSize".}
proc fcQSslSocket_encryptedBytesAvailable(self: pointer, ): clonglong {.importc: "QSslSocket_encryptedBytesAvailable".}
proc fcQSslSocket_encryptedBytesToWrite(self: pointer, ): clonglong {.importc: "QSslSocket_encryptedBytesToWrite".}
proc fcQSslSocket_sslConfiguration(self: pointer, ): pointer {.importc: "QSslSocket_sslConfiguration".}
proc fcQSslSocket_setSslConfiguration(self: pointer, config: pointer): void {.importc: "QSslSocket_setSslConfiguration".}
proc fcQSslSocket_setLocalCertificateChain(self: pointer, localChain: struct_miqt_array): void {.importc: "QSslSocket_setLocalCertificateChain".}
proc fcQSslSocket_localCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_localCertificateChain".}
proc fcQSslSocket_setLocalCertificate(self: pointer, certificate: pointer): void {.importc: "QSslSocket_setLocalCertificate".}
proc fcQSslSocket_setLocalCertificateWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setLocalCertificateWithFileName".}
proc fcQSslSocket_localCertificate(self: pointer, ): pointer {.importc: "QSslSocket_localCertificate".}
proc fcQSslSocket_peerCertificate(self: pointer, ): pointer {.importc: "QSslSocket_peerCertificate".}
proc fcQSslSocket_peerCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_peerCertificateChain".}
proc fcQSslSocket_sessionCipher(self: pointer, ): pointer {.importc: "QSslSocket_sessionCipher".}
proc fcQSslSocket_sessionProtocol(self: pointer, ): cint {.importc: "QSslSocket_sessionProtocol".}
proc fcQSslSocket_ocspResponses(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_ocspResponses".}
proc fcQSslSocket_setPrivateKey(self: pointer, key: pointer): void {.importc: "QSslSocket_setPrivateKey".}
proc fcQSslSocket_setPrivateKeyWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKeyWithFileName".}
proc fcQSslSocket_privateKey(self: pointer, ): pointer {.importc: "QSslSocket_privateKey".}
proc fcQSslSocket_ciphers(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_ciphers".}
proc fcQSslSocket_setCiphers(self: pointer, ciphers: struct_miqt_array): void {.importc: "QSslSocket_setCiphers".}
proc fcQSslSocket_setCiphersWithCiphers(self: pointer, ciphers: struct_miqt_string): void {.importc: "QSslSocket_setCiphersWithCiphers".}
proc fcQSslSocket_setDefaultCiphers(ciphers: struct_miqt_array): void {.importc: "QSslSocket_setDefaultCiphers".}
proc fcQSslSocket_defaultCiphers(): struct_miqt_array {.importc: "QSslSocket_defaultCiphers".}
proc fcQSslSocket_supportedCiphers(): struct_miqt_array {.importc: "QSslSocket_supportedCiphers".}
proc fcQSslSocket_addCaCertificates(self: pointer, path: struct_miqt_string): bool {.importc: "QSslSocket_addCaCertificates".}
proc fcQSslSocket_addCaCertificate(self: pointer, certificate: pointer): void {.importc: "QSslSocket_addCaCertificate".}
proc fcQSslSocket_addCaCertificatesWithCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslSocket_addCaCertificatesWithCertificates".}
proc fcQSslSocket_setCaCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslSocket_setCaCertificates".}
proc fcQSslSocket_caCertificates(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_caCertificates".}
proc fcQSslSocket_addDefaultCaCertificates(path: struct_miqt_string): bool {.importc: "QSslSocket_addDefaultCaCertificates".}
proc fcQSslSocket_addDefaultCaCertificate(certificate: pointer): void {.importc: "QSslSocket_addDefaultCaCertificate".}
proc fcQSslSocket_addDefaultCaCertificatesWithCertificates(certificates: struct_miqt_array): void {.importc: "QSslSocket_addDefaultCaCertificatesWithCertificates".}
proc fcQSslSocket_setDefaultCaCertificates(certificates: struct_miqt_array): void {.importc: "QSslSocket_setDefaultCaCertificates".}
proc fcQSslSocket_defaultCaCertificates(): struct_miqt_array {.importc: "QSslSocket_defaultCaCertificates".}
proc fcQSslSocket_systemCaCertificates(): struct_miqt_array {.importc: "QSslSocket_systemCaCertificates".}
proc fcQSslSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForConnected".}
proc fcQSslSocket_waitForEncrypted(self: pointer, ): bool {.importc: "QSslSocket_waitForEncrypted".}
proc fcQSslSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForReadyRead".}
proc fcQSslSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForBytesWritten".}
proc fcQSslSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForDisconnected".}
proc fcQSslSocket_sslErrors(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_sslErrors".}
proc fcQSslSocket_sslHandshakeErrors(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_sslHandshakeErrors".}
proc fcQSslSocket_supportsSsl(): bool {.importc: "QSslSocket_supportsSsl".}
proc fcQSslSocket_sslLibraryVersionNumber(): clong {.importc: "QSslSocket_sslLibraryVersionNumber".}
proc fcQSslSocket_sslLibraryVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryVersionString".}
proc fcQSslSocket_sslLibraryBuildVersionNumber(): clong {.importc: "QSslSocket_sslLibraryBuildVersionNumber".}
proc fcQSslSocket_sslLibraryBuildVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryBuildVersionString".}
proc fcQSslSocket_ignoreSslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_ignoreSslErrors".}
proc fcQSslSocket_startClientEncryption(self: pointer, ): void {.importc: "QSslSocket_startClientEncryption".}
proc fcQSslSocket_startServerEncryption(self: pointer, ): void {.importc: "QSslSocket_startServerEncryption".}
proc fcQSslSocket_ignoreSslErrors2(self: pointer, ): void {.importc: "QSslSocket_ignoreSslErrors2".}
proc fcQSslSocket_encrypted(self: pointer, ): void {.importc: "QSslSocket_encrypted".}
proc fQSslSocket_connect_encrypted(self: pointer, slot: int) {.importc: "QSslSocket_connect_encrypted".}
proc fcQSslSocket_peerVerifyError(self: pointer, error: pointer): void {.importc: "QSslSocket_peerVerifyError".}
proc fQSslSocket_connect_peerVerifyError(self: pointer, slot: int) {.importc: "QSslSocket_connect_peerVerifyError".}
proc fcQSslSocket_sslErrorsWithErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_sslErrorsWithErrors".}
proc fQSslSocket_connect_sslErrorsWithErrors(self: pointer, slot: int) {.importc: "QSslSocket_connect_sslErrorsWithErrors".}
proc fcQSslSocket_modeChanged(self: pointer, newMode: cint): void {.importc: "QSslSocket_modeChanged".}
proc fQSslSocket_connect_modeChanged(self: pointer, slot: int) {.importc: "QSslSocket_connect_modeChanged".}
proc fcQSslSocket_encryptedBytesWritten(self: pointer, totalBytes: clonglong): void {.importc: "QSslSocket_encryptedBytesWritten".}
proc fQSslSocket_connect_encryptedBytesWritten(self: pointer, slot: int) {.importc: "QSslSocket_connect_encryptedBytesWritten".}
proc fcQSslSocket_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QSslSocket_preSharedKeyAuthenticationRequired".}
proc fQSslSocket_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QSslSocket_connect_preSharedKeyAuthenticationRequired".}
proc fcQSslSocket_newSessionTicketReceived(self: pointer, ): void {.importc: "QSslSocket_newSessionTicketReceived".}
proc fQSslSocket_connect_newSessionTicketReceived(self: pointer, slot: int) {.importc: "QSslSocket_connect_newSessionTicketReceived".}
proc fcQSslSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslSocket_tr2".}
proc fcQSslSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslSocket_tr3".}
proc fcQSslSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslSocket_trUtf82".}
proc fcQSslSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslSocket_trUtf83".}
proc fcQSslSocket_connectToHostEncrypted3(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted3".}
proc fcQSslSocket_connectToHostEncrypted4(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted4".}
proc fcQSslSocket_connectToHostEncrypted42(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted42".}
proc fcQSslSocket_connectToHostEncrypted5(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted5".}
proc fcQSslSocket_setLocalCertificate2(self: pointer, fileName: struct_miqt_string, format: cint): void {.importc: "QSslSocket_setLocalCertificate2".}
proc fcQSslSocket_setPrivateKey2(self: pointer, fileName: struct_miqt_string, algorithm: cint): void {.importc: "QSslSocket_setPrivateKey2".}
proc fcQSslSocket_setPrivateKey3(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint): void {.importc: "QSslSocket_setPrivateKey3".}
proc fcQSslSocket_setPrivateKey4(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint, passPhrase: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKey4".}
proc fcQSslSocket_addCaCertificates2(self: pointer, path: struct_miqt_string, format: cint): bool {.importc: "QSslSocket_addCaCertificates2".}
proc fcQSslSocket_addCaCertificates3(self: pointer, path: struct_miqt_string, format: cint, syntax: cint): bool {.importc: "QSslSocket_addCaCertificates3".}
proc fcQSslSocket_addDefaultCaCertificates2(path: struct_miqt_string, format: cint): bool {.importc: "QSslSocket_addDefaultCaCertificates2".}
proc fcQSslSocket_addDefaultCaCertificates3(path: struct_miqt_string, format: cint, syntax: cint): bool {.importc: "QSslSocket_addDefaultCaCertificates3".}
proc fcQSslSocket_waitForEncrypted1(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForEncrypted1".}
proc fQSslSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSslSocket_virtualbase_metacall".}
proc fcQSslSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_metacall".}
proc fQSslSocket_virtualbase_resume(self: pointer, ): void{.importc: "QSslSocket_virtualbase_resume".}
proc fcQSslSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_resume".}
proc fQSslSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QSslSocket_virtualbase_setSocketDescriptor".}
proc fcQSslSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setSocketDescriptor".}
proc fQSslSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void{.importc: "QSslSocket_virtualbase_connectToHost".}
proc fcQSslSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_connectToHost".}
proc fQSslSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QSslSocket_virtualbase_disconnectFromHost".}
proc fcQSslSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_disconnectFromHost".}
proc fQSslSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QSslSocket_virtualbase_setSocketOption".}
proc fcQSslSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setSocketOption".}
proc fQSslSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QSslSocket_virtualbase_socketOption".}
proc fcQSslSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_socketOption".}
proc fQSslSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_bytesAvailable".}
proc fcQSslSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_bytesAvailable".}
proc fQSslSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_bytesToWrite".}
proc fcQSslSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_bytesToWrite".}
proc fQSslSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_canReadLine".}
proc fcQSslSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_canReadLine".}
proc fQSslSocket_virtualbase_close(self: pointer, ): void{.importc: "QSslSocket_virtualbase_close".}
proc fcQSslSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_close".}
proc fQSslSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_atEnd".}
proc fcQSslSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_atEnd".}
proc fQSslSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QSslSocket_virtualbase_setReadBufferSize".}
proc fcQSslSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setReadBufferSize".}
proc fQSslSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForConnected".}
proc fcQSslSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForConnected".}
proc fQSslSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForReadyRead".}
proc fcQSslSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForReadyRead".}
proc fQSslSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForBytesWritten".}
proc fcQSslSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForBytesWritten".}
proc fQSslSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForDisconnected".}
proc fcQSslSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForDisconnected".}
proc fQSslSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSslSocket_virtualbase_readData".}
proc fcQSslSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_readData".}
proc fQSslSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSslSocket_virtualbase_writeData".}
proc fcQSslSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_writeData".}
proc fQSslSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QSslSocket_virtualbase_socketDescriptor".}
proc fcQSslSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_socketDescriptor".}
proc fQSslSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_isSequential".}
proc fcQSslSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_isSequential".}
proc fQSslSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSslSocket_virtualbase_readLineData".}
proc fcQSslSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_readLineData".}
proc fQSslSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QSslSocket_virtualbase_open".}
proc fcQSslSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_open".}
proc fQSslSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_pos".}
proc fcQSslSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_pos".}
proc fQSslSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_size".}
proc fcQSslSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_size".}
proc fQSslSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QSslSocket_virtualbase_seek".}
proc fcQSslSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_seek".}
proc fQSslSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_reset".}
proc fcQSslSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_reset".}
proc fQSslSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSslSocket_virtualbase_event".}
proc fcQSslSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_event".}
proc fQSslSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSslSocket_virtualbase_eventFilter".}
proc fcQSslSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_eventFilter".}
proc fQSslSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_timerEvent".}
proc fcQSslSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_timerEvent".}
proc fQSslSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_childEvent".}
proc fcQSslSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_childEvent".}
proc fQSslSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_customEvent".}
proc fcQSslSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_customEvent".}
proc fQSslSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSslSocket_virtualbase_connectNotify".}
proc fcQSslSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_connectNotify".}
proc fQSslSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSslSocket_virtualbase_disconnectNotify".}
proc fcQSslSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_disconnectNotify".}
proc fcQSslSocket_staticMetaObject(): pointer {.importc: "QSslSocket_staticMetaObject".}
proc fcQSslSocket_delete(self: pointer) {.importc: "QSslSocket_delete".}


func init*(T: type QSslSocket, h: ptr cQSslSocket): QSslSocket =
  T(h: h)
proc create*(T: type QSslSocket, ): QSslSocket =

  QSslSocket.init(fcQSslSocket_new())
proc create*(T: type QSslSocket, parent: gen_qobject.QObject): QSslSocket =

  QSslSocket.init(fcQSslSocket_new2(parent.h))
proc metaObject*(self: QSslSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSslSocket_metaObject(self.h))

proc metacast*(self: QSslSocket, param1: cstring): pointer =

  fcQSslSocket_metacast(self.h, param1)

proc metacall*(self: QSslSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSslSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSslSocket, s: cstring): string =

  let v_ms = fcQSslSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSslSocket, s: cstring): string =

  let v_ms = fcQSslSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resume*(self: QSslSocket, ): void =

  fcQSslSocket_resume(self.h)

proc connectToHostEncrypted*(self: QSslSocket, hostName: string, port: cushort): void =

  fcQSslSocket_connectToHostEncrypted(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc connectToHostEncrypted2*(self: QSslSocket, hostName: string, port: cushort, sslPeerName: string): void =

  fcQSslSocket_connectToHostEncrypted2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))))

proc setSocketDescriptor*(self: QSslSocket, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool =

  fcQSslSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc connectToHost*(self: QSslSocket, hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =

  fcQSslSocket_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

proc disconnectFromHost*(self: QSslSocket, ): void =

  fcQSslSocket_disconnectFromHost(self.h)

proc setSocketOption*(self: QSslSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =

  fcQSslSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: QSslSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSslSocket_socketOption(self.h, cint(option)))

proc mode*(self: QSslSocket, ): QSslSocketSslMode =

  QSslSocketSslMode(fcQSslSocket_mode(self.h))

proc isEncrypted*(self: QSslSocket, ): bool =

  fcQSslSocket_isEncrypted(self.h)

proc protocol*(self: QSslSocket, ): gen_qssl.QSslSslProtocol =

  gen_qssl.QSslSslProtocol(fcQSslSocket_protocol(self.h))

proc setProtocol*(self: QSslSocket, protocol: gen_qssl.QSslSslProtocol): void =

  fcQSslSocket_setProtocol(self.h, cint(protocol))

proc peerVerifyMode*(self: QSslSocket, ): QSslSocketPeerVerifyMode =

  QSslSocketPeerVerifyMode(fcQSslSocket_peerVerifyMode(self.h))

proc setPeerVerifyMode*(self: QSslSocket, mode: QSslSocketPeerVerifyMode): void =

  fcQSslSocket_setPeerVerifyMode(self.h, cint(mode))

proc peerVerifyDepth*(self: QSslSocket, ): cint =

  fcQSslSocket_peerVerifyDepth(self.h)

proc setPeerVerifyDepth*(self: QSslSocket, depth: cint): void =

  fcQSslSocket_setPeerVerifyDepth(self.h, depth)

proc peerVerifyName*(self: QSslSocket, ): string =

  let v_ms = fcQSslSocket_peerVerifyName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeerVerifyName*(self: QSslSocket, hostName: string): void =

  fcQSslSocket_setPeerVerifyName(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc bytesAvailable*(self: QSslSocket, ): clonglong =

  fcQSslSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: QSslSocket, ): clonglong =

  fcQSslSocket_bytesToWrite(self.h)

proc canReadLine*(self: QSslSocket, ): bool =

  fcQSslSocket_canReadLine(self.h)

proc close*(self: QSslSocket, ): void =

  fcQSslSocket_close(self.h)

proc atEnd*(self: QSslSocket, ): bool =

  fcQSslSocket_atEnd(self.h)

proc flush*(self: QSslSocket, ): bool =

  fcQSslSocket_flush(self.h)

proc abort*(self: QSslSocket, ): void =

  fcQSslSocket_abort(self.h)

proc setReadBufferSize*(self: QSslSocket, size: clonglong): void =

  fcQSslSocket_setReadBufferSize(self.h, size)

proc encryptedBytesAvailable*(self: QSslSocket, ): clonglong =

  fcQSslSocket_encryptedBytesAvailable(self.h)

proc encryptedBytesToWrite*(self: QSslSocket, ): clonglong =

  fcQSslSocket_encryptedBytesToWrite(self.h)

proc sslConfiguration*(self: QSslSocket, ): gen_qsslconfiguration.QSslConfiguration =

  gen_qsslconfiguration.QSslConfiguration(h: fcQSslSocket_sslConfiguration(self.h))

proc setSslConfiguration*(self: QSslSocket, config: gen_qsslconfiguration.QSslConfiguration): void =

  fcQSslSocket_setSslConfiguration(self.h, config.h)

proc setLocalCertificateChain*(self: QSslSocket, localChain: seq[gen_qsslcertificate.QSslCertificate]): void =

  var localChain_CArray = newSeq[pointer](len(localChain))
  for i in 0..<len(localChain):
    localChain_CArray[i] = localChain[i].h

  fcQSslSocket_setLocalCertificateChain(self.h, struct_miqt_array(len: csize_t(len(localChain)), data: if len(localChain) == 0: nil else: addr(localChain_CArray[0])))

proc localCertificateChain*(self: QSslSocket, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQSslSocket_localCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc setLocalCertificate*(self: QSslSocket, certificate: gen_qsslcertificate.QSslCertificate): void =

  fcQSslSocket_setLocalCertificate(self.h, certificate.h)

proc setLocalCertificateWithFileName*(self: QSslSocket, fileName: string): void =

  fcQSslSocket_setLocalCertificateWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc localCertificate*(self: QSslSocket, ): gen_qsslcertificate.QSslCertificate =

  gen_qsslcertificate.QSslCertificate(h: fcQSslSocket_localCertificate(self.h))

proc peerCertificate*(self: QSslSocket, ): gen_qsslcertificate.QSslCertificate =

  gen_qsslcertificate.QSslCertificate(h: fcQSslSocket_peerCertificate(self.h))

proc peerCertificateChain*(self: QSslSocket, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQSslSocket_peerCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc sessionCipher*(self: QSslSocket, ): gen_qsslcipher.QSslCipher =

  gen_qsslcipher.QSslCipher(h: fcQSslSocket_sessionCipher(self.h))

proc sessionProtocol*(self: QSslSocket, ): gen_qssl.QSslSslProtocol =

  gen_qssl.QSslSslProtocol(fcQSslSocket_sessionProtocol(self.h))

proc ocspResponses*(self: QSslSocket, ): seq[gen_qocspresponse.QOcspResponse] =

  var v_ma = fcQSslSocket_ocspResponses(self.h)
  var vx_ret = newSeq[gen_qocspresponse.QOcspResponse](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qocspresponse.QOcspResponse(h: v_outCast[i])
  vx_ret

proc setPrivateKey*(self: QSslSocket, key: gen_qsslkey.QSslKey): void =

  fcQSslSocket_setPrivateKey(self.h, key.h)

proc setPrivateKeyWithFileName*(self: QSslSocket, fileName: string): void =

  fcQSslSocket_setPrivateKeyWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc privateKey*(self: QSslSocket, ): gen_qsslkey.QSslKey =

  gen_qsslkey.QSslKey(h: fcQSslSocket_privateKey(self.h))

proc ciphers*(self: QSslSocket, ): seq[gen_qsslcipher.QSslCipher] =

  var v_ma = fcQSslSocket_ciphers(self.h)
  var vx_ret = newSeq[gen_qsslcipher.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher.QSslCipher(h: v_outCast[i])
  vx_ret

proc setCiphers*(self: QSslSocket, ciphers: seq[gen_qsslcipher.QSslCipher]): void =

  var ciphers_CArray = newSeq[pointer](len(ciphers))
  for i in 0..<len(ciphers):
    ciphers_CArray[i] = ciphers[i].h

  fcQSslSocket_setCiphers(self.h, struct_miqt_array(len: csize_t(len(ciphers)), data: if len(ciphers) == 0: nil else: addr(ciphers_CArray[0])))

proc setCiphersWithCiphers*(self: QSslSocket, ciphers: string): void =

  fcQSslSocket_setCiphersWithCiphers(self.h, struct_miqt_string(data: ciphers, len: csize_t(len(ciphers))))

proc setDefaultCiphers*(_: type QSslSocket, ciphers: seq[gen_qsslcipher.QSslCipher]): void =

  var ciphers_CArray = newSeq[pointer](len(ciphers))
  for i in 0..<len(ciphers):
    ciphers_CArray[i] = ciphers[i].h

  fcQSslSocket_setDefaultCiphers(struct_miqt_array(len: csize_t(len(ciphers)), data: if len(ciphers) == 0: nil else: addr(ciphers_CArray[0])))

proc defaultCiphers*(_: type QSslSocket, ): seq[gen_qsslcipher.QSslCipher] =

  var v_ma = fcQSslSocket_defaultCiphers()
  var vx_ret = newSeq[gen_qsslcipher.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher.QSslCipher(h: v_outCast[i])
  vx_ret

proc supportedCiphers*(_: type QSslSocket, ): seq[gen_qsslcipher.QSslCipher] =

  var v_ma = fcQSslSocket_supportedCiphers()
  var vx_ret = newSeq[gen_qsslcipher.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher.QSslCipher(h: v_outCast[i])
  vx_ret

proc addCaCertificates*(self: QSslSocket, path: string): bool =

  fcQSslSocket_addCaCertificates(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc addCaCertificate*(self: QSslSocket, certificate: gen_qsslcertificate.QSslCertificate): void =

  fcQSslSocket_addCaCertificate(self.h, certificate.h)

proc addCaCertificatesWithCertificates*(self: QSslSocket, certificates: seq[gen_qsslcertificate.QSslCertificate]): void =

  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_addCaCertificatesWithCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc setCaCertificates*(self: QSslSocket, certificates: seq[gen_qsslcertificate.QSslCertificate]): void =

  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_setCaCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc caCertificates*(self: QSslSocket, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQSslSocket_caCertificates(self.h)
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc addDefaultCaCertificates*(_: type QSslSocket, path: string): bool =

  fcQSslSocket_addDefaultCaCertificates(struct_miqt_string(data: path, len: csize_t(len(path))))

proc addDefaultCaCertificate*(_: type QSslSocket, certificate: gen_qsslcertificate.QSslCertificate): void =

  fcQSslSocket_addDefaultCaCertificate(certificate.h)

proc addDefaultCaCertificatesWithCertificates*(_: type QSslSocket, certificates: seq[gen_qsslcertificate.QSslCertificate]): void =

  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_addDefaultCaCertificatesWithCertificates(struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc setDefaultCaCertificates*(_: type QSslSocket, certificates: seq[gen_qsslcertificate.QSslCertificate]): void =

  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_setDefaultCaCertificates(struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc defaultCaCertificates*(_: type QSslSocket, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQSslSocket_defaultCaCertificates()
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc systemCaCertificates*(_: type QSslSocket, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQSslSocket_systemCaCertificates()
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc waitForConnected*(self: QSslSocket, msecs: cint): bool =

  fcQSslSocket_waitForConnected(self.h, msecs)

proc waitForEncrypted*(self: QSslSocket, ): bool =

  fcQSslSocket_waitForEncrypted(self.h)

proc waitForReadyRead*(self: QSslSocket, msecs: cint): bool =

  fcQSslSocket_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: QSslSocket, msecs: cint): bool =

  fcQSslSocket_waitForBytesWritten(self.h, msecs)

proc waitForDisconnected*(self: QSslSocket, msecs: cint): bool =

  fcQSslSocket_waitForDisconnected(self.h, msecs)

proc sslErrors*(self: QSslSocket, ): seq[gen_qsslerror.QSslError] =

  var v_ma = fcQSslSocket_sslErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc sslHandshakeErrors*(self: QSslSocket, ): seq[gen_qsslerror.QSslError] =

  var v_ma = fcQSslSocket_sslHandshakeErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc supportsSsl*(_: type QSslSocket, ): bool =

  fcQSslSocket_supportsSsl()

proc sslLibraryVersionNumber*(_: type QSslSocket, ): clong =

  fcQSslSocket_sslLibraryVersionNumber()

proc sslLibraryVersionString*(_: type QSslSocket, ): string =

  let v_ms = fcQSslSocket_sslLibraryVersionString()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sslLibraryBuildVersionNumber*(_: type QSslSocket, ): clong =

  fcQSslSocket_sslLibraryBuildVersionNumber()

proc sslLibraryBuildVersionString*(_: type QSslSocket, ): string =

  let v_ms = fcQSslSocket_sslLibraryBuildVersionString()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ignoreSslErrors*(self: QSslSocket, errors: seq[gen_qsslerror.QSslError]): void =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_ignoreSslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc startClientEncryption*(self: QSslSocket, ): void =

  fcQSslSocket_startClientEncryption(self.h)

proc startServerEncryption*(self: QSslSocket, ): void =

  fcQSslSocket_startServerEncryption(self.h)

proc ignoreSslErrors2*(self: QSslSocket, ): void =

  fcQSslSocket_ignoreSslErrors2(self.h)

proc encrypted*(self: QSslSocket, ): void =

  fcQSslSocket_encrypted(self.h)

proc miqt_exec_callback_QSslSocket_encrypted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onencrypted*(self: QSslSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_encrypted(self.h, cast[int](addr tmp[]))
proc peerVerifyError*(self: QSslSocket, error: gen_qsslerror.QSslError): void =

  fcQSslSocket_peerVerifyError(self.h, error.h)

proc miqt_exec_callback_QSslSocket_peerVerifyError(slot: int, error: pointer) {.exportc.} =
  type Cb = proc(error: gen_qsslerror.QSslError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsslerror.QSslError(h: error)


  nimfunc[](slotval1)

proc onpeerVerifyError*(self: QSslSocket, slot: proc(error: gen_qsslerror.QSslError)) =
  type Cb = proc(error: gen_qsslerror.QSslError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_peerVerifyError(self.h, cast[int](addr tmp[]))
proc sslErrorsWithErrors*(self: QSslSocket, errors: seq[gen_qsslerror.QSslError]): void =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_sslErrorsWithErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc miqt_exec_callback_QSslSocket_sslErrorsWithErrors(slot: int, errors: struct_miqt_array) {.exportc.} =
  type Cb = proc(errors: seq[gen_qsslerror.QSslError])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror.QSslError(h: verrors_outCast[i])
  let slotval1 = verrorsx_ret


  nimfunc[](slotval1)

proc onsslErrorsWithErrors*(self: QSslSocket, slot: proc(errors: seq[gen_qsslerror.QSslError])) =
  type Cb = proc(errors: seq[gen_qsslerror.QSslError])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_sslErrorsWithErrors(self.h, cast[int](addr tmp[]))
proc modeChanged*(self: QSslSocket, newMode: QSslSocketSslMode): void =

  fcQSslSocket_modeChanged(self.h, cint(newMode))

proc miqt_exec_callback_QSslSocket_modeChanged(slot: int, newMode: cint) {.exportc.} =
  type Cb = proc(newMode: QSslSocketSslMode)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QSslSocketSslMode(newMode)


  nimfunc[](slotval1)

proc onmodeChanged*(self: QSslSocket, slot: proc(newMode: QSslSocketSslMode)) =
  type Cb = proc(newMode: QSslSocketSslMode)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_modeChanged(self.h, cast[int](addr tmp[]))
proc encryptedBytesWritten*(self: QSslSocket, totalBytes: clonglong): void =

  fcQSslSocket_encryptedBytesWritten(self.h, totalBytes)

proc miqt_exec_callback_QSslSocket_encryptedBytesWritten(slot: int, totalBytes: clonglong) {.exportc.} =
  type Cb = proc(totalBytes: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = totalBytes


  nimfunc[](slotval1)

proc onencryptedBytesWritten*(self: QSslSocket, slot: proc(totalBytes: clonglong)) =
  type Cb = proc(totalBytes: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_encryptedBytesWritten(self.h, cast[int](addr tmp[]))
proc preSharedKeyAuthenticationRequired*(self: QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator): void =

  fcQSslSocket_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

proc miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.exportc.} =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator(h: authenticator)


  nimfunc[](slotval1)

proc onpreSharedKeyAuthenticationRequired*(self: QSslSocket, slot: proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)) =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc newSessionTicketReceived*(self: QSslSocket, ): void =

  fcQSslSocket_newSessionTicketReceived(self.h)

proc miqt_exec_callback_QSslSocket_newSessionTicketReceived(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnewSessionTicketReceived*(self: QSslSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSslSocket_connect_newSessionTicketReceived(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSslSocket, s: cstring, c: cstring): string =

  let v_ms = fcQSslSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSslSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSslSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSslSocket, s: cstring, c: cstring): string =

  let v_ms = fcQSslSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSslSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSslSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToHostEncrypted3*(self: QSslSocket, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQSslSocket_connectToHostEncrypted3(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode))

proc connectToHostEncrypted4*(self: QSslSocket, hostName: string, port: cushort, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =

  fcQSslSocket_connectToHostEncrypted4(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHostEncrypted42*(self: QSslSocket, hostName: string, port: cushort, sslPeerName: string, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQSslSocket_connectToHostEncrypted42(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))), cint(mode))

proc connectToHostEncrypted5*(self: QSslSocket, hostName: string, port: cushort, sslPeerName: string, mode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =

  fcQSslSocket_connectToHostEncrypted5(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))), cint(mode), cint(protocol))

proc setLocalCertificate2*(self: QSslSocket, fileName: string, format: gen_qssl.QSslEncodingFormat): void =

  fcQSslSocket_setLocalCertificate2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format))

proc setPrivateKey2*(self: QSslSocket, fileName: string, algorithm: gen_qssl.QSslKeyAlgorithm): void =

  fcQSslSocket_setPrivateKey2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm))

proc setPrivateKey3*(self: QSslSocket, fileName: string, algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat): void =

  fcQSslSocket_setPrivateKey3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm), cint(format))

proc setPrivateKey4*(self: QSslSocket, fileName: string, algorithm: gen_qssl.QSslKeyAlgorithm, format: gen_qssl.QSslEncodingFormat, passPhrase: seq[byte]): void =

  fcQSslSocket_setPrivateKey4(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm), cint(format), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))

proc addCaCertificates2*(self: QSslSocket, path: string, format: gen_qssl.QSslEncodingFormat): bool =

  fcQSslSocket_addCaCertificates2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))

proc addCaCertificates3*(self: QSslSocket, path: string, format: gen_qssl.QSslEncodingFormat, syntax: gen_qregexp.QRegExpPatternSyntax): bool =

  fcQSslSocket_addCaCertificates3(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))

proc addDefaultCaCertificates2*(_: type QSslSocket, path: string, format: gen_qssl.QSslEncodingFormat): bool =

  fcQSslSocket_addDefaultCaCertificates2(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))

proc addDefaultCaCertificates3*(_: type QSslSocket, path: string, format: gen_qssl.QSslEncodingFormat, syntax: gen_qregexp.QRegExpPatternSyntax): bool =

  fcQSslSocket_addDefaultCaCertificates3(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))

proc waitForEncrypted1*(self: QSslSocket, msecs: cint): bool =

  fcQSslSocket_waitForEncrypted1(self.h, msecs)

proc callVirtualBase_metacall(self: QSslSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSslSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSslSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSslSocket, slot: proc(super: QSslSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_metacall(self: ptr cQSslSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSslSocket_metacall ".} =
  type Cb = proc(super: QSslSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSslSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resume(self: QSslSocket, ): void =


  fQSslSocket_virtualbase_resume(self.h)

type QSslSocketresumeBase* = proc(): void
proc onresume*(self: QSslSocket, slot: proc(super: QSslSocketresumeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketresumeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_resume(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_resume ".} =
  type Cb = proc(super: QSslSocketresumeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resume(QSslSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setSocketDescriptor(self: QSslSocket, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool =


  fQSslSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QSslSocketsetSocketDescriptorBase* = proc(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
proc onsetSocketDescriptor*(self: QSslSocket, slot: proc(super: QSslSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setSocketDescriptor(self: ptr cQSslSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_setSocketDescriptor ".} =
  type Cb = proc(super: QSslSocketsetSocketDescriptorBase, socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint, state: gen_qabstractsocket.QAbstractSocketSocketState, openMode: gen_qiodevice.QIODeviceOpenModeFlag): auto =
    callVirtualBase_setSocketDescriptor(QSslSocket(h: self), socketDescriptor, state, openMode)
  let slotval1 = socketDescriptor

  let slotval2 = gen_qabstractsocket.QAbstractSocketSocketState(state)

  let slotval3 = gen_qiodevice.QIODeviceOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_connectToHost(self: QSslSocket, hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void =


  fQSslSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

type QSslSocketconnectToHostBase* = proc(hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
proc onconnectToHost*(self: QSslSocket, slot: proc(super: QSslSocketconnectToHostBase, hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketconnectToHostBase, hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_connectToHost(self: ptr cQSslSocket, slot: int, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QSslSocket_connectToHost ".} =
  type Cb = proc(super: QSslSocketconnectToHostBase, hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hostName: string, port: cushort, openMode: gen_qiodevice.QIODeviceOpenModeFlag, protocol: gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol): auto =
    callVirtualBase_connectToHost(QSslSocket(h: self), hostName, port, openMode, protocol)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = gen_qiodevice.QIODeviceOpenModeFlag(openMode)

  let slotval4 = gen_qabstractsocket.QAbstractSocketNetworkLayerProtocol(protocol)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_disconnectFromHost(self: QSslSocket, ): void =


  fQSslSocket_virtualbase_disconnectFromHost(self.h)

type QSslSocketdisconnectFromHostBase* = proc(): void
proc ondisconnectFromHost*(self: QSslSocket, slot: proc(super: QSslSocketdisconnectFromHostBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketdisconnectFromHostBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_disconnectFromHost(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_disconnectFromHost ".} =
  type Cb = proc(super: QSslSocketdisconnectFromHostBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_disconnectFromHost(QSslSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setSocketOption(self: QSslSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void =


  fQSslSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QSslSocketsetSocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
proc onsetSocketOption*(self: QSslSocket, slot: proc(super: QSslSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setSocketOption(self: ptr cQSslSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_setSocketOption ".} =
  type Cb = proc(super: QSslSocketsetSocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setSocketOption(QSslSocket(h: self), option, value)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_socketOption(self: QSslSocket, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSslSocket_virtualbase_socketOption(self.h, cint(option)))

type QSslSocketsocketOptionBase* = proc(option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
proc onsocketOption*(self: QSslSocket, slot: proc(super: QSslSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_socketOption(self: ptr cQSslSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QSslSocket_socketOption ".} =
  type Cb = proc(super: QSslSocketsocketOptionBase, option: gen_qabstractsocket.QAbstractSocketSocketOption): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qabstractsocket.QAbstractSocketSocketOption): auto =
    callVirtualBase_socketOption(QSslSocket(h: self), option)
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketOption(option)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_bytesAvailable(self: QSslSocket, ): clonglong =


  fQSslSocket_virtualbase_bytesAvailable(self.h)

type QSslSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QSslSocket, slot: proc(super: QSslSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_bytesAvailable(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_bytesAvailable ".} =
  type Cb = proc(super: QSslSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QSslSocket, ): clonglong =


  fQSslSocket_virtualbase_bytesToWrite(self.h)

type QSslSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QSslSocket, slot: proc(super: QSslSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_bytesToWrite(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_bytesToWrite ".} =
  type Cb = proc(super: QSslSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QSslSocket, ): bool =


  fQSslSocket_virtualbase_canReadLine(self.h)

type QSslSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QSslSocket, slot: proc(super: QSslSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_canReadLine(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_canReadLine ".} =
  type Cb = proc(super: QSslSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_close(self: QSslSocket, ): void =


  fQSslSocket_virtualbase_close(self.h)

type QSslSocketcloseBase* = proc(): void
proc onclose*(self: QSslSocket, slot: proc(super: QSslSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_close(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_close ".} =
  type Cb = proc(super: QSslSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QSslSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_atEnd(self: QSslSocket, ): bool =


  fQSslSocket_virtualbase_atEnd(self.h)

type QSslSocketatEndBase* = proc(): bool
proc onatEnd*(self: QSslSocket, slot: proc(super: QSslSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_atEnd(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_atEnd ".} =
  type Cb = proc(super: QSslSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setReadBufferSize(self: QSslSocket, size: clonglong): void =


  fQSslSocket_virtualbase_setReadBufferSize(self.h, size)

type QSslSocketsetReadBufferSizeBase* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: QSslSocket, slot: proc(super: QSslSocketsetReadBufferSizeBase, size: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsetReadBufferSizeBase, size: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setReadBufferSize(self: ptr cQSslSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QSslSocket_setReadBufferSize ".} =
  type Cb = proc(super: QSslSocketsetReadBufferSizeBase, size: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: clonglong): auto =
    callVirtualBase_setReadBufferSize(QSslSocket(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_waitForConnected(self: QSslSocket, msecs: cint): bool =


  fQSslSocket_virtualbase_waitForConnected(self.h, msecs)

type QSslSocketwaitForConnectedBase* = proc(msecs: cint): bool
proc onwaitForConnected*(self: QSslSocket, slot: proc(super: QSslSocketwaitForConnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketwaitForConnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForConnected(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForConnected ".} =
  type Cb = proc(super: QSslSocketwaitForConnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForConnected(QSslSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QSslSocket, msecs: cint): bool =


  fQSslSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QSslSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QSslSocket, slot: proc(super: QSslSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForReadyRead(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForReadyRead ".} =
  type Cb = proc(super: QSslSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QSslSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QSslSocket, msecs: cint): bool =


  fQSslSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QSslSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QSslSocket, slot: proc(super: QSslSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForBytesWritten(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QSslSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QSslSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForDisconnected(self: QSslSocket, msecs: cint): bool =


  fQSslSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QSslSocketwaitForDisconnectedBase* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: QSslSocket, slot: proc(super: QSslSocketwaitForDisconnectedBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketwaitForDisconnectedBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForDisconnected(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForDisconnected ".} =
  type Cb = proc(super: QSslSocketwaitForDisconnectedBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForDisconnected(QSslSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QSslSocket, data: cstring, maxlen: clonglong): clonglong =


  fQSslSocket_virtualbase_readData(self.h, data, maxlen)

type QSslSocketreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QSslSocket, slot: proc(super: QSslSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_readData(self: ptr cQSslSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_readData ".} =
  type Cb = proc(super: QSslSocketreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QSslSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QSslSocket, data: cstring, len: clonglong): clonglong =


  fQSslSocket_virtualbase_writeData(self.h, data, len)

type QSslSocketwriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QSslSocket, slot: proc(super: QSslSocketwriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_writeData(self: ptr cQSslSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_writeData ".} =
  type Cb = proc(super: QSslSocketwriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QSslSocket(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_socketDescriptor(self: QSslSocket, ): uint =


  fQSslSocket_virtualbase_socketDescriptor(self.h)

type QSslSocketsocketDescriptorBase* = proc(): uint
proc onsocketDescriptor*(self: QSslSocket, slot: proc(super: QSslSocketsocketDescriptorBase): uint) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsocketDescriptorBase): uint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_socketDescriptor(self: ptr cQSslSocket, slot: int): uint {.exportc: "miqt_exec_callback_QSslSocket_socketDescriptor ".} =
  type Cb = proc(super: QSslSocketsocketDescriptorBase): uint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_socketDescriptor(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isSequential(self: QSslSocket, ): bool =


  fQSslSocket_virtualbase_isSequential(self.h)

type QSslSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QSslSocket, slot: proc(super: QSslSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_isSequential(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_isSequential ".} =
  type Cb = proc(super: QSslSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_readLineData(self: QSslSocket, data: cstring, maxlen: clonglong): clonglong =


  fQSslSocket_virtualbase_readLineData(self.h, data, maxlen)

type QSslSocketreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QSslSocket, slot: proc(super: QSslSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_readLineData(self: ptr cQSslSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_readLineData ".} =
  type Cb = proc(super: QSslSocketreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QSslSocket(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_open(self: QSslSocket, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool =


  fQSslSocket_virtualbase_open(self.h, cint(mode))

type QSslSocketopenBase* = proc(mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
proc onopen*(self: QSslSocket, slot: proc(super: QSslSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_open(self: ptr cQSslSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_open ".} =
  type Cb = proc(super: QSslSocketopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevice.QIODeviceOpenModeFlag): auto =
    callVirtualBase_open(QSslSocket(h: self), mode)
  let slotval1 = gen_qiodevice.QIODeviceOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_pos(self: QSslSocket, ): clonglong =


  fQSslSocket_virtualbase_pos(self.h)

type QSslSocketposBase* = proc(): clonglong
proc onpos*(self: QSslSocket, slot: proc(super: QSslSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_pos(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_pos ".} =
  type Cb = proc(super: QSslSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QSslSocket, ): clonglong =


  fQSslSocket_virtualbase_size(self.h)

type QSslSocketsizeBase* = proc(): clonglong
proc onsize*(self: QSslSocket, slot: proc(super: QSslSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_size(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_size ".} =
  type Cb = proc(super: QSslSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QSslSocket, pos: clonglong): bool =


  fQSslSocket_virtualbase_seek(self.h, pos)

type QSslSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QSslSocket, slot: proc(super: QSslSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_seek(self: ptr cQSslSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QSslSocket_seek ".} =
  type Cb = proc(super: QSslSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QSslSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_reset(self: QSslSocket, ): bool =


  fQSslSocket_virtualbase_reset(self.h)

type QSslSocketresetBase* = proc(): bool
proc onreset*(self: QSslSocket, slot: proc(super: QSslSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_reset(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_reset ".} =
  type Cb = proc(super: QSslSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QSslSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QSslSocket, event: gen_qcoreevent.QEvent): bool =


  fQSslSocket_virtualbase_event(self.h, event.h)

type QSslSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSslSocket, slot: proc(super: QSslSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_event(self: ptr cQSslSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSslSocket_event ".} =
  type Cb = proc(super: QSslSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSslSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSslSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSslSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSslSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSslSocket, slot: proc(super: QSslSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_eventFilter(self: ptr cQSslSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSslSocket_eventFilter ".} =
  type Cb = proc(super: QSslSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSslSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSslSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQSslSocket_virtualbase_timerEvent(self.h, event.h)

type QSslSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSslSocket, slot: proc(super: QSslSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_timerEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_timerEvent ".} =
  type Cb = proc(super: QSslSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSslSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSslSocket, event: gen_qcoreevent.QChildEvent): void =


  fQSslSocket_virtualbase_childEvent(self.h, event.h)

type QSslSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSslSocket, slot: proc(super: QSslSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_childEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_childEvent ".} =
  type Cb = proc(super: QSslSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSslSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSslSocket, event: gen_qcoreevent.QEvent): void =


  fQSslSocket_virtualbase_customEvent(self.h, event.h)

type QSslSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSslSocket, slot: proc(super: QSslSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_customEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_customEvent ".} =
  type Cb = proc(super: QSslSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSslSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSslSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQSslSocket_virtualbase_connectNotify(self.h, signal.h)

type QSslSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSslSocket, slot: proc(super: QSslSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_connectNotify(self: ptr cQSslSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_connectNotify ".} =
  type Cb = proc(super: QSslSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSslSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSslSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQSslSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QSslSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSslSocket, slot: proc(super: QSslSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSslSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_disconnectNotify(self: ptr cQSslSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_disconnectNotify ".} =
  type Cb = proc(super: QSslSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSslSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSslSocket): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSslSocket_staticMetaObject())
proc delete*(self: QSslSocket) =
  fcQSslSocket_delete(self.h)
