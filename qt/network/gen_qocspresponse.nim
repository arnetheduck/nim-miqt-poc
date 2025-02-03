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
{.compile("gen_qocspresponse.cpp", cflags).}


type QOcspCertificateStatus* = cint
const
  QOcspCertificateStatusGood* = 0
  QOcspCertificateStatusRevoked* = 1
  QOcspCertificateStatusUnknown* = 2



type QOcspRevocationReason* = cint
const
  QOcspRevocationReasonNone* = -1
  QOcspRevocationReasonUnspecified* = 0
  QOcspRevocationReasonKeyCompromise* = 1
  QOcspRevocationReasonCACompromise* = 2
  QOcspRevocationReasonAffiliationChanged* = 3
  QOcspRevocationReasonSuperseded* = 4
  QOcspRevocationReasonCessationOfOperation* = 5
  QOcspRevocationReasonCertificateHold* = 6
  QOcspRevocationReasonRemoveFromCRL* = 7



import gen_qocspresponse_types
export gen_qocspresponse_types

import
  gen_qsslcertificate
export
  gen_qsslcertificate

type cQOcspResponse*{.exportc: "QOcspResponse", incompleteStruct.} = object

proc fcQOcspResponse_new(): ptr cQOcspResponse {.importc: "QOcspResponse_new".}
proc fcQOcspResponse_new2(other: pointer): ptr cQOcspResponse {.importc: "QOcspResponse_new2".}
proc fcQOcspResponse_operatorAssign(self: pointer, other: pointer): void {.importc: "QOcspResponse_operatorAssign".}
proc fcQOcspResponse_certificateStatus(self: pointer, ): cint {.importc: "QOcspResponse_certificateStatus".}
proc fcQOcspResponse_revocationReason(self: pointer, ): cint {.importc: "QOcspResponse_revocationReason".}
proc fcQOcspResponse_responder(self: pointer, ): pointer {.importc: "QOcspResponse_responder".}
proc fcQOcspResponse_subject(self: pointer, ): pointer {.importc: "QOcspResponse_subject".}
proc fcQOcspResponse_swap(self: pointer, other: pointer): void {.importc: "QOcspResponse_swap".}
proc fcQOcspResponse_delete(self: pointer) {.importc: "QOcspResponse_delete".}


func init*(T: type QOcspResponse, h: ptr cQOcspResponse): QOcspResponse =
  T(h: h)
proc create*(T: type QOcspResponse, ): QOcspResponse =

  QOcspResponse.init(fcQOcspResponse_new())
proc create*(T: type QOcspResponse, other: QOcspResponse): QOcspResponse =

  QOcspResponse.init(fcQOcspResponse_new2(other.h))
proc operatorAssign*(self: QOcspResponse, other: QOcspResponse): void =

  fcQOcspResponse_operatorAssign(self.h, other.h)

proc certificateStatus*(self: QOcspResponse, ): QOcspCertificateStatus =

  QOcspCertificateStatus(fcQOcspResponse_certificateStatus(self.h))

proc revocationReason*(self: QOcspResponse, ): QOcspRevocationReason =

  QOcspRevocationReason(fcQOcspResponse_revocationReason(self.h))

proc responder*(self: QOcspResponse, ): gen_qsslcertificate.QSslCertificate =

  gen_qsslcertificate.QSslCertificate(h: fcQOcspResponse_responder(self.h))

proc subject*(self: QOcspResponse, ): gen_qsslcertificate.QSslCertificate =

  gen_qsslcertificate.QSslCertificate(h: fcQOcspResponse_subject(self.h))

proc swap*(self: QOcspResponse, other: QOcspResponse): void =

  fcQOcspResponse_swap(self.h, other.h)

proc delete*(self: QOcspResponse) =
  fcQOcspResponse_delete(self.h)
