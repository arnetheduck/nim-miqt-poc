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

const cflags = gorge("pkg-config --cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginedownloaditem.cpp", cflags).}


type QWebEngineDownloadItemDownloadStateEnum* = distinct cint
template DownloadRequested*(_: type QWebEngineDownloadItemDownloadStateEnum): untyped = 0
template DownloadInProgress*(_: type QWebEngineDownloadItemDownloadStateEnum): untyped = 1
template DownloadCompleted*(_: type QWebEngineDownloadItemDownloadStateEnum): untyped = 2
template DownloadCancelled*(_: type QWebEngineDownloadItemDownloadStateEnum): untyped = 3
template DownloadInterrupted*(_: type QWebEngineDownloadItemDownloadStateEnum): untyped = 4


type QWebEngineDownloadItemSavePageFormatEnum* = distinct cint
template UnknownSaveFormat*(_: type QWebEngineDownloadItemSavePageFormatEnum): untyped = -1
template SingleHtmlSaveFormat*(_: type QWebEngineDownloadItemSavePageFormatEnum): untyped = 0
template CompleteHtmlSaveFormat*(_: type QWebEngineDownloadItemSavePageFormatEnum): untyped = 1
template MimeHtmlSaveFormat*(_: type QWebEngineDownloadItemSavePageFormatEnum): untyped = 2


type QWebEngineDownloadItemDownloadInterruptReasonEnum* = distinct cint
template NoReason*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 0
template FileFailed*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 1
template FileAccessDenied*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 2
template FileNoSpace*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 3
template FileNameTooLong*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 5
template FileTooLarge*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 6
template FileVirusInfected*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 7
template FileTransientError*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 10
template FileBlocked*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 11
template FileSecurityCheckFailed*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 12
template FileTooShort*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 13
template FileHashMismatch*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 14
template NetworkFailed*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 20
template NetworkTimeout*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 21
template NetworkDisconnected*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 22
template NetworkServerDown*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 23
template NetworkInvalidRequest*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 24
template ServerFailed*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 30
template ServerBadContent*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 33
template ServerUnauthorized*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 34
template ServerCertProblem*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 35
template ServerForbidden*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 36
template ServerUnreachable*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 37
template UserCanceled*(_: type QWebEngineDownloadItemDownloadInterruptReasonEnum): untyped = 40


type QWebEngineDownloadItemDownloadTypeEnum* = distinct cint
template Attachment*(_: type QWebEngineDownloadItemDownloadTypeEnum): untyped = 0
template DownloadAttribute*(_: type QWebEngineDownloadItemDownloadTypeEnum): untyped = 1
template UserRequested*(_: type QWebEngineDownloadItemDownloadTypeEnum): untyped = 2
template SavePage*(_: type QWebEngineDownloadItemDownloadTypeEnum): untyped = 3


import gen_qwebenginedownloaditem_types
export gen_qwebenginedownloaditem_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qwebenginepage_types
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qwebenginepage_types

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


func init*(T: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, h: ptr cQWebEngineDownloadItem): gen_qwebenginedownloaditem_types.QWebEngineDownloadItem =
  T(h: h)
proc metaObject*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineDownloadItem_metaObject(self.h))

proc metacast*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, param1: cstring): pointer =
  fcQWebEngineDownloadItem_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineDownloadItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring): string =
  let v_ms = fcQWebEngineDownloadItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring): string =
  let v_ms = fcQWebEngineDownloadItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc id*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): cuint =
  fcQWebEngineDownloadItem_id(self.h)

proc state*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): cint =
  cint(fcQWebEngineDownloadItem_state(self.h))

proc totalBytes*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): clonglong =
  fcQWebEngineDownloadItem_totalBytes(self.h)

proc receivedBytes*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): clonglong =
  fcQWebEngineDownloadItem_receivedBytes(self.h)

proc url*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineDownloadItem_url(self.h))

proc mimeType*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_mimeType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc path*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPath*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, path: string): void =
  fcQWebEngineDownloadItem_setPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc isFinished*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): bool =
  fcQWebEngineDownloadItem_isFinished(self.h)

proc isPaused*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): bool =
  fcQWebEngineDownloadItem_isPaused(self.h)

proc savePageFormat*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): cint =
  cint(fcQWebEngineDownloadItem_savePageFormat(self.h))

proc setSavePageFormat*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, format: cint): void =
  fcQWebEngineDownloadItem_setSavePageFormat(self.h, cint(format))

proc typeX*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): cint =
  cint(fcQWebEngineDownloadItem_typeX(self.h))

proc interruptReason*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): cint =
  cint(fcQWebEngineDownloadItem_interruptReason(self.h))

proc interruptReasonString*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_interruptReasonString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavePageDownload*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): bool =
  fcQWebEngineDownloadItem_isSavePageDownload(self.h)

proc suggestedFileName*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_suggestedFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc downloadDirectory*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_downloadDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadDirectory*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, directory: string): void =
  fcQWebEngineDownloadItem_setDownloadDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc downloadFileName*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): string =
  let v_ms = fcQWebEngineDownloadItem_downloadFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadFileName*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, fileName: string): void =
  fcQWebEngineDownloadItem_setDownloadFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc page*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): gen_qwebenginepage_types.QWebEnginePage =
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEngineDownloadItem_page(self.h))

proc accept*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): void =
  fcQWebEngineDownloadItem_accept(self.h)

proc cancel*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): void =
  fcQWebEngineDownloadItem_cancel(self.h)

proc pause*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): void =
  fcQWebEngineDownloadItem_pause(self.h)

proc resume*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): void =
  fcQWebEngineDownloadItem_resume(self.h)

proc finished*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, ): void =
  fcQWebEngineDownloadItem_finished(self.h)

type QWebEngineDownloadItemfinishedSlot* = proc()
proc miqt_exec_callback_QWebEngineDownloadItem_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineDownloadItemfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, slot: QWebEngineDownloadItemfinishedSlot) =
  var tmp = new QWebEngineDownloadItemfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_finished(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, state: cint): void =
  fcQWebEngineDownloadItem_stateChanged(self.h, cint(state))

type QWebEngineDownloadItemstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QWebEngineDownloadItem_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineDownloadItemstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, slot: QWebEngineDownloadItemstateChangedSlot) =
  var tmp = new QWebEngineDownloadItemstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc downloadProgress*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, bytesReceived: clonglong, bytesTotal: clonglong): void =
  fcQWebEngineDownloadItem_downloadProgress(self.h, bytesReceived, bytesTotal)

type QWebEngineDownloadItemdownloadProgressSlot* = proc(bytesReceived: clonglong, bytesTotal: clonglong)
proc miqt_exec_callback_QWebEngineDownloadItem_downloadProgress(slot: int, bytesReceived: clonglong, bytesTotal: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineDownloadItemdownloadProgressSlot](cast[pointer](slot))
  let slotval1 = bytesReceived

  let slotval2 = bytesTotal

  nimfunc[](slotval1, slotval2)

proc ondownloadProgress*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, slot: QWebEngineDownloadItemdownloadProgressSlot) =
  var tmp = new QWebEngineDownloadItemdownloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_downloadProgress(self.h, cast[int](addr tmp[]))

proc isPausedChanged*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, isPaused: bool): void =
  fcQWebEngineDownloadItem_isPausedChanged(self.h, isPaused)

type QWebEngineDownloadItemisPausedChangedSlot* = proc(isPaused: bool)
proc miqt_exec_callback_QWebEngineDownloadItem_isPausedChanged(slot: int, isPaused: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineDownloadItemisPausedChangedSlot](cast[pointer](slot))
  let slotval1 = isPaused

  nimfunc[](slotval1)

proc onisPausedChanged*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, slot: QWebEngineDownloadItemisPausedChangedSlot) =
  var tmp = new QWebEngineDownloadItemisPausedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineDownloadItem_connect_isPausedChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineDownloadItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineDownloadItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineDownloadItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineDownloadItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebenginedownloaditem_types.QWebEngineDownloadItem): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineDownloadItem_staticMetaObject())
proc delete*(self: gen_qwebenginedownloaditem_types.QWebEngineDownloadItem) =
  fcQWebEngineDownloadItem_delete(self.h)
