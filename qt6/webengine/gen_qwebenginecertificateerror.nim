import Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebEngineWidgets")
{.compile("gen_qwebenginecertificateerror.cpp", cflags).}


type QWebEngineCertificateErrorType* = cint
const
  QWebEngineCertificateErrorSslPinnedKeyNotInCertificateChain* = -150
  QWebEngineCertificateErrorCertificateCommonNameInvalid* = -200
  QWebEngineCertificateErrorCertificateDateInvalid* = -201
  QWebEngineCertificateErrorCertificateAuthorityInvalid* = -202
  QWebEngineCertificateErrorCertificateContainsErrors* = -203
  QWebEngineCertificateErrorCertificateNoRevocationMechanism* = -204
  QWebEngineCertificateErrorCertificateUnableToCheckRevocation* = -205
  QWebEngineCertificateErrorCertificateRevoked* = -206
  QWebEngineCertificateErrorCertificateInvalid* = -207
  QWebEngineCertificateErrorCertificateWeakSignatureAlgorithm* = -208
  QWebEngineCertificateErrorCertificateNonUniqueName* = -210
  QWebEngineCertificateErrorCertificateWeakKey* = -211
  QWebEngineCertificateErrorCertificateNameConstraintViolation* = -212
  QWebEngineCertificateErrorCertificateValidityTooLong* = -213
  QWebEngineCertificateErrorCertificateTransparencyRequired* = -214
  QWebEngineCertificateErrorCertificateSymantecLegacy* = -215
  QWebEngineCertificateErrorCertificateKnownInterceptionBlocked* = -217
  QWebEngineCertificateErrorSslObsoleteVersion* = -218



import gen_qwebenginecertificateerror_types
export gen_qwebenginecertificateerror_types

import
  gen_qsslcertificate,
  gen_qurl
export
  gen_qsslcertificate,
  gen_qurl

type cQWebEngineCertificateError*{.exportc: "QWebEngineCertificateError", incompleteStruct.} = object

proc fcQWebEngineCertificateError_new(other: pointer): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new".}
proc fcQWebEngineCertificateError_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineCertificateError_operatorAssign".}
proc fcQWebEngineCertificateError_typeX(self: pointer, ): cint {.importc: "QWebEngineCertificateError_type".}
proc fcQWebEngineCertificateError_url(self: pointer, ): pointer {.importc: "QWebEngineCertificateError_url".}
proc fcQWebEngineCertificateError_isOverridable(self: pointer, ): bool {.importc: "QWebEngineCertificateError_isOverridable".}
proc fcQWebEngineCertificateError_description(self: pointer, ): struct_miqt_string {.importc: "QWebEngineCertificateError_description".}
proc fcQWebEngineCertificateError_deferX(self: pointer, ): void {.importc: "QWebEngineCertificateError_defer".}
proc fcQWebEngineCertificateError_rejectCertificate(self: pointer, ): void {.importc: "QWebEngineCertificateError_rejectCertificate".}
proc fcQWebEngineCertificateError_acceptCertificate(self: pointer, ): void {.importc: "QWebEngineCertificateError_acceptCertificate".}
proc fcQWebEngineCertificateError_certificateChain(self: pointer, ): struct_miqt_array {.importc: "QWebEngineCertificateError_certificateChain".}
proc fcQWebEngineCertificateError_delete(self: pointer) {.importc: "QWebEngineCertificateError_delete".}


func init*(T: type QWebEngineCertificateError, h: ptr cQWebEngineCertificateError): QWebEngineCertificateError =
  T(h: h)
proc create*(T: type QWebEngineCertificateError, other: QWebEngineCertificateError): QWebEngineCertificateError =

  QWebEngineCertificateError.init(fcQWebEngineCertificateError_new(other.h))
proc operatorAssign*(self: QWebEngineCertificateError, other: QWebEngineCertificateError): void =

  fcQWebEngineCertificateError_operatorAssign(self.h, other.h)

proc typeX*(self: QWebEngineCertificateError, ): QWebEngineCertificateErrorType =

  QWebEngineCertificateErrorType(fcQWebEngineCertificateError_typeX(self.h))

proc url*(self: QWebEngineCertificateError, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineCertificateError_url(self.h))

proc isOverridable*(self: QWebEngineCertificateError, ): bool =

  fcQWebEngineCertificateError_isOverridable(self.h)

proc description*(self: QWebEngineCertificateError, ): string =

  let v_ms = fcQWebEngineCertificateError_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc deferX*(self: QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_deferX(self.h)

proc rejectCertificate*(self: QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_rejectCertificate(self.h)

proc acceptCertificate*(self: QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_acceptCertificate(self.h)

proc certificateChain*(self: QWebEngineCertificateError, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQWebEngineCertificateError_certificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc delete*(self: QWebEngineCertificateError) =
  fcQWebEngineCertificateError_delete(self.h)
