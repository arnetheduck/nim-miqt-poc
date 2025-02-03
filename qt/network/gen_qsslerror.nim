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
{.compile("gen_qsslerror.cpp", cflags).}


type QSslErrorSslError* = cint
const
  QSslErrorNoError* = 0
  QSslErrorUnableToGetIssuerCertificate* = 1
  QSslErrorUnableToDecryptCertificateSignature* = 2
  QSslErrorUnableToDecodeIssuerPublicKey* = 3
  QSslErrorCertificateSignatureFailed* = 4
  QSslErrorCertificateNotYetValid* = 5
  QSslErrorCertificateExpired* = 6
  QSslErrorInvalidNotBeforeField* = 7
  QSslErrorInvalidNotAfterField* = 8
  QSslErrorSelfSignedCertificate* = 9
  QSslErrorSelfSignedCertificateInChain* = 10
  QSslErrorUnableToGetLocalIssuerCertificate* = 11
  QSslErrorUnableToVerifyFirstCertificate* = 12
  QSslErrorCertificateRevoked* = 13
  QSslErrorInvalidCaCertificate* = 14
  QSslErrorPathLengthExceeded* = 15
  QSslErrorInvalidPurpose* = 16
  QSslErrorCertificateUntrusted* = 17
  QSslErrorCertificateRejected* = 18
  QSslErrorSubjectIssuerMismatch* = 19
  QSslErrorAuthorityIssuerSerialNumberMismatch* = 20
  QSslErrorNoPeerCertificate* = 21
  QSslErrorHostNameMismatch* = 22
  QSslErrorNoSslSupport* = 23
  QSslErrorCertificateBlacklisted* = 24
  QSslErrorCertificateStatusUnknown* = 25
  QSslErrorOcspNoResponseFound* = 26
  QSslErrorOcspMalformedRequest* = 27
  QSslErrorOcspMalformedResponse* = 28
  QSslErrorOcspInternalError* = 29
  QSslErrorOcspTryLater* = 30
  QSslErrorOcspSigRequred* = 31
  QSslErrorOcspUnauthorized* = 32
  QSslErrorOcspResponseCannotBeTrusted* = 33
  QSslErrorOcspResponseCertIdUnknown* = 34
  QSslErrorOcspResponseExpired* = 35
  QSslErrorOcspStatusUnknown* = 36
  QSslErrorUnspecifiedError* = -1



import gen_qsslerror_types
export gen_qsslerror_types

import
  gen_qsslcertificate
export
  gen_qsslcertificate

type cQSslError*{.exportc: "QSslError", incompleteStruct.} = object

proc fcQSslError_new(): ptr cQSslError {.importc: "QSslError_new".}
proc fcQSslError_new2(error: cint): ptr cQSslError {.importc: "QSslError_new2".}
proc fcQSslError_new3(error: cint, certificate: pointer): ptr cQSslError {.importc: "QSslError_new3".}
proc fcQSslError_new4(other: pointer): ptr cQSslError {.importc: "QSslError_new4".}
proc fcQSslError_swap(self: pointer, other: pointer): void {.importc: "QSslError_swap".}
proc fcQSslError_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslError_operatorAssign".}
proc fcQSslError_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslError_operatorEqual".}
proc fcQSslError_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslError_operatorNotEqual".}
proc fcQSslError_error(self: pointer, ): cint {.importc: "QSslError_error".}
proc fcQSslError_errorString(self: pointer, ): struct_miqt_string {.importc: "QSslError_errorString".}
proc fcQSslError_certificate(self: pointer, ): pointer {.importc: "QSslError_certificate".}
proc fcQSslError_delete(self: pointer) {.importc: "QSslError_delete".}


func init*(T: type QSslError, h: ptr cQSslError): QSslError =
  T(h: h)
proc create*(T: type QSslError, ): QSslError =

  QSslError.init(fcQSslError_new())
proc create*(T: type QSslError, error: QSslErrorSslError): QSslError =

  QSslError.init(fcQSslError_new2(cint(error)))
proc create*(T: type QSslError, error: QSslErrorSslError, certificate: gen_qsslcertificate.QSslCertificate): QSslError =

  QSslError.init(fcQSslError_new3(cint(error), certificate.h))
proc create*(T: type QSslError, other: QSslError): QSslError =

  QSslError.init(fcQSslError_new4(other.h))
proc swap*(self: QSslError, other: QSslError): void =

  fcQSslError_swap(self.h, other.h)

proc operatorAssign*(self: QSslError, other: QSslError): void =

  fcQSslError_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QSslError, other: QSslError): bool =

  fcQSslError_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QSslError, other: QSslError): bool =

  fcQSslError_operatorNotEqual(self.h, other.h)

proc error*(self: QSslError, ): QSslErrorSslError =

  QSslErrorSslError(fcQSslError_error(self.h))

proc errorString*(self: QSslError, ): string =

  let v_ms = fcQSslError_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc certificate*(self: QSslError, ): gen_qsslcertificate.QSslCertificate =

  gen_qsslcertificate.QSslCertificate(h: fcQSslError_certificate(self.h))

proc delete*(self: QSslError) =
  fcQSslError_delete(self.h)
