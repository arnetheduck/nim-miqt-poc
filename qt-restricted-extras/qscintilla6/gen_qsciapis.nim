import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qsciapis.cpp", cflags).}


import gen_qsciapis_types
export gen_qsciapis_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciabstractapis,
  gen_qscilexer
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciabstractapis,
  gen_qscilexer

type cQsciAPIs*{.exportc: "QsciAPIs", incompleteStruct.} = object

proc fcQsciAPIs_new(lexer: pointer): ptr cQsciAPIs {.importc: "QsciAPIs_new".}
proc fcQsciAPIs_metaObject(self: pointer, ): pointer {.importc: "QsciAPIs_metaObject".}
proc fcQsciAPIs_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAPIs_metacast".}
proc fcQsciAPIs_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAPIs_metacall".}
proc fcQsciAPIs_tr(s: cstring): struct_miqt_string {.importc: "QsciAPIs_tr".}
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
proc fQsciAPIs_connect_apiPreparationCancelled(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationCancelled".}
proc fcQsciAPIs_apiPreparationStarted(self: pointer, ): void {.importc: "QsciAPIs_apiPreparationStarted".}
proc fQsciAPIs_connect_apiPreparationStarted(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationStarted".}
proc fcQsciAPIs_apiPreparationFinished(self: pointer, ): void {.importc: "QsciAPIs_apiPreparationFinished".}
proc fQsciAPIs_connect_apiPreparationFinished(self: pointer, slot: int) {.importc: "QsciAPIs_connect_apiPreparationFinished".}
proc fcQsciAPIs_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAPIs_tr2".}
proc fcQsciAPIs_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAPIs_tr3".}
proc fcQsciAPIs_isPrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_isPrepared1".}
proc fcQsciAPIs_loadPrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_loadPrepared1".}
proc fcQsciAPIs_savePrepared1(self: pointer, filename: struct_miqt_string): bool {.importc: "QsciAPIs_savePrepared1".}
proc fQsciAPIs_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciAPIs_virtualbase_metaObject".}
proc fcQsciAPIs_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_metaObject".}
proc fQsciAPIs_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciAPIs_virtualbase_metacast".}
proc fcQsciAPIs_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_metacast".}
proc fQsciAPIs_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciAPIs_virtualbase_metacall".}
proc fcQsciAPIs_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_metacall".}
proc fQsciAPIs_virtualbase_updateAutoCompletionList(self: pointer, context: struct_miqt_array, list: struct_miqt_array): void{.importc: "QsciAPIs_virtualbase_updateAutoCompletionList".}
proc fcQsciAPIs_override_virtual_updateAutoCompletionList(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_updateAutoCompletionList".}
proc fQsciAPIs_virtualbase_autoCompletionSelected(self: pointer, sel: struct_miqt_string): void{.importc: "QsciAPIs_virtualbase_autoCompletionSelected".}
proc fcQsciAPIs_override_virtual_autoCompletionSelected(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_autoCompletionSelected".}
proc fQsciAPIs_virtualbase_callTips(self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array{.importc: "QsciAPIs_virtualbase_callTips".}
proc fcQsciAPIs_override_virtual_callTips(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_callTips".}
proc fQsciAPIs_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QsciAPIs_virtualbase_event".}
proc fcQsciAPIs_override_virtual_event(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_event".}
proc fQsciAPIs_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciAPIs_virtualbase_eventFilter".}
proc fcQsciAPIs_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_eventFilter".}
proc fQsciAPIs_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciAPIs_virtualbase_timerEvent".}
proc fcQsciAPIs_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_timerEvent".}
proc fQsciAPIs_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciAPIs_virtualbase_childEvent".}
proc fcQsciAPIs_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_childEvent".}
proc fQsciAPIs_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciAPIs_virtualbase_customEvent".}
proc fcQsciAPIs_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_customEvent".}
proc fQsciAPIs_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciAPIs_virtualbase_connectNotify".}
proc fcQsciAPIs_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_connectNotify".}
proc fQsciAPIs_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciAPIs_virtualbase_disconnectNotify".}
proc fcQsciAPIs_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciAPIs_override_virtual_disconnectNotify".}
proc fcQsciAPIs_staticMetaObject(): pointer {.importc: "QsciAPIs_staticMetaObject".}
proc fcQsciAPIs_delete(self: pointer) {.importc: "QsciAPIs_delete".}


func init*(T: type gen_qsciapis_types.QsciAPIs, h: ptr cQsciAPIs): gen_qsciapis_types.QsciAPIs =
  T(h: h)
proc create*(T: type gen_qsciapis_types.QsciAPIs, lexer: gen_qscilexer.QsciLexer): gen_qsciapis_types.QsciAPIs =
  gen_qsciapis_types.QsciAPIs.init(fcQsciAPIs_new(lexer.h))

proc metaObject*(self: gen_qsciapis_types.QsciAPIs, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciAPIs_metaObject(self.h))

proc metacast*(self: gen_qsciapis_types.QsciAPIs, param1: cstring): pointer =
  fcQsciAPIs_metacast(self.h, param1)

proc metacall*(self: gen_qsciapis_types.QsciAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAPIs_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciapis_types.QsciAPIs, s: cstring): string =
  let v_ms = fcQsciAPIs_tr(s)
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

proc event*(self: gen_qsciapis_types.QsciAPIs, e: gen_qcoreevent.QEvent): bool =
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
proc miqt_exec_callback_QsciAPIs_apiPreparationCancelled(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationCancelledSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationCancelled*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationCancelledSlot) =
  var tmp = new QsciAPIsapiPreparationCancelledSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationCancelled(self.h, cast[int](addr tmp[]))

proc apiPreparationStarted*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_apiPreparationStarted(self.h)

type QsciAPIsapiPreparationStartedSlot* = proc()
proc miqt_exec_callback_QsciAPIs_apiPreparationStarted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationStarted*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationStartedSlot) =
  var tmp = new QsciAPIsapiPreparationStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationStarted(self.h, cast[int](addr tmp[]))

proc apiPreparationFinished*(self: gen_qsciapis_types.QsciAPIs, ): void =
  fcQsciAPIs_apiPreparationFinished(self.h)

type QsciAPIsapiPreparationFinishedSlot* = proc()
proc miqt_exec_callback_QsciAPIs_apiPreparationFinished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciAPIsapiPreparationFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapiPreparationFinished*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsapiPreparationFinishedSlot) =
  var tmp = new QsciAPIsapiPreparationFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationFinished(self.h, cast[int](addr tmp[]))

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

proc isPrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_isPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loadPrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_loadPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc savePrepared*(self: gen_qsciapis_types.QsciAPIs, filename: string): bool =
  fcQsciAPIs_savePrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc QsciAPIsmetaObject*(self: gen_qsciapis_types.QsciAPIs, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciAPIs_virtualbase_metaObject(self.h))

type QsciAPIsmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciAPIsmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_metaObject(self: ptr cQsciAPIs, slot: int): pointer {.exportc: "miqt_exec_callback_QsciAPIs_metaObject ".} =
  var nimfunc = cast[ptr QsciAPIsmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciAPIsmetacast*(self: gen_qsciapis_types.QsciAPIs, param1: cstring): pointer =
  fQsciAPIs_virtualbase_metacast(self.h, param1)

type QsciAPIsmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsmetacastProc) =
  # TODO check subclass
  var tmp = new QsciAPIsmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_metacast(self: ptr cQsciAPIs, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciAPIs_metacast ".} =
  var nimfunc = cast[ptr QsciAPIsmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciAPIsmetacall*(self: gen_qsciapis_types.QsciAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fQsciAPIs_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciAPIsmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsmetacallProc) =
  # TODO check subclass
  var tmp = new QsciAPIsmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_metacall(self: ptr cQsciAPIs, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciAPIs_metacall ".} =
  var nimfunc = cast[ptr QsciAPIsmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciAPIsupdateAutoCompletionList*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], list: seq[string]): void =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fQsciAPIs_virtualbase_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

type QsciAPIsupdateAutoCompletionListProc* = proc(context: seq[string], list: seq[string]): void
proc onupdateAutoCompletionList*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsupdateAutoCompletionListProc) =
  # TODO check subclass
  var tmp = new QsciAPIsupdateAutoCompletionListProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_updateAutoCompletionList(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_updateAutoCompletionList(self: ptr cQsciAPIs, slot: int, context: struct_miqt_array, list: struct_miqt_array): void {.exportc: "miqt_exec_callback_QsciAPIs_updateAutoCompletionList ".} =
  var nimfunc = cast[ptr QsciAPIsupdateAutoCompletionListProc](cast[pointer](slot))
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


  nimfunc[](slotval1, slotval2)
proc QsciAPIsautoCompletionSelected*(self: gen_qsciapis_types.QsciAPIs, sel: string): void =
  fQsciAPIs_virtualbase_autoCompletionSelected(self.h, struct_miqt_string(data: sel, len: csize_t(len(sel))))

type QsciAPIsautoCompletionSelectedProc* = proc(sel: string): void
proc onautoCompletionSelected*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsautoCompletionSelectedProc) =
  # TODO check subclass
  var tmp = new QsciAPIsautoCompletionSelectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_autoCompletionSelected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_autoCompletionSelected(self: ptr cQsciAPIs, slot: int, sel: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciAPIs_autoCompletionSelected ".} =
  var nimfunc = cast[ptr QsciAPIsautoCompletionSelectedProc](cast[pointer](slot))
  let vsel_ms = sel
  let vselx_ret = string.fromBytes(toOpenArrayByte(vsel_ms.data, 0, int(vsel_ms.len)-1))
  c_free(vsel_ms.data)
  let slotval1 = vselx_ret


  nimfunc[](slotval1)
proc QsciAPIscallTips*(self: gen_qsciapis_types.QsciAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var shifts_CArray = newSeq[cint](len(shifts))
  for i in 0..<len(shifts):
    shifts_CArray[i] = shifts[i]

  var v_ma = fQsciAPIs_virtualbase_callTips(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), commas, cint(style), struct_miqt_array(len: csize_t(len(shifts)), data: if len(shifts) == 0: nil else: addr(shifts_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciAPIscallTipsProc* = proc(context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string]
proc oncallTips*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIscallTipsProc) =
  # TODO check subclass
  var tmp = new QsciAPIscallTipsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_callTips(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_callTips(self: ptr cQsciAPIs, slot: int, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.exportc: "miqt_exec_callback_QsciAPIs_callTips ".} =
  var nimfunc = cast[ptr QsciAPIscallTipsProc](cast[pointer](slot))
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


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciAPIsevent*(self: gen_qsciapis_types.QsciAPIs, e: gen_qcoreevent.QEvent): bool =
  fQsciAPIs_virtualbase_event(self.h, e.h)

type QsciAPIseventProc* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIseventProc) =
  # TODO check subclass
  var tmp = new QsciAPIseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_event(self: ptr cQsciAPIs, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QsciAPIs_event ".} =
  var nimfunc = cast[ptr QsciAPIseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciAPIseventFilter*(self: gen_qsciapis_types.QsciAPIs, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciAPIs_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciAPIseventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIseventFilterProc) =
  # TODO check subclass
  var tmp = new QsciAPIseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_eventFilter(self: ptr cQsciAPIs, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciAPIs_eventFilter ".} =
  var nimfunc = cast[ptr QsciAPIseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciAPIstimerEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent.QTimerEvent): void =
  fQsciAPIs_virtualbase_timerEvent(self.h, event.h)

type QsciAPIstimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIstimerEventProc) =
  # TODO check subclass
  var tmp = new QsciAPIstimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_timerEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_timerEvent ".} =
  var nimfunc = cast[ptr QsciAPIstimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciAPIschildEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent.QChildEvent): void =
  fQsciAPIs_virtualbase_childEvent(self.h, event.h)

type QsciAPIschildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIschildEventProc) =
  # TODO check subclass
  var tmp = new QsciAPIschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_childEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_childEvent ".} =
  var nimfunc = cast[ptr QsciAPIschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciAPIscustomEvent*(self: gen_qsciapis_types.QsciAPIs, event: gen_qcoreevent.QEvent): void =
  fQsciAPIs_virtualbase_customEvent(self.h, event.h)

type QsciAPIscustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIscustomEventProc) =
  # TODO check subclass
  var tmp = new QsciAPIscustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_customEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_customEvent ".} =
  var nimfunc = cast[ptr QsciAPIscustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciAPIsconnectNotify*(self: gen_qsciapis_types.QsciAPIs, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciAPIs_virtualbase_connectNotify(self.h, signal.h)

type QsciAPIsconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciAPIsconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_connectNotify(self: ptr cQsciAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_connectNotify ".} =
  var nimfunc = cast[ptr QsciAPIsconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciAPIsdisconnectNotify*(self: gen_qsciapis_types.QsciAPIs, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciAPIs_virtualbase_disconnectNotify(self.h, signal.h)

type QsciAPIsdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsciapis_types.QsciAPIs, slot: QsciAPIsdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciAPIsdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_disconnectNotify(self: ptr cQsciAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciAPIsdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsciapis_types.QsciAPIs): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciAPIs_staticMetaObject())
proc delete*(self: gen_qsciapis_types.QsciAPIs) =
  fcQsciAPIs_delete(self.h)
