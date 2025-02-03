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
{.compile("gen_qssl.cpp", cflags).}


type QSslKeyType* = cint
const
  QSslPrivateKey* = 0
  QSslPublicKey* = 1



type QSslEncodingFormat* = cint
const
  QSslPem* = 0
  QSslDer* = 1



type QSslKeyAlgorithm* = cint
const
  QSslOpaque* = 0
  QSslRsa* = 1
  QSslDsa* = 2
  QSslEc* = 3
  QSslDh* = 4



type QSslAlternativeNameEntryType* = cint
const
  QSslEmailEntry* = 0
  QSslDnsEntry* = 1
  QSslIpAddressEntry* = 2



type QSslSslProtocol* = cint
const
  QSslTlsV1_2* = 0
  QSslAnyProtocol* = 1
  QSslSecureProtocols* = 2
  QSslTlsV1_2OrLater* = 3
  QSslDtlsV1_2* = 4
  QSslDtlsV1_2OrLater* = 5
  QSslTlsV1_3* = 6
  QSslTlsV1_3OrLater* = 7
  QSslUnknownProtocol* = -1



type QSslSslOption* = cint
const
  QSslSslOptionDisableEmptyFragments* = 1
  QSslSslOptionDisableSessionTickets* = 2
  QSslSslOptionDisableCompression* = 4
  QSslSslOptionDisableServerNameIndication* = 8
  QSslSslOptionDisableLegacyRenegotiation* = 16
  QSslSslOptionDisableSessionSharing* = 32
  QSslSslOptionDisableSessionPersistence* = 64
  QSslSslOptionDisableServerCipherPreference* = 128



type QSslAlertLevel* = cint
const
  QSslWarning* = 0
  QSslFatal* = 1
  QSslUnknown* = 2



type QSslAlertType* = cint
const
  QSslCloseNotify* = 0
  QSslUnexpectedMessage* = 10
  QSslBadRecordMac* = 20
  QSslRecordOverflow* = 22
  QSslDecompressionFailure* = 30
  QSslHandshakeFailure* = 40
  QSslNoCertificate* = 41
  QSslBadCertificate* = 42
  QSslUnsupportedCertificate* = 43
  QSslCertificateRevoked* = 44
  QSslCertificateExpired* = 45
  QSslCertificateUnknown* = 46
  QSslIllegalParameter* = 47
  QSslUnknownCa* = 48
  QSslAccessDenied* = 49
  QSslDecodeError* = 50
  QSslDecryptError* = 51
  QSslExportRestriction* = 60
  QSslProtocolVersion* = 70
  QSslInsufficientSecurity* = 71
  QSslInternalError* = 80
  QSslInappropriateFallback* = 86
  QSslUserCancelled* = 90
  QSslNoRenegotiation* = 100
  QSslMissingExtension* = 109
  QSslUnsupportedExtension* = 110
  QSslCertificateUnobtainable* = 111
  QSslUnrecognizedName* = 112
  QSslBadCertificateStatusResponse* = 113
  QSslBadCertificateHashValue* = 114
  QSslUnknownPskIdentity* = 115
  QSslCertificateRequired* = 116
  QSslNoApplicationProtocol* = 120
  QSslUnknownAlertMessage* = 255



type QSslImplementedClass* = cint
const
  QSslKey2* = 0
  QSslCertificate2* = 1
  QSslSocket2* = 2
  QSslDiffieHellman* = 3
  QSslEllipticCurve2* = 4
  QSslDtls* = 5
  QSslDtlsCookie* = 6



type QSslSupportedFeature* = cint
const
  QSslCertificateVerification* = 0
  QSslClientSideAlpn* = 1
  QSslServerSideAlpn* = 2
  QSslOcsp* = 3
  QSslPsk* = 4
  QSslSessionTicket* = 5
  QSslAlerts* = 6



import gen_qssl_types
export gen_qssl_types




