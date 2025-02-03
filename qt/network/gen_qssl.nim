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
  QSslSslV3* = 0
  QSslSslV2* = 1
  QSslTlsV1_0* = 2
  QSslTlsV1_1* = 3
  QSslTlsV1_2* = 4
  QSslAnyProtocol* = 5
  QSslTlsV1SslV3* = 6
  QSslSecureProtocols* = 7
  QSslTlsV1_0OrLater* = 8
  QSslTlsV1_1OrLater* = 9
  QSslTlsV1_2OrLater* = 10
  QSslDtlsV1_0* = 11
  QSslDtlsV1_0OrLater* = 12
  QSslDtlsV1_2* = 13
  QSslDtlsV1_2OrLater* = 14
  QSslTlsV1_3* = 15
  QSslTlsV1_3OrLater* = 16
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



import gen_qssl_types
export gen_qssl_types




