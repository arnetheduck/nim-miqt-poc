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
{.compile("gen_qwebenginedownloadrequest.cpp", cflags).}


type QWebEngineDownloadRequestDownloadState* = cint
const
  QWebEngineDownloadRequestDownloadRequested* = 0
  QWebEngineDownloadRequestDownloadInProgress* = 1
  QWebEngineDownloadRequestDownloadCompleted* = 2
  QWebEngineDownloadRequestDownloadCancelled* = 3
  QWebEngineDownloadRequestDownloadInterrupted* = 4



type QWebEngineDownloadRequestSavePageFormat* = cint
const
  QWebEngineDownloadRequestUnknownSaveFormat* = -1
  QWebEngineDownloadRequestSingleHtmlSaveFormat* = 0
  QWebEngineDownloadRequestCompleteHtmlSaveFormat* = 1
  QWebEngineDownloadRequestMimeHtmlSaveFormat* = 2



type QWebEngineDownloadRequestDownloadInterruptReason* = cint
const
  QWebEngineDownloadRequestNoReason* = 0
  QWebEngineDownloadRequestFileFailed* = 1
  QWebEngineDownloadRequestFileAccessDenied* = 2
  QWebEngineDownloadRequestFileNoSpace* = 3
  QWebEngineDownloadRequestFileNameTooLong* = 5
  QWebEngineDownloadRequestFileTooLarge* = 6
  QWebEngineDownloadRequestFileVirusInfected* = 7
  QWebEngineDownloadRequestFileTransientError* = 10
  QWebEngineDownloadRequestFileBlocked* = 11
  QWebEngineDownloadRequestFileSecurityCheckFailed* = 12
  QWebEngineDownloadRequestFileTooShort* = 13
  QWebEngineDownloadRequestFileHashMismatch* = 14
  QWebEngineDownloadRequestNetworkFailed* = 20
  QWebEngineDownloadRequestNetworkTimeout* = 21
  QWebEngineDownloadRequestNetworkDisconnected* = 22
  QWebEngineDownloadRequestNetworkServerDown* = 23
  QWebEngineDownloadRequestNetworkInvalidRequest* = 24
  QWebEngineDownloadRequestServerFailed* = 30
  QWebEngineDownloadRequestServerBadContent* = 33
  QWebEngineDownloadRequestServerUnauthorized* = 34
  QWebEngineDownloadRequestServerCertProblem* = 35
  QWebEngineDownloadRequestServerForbidden* = 36
  QWebEngineDownloadRequestServerUnreachable* = 37
  QWebEngineDownloadRequestUserCanceled* = 40



import gen_qwebenginedownloadrequest_types
export gen_qwebenginedownloadrequest_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qwebenginepage
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qwebenginepage

type cQWebEngineDownloadRequest*{.exportc: "QWebEngineDownloadRequest", incompleteStruct.} = object

proc fcQWebEngineDownloadRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_metaObject".}
proc fcQWebEngineDownloadRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineDownloadRequest_metacast".}
proc fcQWebEngineDownloadRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineDownloadRequest_metacall".}
proc fcQWebEngineDownloadRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr".}
proc fcQWebEngineDownloadRequest_id(self: pointer, ): cuint {.importc: "QWebEngineDownloadRequest_id".}
proc fcQWebEngineDownloadRequest_state(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_state".}
proc fcQWebEngineDownloadRequest_totalBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadRequest_totalBytes".}
proc fcQWebEngineDownloadRequest_receivedBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadRequest_receivedBytes".}
proc fcQWebEngineDownloadRequest_url(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_url".}
proc fcQWebEngineDownloadRequest_mimeType(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_mimeType".}
proc fcQWebEngineDownloadRequest_isFinished(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isFinished".}
proc fcQWebEngineDownloadRequest_isPaused(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isPaused".}
proc fcQWebEngineDownloadRequest_savePageFormat(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_savePageFormat".}
proc fcQWebEngineDownloadRequest_setSavePageFormat(self: pointer, format: cint): void {.importc: "QWebEngineDownloadRequest_setSavePageFormat".}
proc fcQWebEngineDownloadRequest_interruptReason(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_interruptReason".}
proc fcQWebEngineDownloadRequest_interruptReasonString(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_interruptReasonString".}
proc fcQWebEngineDownloadRequest_isSavePageDownload(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isSavePageDownload".}
proc fcQWebEngineDownloadRequest_suggestedFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_suggestedFileName".}
proc fcQWebEngineDownloadRequest_downloadDirectory(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_downloadDirectory".}
proc fcQWebEngineDownloadRequest_setDownloadDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QWebEngineDownloadRequest_setDownloadDirectory".}
proc fcQWebEngineDownloadRequest_downloadFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_downloadFileName".}
proc fcQWebEngineDownloadRequest_setDownloadFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QWebEngineDownloadRequest_setDownloadFileName".}
proc fcQWebEngineDownloadRequest_page(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_page".}
proc fcQWebEngineDownloadRequest_accept(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_accept".}
proc fcQWebEngineDownloadRequest_cancel(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_cancel".}
proc fcQWebEngineDownloadRequest_pause(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_pause".}
proc fcQWebEngineDownloadRequest_resume(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_resume".}
proc fcQWebEngineDownloadRequest_stateChanged(self: pointer, state: cint): void {.importc: "QWebEngineDownloadRequest_stateChanged".}
proc fQWebEngineDownloadRequest_connect_stateChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_stateChanged".}
proc fcQWebEngineDownloadRequest_savePageFormatChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_savePageFormatChanged".}
proc fQWebEngineDownloadRequest_connect_savePageFormatChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_savePageFormatChanged".}
proc fcQWebEngineDownloadRequest_receivedBytesChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_receivedBytesChanged".}
proc fQWebEngineDownloadRequest_connect_receivedBytesChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_receivedBytesChanged".}
proc fcQWebEngineDownloadRequest_totalBytesChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_totalBytesChanged".}
proc fQWebEngineDownloadRequest_connect_totalBytesChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_totalBytesChanged".}
proc fcQWebEngineDownloadRequest_interruptReasonChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_interruptReasonChanged".}
proc fQWebEngineDownloadRequest_connect_interruptReasonChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_interruptReasonChanged".}
proc fcQWebEngineDownloadRequest_isFinishedChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_isFinishedChanged".}
proc fQWebEngineDownloadRequest_connect_isFinishedChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_isFinishedChanged".}
proc fcQWebEngineDownloadRequest_isPausedChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_isPausedChanged".}
proc fQWebEngineDownloadRequest_connect_isPausedChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_isPausedChanged".}
proc fcQWebEngineDownloadRequest_downloadDirectoryChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_downloadDirectoryChanged".}
proc fQWebEngineDownloadRequest_connect_downloadDirectoryChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_downloadDirectoryChanged".}
proc fcQWebEngineDownloadRequest_downloadFileNameChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_downloadFileNameChanged".}
proc fQWebEngineDownloadRequest_connect_downloadFileNameChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_downloadFileNameChanged".}
proc fcQWebEngineDownloadRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr2".}
proc fcQWebEngineDownloadRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr3".}
proc fcQWebEngineDownloadRequest_delete(self: pointer) {.importc: "QWebEngineDownloadRequest_delete".}


func init*(T: type QWebEngineDownloadRequest, h: ptr cQWebEngineDownloadRequest): QWebEngineDownloadRequest =
  T(h: h)
proc metaObject*(self: QWebEngineDownloadRequest, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineDownloadRequest_metaObject(self.h))

proc metacast*(self: QWebEngineDownloadRequest, param1: cstring): pointer =

  fcQWebEngineDownloadRequest_metacast(self.h, param1)

proc metacall*(self: QWebEngineDownloadRequest, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineDownloadRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineDownloadRequest, s: cstring): string =

  let v_ms = fcQWebEngineDownloadRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc id*(self: QWebEngineDownloadRequest, ): cuint =

  fcQWebEngineDownloadRequest_id(self.h)

proc state*(self: QWebEngineDownloadRequest, ): QWebEngineDownloadRequestDownloadState =

  QWebEngineDownloadRequestDownloadState(fcQWebEngineDownloadRequest_state(self.h))

proc totalBytes*(self: QWebEngineDownloadRequest, ): clonglong =

  fcQWebEngineDownloadRequest_totalBytes(self.h)

proc receivedBytes*(self: QWebEngineDownloadRequest, ): clonglong =

  fcQWebEngineDownloadRequest_receivedBytes(self.h)

proc url*(self: QWebEngineDownloadRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineDownloadRequest_url(self.h))

proc mimeType*(self: QWebEngineDownloadRequest, ): string =

  let v_ms = fcQWebEngineDownloadRequest_mimeType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: QWebEngineDownloadRequest, ): bool =

  fcQWebEngineDownloadRequest_isFinished(self.h)

proc isPaused*(self: QWebEngineDownloadRequest, ): bool =

  fcQWebEngineDownloadRequest_isPaused(self.h)

proc savePageFormat*(self: QWebEngineDownloadRequest, ): QWebEngineDownloadRequestSavePageFormat =

  QWebEngineDownloadRequestSavePageFormat(fcQWebEngineDownloadRequest_savePageFormat(self.h))

proc setSavePageFormat*(self: QWebEngineDownloadRequest, format: QWebEngineDownloadRequestSavePageFormat): void =

  fcQWebEngineDownloadRequest_setSavePageFormat(self.h, cint(format))

proc interruptReason*(self: QWebEngineDownloadRequest, ): QWebEngineDownloadRequestDownloadInterruptReason =

  QWebEngineDownloadRequestDownloadInterruptReason(fcQWebEngineDownloadRequest_interruptReason(self.h))

proc interruptReasonString*(self: QWebEngineDownloadRequest, ): string =

  let v_ms = fcQWebEngineDownloadRequest_interruptReasonString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavePageDownload*(self: QWebEngineDownloadRequest, ): bool =

  fcQWebEngineDownloadRequest_isSavePageDownload(self.h)

proc suggestedFileName*(self: QWebEngineDownloadRequest, ): string =

  let v_ms = fcQWebEngineDownloadRequest_suggestedFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc downloadDirectory*(self: QWebEngineDownloadRequest, ): string =

  let v_ms = fcQWebEngineDownloadRequest_downloadDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadDirectory*(self: QWebEngineDownloadRequest, directory: string): void =

  fcQWebEngineDownloadRequest_setDownloadDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc downloadFileName*(self: QWebEngineDownloadRequest, ): string =

  let v_ms = fcQWebEngineDownloadRequest_downloadFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadFileName*(self: QWebEngineDownloadRequest, fileName: string): void =

  fcQWebEngineDownloadRequest_setDownloadFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc page*(self: QWebEngineDownloadRequest, ): gen_qwebenginepage.QWebEnginePage =

  gen_qwebenginepage.QWebEnginePage(h: fcQWebEngineDownloadRequest_page(self.h))

proc accept*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_accept(self.h)

proc cancel*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_cancel(self.h)

proc pause*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_pause(self.h)

proc resume*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_resume(self.h)

proc stateChanged*(self: QWebEngineDownloadRequest, state: QWebEngineDownloadRequestDownloadState): void =

  fcQWebEngineDownloadRequest_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QWebEngineDownloadRequest_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QWebEngineDownloadRequestDownloadState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QWebEngineDownloadRequestDownloadState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QWebEngineDownloadRequest, slot: proc(state: QWebEngineDownloadRequestDownloadState)) =
  type Cb = proc(state: QWebEngineDownloadRequestDownloadState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc savePageFormatChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_savePageFormatChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_savePageFormatChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsavePageFormatChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_savePageFormatChanged(self.h, cast[int](addr tmp[]))
proc receivedBytesChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_receivedBytesChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_receivedBytesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onreceivedBytesChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_receivedBytesChanged(self.h, cast[int](addr tmp[]))
proc totalBytesChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_totalBytesChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_totalBytesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontotalBytesChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_totalBytesChanged(self.h, cast[int](addr tmp[]))
proc interruptReasonChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_interruptReasonChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_interruptReasonChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oninterruptReasonChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_interruptReasonChanged(self.h, cast[int](addr tmp[]))
proc isFinishedChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_isFinishedChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_isFinishedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onisFinishedChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_isFinishedChanged(self.h, cast[int](addr tmp[]))
proc isPausedChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_isPausedChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_isPausedChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onisPausedChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_isPausedChanged(self.h, cast[int](addr tmp[]))
proc downloadDirectoryChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_downloadDirectoryChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_downloadDirectoryChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondownloadDirectoryChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_downloadDirectoryChanged(self.h, cast[int](addr tmp[]))
proc downloadFileNameChanged*(self: QWebEngineDownloadRequest, ): void =

  fcQWebEngineDownloadRequest_downloadFileNameChanged(self.h)

proc miqt_exec_callback_QWebEngineDownloadRequest_downloadFileNameChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondownloadFileNameChanged*(self: QWebEngineDownloadRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadRequest_connect_downloadFileNameChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineDownloadRequest, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineDownloadRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineDownloadRequest, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineDownloadRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWebEngineDownloadRequest) =
  fcQWebEngineDownloadRequest_delete(self.h)
