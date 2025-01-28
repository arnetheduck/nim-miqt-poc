import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qsciapis.cpp", cflags).}

import gen_qsciapis_types
export gen_qsciapis_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciabstractapis,
  gen_qscilexer_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciabstractapis,
  gen_qscilexer_types

type cQsciAPIs*{.exportc: "QsciAPIs", incompleteStruct.} = object

proc fcQsciAPIs_metaObject(self: pointer, ): pointer {.importc: "QsciAPIs_metaObject".}
proc fcQsciAPIs_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAPIs_metacast".}
proc fcQsciAPIs_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAPIs_metacall".}
proc fcQsciAPIs_tr(s: cstring): struct_miqt_string {.importc: "QsciAPIs_tr".}
proc fcQsciAPIs_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciAPIs_trUtf8".}
proc fcQsciAPIs_add(self: pointer, entry: struct_miqt_string): void {.importc: "QsciAPIs_add".}
proc fcQsciAPIs_clear(self: pointer, ): void {.importc: "QsciAPIs_clear".}
proc fcQsciAPIs_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_load".}
proc fcQsciAPIs_remove(self: pointer, entry: struct_miqt_string): void {.importc: "QsciAPIs_remove".}
proc fcQsciAPIs_prepare(self: pointer, ): void {.importc: "QsciAPIs_prepare".}
proc fcQsciAPIs_cancelPreparation(self: pointer, ): void {.importc: "QsciAPIs_cancelPreparation".}
proc fcQsciAPIs_defaultPreparedName(self: pointer, ): struct_miqt_string {.importc: "QsciAPIs_defaultPreparedName".}
proc fcQsciAPIs_isPrepared(self: pointer, ): bool {.importc: "QsciAPIs_isPrepared".}
proc fcQsciAPIs_loadPrepared(self: pointer, ): bool {.importc: "QsciAPIs_loadPrepared".}
proc fcQsciAPIs_savePrepared(self: pointer, ): bool {.importc: "QsciAPIs_savePrepared".}
proc fcQsciAPIs_updateAutoCompletionList(self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.importc: "QsciAPIs_updateAutoCompletionList".}
proc fcQsciAPIs_autoCompletionSelected(self: pointer, sel: struct_miqt_string): void {.importc: "QsciAPIs_autoCompletionSelected".}
proc fcQsciAPIs_callTips(self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.importc: "QsciAPIs_callTips".}
proc fcQsciAPIs_event(self: pointer, e: pointer): bool {.importc: "QsciAPIs_event".}
proc fcQsciAPIs_installedAPIFiles(self: pointer, ): struct_miqt_array {.importc: "QsciAPIs_installedAPIFiles".}
proc fcQsciAPIs_apiPreparationCancelled(self: pointer, ): void {.importc: "QsciAPIs_apiPreparationCancelled".}
proc fcQsciAPIs_connect_apiPreparationCancelled(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationCancelled".}
proc fcQsciAPIs_apiPreparationStarted(self: pointer, ): void {.importc: "QsciAPIs_apiPreparationStarted".}
proc fcQsciAPIs_connect_apiPreparationStarted(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationStarted".}
proc fcQsciAPIs_apiPreparationFinished(self: pointer, ): void {.importc: "QsciAPIs_apiPreparationFinished".}
proc fcQsciAPIs_connect_apiPreparationFinished(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationFinished".}
proc fcQsciAPIs_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAPIs_tr2".}
proc fcQsciAPIs_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAPIs_tr3".}
proc fcQsciAPIs_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAPIs_trUtf82".}
proc fcQsciAPIs_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAPIs_trUtf83".}
proc fcQsciAPIs_isPrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_isPrepared1".}
proc fcQsciAPIs_loadPrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_loadPrepared1".}
proc fcQsciAPIs_savePrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_savePrepared1".}
type cQsciAPIsVTable = object
  destructor*: proc(vtbl: ptr cQsciAPIsVTable, self: ptr cQsciAPIs) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateAutoCompletionList*: proc(vtbl, self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  autoCompletionSelected*: proc(vtbl, self: pointer, sel: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  callTips*: proc(vtbl, self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciAPIs_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciAPIs_virtualbase_metaObject".}
proc fcQsciAPIs_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAPIs_virtualbase_metacast".}
proc fcQsciAPIs_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAPIs_virtualbase_metacall".}
proc fcQsciAPIs_virtualbase_updateAutoCompletionList(self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.importc: "QsciAPIs_virtualbase_updateAutoCompletionList".}
proc fcQsciAPIs_virtualbase_autoCompletionSelected(self: pointer, sel: struct_miqt_string): void {.importc: "QsciAPIs_virtualbase_autoCompletionSelected".}
proc fcQsciAPIs_virtualbase_callTips(self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.importc: "QsciAPIs_virtualbase_callTips".}
proc fcQsciAPIs_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QsciAPIs_virtualbase_event".}
proc fcQsciAPIs_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciAPIs_virtualbase_eventFilter".}
proc fcQsciAPIs_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciAPIs_virtualbase_timerEvent".}
proc fcQsciAPIs_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciAPIs_virtualbase_childEvent".}
proc fcQsciAPIs_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciAPIs_virtualbase_customEvent".}
proc fcQsciAPIs_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciAPIs_virtualbase_connectNotify".}
proc fcQsciAPIs_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciAPIs_virtualbase_disconnectNotify".}
proc fcQsciAPIs_new(vtbl: pointer, lexer: pointer): ptr cQsciAPIs {.importc: "QsciAPIs_new".}
proc fcQsciAPIs_staticMetaObject(): pointer {.importc: "QsciAPIs_staticMetaObject".}
proc fcQsciAPIs_delete(self: pointer) {.importc: "QsciAPIs_delete".}

proc metaObject*(self: gen_qsciapis_types.QsciAPIs, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAPIs_metaObject(self.h))

proc metacast*(self: gen_qsciapis_types.QsciAPIs, param1: cstring): pointer =
  fcQsciAPIs_metacast(self.h, param1)

proc metacall*(self: gen_qsciapis_types.QsciAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAPIs_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciapis_types.QsciAPIs, s: cstring): string =
  let v_ms = fcQsciAPIs_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciapis_types.QsciAPIs, s: cstring): string =
  let v_ms = fcQsciAPIs_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc add*(self: gen_qsciapis_types.QsciAPIs, entry: string): void =
  fcQsciAPIs_add(self.h, struct_miqt_string(data: entry, len: csize_t(len(entry))))

proc clear*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_clear(self.h)

proc load*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc remove*(self: gen_qsciapis_types.QsciAPIs, entry: string): void =
  fcQsciAPIs_remove(self.h, struct_miqt_string(data: entry, len: csize_t(len(entry))))

proc prepare*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_prepare(self.h)

proc cancelPreparation*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_cancelPreparation(self.h)

proc defaultPreparedName*(self: gen_qsciapis_types.QsciAPIs, ): string =
  let v_ms = fcQsciAPIs_defaultPreparedName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isPrepared*(self: gen_qsciapis_types.QsciAPIs, ): bool =
  fcQsciAPIs_isPrepared(self.h)

proc loadPrepared*(self: gen_qsciapis_types.QsciAPIs, ): bool =
  fcQsciAPIs_loadPrepared(self.h)

proc savePrepared*(self: gen_qsciapis_types.QsciAPIs, ): bool =
  fcQsciAPIs_savePrepared(self.h)

proc updateAutoCompletionList*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], list: seq[string]): void =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciAPIs_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc autoCompletionSelected*(self: gen_qsciapis_types.QsciAPIs, sel: string): void =
  fcQsciAPIs_autoCompletionSelected(self.h, struct_miqt_string(data: sel, len: csize_t(len(sel))))

proc callTips*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var shifts_CArray = newSeq[cint](len(shifts))
  for i in 0..<len(shifts):
    shifts_CArray[i] = shifts[i]

  var v_ma = fcQsciAPIs_callTips(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), commas, cint(style), struct_miqt_array(len: csize_t(len(shifts)), data: if len(shifts) == 0: nil else: addr(shifts_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc event*(self: gen_qsciapis_types.QsciAPIs, e: gen_qcoreevent_types.QEvent): bool =
  fcQsciAPIs_event(self.h, e.h)

proc installedAPIFiles*(self: gen_qsciapis_types.QsciAPIs, ): seq[string] =
  var v_ma = fcQsciAPIs_installedAPIFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc apiPreparationCancelled*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_apiPreparationCancelled(self.h)

type QsciAPIsapiPreparationCancelledSlot* = proc()
proc miqt_exec_callback_cQsciAPIs_apiPreparationCancelled(slot: int) {.exportc: "miqt_exec_callback_QsciAPIs_apiPreparationCancelled".} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationCancelledSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationCancelled*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationCancelledSlot) =
  var tmp = new QsciAPIsapiPreparationCancelledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_connect_apiPreparationCancelled(self.h, cast[int](addr tmp[]))

proc apiPreparationStarted*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_apiPreparationStarted(self.h)

type QsciAPIsapiPreparationStartedSlot* = proc()
proc miqt_exec_callback_cQsciAPIs_apiPreparationStarted(slot: int) {.exportc: "miqt_exec_callback_QsciAPIs_apiPreparationStarted".} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationStarted*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationStartedSlot) =
  var tmp = new QsciAPIsapiPreparationStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_connect_apiPreparationStarted(self.h, cast[int](addr tmp[]))

proc apiPreparationFinished*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_apiPreparationFinished(self.h)

type QsciAPIsapiPreparationFinishedSlot* = proc()
proc miqt_exec_callback_cQsciAPIs_apiPreparationFinished(slot: int) {.exportc: "miqt_exec_callback_QsciAPIs_apiPreparationFinished".} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationFinished*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationFinishedSlot) =
  var tmp = new QsciAPIsapiPreparationFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_connect_apiPreparationFinished(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsciapis_types.QsciAPIs, s: cstring, c: cstring): string =
  let v_ms = fcQsciAPIs_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsciapis_types.QsciAPIs, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciAPIs_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciapis_types.QsciAPIs, s: cstring, c: cstring): string =
  let v_ms = fcQsciAPIs_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciapis_types.QsciAPIs, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciAPIs_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isPrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_isPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loadPrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_loadPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc savePrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_savePrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

type QsciAPIsmetaObjectProc* = proc(self: QsciAPIs): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciAPIsmetacastProc* = proc(self: QsciAPIs, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciAPIsmetacallProc* = proc(self: QsciAPIs, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciAPIsupdateAutoCompletionListProc* = proc(self: QsciAPIs, context: seq[string], list: seq[string]): void {.raises: [], gcsafe.}
type QsciAPIsautoCompletionSelectedProc* = proc(self: QsciAPIs, sel: string): void {.raises: [], gcsafe.}
type QsciAPIscallTipsProc* = proc(self: QsciAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] {.raises: [], gcsafe.}
type QsciAPIseventProc* = proc(self: QsciAPIs, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciAPIseventFilterProc* = proc(self: QsciAPIs, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciAPIstimerEventProc* = proc(self: QsciAPIs, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciAPIschildEventProc* = proc(self: QsciAPIs, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciAPIscustomEventProc* = proc(self: QsciAPIs, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciAPIsconnectNotifyProc* = proc(self: QsciAPIs, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciAPIsdisconnectNotifyProc* = proc(self: QsciAPIs, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciAPIsVTable* = object
  vtbl: cQsciAPIsVTable
  metaObject*: QsciAPIsmetaObjectProc
  metacast*: QsciAPIsmetacastProc
  metacall*: QsciAPIsmetacallProc
  updateAutoCompletionList*: QsciAPIsupdateAutoCompletionListProc
  autoCompletionSelected*: QsciAPIsautoCompletionSelectedProc
  callTips*: QsciAPIscallTipsProc
  event*: QsciAPIseventProc
  eventFilter*: QsciAPIseventFilterProc
  timerEvent*: QsciAPIstimerEventProc
  childEvent*: QsciAPIschildEventProc
  customEvent*: QsciAPIscustomEventProc
  connectNotify*: QsciAPIsconnectNotifyProc
  disconnectNotify*: QsciAPIsdisconnectNotifyProc
proc QsciAPIsmetaObject*(self: gen_qsciapis_types.QsciAPIs, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAPIs_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciAPIs_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciAPIsmetacast*(self: gen_qsciapis_types.QsciAPIs, param1: cstring): pointer =
  fcQsciAPIs_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciAPIs_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciAPIsmetacall*(self: gen_qsciapis_types.QsciAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAPIs_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciAPIs_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciAPIsupdateAutoCompletionList*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], list: seq[string]): void =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciAPIs_virtualbase_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc miqt_exec_callback_cQsciAPIs_updateAutoCompletionList(vtbl: pointer, self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  var vcontext_ma = context
  var vcontextx_ret = newSeq[string](int(vcontext_ma.len))
  let vcontext_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vcontext_ma.data)
  for i in 0 ..< vcontext_ma.len:
    let vcontext_lv_ms = vcontext_outCast[i]
    let vcontext_lvx_ret = string.fromBytes(toOpenArrayByte(vcontext_lv_ms.data, 0, int(vcontext_lv_ms.len)-1))
    c_free(vcontext_lv_ms.data)
    vcontextx_ret[i] = vcontext_lvx_ret
  let slotval1 = vcontextx_ret
  var vlist_ma = list
  var vlistx_ret = newSeq[string](int(vlist_ma.len))
  let vlist_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vlist_ma.data)
  for i in 0 ..< vlist_ma.len:
    let vlist_lv_ms = vlist_outCast[i]
    let vlist_lvx_ret = string.fromBytes(toOpenArrayByte(vlist_lv_ms.data, 0, int(vlist_lv_ms.len)-1))
    c_free(vlist_lv_ms.data)
    vlistx_ret[i] = vlist_lvx_ret
  let slotval2 = vlistx_ret
  vtbl[].updateAutoCompletionList(self, slotval1, slotval2)

proc QsciAPIsautoCompletionSelected*(self: gen_qsciapis_types.QsciAPIs, sel: string): void =
  fcQsciAPIs_virtualbase_autoCompletionSelected(self.h, struct_miqt_string(data: sel, len: csize_t(len(sel))))

proc miqt_exec_callback_cQsciAPIs_autoCompletionSelected(vtbl: pointer, self: pointer, sel: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let vsel_ms = sel
  let vselx_ret = string.fromBytes(toOpenArrayByte(vsel_ms.data, 0, int(vsel_ms.len)-1))
  c_free(vsel_ms.data)
  let slotval1 = vselx_ret
  vtbl[].autoCompletionSelected(self, slotval1)

proc QsciAPIscallTips*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var shifts_CArray = newSeq[cint](len(shifts))
  for i in 0..<len(shifts):
    shifts_CArray[i] = shifts[i]

  var v_ma = fcQsciAPIs_virtualbase_callTips(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), commas, cint(style), struct_miqt_array(len: csize_t(len(shifts)), data: if len(shifts) == 0: nil else: addr(shifts_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciAPIs_callTips(vtbl: pointer, self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  var vcontext_ma = context
  var vcontextx_ret = newSeq[string](int(vcontext_ma.len))
  let vcontext_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vcontext_ma.data)
  for i in 0 ..< vcontext_ma.len:
    let vcontext_lv_ms = vcontext_outCast[i]
    let vcontext_lvx_ret = string.fromBytes(toOpenArrayByte(vcontext_lv_ms.data, 0, int(vcontext_lv_ms.len)-1))
    c_free(vcontext_lv_ms.data)
    vcontextx_ret[i] = vcontext_lvx_ret
  let slotval1 = vcontextx_ret
  let slotval2 = commas
  let slotval3 = cint(style)
  var vshifts_ma = shifts
  var vshiftsx_ret = newSeq[cint](int(vshifts_ma.len))
  let vshifts_outCast = cast[ptr UncheckedArray[cint]](vshifts_ma.data)
  for i in 0 ..< vshifts_ma.len:
    vshiftsx_ret[i] = vshifts_outCast[i]
  let slotval4 = vshiftsx_ret
  let virtualReturn = vtbl[].callTips(self, slotval1, slotval2, slotval3, slotval4)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciAPIsevent*(self: gen_qsciapis_types.QsciAPIs, e: gen_qcoreevent_types.QEvent): bool =
  fcQsciAPIs_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQsciAPIs_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciAPIseventFilter*(self: gen_qsciapis_types.QsciAPIs, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciAPIs_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciAPIs_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciAPIstimerEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciAPIs_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAPIs_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciAPIschildEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciAPIs_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAPIs_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciAPIscustomEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent_types.QEvent): void =
  fcQsciAPIs_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAPIs_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciAPIsconnectNotify*(self: gen_qsciapis_types.QsciAPIs, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciAPIs_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciAPIs_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciAPIsdisconnectNotify*(self: gen_qsciapis_types.QsciAPIs, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciAPIs_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciAPIs_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAPIsVTable](vtbl)
  let self = QsciAPIs(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsciapis_types.QsciAPIs,
    lexer: gen_qscilexer_types.QsciLexer,
    vtbl: ref QsciAPIsVTable = nil): gen_qsciapis_types.QsciAPIs =
  let vtbl = if vtbl == nil: new QsciAPIsVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciAPIsVTable, _: ptr cQsciAPIs) {.cdecl.} =
    let vtbl = cast[ref QsciAPIsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciAPIs_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciAPIs_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciAPIs_metacall
  if not isNil(vtbl.updateAutoCompletionList):
    vtbl[].vtbl.updateAutoCompletionList = miqt_exec_callback_cQsciAPIs_updateAutoCompletionList
  if not isNil(vtbl.autoCompletionSelected):
    vtbl[].vtbl.autoCompletionSelected = miqt_exec_callback_cQsciAPIs_autoCompletionSelected
  if not isNil(vtbl.callTips):
    vtbl[].vtbl.callTips = miqt_exec_callback_cQsciAPIs_callTips
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciAPIs_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciAPIs_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciAPIs_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciAPIs_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciAPIs_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciAPIs_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciAPIs_disconnectNotify
  gen_qsciapis_types.QsciAPIs(h: fcQsciAPIs_new(addr(vtbl[]), lexer.h))

proc staticMetaObject*(_: type gen_qsciapis_types.QsciAPIs): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAPIs_staticMetaObject())
proc delete*(self: gen_qsciapis_types.QsciAPIs) =
  fcQsciAPIs_delete(self.h)
