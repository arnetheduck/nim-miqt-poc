import Qt5WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginecertificateerror.cpp", cflags).}


type QWebEngineCertificateErrorErrorEnum* = distinct cint
template SslPinnedKeyNotInCertificateChain*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -150
template CertificateCommonNameInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -200
template CertificateDateInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -201
template CertificateAuthorityInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -202
template CertificateContainsErrors*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -203
template CertificateNoRevocationMechanism*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -204
template CertificateUnableToCheckRevocation*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -205
template CertificateRevoked*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -206
template CertificateInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -207
template CertificateWeakSignatureAlgorithm*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -208
template CertificateNonUniqueName*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -210
template CertificateWeakKey*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -211
template CertificateNameConstraintViolation*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -212
template CertificateValidityTooLong*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -213
template CertificateTransparencyRequired*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -214
template CertificateKnownInterceptionBlocked*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -217


import gen_qwebenginecertificateerror_types
export gen_qwebenginecertificateerror_types

import
  gen_qsslcertificate,
  gen_qurl
export
  gen_qsslcertificate,
  gen_qurl

type cQWebEngineCertificateError*{.exportc: "QWebEngineCertificateError", incompleteStruct.} = object

proc fcQWebEngineCertificateError_new(error: cint, url: pointer, overridable: bool, errorDescription: struct_miqt_string): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new".}
proc fcQWebEngineCertificateError_new2(other: pointer): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new2".}
proc fcQWebEngineCertificateError_error(self: pointer, ): cint {.importc: "QWebEngineCertificateError_error".}
proc fcQWebEngineCertificateError_url(self: pointer, ): pointer {.importc: "QWebEngineCertificateError_url".}
proc fcQWebEngineCertificateError_isOverridable(self: pointer, ): bool {.importc: "QWebEngineCertificateError_isOverridable".}
proc fcQWebEngineCertificateError_errorDescription(self: pointer, ): struct_miqt_string {.importc: "QWebEngineCertificateError_errorDescription".}
proc fcQWebEngineCertificateError_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineCertificateError_operatorAssign".}
proc fcQWebEngineCertificateError_deferX(self: pointer, ): void {.importc: "QWebEngineCertificateError_defer".}
proc fcQWebEngineCertificateError_deferred(self: pointer, ): bool {.importc: "QWebEngineCertificateError_deferred".}
proc fcQWebEngineCertificateError_rejectCertificate(self: pointer, ): void {.importc: "QWebEngineCertificateError_rejectCertificate".}
proc fcQWebEngineCertificateError_ignoreCertificateError(self: pointer, ): void {.importc: "QWebEngineCertificateError_ignoreCertificateError".}
proc fcQWebEngineCertificateError_answered(self: pointer, ): bool {.importc: "QWebEngineCertificateError_answered".}
proc fcQWebEngineCertificateError_certificateChain(self: pointer, ): struct_miqt_array {.importc: "QWebEngineCertificateError_certificateChain".}
proc fcQWebEngineCertificateError_delete(self: pointer) {.importc: "QWebEngineCertificateError_delete".}


func init*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError, h: ptr cQWebEngineCertificateError): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =
  T(h: h)
proc create*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError, error: cint, url: gen_qurl.QUrl, overridable: bool, errorDescription: string): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =

  gen_qwebenginecertificateerror_types.QWebEngineCertificateError.init(fcQWebEngineCertificateError_new(error, url.h, overridable, struct_miqt_string(data: errorDescription, len: csize_t(len(errorDescription)))))
proc create*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError, other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =

  gen_qwebenginecertificateerror_types.QWebEngineCertificateError.init(fcQWebEngineCertificateError_new2(other.h))
proc error*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): cint =

  cint(fcQWebEngineCertificateError_error(self.h))

proc url*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineCertificateError_url(self.h))

proc isOverridable*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): bool =

  fcQWebEngineCertificateError_isOverridable(self.h)

proc errorDescription*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): string =

  let v_ms = fcQWebEngineCertificateError_errorDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =

  fcQWebEngineCertificateError_operatorAssign(self.h, other.h)

proc deferX*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_deferX(self.h)

proc deferred*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): bool =

  fcQWebEngineCertificateError_deferred(self.h)

proc rejectCertificate*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_rejectCertificate(self.h)

proc ignoreCertificateError*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): void =

  fcQWebEngineCertificateError_ignoreCertificateError(self.h)

proc answered*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): bool =

  fcQWebEngineCertificateError_answered(self.h)

proc certificateChain*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, ): seq[gen_qsslcertificate.QSslCertificate] =

  var v_ma = fcQWebEngineCertificateError_certificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate.QSslCertificate(h: v_outCast[i])
  vx_ret

proc delete*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError) =
  fcQWebEngineCertificateError_delete(self.h)
