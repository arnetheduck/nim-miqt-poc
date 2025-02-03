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
{.compile("gen_qnetworkreply.cpp", cflags).}


type QNetworkReplyNetworkError* = cint
const
  QNetworkReplyNoError* = 0
  QNetworkReplyConnectionRefusedError* = 1
  QNetworkReplyRemoteHostClosedError* = 2
  QNetworkReplyHostNotFoundError* = 3
  QNetworkReplyTimeoutError* = 4
  QNetworkReplyOperationCanceledError* = 5
  QNetworkReplySslHandshakeFailedError* = 6
  QNetworkReplyTemporaryNetworkFailureError* = 7
  QNetworkReplyNetworkSessionFailedError* = 8
  QNetworkReplyBackgroundRequestNotAllowedError* = 9
  QNetworkReplyTooManyRedirectsError* = 10
  QNetworkReplyInsecureRedirectError* = 11
  QNetworkReplyUnknownNetworkError* = 99
  QNetworkReplyProxyConnectionRefusedError* = 101
  QNetworkReplyProxyConnectionClosedError* = 102
  QNetworkReplyProxyNotFoundError* = 103
  QNetworkReplyProxyTimeoutError* = 104
  QNetworkReplyProxyAuthenticationRequiredError* = 105
  QNetworkReplyUnknownProxyError* = 199
  QNetworkReplyContentAccessDenied* = 201
  QNetworkReplyContentOperationNotPermittedError* = 202
  QNetworkReplyContentNotFoundError* = 203
  QNetworkReplyAuthenticationRequiredError* = 204
  QNetworkReplyContentReSendError* = 205
  QNetworkReplyContentConflictError* = 206
  QNetworkReplyContentGoneError* = 207
  QNetworkReplyUnknownContentError* = 299
  QNetworkReplyProtocolUnknownError* = 301
  QNetworkReplyProtocolInvalidOperationError* = 302
  QNetworkReplyProtocolFailure* = 399
  QNetworkReplyInternalServerError* = 401
  QNetworkReplyOperationNotImplementedError* = 402
  QNetworkReplyServiceUnavailableError* = 403
  QNetworkReplyUnknownServerError* = 499



import gen_qnetworkreply_types
export gen_qnetworkreply_types

import
  gen_qiodevice,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobjectdefs,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qurl,
  gen_qvariant
export
  gen_qiodevice,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobjectdefs,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator,
  gen_qurl,
  gen_qvariant

type cQNetworkReply*{.exportc: "QNetworkReply", incompleteStruct.} = object

proc fcQNetworkReply_metaObject(self: pointer, ): pointer {.importc: "QNetworkReply_metaObject".}
proc fcQNetworkReply_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkReply_metacast".}
proc fcQNetworkReply_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkReply_metacall".}
proc fcQNetworkReply_tr(s: cstring): struct_miqt_string {.importc: "QNetworkReply_tr".}
proc fcQNetworkReply_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkReply_trUtf8".}
proc fcQNetworkReply_close(self: pointer, ): void {.importc: "QNetworkReply_close".}
proc fcQNetworkReply_isSequential(self: pointer, ): bool {.importc: "QNetworkReply_isSequential".}
proc fcQNetworkReply_readBufferSize(self: pointer, ): clonglong {.importc: "QNetworkReply_readBufferSize".}
proc fcQNetworkReply_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QNetworkReply_setReadBufferSize".}
proc fcQNetworkReply_manager(self: pointer, ): pointer {.importc: "QNetworkReply_manager".}
proc fcQNetworkReply_operation(self: pointer, ): cint {.importc: "QNetworkReply_operation".}
proc fcQNetworkReply_request(self: pointer, ): pointer {.importc: "QNetworkReply_request".}
proc fcQNetworkReply_error(self: pointer, ): cint {.importc: "QNetworkReply_error".}
proc fcQNetworkReply_isFinished(self: pointer, ): bool {.importc: "QNetworkReply_isFinished".}
proc fcQNetworkReply_isRunning(self: pointer, ): bool {.importc: "QNetworkReply_isRunning".}
proc fcQNetworkReply_url(self: pointer, ): pointer {.importc: "QNetworkReply_url".}
proc fcQNetworkReply_header(self: pointer, header: cint): pointer {.importc: "QNetworkReply_header".}
proc fcQNetworkReply_hasRawHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QNetworkReply_hasRawHeader".}
proc fcQNetworkReply_rawHeaderList(self: pointer, ): struct_miqt_array {.importc: "QNetworkReply_rawHeaderList".}
proc fcQNetworkReply_rawHeader(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QNetworkReply_rawHeader".}
proc fcQNetworkReply_rawHeaderPairs(self: pointer, ): struct_miqt_array {.importc: "QNetworkReply_rawHeaderPairs".}
proc fcQNetworkReply_attribute(self: pointer, code: cint): pointer {.importc: "QNetworkReply_attribute".}
proc fcQNetworkReply_sslConfiguration(self: pointer, ): pointer {.importc: "QNetworkReply_sslConfiguration".}
proc fcQNetworkReply_setSslConfiguration(self: pointer, configuration: pointer): void {.importc: "QNetworkReply_setSslConfiguration".}
proc fcQNetworkReply_ignoreSslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QNetworkReply_ignoreSslErrors".}
proc fcQNetworkReply_abort(self: pointer, ): void {.importc: "QNetworkReply_abort".}
proc fcQNetworkReply_ignoreSslErrors2(self: pointer, ): void {.importc: "QNetworkReply_ignoreSslErrors2".}
proc fcQNetworkReply_metaDataChanged(self: pointer, ): void {.importc: "QNetworkReply_metaDataChanged".}
proc fQNetworkReply_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QNetworkReply_connect_metaDataChanged".}
proc fcQNetworkReply_finished(self: pointer, ): void {.importc: "QNetworkReply_finished".}
proc fQNetworkReply_connect_finished(self: pointer, slot: int) {.importc: "QNetworkReply_connect_finished".}
proc fcQNetworkReply_errorWithQNetworkReplyNetworkError(self: pointer, param1: cint): void {.importc: "QNetworkReply_errorWithQNetworkReplyNetworkError".}
proc fQNetworkReply_connect_errorWithQNetworkReplyNetworkError(self: pointer, slot: int) {.importc: "QNetworkReply_connect_errorWithQNetworkReplyNetworkError".}
proc fcQNetworkReply_errorOccurred(self: pointer, param1: cint): void {.importc: "QNetworkReply_errorOccurred".}
proc fQNetworkReply_connect_errorOccurred(self: pointer, slot: int) {.importc: "QNetworkReply_connect_errorOccurred".}
proc fcQNetworkReply_encrypted(self: pointer, ): void {.importc: "QNetworkReply_encrypted".}
proc fQNetworkReply_connect_encrypted(self: pointer, slot: int) {.importc: "QNetworkReply_connect_encrypted".}
proc fcQNetworkReply_sslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QNetworkReply_sslErrors".}
proc fQNetworkReply_connect_sslErrors(self: pointer, slot: int) {.importc: "QNetworkReply_connect_sslErrors".}
proc fcQNetworkReply_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QNetworkReply_preSharedKeyAuthenticationRequired".}
proc fQNetworkReply_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QNetworkReply_connect_preSharedKeyAuthenticationRequired".}
proc fcQNetworkReply_redirected(self: pointer, url: pointer): void {.importc: "QNetworkReply_redirected".}
proc fQNetworkReply_connect_redirected(self: pointer, slot: int) {.importc: "QNetworkReply_connect_redirected".}
proc fcQNetworkReply_redirectAllowed(self: pointer, ): void {.importc: "QNetworkReply_redirectAllowed".}
proc fQNetworkReply_connect_redirectAllowed(self: pointer, slot: int) {.importc: "QNetworkReply_connect_redirectAllowed".}
proc fcQNetworkReply_uploadProgress(self: pointer, bytesSent: clonglong, bytesTotal: clonglong): void {.importc: "QNetworkReply_uploadProgress".}
proc fQNetworkReply_connect_uploadProgress(self: pointer, slot: int) {.importc: "QNetworkReply_connect_uploadProgress".}
proc fcQNetworkReply_downloadProgress(self: pointer, bytesReceived: clonglong, bytesTotal: clonglong): void {.importc: "QNetworkReply_downloadProgress".}
proc fQNetworkReply_connect_downloadProgress(self: pointer, slot: int) {.importc: "QNetworkReply_connect_downloadProgress".}
proc fcQNetworkReply_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkReply_tr2".}
proc fcQNetworkReply_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkReply_tr3".}
proc fcQNetworkReply_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkReply_trUtf82".}
proc fcQNetworkReply_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkReply_trUtf83".}
proc fcQNetworkReply_delete(self: pointer) {.importc: "QNetworkReply_delete".}


func init*(T: type QNetworkReply, h: ptr cQNetworkReply): QNetworkReply =
  T(h: h)
proc metaObject*(self: QNetworkReply, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkReply_metaObject(self.h))

proc metacast*(self: QNetworkReply, param1: cstring): pointer =

  fcQNetworkReply_metacast(self.h, param1)

proc metacall*(self: QNetworkReply, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkReply_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkReply, s: cstring): string =

  let v_ms = fcQNetworkReply_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QNetworkReply, s: cstring): string =

  let v_ms = fcQNetworkReply_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc close*(self: QNetworkReply, ): void =

  fcQNetworkReply_close(self.h)

proc isSequential*(self: QNetworkReply, ): bool =

  fcQNetworkReply_isSequential(self.h)

proc readBufferSize*(self: QNetworkReply, ): clonglong =

  fcQNetworkReply_readBufferSize(self.h)

proc setReadBufferSize*(self: QNetworkReply, size: clonglong): void =

  fcQNetworkReply_setReadBufferSize(self.h, size)

proc manager*(self: QNetworkReply, ): gen_qnetworkaccessmanager.QNetworkAccessManager =

  gen_qnetworkaccessmanager.QNetworkAccessManager(h: fcQNetworkReply_manager(self.h))

proc operation*(self: QNetworkReply, ): gen_qnetworkaccessmanager.QNetworkAccessManagerOperation =

  gen_qnetworkaccessmanager.QNetworkAccessManagerOperation(fcQNetworkReply_operation(self.h))

proc request*(self: QNetworkReply, ): gen_qnetworkrequest.QNetworkRequest =

  gen_qnetworkrequest.QNetworkRequest(h: fcQNetworkReply_request(self.h))

proc error*(self: QNetworkReply, ): QNetworkReplyNetworkError =

  QNetworkReplyNetworkError(fcQNetworkReply_error(self.h))

proc isFinished*(self: QNetworkReply, ): bool =

  fcQNetworkReply_isFinished(self.h)

proc isRunning*(self: QNetworkReply, ): bool =

  fcQNetworkReply_isRunning(self.h)

proc url*(self: QNetworkReply, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQNetworkReply_url(self.h))

proc header*(self: QNetworkReply, header: gen_qnetworkrequest.QNetworkRequestKnownHeaders): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkReply_header(self.h, cint(header)))

proc hasRawHeader*(self: QNetworkReply, headerName: seq[byte]): bool =

  fcQNetworkReply_hasRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc rawHeaderList*(self: QNetworkReply, ): seq[seq[byte]] =

  var v_ma = fcQNetworkReply_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc rawHeader*(self: QNetworkReply, headerName: seq[byte]): seq[byte] =

  var v_bytearray = fcQNetworkReply_rawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc rawHeaderPairs*(self: QNetworkReply, ): seq[tuple[first: seq[byte], second: seq[byte]]] =

  var v_ma = fcQNetworkReply_rawHeaderPairs(self.h)
  var vx_ret = newSeq[tuple[first: seq[byte], second: seq[byte]]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    var vx_lv_first_bytearray = vx_lv_First_CArray[0]
    var vx_lv_firstx_ret = @(toOpenArrayByte(vx_lv_first_bytearray.data, 0, int(vx_lv_first_bytearray.len)-1))
    c_free(vx_lv_first_bytearray.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    var vx_lv_second_bytearray = vx_lv_Second_CArray[0]
    var vx_lv_secondx_ret = @(toOpenArrayByte(vx_lv_second_bytearray.data, 0, int(vx_lv_second_bytearray.len)-1))
    c_free(vx_lv_second_bytearray.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc attribute*(self: QNetworkReply, code: gen_qnetworkrequest.QNetworkRequestAttribute): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkReply_attribute(self.h, cint(code)))

proc sslConfiguration*(self: QNetworkReply, ): gen_qsslconfiguration.QSslConfiguration =

  gen_qsslconfiguration.QSslConfiguration(h: fcQNetworkReply_sslConfiguration(self.h))

proc setSslConfiguration*(self: QNetworkReply, configuration: gen_qsslconfiguration.QSslConfiguration): void =

  fcQNetworkReply_setSslConfiguration(self.h, configuration.h)

proc ignoreSslErrors*(self: QNetworkReply, errors: seq[gen_qsslerror.QSslError]): void =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkReply_ignoreSslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc abort*(self: QNetworkReply, ): void =

  fcQNetworkReply_abort(self.h)

proc ignoreSslErrors2*(self: QNetworkReply, ): void =

  fcQNetworkReply_ignoreSslErrors2(self.h)

proc metaDataChanged*(self: QNetworkReply, ): void =

  fcQNetworkReply_metaDataChanged(self.h)

proc miqt_exec_callback_QNetworkReply_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QNetworkReply, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc finished*(self: QNetworkReply, ): void =

  fcQNetworkReply_finished(self.h)

proc miqt_exec_callback_QNetworkReply_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QNetworkReply, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_finished(self.h, cast[int](addr tmp[]))
proc errorWithQNetworkReplyNetworkError*(self: QNetworkReply, param1: QNetworkReplyNetworkError): void =

  fcQNetworkReply_errorWithQNetworkReplyNetworkError(self.h, cint(param1))

proc miqt_exec_callback_QNetworkReply_errorWithQNetworkReplyNetworkError(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QNetworkReplyNetworkError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkReplyNetworkError(param1)


  nimfunc[](slotval1)

proc onerrorWithQNetworkReplyNetworkError*(self: QNetworkReply, slot: proc(param1: QNetworkReplyNetworkError)) =
  type Cb = proc(param1: QNetworkReplyNetworkError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_errorWithQNetworkReplyNetworkError(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QNetworkReply, param1: QNetworkReplyNetworkError): void =

  fcQNetworkReply_errorOccurred(self.h, cint(param1))

proc miqt_exec_callback_QNetworkReply_errorOccurred(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QNetworkReplyNetworkError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkReplyNetworkError(param1)


  nimfunc[](slotval1)

proc onerrorOccurred*(self: QNetworkReply, slot: proc(param1: QNetworkReplyNetworkError)) =
  type Cb = proc(param1: QNetworkReplyNetworkError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc encrypted*(self: QNetworkReply, ): void =

  fcQNetworkReply_encrypted(self.h)

proc miqt_exec_callback_QNetworkReply_encrypted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onencrypted*(self: QNetworkReply, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_encrypted(self.h, cast[int](addr tmp[]))
proc sslErrors*(self: QNetworkReply, errors: seq[gen_qsslerror.QSslError]): void =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkReply_sslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc miqt_exec_callback_QNetworkReply_sslErrors(slot: int, errors: struct_miqt_array) {.exportc.} =
  type Cb = proc(errors: seq[gen_qsslerror.QSslError])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror.QSslError(h: verrors_outCast[i])
  let slotval1 = verrorsx_ret


  nimfunc[](slotval1)

proc onsslErrors*(self: QNetworkReply, slot: proc(errors: seq[gen_qsslerror.QSslError])) =
  type Cb = proc(errors: seq[gen_qsslerror.QSslError])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_sslErrors(self.h, cast[int](addr tmp[]))
proc preSharedKeyAuthenticationRequired*(self: QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator): void =

  fcQNetworkReply_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

proc miqt_exec_callback_QNetworkReply_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.exportc.} =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator(h: authenticator)


  nimfunc[](slotval1)

proc onpreSharedKeyAuthenticationRequired*(self: QNetworkReply, slot: proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)) =
  type Cb = proc(authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc redirected*(self: QNetworkReply, url: gen_qurl.QUrl): void =

  fcQNetworkReply_redirected(self.h, url.h)

proc miqt_exec_callback_QNetworkReply_redirected(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onredirected*(self: QNetworkReply, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_redirected(self.h, cast[int](addr tmp[]))
proc redirectAllowed*(self: QNetworkReply, ): void =

  fcQNetworkReply_redirectAllowed(self.h)

proc miqt_exec_callback_QNetworkReply_redirectAllowed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onredirectAllowed*(self: QNetworkReply, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_redirectAllowed(self.h, cast[int](addr tmp[]))
proc uploadProgress*(self: QNetworkReply, bytesSent: clonglong, bytesTotal: clonglong): void =

  fcQNetworkReply_uploadProgress(self.h, bytesSent, bytesTotal)

proc miqt_exec_callback_QNetworkReply_uploadProgress(slot: int, bytesSent: clonglong, bytesTotal: clonglong) {.exportc.} =
  type Cb = proc(bytesSent: clonglong, bytesTotal: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bytesSent

  let slotval2 = bytesTotal


  nimfunc[](slotval1, slotval2)

proc onuploadProgress*(self: QNetworkReply, slot: proc(bytesSent: clonglong, bytesTotal: clonglong)) =
  type Cb = proc(bytesSent: clonglong, bytesTotal: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_uploadProgress(self.h, cast[int](addr tmp[]))
proc downloadProgress*(self: QNetworkReply, bytesReceived: clonglong, bytesTotal: clonglong): void =

  fcQNetworkReply_downloadProgress(self.h, bytesReceived, bytesTotal)

proc miqt_exec_callback_QNetworkReply_downloadProgress(slot: int, bytesReceived: clonglong, bytesTotal: clonglong) {.exportc.} =
  type Cb = proc(bytesReceived: clonglong, bytesTotal: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bytesReceived

  let slotval2 = bytesTotal


  nimfunc[](slotval1, slotval2)

proc ondownloadProgress*(self: QNetworkReply, slot: proc(bytesReceived: clonglong, bytesTotal: clonglong)) =
  type Cb = proc(bytesReceived: clonglong, bytesTotal: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkReply_connect_downloadProgress(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QNetworkReply, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkReply_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkReply, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkReply_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QNetworkReply, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkReply_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QNetworkReply, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkReply_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QNetworkReply) =
  fcQNetworkReply_delete(self.h)
