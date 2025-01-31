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
{.compile("gen_qsciabstractapis.cpp", cflags).}

import gen_qsciabstractapis_types
export gen_qsciabstractapis_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer_types

type cQsciAbstractAPIs*{.exportc: "QsciAbstractAPIs", incompleteStruct.} = object

proc fcQsciAbstractAPIs_metaObject(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_metaObject".}
proc fcQsciAbstractAPIs_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAbstractAPIs_metacast".}
proc fcQsciAbstractAPIs_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAbstractAPIs_metacall".}
proc fcQsciAbstractAPIs_tr(s: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_tr".}
proc fcQsciAbstractAPIs_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_trUtf8".}
proc fcQsciAbstractAPIs_lexer(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_lexer".}
proc fcQsciAbstractAPIs_updateAutoCompletionList(self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.importc: "QsciAbstractAPIs_updateAutoCompletionList".}
proc fcQsciAbstractAPIs_autoCompletionSelected(self: pointer, selection: struct_miqt_string): void {.importc: "QsciAbstractAPIs_autoCompletionSelected".}
proc fcQsciAbstractAPIs_callTips(self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.importc: "QsciAbstractAPIs_callTips".}
proc fcQsciAbstractAPIs_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_tr2".}
proc fcQsciAbstractAPIs_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAbstractAPIs_tr3".}
proc fcQsciAbstractAPIs_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_trUtf82".}
proc fcQsciAbstractAPIs_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAbstractAPIs_trUtf83".}
type cQsciAbstractAPIsVTable = object
  destructor*: proc(vtbl: ptr cQsciAbstractAPIsVTable, self: ptr cQsciAbstractAPIs) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateAutoCompletionList*: proc(vtbl, self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  autoCompletionSelected*: proc(vtbl, self: pointer, selection: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  callTips*: proc(vtbl, self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciAbstractAPIs_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_virtualbase_metaObject".}
proc fcQsciAbstractAPIs_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAbstractAPIs_virtualbase_metacast".}
proc fcQsciAbstractAPIs_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAbstractAPIs_virtualbase_metacall".}
proc fcQsciAbstractAPIs_virtualbase_autoCompletionSelected(self: pointer, selection: struct_miqt_string): void {.importc: "QsciAbstractAPIs_virtualbase_autoCompletionSelected".}
proc fcQsciAbstractAPIs_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciAbstractAPIs_virtualbase_event".}
proc fcQsciAbstractAPIs_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciAbstractAPIs_virtualbase_eventFilter".}
proc fcQsciAbstractAPIs_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciAbstractAPIs_virtualbase_timerEvent".}
proc fcQsciAbstractAPIs_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciAbstractAPIs_virtualbase_childEvent".}
proc fcQsciAbstractAPIs_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciAbstractAPIs_virtualbase_customEvent".}
proc fcQsciAbstractAPIs_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciAbstractAPIs_virtualbase_connectNotify".}
proc fcQsciAbstractAPIs_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciAbstractAPIs_virtualbase_disconnectNotify".}
proc fcQsciAbstractAPIs_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_protectedbase_sender".}
proc fcQsciAbstractAPIs_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciAbstractAPIs_protectedbase_senderSignalIndex".}
proc fcQsciAbstractAPIs_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciAbstractAPIs_protectedbase_receivers".}
proc fcQsciAbstractAPIs_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciAbstractAPIs_protectedbase_isSignalConnected".}
proc fcQsciAbstractAPIs_new(vtbl: pointer, lexer: pointer): ptr cQsciAbstractAPIs {.importc: "QsciAbstractAPIs_new".}
proc fcQsciAbstractAPIs_staticMetaObject(): pointer {.importc: "QsciAbstractAPIs_staticMetaObject".}
proc fcQsciAbstractAPIs_delete(self: pointer) {.importc: "QsciAbstractAPIs_delete".}

proc metaObject*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAbstractAPIs_metaObject(self.h))

proc metacast*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cstring): pointer =
  fcQsciAbstractAPIs_metacast(self.h, param1)

proc metacall*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAbstractAPIs_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring): string =
  let v_ms = fcQsciAbstractAPIs_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring): string =
  let v_ms = fcQsciAbstractAPIs_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lexer*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qscilexer_types.QsciLexer =
  gen_qscilexer_types.QsciLexer(h: fcQsciAbstractAPIs_lexer(self.h))

proc updateAutoCompletionList*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, context: seq[string], list: seq[string]): void =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciAbstractAPIs_updateAutoCompletionList(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc autoCompletionSelected*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, selection: string): void =
  fcQsciAbstractAPIs_autoCompletionSelected(self.h, struct_miqt_string(data: selection, len: csize_t(len(selection))))

proc callTips*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] =
  var context_CArray = newSeq[struct_miqt_string](len(context))
  for i in 0..<len(context):
    context_CArray[i] = struct_miqt_string(data: context[i], len: csize_t(len(context[i])))

  var shifts_CArray = newSeq[cint](len(shifts))
  for i in 0..<len(shifts):
    shifts_CArray[i] = shifts[i]

  var v_ma = fcQsciAbstractAPIs_callTips(self.h, struct_miqt_array(len: csize_t(len(context)), data: if len(context) == 0: nil else: addr(context_CArray[0])), commas, cint(style), struct_miqt_array(len: csize_t(len(shifts)), data: if len(shifts) == 0: nil else: addr(shifts_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring, c: cstring): string =
  let v_ms = fcQsciAbstractAPIs_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciAbstractAPIs_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring, c: cstring): string =
  let v_ms = fcQsciAbstractAPIs_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciAbstractAPIs_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciAbstractAPIsmetaObjectProc* = proc(self: QsciAbstractAPIs): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciAbstractAPIsmetacastProc* = proc(self: QsciAbstractAPIs, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciAbstractAPIsmetacallProc* = proc(self: QsciAbstractAPIs, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciAbstractAPIsupdateAutoCompletionListProc* = proc(self: QsciAbstractAPIs, context: seq[string], list: seq[string]): void {.raises: [], gcsafe.}
type QsciAbstractAPIsautoCompletionSelectedProc* = proc(self: QsciAbstractAPIs, selection: string): void {.raises: [], gcsafe.}
type QsciAbstractAPIscallTipsProc* = proc(self: QsciAbstractAPIs, context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string] {.raises: [], gcsafe.}
type QsciAbstractAPIseventProc* = proc(self: QsciAbstractAPIs, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciAbstractAPIseventFilterProc* = proc(self: QsciAbstractAPIs, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciAbstractAPIstimerEventProc* = proc(self: QsciAbstractAPIs, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciAbstractAPIschildEventProc* = proc(self: QsciAbstractAPIs, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciAbstractAPIscustomEventProc* = proc(self: QsciAbstractAPIs, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciAbstractAPIsconnectNotifyProc* = proc(self: QsciAbstractAPIs, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciAbstractAPIsdisconnectNotifyProc* = proc(self: QsciAbstractAPIs, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciAbstractAPIsVTable* = object
  vtbl: cQsciAbstractAPIsVTable
  metaObject*: QsciAbstractAPIsmetaObjectProc
  metacast*: QsciAbstractAPIsmetacastProc
  metacall*: QsciAbstractAPIsmetacallProc
  updateAutoCompletionList*: QsciAbstractAPIsupdateAutoCompletionListProc
  autoCompletionSelected*: QsciAbstractAPIsautoCompletionSelectedProc
  callTips*: QsciAbstractAPIscallTipsProc
  event*: QsciAbstractAPIseventProc
  eventFilter*: QsciAbstractAPIseventFilterProc
  timerEvent*: QsciAbstractAPIstimerEventProc
  childEvent*: QsciAbstractAPIschildEventProc
  customEvent*: QsciAbstractAPIscustomEventProc
  connectNotify*: QsciAbstractAPIsconnectNotifyProc
  disconnectNotify*: QsciAbstractAPIsdisconnectNotifyProc
proc QsciAbstractAPIsmetaObject*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAbstractAPIs_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciAbstractAPIs_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciAbstractAPIsmetacast*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cstring): pointer =
  fcQsciAbstractAPIs_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciAbstractAPIs_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciAbstractAPIsmetacall*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAbstractAPIs_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciAbstractAPIs_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciAbstractAPIs_updateAutoCompletionList(vtbl: pointer, self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
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

proc QsciAbstractAPIsautoCompletionSelected*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, selection: string): void =
  fcQsciAbstractAPIs_virtualbase_autoCompletionSelected(self.h, struct_miqt_string(data: selection, len: csize_t(len(selection))))

proc miqt_exec_callback_cQsciAbstractAPIs_autoCompletionSelected(vtbl: pointer, self: pointer, selection: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let vselection_ms = selection
  let vselectionx_ret = string.fromBytes(toOpenArrayByte(vselection_ms.data, 0, int(vselection_ms.len)-1))
  c_free(vselection_ms.data)
  let slotval1 = vselectionx_ret
  vtbl[].autoCompletionSelected(self, slotval1)

proc miqt_exec_callback_cQsciAbstractAPIs_callTips(vtbl: pointer, self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
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

proc QsciAbstractAPIsevent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciAbstractAPIs_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciAbstractAPIs_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciAbstractAPIseventFilter*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciAbstractAPIs_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciAbstractAPIs_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciAbstractAPIstimerEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciAbstractAPIs_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAbstractAPIs_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciAbstractAPIschildEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciAbstractAPIs_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAbstractAPIs_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciAbstractAPIscustomEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent_types.QEvent): void =
  fcQsciAbstractAPIs_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciAbstractAPIs_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciAbstractAPIsconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciAbstractAPIs_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciAbstractAPIs_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciAbstractAPIsdisconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciAbstractAPIs_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciAbstractAPIs_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciAbstractAPIsVTable](vtbl)
  let self = QsciAbstractAPIs(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciAbstractAPIs_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): cint =
  fcQsciAbstractAPIs_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: cstring): cint =
  fcQsciAbstractAPIs_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciAbstractAPIs_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsciabstractapis_types.QsciAbstractAPIs,
    lexer: gen_qscilexer_types.QsciLexer,
    vtbl: ref QsciAbstractAPIsVTable = nil): gen_qsciabstractapis_types.QsciAbstractAPIs =
  let vtbl = if vtbl == nil: new QsciAbstractAPIsVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciAbstractAPIsVTable, _: ptr cQsciAbstractAPIs) {.cdecl.} =
    let vtbl = cast[ref QsciAbstractAPIsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciAbstractAPIs_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciAbstractAPIs_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciAbstractAPIs_metacall
  if not isNil(vtbl.updateAutoCompletionList):
    vtbl[].vtbl.updateAutoCompletionList = miqt_exec_callback_cQsciAbstractAPIs_updateAutoCompletionList
  if not isNil(vtbl.autoCompletionSelected):
    vtbl[].vtbl.autoCompletionSelected = miqt_exec_callback_cQsciAbstractAPIs_autoCompletionSelected
  if not isNil(vtbl.callTips):
    vtbl[].vtbl.callTips = miqt_exec_callback_cQsciAbstractAPIs_callTips
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciAbstractAPIs_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciAbstractAPIs_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciAbstractAPIs_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciAbstractAPIs_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciAbstractAPIs_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciAbstractAPIs_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciAbstractAPIs_disconnectNotify
  gen_qsciabstractapis_types.QsciAbstractAPIs(h: fcQsciAbstractAPIs_new(addr(vtbl[]), lexer.h))

proc staticMetaObject*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciAbstractAPIs_staticMetaObject())
proc delete*(self: gen_qsciabstractapis_types.QsciAbstractAPIs) =
  fcQsciAbstractAPIs_delete(self.h)
