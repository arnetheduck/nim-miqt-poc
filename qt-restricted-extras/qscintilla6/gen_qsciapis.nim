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
  gen_qscilexer,
  gen_qsciscintilla
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciabstractapis,
  gen_qscilexer,
  gen_qsciscintilla

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
proc fcQsciAPIs_delete(self: pointer) {.importc: "QsciAPIs_delete".}


func init*(T: type QsciAPIs, h: ptr cQsciAPIs): QsciAPIs =
  T(h: h)
proc create*(T: type QsciAPIs, lexer: gen_qscilexer.QsciLexer): QsciAPIs =

  QsciAPIs.init(fcQsciAPIs_new(lexer.h))
proc metaObject*(self: QsciAPIs, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciAPIs_metaObject(self.h))

proc metacast*(self: QsciAPIs, param1: cstring): pointer =

  fcQsciAPIs_metacast(self.h, param1)

proc metacall*(self: QsciAPIs, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciAPIs_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciAPIs, s: cstring): string =

  let v_ms = fcQsciAPIs_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc add*(self: QsciAPIs, entry: string): void =

  fcQsciAPIs_add(self.h, struct_miqt_string(data: entry, len: csize_t(len(entry))))

proc clear*(self: QsciAPIs, ): void =

  fcQsciAPIs_clear(self.h)

proc load*(self: QsciAPIs, filename: string): bool =

  fcQsciAPIs_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc remove*(self: QsciAPIs, entry: string): void =

  fcQsciAPIs_remove(self.h, struct_miqt_string(data: entry, len: csize_t(len(entry))))

proc prepare*(self: QsciAPIs, ): void =

  fcQsciAPIs_prepare(self.h)

proc cancelPreparation*(self: QsciAPIs, ): void =

  fcQsciAPIs_cancelPreparation(self.h)

proc defaultPreparedName*(self: QsciAPIs, ): string =

  let v_ms = fcQsciAPIs_defaultPreparedName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isPrepared*(self: QsciAPIs, ): bool =

  fcQsciAPIs_isPrepared(self.h)

proc loadPrepared*(self: QsciAPIs, ): bool =

  fcQsciAPIs_loadPrepared(self.h)

proc savePrepared*(self: QsciAPIs, ): bool =

  fcQsciAPIs_savePrepared(self.h)

proc updateAutoCompletionList*(self: QsciAPIs, context: seq[string], list: seq[string]): void =

  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciAPIs_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc autoCompletionSelected*(self: QsciAPIs, sel: string): void =

  fcQsciAPIs_autoCompletionSelected(self.h, struct_miqt_string(data: sel, len: csize_t(len(sel))))

proc callTips*(self: QsciAPIs, context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string] =

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

proc event*(self: QsciAPIs, e: gen_qcoreevent.QEvent): bool =

  fcQsciAPIs_event(self.h, e.h)

proc installedAPIFiles*(self: QsciAPIs, ): seq[string] =

  var v_ma = fcQsciAPIs_installedAPIFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc apiPreparationCancelled*(self: QsciAPIs, ): void =

  fcQsciAPIs_apiPreparationCancelled(self.h)

proc miqt_exec_callback_QsciAPIs_apiPreparationCancelled(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapiPreparationCancelled*(self: QsciAPIs, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationCancelled(self.h, cast[int](addr tmp[]))
proc apiPreparationStarted*(self: QsciAPIs, ): void =

  fcQsciAPIs_apiPreparationStarted(self.h)

proc miqt_exec_callback_QsciAPIs_apiPreparationStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapiPreparationStarted*(self: QsciAPIs, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationStarted(self.h, cast[int](addr tmp[]))
proc apiPreparationFinished*(self: QsciAPIs, ): void =

  fcQsciAPIs_apiPreparationFinished(self.h)

proc miqt_exec_callback_QsciAPIs_apiPreparationFinished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapiPreparationFinished*(self: QsciAPIs, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciAPIs_connect_apiPreparationFinished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QsciAPIs, s: cstring, c: cstring): string =

  let v_ms = fcQsciAPIs_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciAPIs, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciAPIs_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isPrepared1*(self: QsciAPIs, filename: string): bool =

  fcQsciAPIs_isPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loadPrepared1*(self: QsciAPIs, filename: string): bool =

  fcQsciAPIs_loadPrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc savePrepared1*(self: QsciAPIs, filename: string): bool =

  fcQsciAPIs_savePrepared1(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc callVirtualBase_metacall(self: QsciAPIs, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciAPIs_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciAPIsmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciAPIs, slot: proc(super: QsciAPIsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_metacall(self: ptr cQsciAPIs, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciAPIs_metacall ".} =
  type Cb = proc(super: QsciAPIsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciAPIs(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_updateAutoCompletionList(self: QsciAPIs, context: seq[string], list: seq[string]): void =

  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))


  fQsciAPIs_virtualbase_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

type QsciAPIsupdateAutoCompletionListBase* = proc(context: seq[string], list: seq[string]): void
proc onupdateAutoCompletionList*(self: QsciAPIs, slot: proc(super: QsciAPIsupdateAutoCompletionListBase, context: seq[string], list: seq[string]): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIsupdateAutoCompletionListBase, context: seq[string], list: seq[string]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_updateAutoCompletionList(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_updateAutoCompletionList(self: ptr cQsciAPIs, slot: int, context: struct_miqt_array, list: struct_miqt_array): void {.exportc: "miqt_exec_callback_QsciAPIs_updateAutoCompletionList ".} =
  type Cb = proc(super: QsciAPIsupdateAutoCompletionListBase, context: seq[string], list: seq[string]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(context: seq[string], list: seq[string]): auto =
    callVirtualBase_updateAutoCompletionList(QsciAPIs(h: self), context, list)
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


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_autoCompletionSelected(self: QsciAPIs, sel: string): void =


  fQsciAPIs_virtualbase_autoCompletionSelected(self.h, struct_miqt_string(data: sel, len: csize_t(len(sel))))

type QsciAPIsautoCompletionSelectedBase* = proc(sel: string): void
proc onautoCompletionSelected*(self: QsciAPIs, slot: proc(super: QsciAPIsautoCompletionSelectedBase, sel: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIsautoCompletionSelectedBase, sel: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_autoCompletionSelected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_autoCompletionSelected(self: ptr cQsciAPIs, slot: int, sel: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciAPIs_autoCompletionSelected ".} =
  type Cb = proc(super: QsciAPIsautoCompletionSelectedBase, sel: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sel: string): auto =
    callVirtualBase_autoCompletionSelected(QsciAPIs(h: self), sel)
  let vsel_ms = sel
  let vselx_ret = string.fromBytes(toOpenArrayByte(vsel_ms.data, 0, int(vsel_ms.len)-1))
  c_free(vsel_ms.data)
  let slotval1 = vselx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_callTips(self: QsciAPIs, context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string] =

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

type QsciAPIscallTipsBase* = proc(context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string]
proc oncallTips*(self: QsciAPIs, slot: proc(super: QsciAPIscallTipsBase, context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIscallTipsBase, context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_callTips(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_callTips(self: ptr cQsciAPIs, slot: int, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.exportc: "miqt_exec_callback_QsciAPIs_callTips ".} =
  type Cb = proc(super: QsciAPIscallTipsBase, context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(context: seq[string], commas: cint, style: gen_qsciscintilla.QsciScintillaCallTipsStyle, shifts: seq[cint]): auto =
    callVirtualBase_callTips(QsciAPIs(h: self), context, commas, style, shifts)
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

  let slotval3 = gen_qsciscintilla.QsciScintillaCallTipsStyle(style)

  var vshifts_ma = shifts
  var vshiftsx_ret = newSeq[cint](int(vshifts_ma.len))
  let vshifts_outCast = cast[ptr UncheckedArray[cint]](vshifts_ma.data)
  for i in 0 ..< vshifts_ma.len:
    vshiftsx_ret[i] = vshifts_outCast[i]
  let slotval4 = vshiftsx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_event(self: QsciAPIs, e: gen_qcoreevent.QEvent): bool =


  fQsciAPIs_virtualbase_event(self.h, e.h)

type QsciAPIseventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciAPIs, slot: proc(super: QsciAPIseventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIseventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_event(self: ptr cQsciAPIs, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QsciAPIs_event ".} =
  type Cb = proc(super: QsciAPIseventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciAPIs(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciAPIs, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciAPIs_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciAPIseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciAPIs, slot: proc(super: QsciAPIseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_eventFilter(self: ptr cQsciAPIs, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciAPIs_eventFilter ".} =
  type Cb = proc(super: QsciAPIseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciAPIs(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciAPIs, event: gen_qcoreevent.QTimerEvent): void =


  fQsciAPIs_virtualbase_timerEvent(self.h, event.h)

type QsciAPIstimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciAPIs, slot: proc(super: QsciAPIstimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_timerEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_timerEvent ".} =
  type Cb = proc(super: QsciAPIstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciAPIs(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciAPIs, event: gen_qcoreevent.QChildEvent): void =


  fQsciAPIs_virtualbase_childEvent(self.h, event.h)

type QsciAPIschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciAPIs, slot: proc(super: QsciAPIschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_childEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_childEvent ".} =
  type Cb = proc(super: QsciAPIschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciAPIs(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciAPIs, event: gen_qcoreevent.QEvent): void =


  fQsciAPIs_virtualbase_customEvent(self.h, event.h)

type QsciAPIscustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciAPIs, slot: proc(super: QsciAPIscustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIscustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_customEvent(self: ptr cQsciAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_customEvent ".} =
  type Cb = proc(super: QsciAPIscustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciAPIs(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciAPIs, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciAPIs_virtualbase_connectNotify(self.h, signal.h)

type QsciAPIsconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciAPIs, slot: proc(super: QsciAPIsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_connectNotify(self: ptr cQsciAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_connectNotify ".} =
  type Cb = proc(super: QsciAPIsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciAPIs(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciAPIs, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciAPIs_virtualbase_disconnectNotify(self.h, signal.h)

type QsciAPIsdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciAPIs, slot: proc(super: QsciAPIsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciAPIsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAPIs_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAPIs_disconnectNotify(self: ptr cQsciAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAPIs_disconnectNotify ".} =
  type Cb = proc(super: QsciAPIsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciAPIs(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciAPIs) =
  fcQsciAPIs_delete(self.h)
