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
{.compile("gen_qnetworkrequest.cpp", cflags).}


type QNetworkRequestKnownHeaders* = cint
const
  QNetworkRequestContentTypeHeader* = 0
  QNetworkRequestContentLengthHeader* = 1
  QNetworkRequestLocationHeader* = 2
  QNetworkRequestLastModifiedHeader* = 3
  QNetworkRequestCookieHeader* = 4
  QNetworkRequestSetCookieHeader* = 5
  QNetworkRequestContentDispositionHeader* = 6
  QNetworkRequestUserAgentHeader* = 7
  QNetworkRequestServerHeader* = 8
  QNetworkRequestIfModifiedSinceHeader* = 9
  QNetworkRequestETagHeader* = 10
  QNetworkRequestIfMatchHeader* = 11
  QNetworkRequestIfNoneMatchHeader* = 12



type QNetworkRequestAttribute* = cint
const
  QNetworkRequestHttpStatusCodeAttribute* = 0
  QNetworkRequestHttpReasonPhraseAttribute* = 1
  QNetworkRequestRedirectionTargetAttribute* = 2
  QNetworkRequestConnectionEncryptedAttribute* = 3
  QNetworkRequestCacheLoadControlAttribute* = 4
  QNetworkRequestCacheSaveControlAttribute* = 5
  QNetworkRequestSourceIsFromCacheAttribute* = 6
  QNetworkRequestDoNotBufferUploadDataAttribute* = 7
  QNetworkRequestHttpPipeliningAllowedAttribute* = 8
  QNetworkRequestHttpPipeliningWasUsedAttribute* = 9
  QNetworkRequestCustomVerbAttribute* = 10
  QNetworkRequestCookieLoadControlAttribute* = 11
  QNetworkRequestAuthenticationReuseAttribute* = 12
  QNetworkRequestCookieSaveControlAttribute* = 13
  QNetworkRequestMaximumDownloadBufferSizeAttribute* = 14
  QNetworkRequestDownloadBufferAttribute* = 15
  QNetworkRequestSynchronousRequestAttribute* = 16
  QNetworkRequestBackgroundRequestAttribute* = 17
  QNetworkRequestEmitAllUploadProgressSignalsAttribute* = 18
  QNetworkRequestHttp2AllowedAttribute* = 19
  QNetworkRequestHttp2WasUsedAttribute* = 20
  QNetworkRequestOriginalContentLengthAttribute* = 21
  QNetworkRequestRedirectPolicyAttribute* = 22
  QNetworkRequestHttp2DirectAttribute* = 23
  QNetworkRequestResourceTypeAttribute* = 24
  QNetworkRequestAutoDeleteReplyOnFinishAttribute* = 25
  QNetworkRequestConnectionCacheExpiryTimeoutSecondsAttribute* = 26
  QNetworkRequestHttp2CleartextAllowedAttribute* = 27
  QNetworkRequestUser* = 1000
  QNetworkRequestUserMax* = 32767



type QNetworkRequestCacheLoadControl* = cint
const
  QNetworkRequestAlwaysNetwork* = 0
  QNetworkRequestPreferNetwork* = 1
  QNetworkRequestPreferCache* = 2
  QNetworkRequestAlwaysCache* = 3



type QNetworkRequestLoadControl* = cint
const
  QNetworkRequestAutomatic* = 0
  QNetworkRequestManual* = 1



type QNetworkRequestPriority* = cint
const
  QNetworkRequestHighPriority* = 1
  QNetworkRequestNormalPriority* = 3
  QNetworkRequestLowPriority* = 5



type QNetworkRequestRedirectPolicy* = cint
const
  QNetworkRequestManualRedirectPolicy* = 0
  QNetworkRequestNoLessSafeRedirectPolicy* = 1
  QNetworkRequestSameOriginRedirectPolicy* = 2
  QNetworkRequestUserVerifiedRedirectPolicy* = 3



type QNetworkRequestTransferTimeoutConstant* = cint
const
  QNetworkRequestDefaultTransferTimeoutConstant* = 30000



import gen_qnetworkrequest_types
export gen_qnetworkrequest_types

import
  gen_qhttp2configuration,
  gen_qobject,
  gen_qsslconfiguration,
  gen_qurl,
  gen_qvariant
export
  gen_qhttp2configuration,
  gen_qobject,
  gen_qsslconfiguration,
  gen_qurl,
  gen_qvariant

type cQNetworkRequest*{.exportc: "QNetworkRequest", incompleteStruct.} = object

proc fcQNetworkRequest_new(): ptr cQNetworkRequest {.importc: "QNetworkRequest_new".}
proc fcQNetworkRequest_new2(url: pointer): ptr cQNetworkRequest {.importc: "QNetworkRequest_new2".}
proc fcQNetworkRequest_new3(other: pointer): ptr cQNetworkRequest {.importc: "QNetworkRequest_new3".}
proc fcQNetworkRequest_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkRequest_operatorAssign".}
proc fcQNetworkRequest_swap(self: pointer, other: pointer): void {.importc: "QNetworkRequest_swap".}
proc fcQNetworkRequest_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkRequest_operatorEqual".}
proc fcQNetworkRequest_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkRequest_operatorNotEqual".}
proc fcQNetworkRequest_url(self: pointer, ): pointer {.importc: "QNetworkRequest_url".}
proc fcQNetworkRequest_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkRequest_setUrl".}
proc fcQNetworkRequest_header(self: pointer, header: cint): pointer {.importc: "QNetworkRequest_header".}
proc fcQNetworkRequest_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QNetworkRequest_setHeader".}
proc fcQNetworkRequest_hasRawHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QNetworkRequest_hasRawHeader".}
proc fcQNetworkRequest_rawHeaderList(self: pointer, ): struct_miqt_array {.importc: "QNetworkRequest_rawHeaderList".}
proc fcQNetworkRequest_rawHeader(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QNetworkRequest_rawHeader".}
proc fcQNetworkRequest_setRawHeader(self: pointer, headerName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QNetworkRequest_setRawHeader".}
proc fcQNetworkRequest_attribute(self: pointer, code: cint): pointer {.importc: "QNetworkRequest_attribute".}
proc fcQNetworkRequest_setAttribute(self: pointer, code: cint, value: pointer): void {.importc: "QNetworkRequest_setAttribute".}
proc fcQNetworkRequest_sslConfiguration(self: pointer, ): pointer {.importc: "QNetworkRequest_sslConfiguration".}
proc fcQNetworkRequest_setSslConfiguration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequest_setSslConfiguration".}
proc fcQNetworkRequest_setOriginatingObject(self: pointer, objectVal: pointer): void {.importc: "QNetworkRequest_setOriginatingObject".}
proc fcQNetworkRequest_originatingObject(self: pointer, ): pointer {.importc: "QNetworkRequest_originatingObject".}
proc fcQNetworkRequest_priority(self: pointer, ): cint {.importc: "QNetworkRequest_priority".}
proc fcQNetworkRequest_setPriority(self: pointer, priority: cint): void {.importc: "QNetworkRequest_setPriority".}
proc fcQNetworkRequest_maximumRedirectsAllowed(self: pointer, ): cint {.importc: "QNetworkRequest_maximumRedirectsAllowed".}
proc fcQNetworkRequest_setMaximumRedirectsAllowed(self: pointer, maximumRedirectsAllowed: cint): void {.importc: "QNetworkRequest_setMaximumRedirectsAllowed".}
proc fcQNetworkRequest_peerVerifyName(self: pointer, ): struct_miqt_string {.importc: "QNetworkRequest_peerVerifyName".}
proc fcQNetworkRequest_setPeerVerifyName(self: pointer, peerName: struct_miqt_string): void {.importc: "QNetworkRequest_setPeerVerifyName".}
proc fcQNetworkRequest_http2Configuration(self: pointer, ): pointer {.importc: "QNetworkRequest_http2Configuration".}
proc fcQNetworkRequest_setHttp2Configuration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequest_setHttp2Configuration".}
proc fcQNetworkRequest_decompressedSafetyCheckThreshold(self: pointer, ): clonglong {.importc: "QNetworkRequest_decompressedSafetyCheckThreshold".}
proc fcQNetworkRequest_setDecompressedSafetyCheckThreshold(self: pointer, threshold: clonglong): void {.importc: "QNetworkRequest_setDecompressedSafetyCheckThreshold".}
proc fcQNetworkRequest_transferTimeout(self: pointer, ): cint {.importc: "QNetworkRequest_transferTimeout".}
proc fcQNetworkRequest_setTransferTimeout(self: pointer, ): void {.importc: "QNetworkRequest_setTransferTimeout".}
proc fcQNetworkRequest_attribute2(self: pointer, code: cint, defaultValue: pointer): pointer {.importc: "QNetworkRequest_attribute2".}
proc fcQNetworkRequest_setTransferTimeout1(self: pointer, timeout: cint): void {.importc: "QNetworkRequest_setTransferTimeout1".}
proc fcQNetworkRequest_delete(self: pointer) {.importc: "QNetworkRequest_delete".}


func init*(T: type QNetworkRequest, h: ptr cQNetworkRequest): QNetworkRequest =
  T(h: h)
proc create*(T: type QNetworkRequest, ): QNetworkRequest =

  QNetworkRequest.init(fcQNetworkRequest_new())
proc create*(T: type QNetworkRequest, url: gen_qurl.QUrl): QNetworkRequest =

  QNetworkRequest.init(fcQNetworkRequest_new2(url.h))
proc create2*(T: type QNetworkRequest, other: QNetworkRequest): QNetworkRequest =

  QNetworkRequest.init(fcQNetworkRequest_new3(other.h))
proc operatorAssign*(self: QNetworkRequest, other: QNetworkRequest): void =

  fcQNetworkRequest_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkRequest, other: QNetworkRequest): void =

  fcQNetworkRequest_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkRequest, other: QNetworkRequest): bool =

  fcQNetworkRequest_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkRequest, other: QNetworkRequest): bool =

  fcQNetworkRequest_operatorNotEqual(self.h, other.h)

proc url*(self: QNetworkRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQNetworkRequest_url(self.h))

proc setUrl*(self: QNetworkRequest, url: gen_qurl.QUrl): void =

  fcQNetworkRequest_setUrl(self.h, url.h)

proc header*(self: QNetworkRequest, header: QNetworkRequestKnownHeaders): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkRequest_header(self.h, cint(header)))

proc setHeader*(self: QNetworkRequest, header: QNetworkRequestKnownHeaders, value: gen_qvariant.QVariant): void =

  fcQNetworkRequest_setHeader(self.h, cint(header), value.h)

proc hasRawHeader*(self: QNetworkRequest, headerName: seq[byte]): bool =

  fcQNetworkRequest_hasRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc rawHeaderList*(self: QNetworkRequest, ): seq[seq[byte]] =

  var v_ma = fcQNetworkRequest_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc rawHeader*(self: QNetworkRequest, headerName: seq[byte]): seq[byte] =

  var v_bytearray = fcQNetworkRequest_rawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setRawHeader*(self: QNetworkRequest, headerName: seq[byte], value: seq[byte]): void =

  fcQNetworkRequest_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

proc attribute*(self: QNetworkRequest, code: QNetworkRequestAttribute): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkRequest_attribute(self.h, cint(code)))

proc setAttribute*(self: QNetworkRequest, code: QNetworkRequestAttribute, value: gen_qvariant.QVariant): void =

  fcQNetworkRequest_setAttribute(self.h, cint(code), value.h)

proc sslConfiguration*(self: QNetworkRequest, ): gen_qsslconfiguration.QSslConfiguration =

  gen_qsslconfiguration.QSslConfiguration(h: fcQNetworkRequest_sslConfiguration(self.h))

proc setSslConfiguration*(self: QNetworkRequest, configuration: gen_qsslconfiguration.QSslConfiguration): void =

  fcQNetworkRequest_setSslConfiguration(self.h, configuration.h)

proc setOriginatingObject*(self: QNetworkRequest, objectVal: gen_qobject.QObject): void =

  fcQNetworkRequest_setOriginatingObject(self.h, objectVal.h)

proc originatingObject*(self: QNetworkRequest, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQNetworkRequest_originatingObject(self.h))

proc priority*(self: QNetworkRequest, ): QNetworkRequestPriority =

  QNetworkRequestPriority(fcQNetworkRequest_priority(self.h))

proc setPriority*(self: QNetworkRequest, priority: QNetworkRequestPriority): void =

  fcQNetworkRequest_setPriority(self.h, cint(priority))

proc maximumRedirectsAllowed*(self: QNetworkRequest, ): cint =

  fcQNetworkRequest_maximumRedirectsAllowed(self.h)

proc setMaximumRedirectsAllowed*(self: QNetworkRequest, maximumRedirectsAllowed: cint): void =

  fcQNetworkRequest_setMaximumRedirectsAllowed(self.h, maximumRedirectsAllowed)

proc peerVerifyName*(self: QNetworkRequest, ): string =

  let v_ms = fcQNetworkRequest_peerVerifyName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeerVerifyName*(self: QNetworkRequest, peerName: string): void =

  fcQNetworkRequest_setPeerVerifyName(self.h, struct_miqt_string(data: peerName, len: csize_t(len(peerName))))

proc http2Configuration*(self: QNetworkRequest, ): gen_qhttp2configuration.QHttp2Configuration =

  gen_qhttp2configuration.QHttp2Configuration(h: fcQNetworkRequest_http2Configuration(self.h))

proc setHttp2Configuration*(self: QNetworkRequest, configuration: gen_qhttp2configuration.QHttp2Configuration): void =

  fcQNetworkRequest_setHttp2Configuration(self.h, configuration.h)

proc decompressedSafetyCheckThreshold*(self: QNetworkRequest, ): clonglong =

  fcQNetworkRequest_decompressedSafetyCheckThreshold(self.h)

proc setDecompressedSafetyCheckThreshold*(self: QNetworkRequest, threshold: clonglong): void =

  fcQNetworkRequest_setDecompressedSafetyCheckThreshold(self.h, threshold)

proc transferTimeout*(self: QNetworkRequest, ): cint =

  fcQNetworkRequest_transferTimeout(self.h)

proc setTransferTimeout*(self: QNetworkRequest, ): void =

  fcQNetworkRequest_setTransferTimeout(self.h)

proc attribute2*(self: QNetworkRequest, code: QNetworkRequestAttribute, defaultValue: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkRequest_attribute2(self.h, cint(code), defaultValue.h))

proc setTransferTimeout1*(self: QNetworkRequest, timeout: cint): void =

  fcQNetworkRequest_setTransferTimeout1(self.h, timeout)

proc delete*(self: QNetworkRequest) =
  fcQNetworkRequest_delete(self.h)
