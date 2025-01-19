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
{.compile("gen_qwebenginedownloaditem.cpp", cflags).}


type QWebEngineDownloadItemDownloadState* = cint
const
  QWebEngineDownloadItemDownloadRequested* = 0
  QWebEngineDownloadItemDownloadInProgress* = 1
  QWebEngineDownloadItemDownloadCompleted* = 2
  QWebEngineDownloadItemDownloadCancelled* = 3
  QWebEngineDownloadItemDownloadInterrupted* = 4



type QWebEngineDownloadItemSavePageFormat* = cint
const
  QWebEngineDownloadItemUnknownSaveFormat* = -1
  QWebEngineDownloadItemSingleHtmlSaveFormat* = 0
  QWebEngineDownloadItemCompleteHtmlSaveFormat* = 1
  QWebEngineDownloadItemMimeHtmlSaveFormat* = 2



type QWebEngineDownloadItemDownloadInterruptReason* = cint
const
  QWebEngineDownloadItemNoReason* = 0
  QWebEngineDownloadItemFileFailed* = 1
  QWebEngineDownloadItemFileAccessDenied* = 2
  QWebEngineDownloadItemFileNoSpace* = 3
  QWebEngineDownloadItemFileNameTooLong* = 5
  QWebEngineDownloadItemFileTooLarge* = 6
  QWebEngineDownloadItemFileVirusInfected* = 7
  QWebEngineDownloadItemFileTransientError* = 10
  QWebEngineDownloadItemFileBlocked* = 11
  QWebEngineDownloadItemFileSecurityCheckFailed* = 12
  QWebEngineDownloadItemFileTooShort* = 13
  QWebEngineDownloadItemFileHashMismatch* = 14
  QWebEngineDownloadItemNetworkFailed* = 20
  QWebEngineDownloadItemNetworkTimeout* = 21
  QWebEngineDownloadItemNetworkDisconnected* = 22
  QWebEngineDownloadItemNetworkServerDown* = 23
  QWebEngineDownloadItemNetworkInvalidRequest* = 24
  QWebEngineDownloadItemServerFailed* = 30
  QWebEngineDownloadItemServerBadContent* = 33
  QWebEngineDownloadItemServerUnauthorized* = 34
  QWebEngineDownloadItemServerCertProblem* = 35
  QWebEngineDownloadItemServerForbidden* = 36
  QWebEngineDownloadItemServerUnreachable* = 37
  QWebEngineDownloadItemUserCanceled* = 40



type QWebEngineDownloadItemDownloadType* = cint
const
  QWebEngineDownloadItemAttachment* = 0
  QWebEngineDownloadItemDownloadAttribute* = 1
  QWebEngineDownloadItemUserRequested* = 2
  QWebEngineDownloadItemSavePage* = 3



import gen_qwebenginedownloaditem_types
export gen_qwebenginedownloaditem_types

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

type cQWebEngineDownloadItem*{.exportc: "QWebEngineDownloadItem", incompleteStruct.} = object

proc fcQWebEngineDownloadItem_metaObject(self: pointer, ): pointer {.importc: "QWebEngineDownloadItem_metaObject".}
proc fcQWebEngineDownloadItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineDownloadItem_metacast".}
proc fcQWebEngineDownloadItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineDownloadItem_metacall".}
proc fcQWebEngineDownloadItem_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineDownloadItem_tr".}
proc fcQWebEngineDownloadItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineDownloadItem_trUtf8".}
proc fcQWebEngineDownloadItem_id(self: pointer, ): cuint {.importc: "QWebEngineDownloadItem_id".}
proc fcQWebEngineDownloadItem_state(self: pointer, ): cint {.importc: "QWebEngineDownloadItem_state".}
proc fcQWebEngineDownloadItem_totalBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadItem_totalBytes".}
proc fcQWebEngineDownloadItem_receivedBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadItem_receivedBytes".}
proc fcQWebEngineDownloadItem_url(self: pointer, ): pointer {.importc: "QWebEngineDownloadItem_url".}
proc fcQWebEngineDownloadItem_mimeType(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_mimeType".}
proc fcQWebEngineDownloadItem_path(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_path".}
proc fcQWebEngineDownloadItem_setPath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineDownloadItem_setPath".}
proc fcQWebEngineDownloadItem_isFinished(self: pointer, ): bool {.importc: "QWebEngineDownloadItem_isFinished".}
proc fcQWebEngineDownloadItem_isPaused(self: pointer, ): bool {.importc: "QWebEngineDownloadItem_isPaused".}
proc fcQWebEngineDownloadItem_savePageFormat(self: pointer, ): cint {.importc: "QWebEngineDownloadItem_savePageFormat".}
proc fcQWebEngineDownloadItem_setSavePageFormat(self: pointer, format: cint): void {.importc: "QWebEngineDownloadItem_setSavePageFormat".}
proc fcQWebEngineDownloadItem_typeX(self: pointer, ): cint {.importc: "QWebEngineDownloadItem_type".}
proc fcQWebEngineDownloadItem_interruptReason(self: pointer, ): cint {.importc: "QWebEngineDownloadItem_interruptReason".}
proc fcQWebEngineDownloadItem_interruptReasonString(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_interruptReasonString".}
proc fcQWebEngineDownloadItem_isSavePageDownload(self: pointer, ): bool {.importc: "QWebEngineDownloadItem_isSavePageDownload".}
proc fcQWebEngineDownloadItem_suggestedFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_suggestedFileName".}
proc fcQWebEngineDownloadItem_downloadDirectory(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_downloadDirectory".}
proc fcQWebEngineDownloadItem_setDownloadDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QWebEngineDownloadItem_setDownloadDirectory".}
proc fcQWebEngineDownloadItem_downloadFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadItem_downloadFileName".}
proc fcQWebEngineDownloadItem_setDownloadFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QWebEngineDownloadItem_setDownloadFileName".}
proc fcQWebEngineDownloadItem_page(self: pointer, ): pointer {.importc: "QWebEngineDownloadItem_page".}
proc fcQWebEngineDownloadItem_accept(self: pointer, ): void {.importc: "QWebEngineDownloadItem_accept".}
proc fcQWebEngineDownloadItem_cancel(self: pointer, ): void {.importc: "QWebEngineDownloadItem_cancel".}
proc fcQWebEngineDownloadItem_pause(self: pointer, ): void {.importc: "QWebEngineDownloadItem_pause".}
proc fcQWebEngineDownloadItem_resume(self: pointer, ): void {.importc: "QWebEngineDownloadItem_resume".}
proc fcQWebEngineDownloadItem_finished(self: pointer, ): void {.importc: "QWebEngineDownloadItem_finished".}
proc fQWebEngineDownloadItem_connect_finished(self: pointer, slot: int) {.importc: "QWebEngineDownloadItem_connect_finished".}
proc fcQWebEngineDownloadItem_stateChanged(self: pointer, state: cint): void {.importc: "QWebEngineDownloadItem_stateChanged".}
proc fQWebEngineDownloadItem_connect_stateChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadItem_connect_stateChanged".}
proc fcQWebEngineDownloadItem_downloadProgress(self: pointer, bytesReceived: clonglong, bytesTotal: clonglong): void {.importc: "QWebEngineDownloadItem_downloadProgress".}
proc fQWebEngineDownloadItem_connect_downloadProgress(self: pointer, slot: int) {.importc: "QWebEngineDownloadItem_connect_downloadProgress".}
proc fcQWebEngineDownloadItem_isPausedChanged(self: pointer, isPaused: bool): void {.importc: "QWebEngineDownloadItem_isPausedChanged".}
proc fQWebEngineDownloadItem_connect_isPausedChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadItem_connect_isPausedChanged".}
proc fcQWebEngineDownloadItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineDownloadItem_tr2".}
proc fcQWebEngineDownloadItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineDownloadItem_tr3".}
proc fcQWebEngineDownloadItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineDownloadItem_trUtf82".}
proc fcQWebEngineDownloadItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineDownloadItem_trUtf83".}
proc fcQWebEngineDownloadItem_staticMetaObject(): pointer {.importc: "QWebEngineDownloadItem_staticMetaObject".}
proc fcQWebEngineDownloadItem_delete(self: pointer) {.importc: "QWebEngineDownloadItem_delete".}


func init*(T: type QWebEngineDownloadItem, h: ptr cQWebEngineDownloadItem): QWebEngineDownloadItem =
  T(h: h)
proc metaObject*(self: QWebEngineDownloadItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineDownloadItem_metaObject(self.h))

proc metacast*(self: QWebEngineDownloadItem, param1: cstring): pointer =

  fcQWebEngineDownloadItem_metacast(self.h, param1)

proc metacall*(self: QWebEngineDownloadItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineDownloadItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineDownloadItem, s: cstring): string =

  let v_ms = fcQWebEngineDownloadItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebEngineDownloadItem, s: cstring): string =

  let v_ms = fcQWebEngineDownloadItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc id*(self: QWebEngineDownloadItem, ): cuint =

  fcQWebEngineDownloadItem_id(self.h)

proc state*(self: QWebEngineDownloadItem, ): QWebEngineDownloadItemDownloadState =

  QWebEngineDownloadItemDownloadState(fcQWebEngineDownloadItem_state(self.h))

proc totalBytes*(self: QWebEngineDownloadItem, ): clonglong =

  fcQWebEngineDownloadItem_totalBytes(self.h)

proc receivedBytes*(self: QWebEngineDownloadItem, ): clonglong =

  fcQWebEngineDownloadItem_receivedBytes(self.h)

proc url*(self: QWebEngineDownloadItem, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineDownloadItem_url(self.h))

proc mimeType*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_mimeType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc path*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPath*(self: QWebEngineDownloadItem, path: string): void =

  fcQWebEngineDownloadItem_setPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc isFinished*(self: QWebEngineDownloadItem, ): bool =

  fcQWebEngineDownloadItem_isFinished(self.h)

proc isPaused*(self: QWebEngineDownloadItem, ): bool =

  fcQWebEngineDownloadItem_isPaused(self.h)

proc savePageFormat*(self: QWebEngineDownloadItem, ): QWebEngineDownloadItemSavePageFormat =

  QWebEngineDownloadItemSavePageFormat(fcQWebEngineDownloadItem_savePageFormat(self.h))

proc setSavePageFormat*(self: QWebEngineDownloadItem, format: QWebEngineDownloadItemSavePageFormat): void =

  fcQWebEngineDownloadItem_setSavePageFormat(self.h, cint(format))

proc typeX*(self: QWebEngineDownloadItem, ): QWebEngineDownloadItemDownloadType =

  QWebEngineDownloadItemDownloadType(fcQWebEngineDownloadItem_typeX(self.h))

proc interruptReason*(self: QWebEngineDownloadItem, ): QWebEngineDownloadItemDownloadInterruptReason =

  QWebEngineDownloadItemDownloadInterruptReason(fcQWebEngineDownloadItem_interruptReason(self.h))

proc interruptReasonString*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_interruptReasonString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavePageDownload*(self: QWebEngineDownloadItem, ): bool =

  fcQWebEngineDownloadItem_isSavePageDownload(self.h)

proc suggestedFileName*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_suggestedFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc downloadDirectory*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_downloadDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadDirectory*(self: QWebEngineDownloadItem, directory: string): void =

  fcQWebEngineDownloadItem_setDownloadDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc downloadFileName*(self: QWebEngineDownloadItem, ): string =

  let v_ms = fcQWebEngineDownloadItem_downloadFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadFileName*(self: QWebEngineDownloadItem, fileName: string): void =

  fcQWebEngineDownloadItem_setDownloadFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc page*(self: QWebEngineDownloadItem, ): gen_qwebenginepage.QWebEnginePage =

  gen_qwebenginepage.QWebEnginePage(h: fcQWebEngineDownloadItem_page(self.h))

proc accept*(self: QWebEngineDownloadItem, ): void =

  fcQWebEngineDownloadItem_accept(self.h)

proc cancel*(self: QWebEngineDownloadItem, ): void =

  fcQWebEngineDownloadItem_cancel(self.h)

proc pause*(self: QWebEngineDownloadItem, ): void =

  fcQWebEngineDownloadItem_pause(self.h)

proc resume*(self: QWebEngineDownloadItem, ): void =

  fcQWebEngineDownloadItem_resume(self.h)

proc finished*(self: QWebEngineDownloadItem, ): void =

  fcQWebEngineDownloadItem_finished(self.h)

proc miqt_exec_callback_QWebEngineDownloadItem_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QWebEngineDownloadItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_finished(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QWebEngineDownloadItem, state: QWebEngineDownloadItemDownloadState): void =

  fcQWebEngineDownloadItem_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QWebEngineDownloadItem_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: QWebEngineDownloadItemDownloadState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QWebEngineDownloadItemDownloadState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QWebEngineDownloadItem, slot: proc(state: QWebEngineDownloadItemDownloadState)) =
  type Cb = proc(state: QWebEngineDownloadItemDownloadState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc downloadProgress*(self: QWebEngineDownloadItem, bytesReceived: clonglong, bytesTotal: clonglong): void =

  fcQWebEngineDownloadItem_downloadProgress(self.h, bytesReceived, bytesTotal)

proc miqt_exec_callback_QWebEngineDownloadItem_downloadProgress(slot: int, bytesReceived: clonglong, bytesTotal: clonglong) {.exportc.} =
  type Cb = proc(bytesReceived: clonglong, bytesTotal: clonglong)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bytesReceived

  let slotval2 = bytesTotal


  nimfunc[](slotval1, slotval2)

proc ondownloadProgress*(self: QWebEngineDownloadItem, slot: proc(bytesReceived: clonglong, bytesTotal: clonglong)) =
  type Cb = proc(bytesReceived: clonglong, bytesTotal: clonglong)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_downloadProgress(self.h, cast[int](addr tmp[]))
proc isPausedChanged*(self: QWebEngineDownloadItem, isPaused: bool): void =

  fcQWebEngineDownloadItem_isPausedChanged(self.h, isPaused)

proc miqt_exec_callback_QWebEngineDownloadItem_isPausedChanged(slot: int, isPaused: bool) {.exportc.} =
  type Cb = proc(isPaused: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = isPaused


  nimfunc[](slotval1)

proc onisPausedChanged*(self: QWebEngineDownloadItem, slot: proc(isPaused: bool)) =
  type Cb = proc(isPaused: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_isPausedChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineDownloadItem, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineDownloadItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineDownloadItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineDownloadItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebEngineDownloadItem, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineDownloadItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebEngineDownloadItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineDownloadItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QWebEngineDownloadItem): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineDownloadItem_staticMetaObject())
proc delete*(self: QWebEngineDownloadItem) =
  fcQWebEngineDownloadItem_delete(self.h)
