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
{.compile("gen_qsciabstractapis.cpp", cflags).}


import gen_qsciabstractapis_types
export gen_qsciabstractapis_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer

type cQsciAbstractAPIs*{.exportc: "QsciAbstractAPIs", incompleteStruct.} = object

proc fcQsciAbstractAPIs_new(lexer: pointer): ptr cQsciAbstractAPIs {.importc: "QsciAbstractAPIs_new".}
proc fcQsciAbstractAPIs_metaObject(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_metaObject".}
proc fcQsciAbstractAPIs_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciAbstractAPIs_metacast".}
proc fcQsciAbstractAPIs_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciAbstractAPIs_metacall".}
proc fcQsciAbstractAPIs_tr(s: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_tr".}
proc fcQsciAbstractAPIs_lexer(self: pointer, ): pointer {.importc: "QsciAbstractAPIs_lexer".}
proc fcQsciAbstractAPIs_updateAutoCompletionList(self: pointer, context: struct_miqt_array, list: struct_miqt_array): void {.importc: "QsciAbstractAPIs_updateAutoCompletionList".}
proc fcQsciAbstractAPIs_autoCompletionSelected(self: pointer, selection: struct_miqt_string): void {.importc: "QsciAbstractAPIs_autoCompletionSelected".}
proc fcQsciAbstractAPIs_callTips(self: pointer, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.importc: "QsciAbstractAPIs_callTips".}
proc fcQsciAbstractAPIs_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciAbstractAPIs_tr2".}
proc fcQsciAbstractAPIs_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciAbstractAPIs_tr3".}
proc fQsciAbstractAPIs_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciAbstractAPIs_virtualbase_metaObject".}
proc fcQsciAbstractAPIs_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_metaObject".}
proc fQsciAbstractAPIs_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciAbstractAPIs_virtualbase_metacast".}
proc fcQsciAbstractAPIs_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_metacast".}
proc fQsciAbstractAPIs_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciAbstractAPIs_virtualbase_metacall".}
proc fcQsciAbstractAPIs_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_metacall".}
proc fcQsciAbstractAPIs_override_virtual_updateAutoCompletionList(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_updateAutoCompletionList".}
proc fQsciAbstractAPIs_virtualbase_autoCompletionSelected(self: pointer, selection: struct_miqt_string): void{.importc: "QsciAbstractAPIs_virtualbase_autoCompletionSelected".}
proc fcQsciAbstractAPIs_override_virtual_autoCompletionSelected(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_autoCompletionSelected".}
proc fcQsciAbstractAPIs_override_virtual_callTips(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_callTips".}
proc fQsciAbstractAPIs_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciAbstractAPIs_virtualbase_event".}
proc fcQsciAbstractAPIs_override_virtual_event(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_event".}
proc fQsciAbstractAPIs_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciAbstractAPIs_virtualbase_eventFilter".}
proc fcQsciAbstractAPIs_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_eventFilter".}
proc fQsciAbstractAPIs_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciAbstractAPIs_virtualbase_timerEvent".}
proc fcQsciAbstractAPIs_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_timerEvent".}
proc fQsciAbstractAPIs_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciAbstractAPIs_virtualbase_childEvent".}
proc fcQsciAbstractAPIs_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_childEvent".}
proc fQsciAbstractAPIs_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciAbstractAPIs_virtualbase_customEvent".}
proc fcQsciAbstractAPIs_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_customEvent".}
proc fQsciAbstractAPIs_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciAbstractAPIs_virtualbase_connectNotify".}
proc fcQsciAbstractAPIs_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_connectNotify".}
proc fQsciAbstractAPIs_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciAbstractAPIs_virtualbase_disconnectNotify".}
proc fcQsciAbstractAPIs_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciAbstractAPIs_override_virtual_disconnectNotify".}
proc fcQsciAbstractAPIs_staticMetaObject(): pointer {.importc: "QsciAbstractAPIs_staticMetaObject".}
proc fcQsciAbstractAPIs_delete(self: pointer) {.importc: "QsciAbstractAPIs_delete".}


func init*(T: type gen_qsciabstractapis_types.QsciAbstractAPIs, h: ptr cQsciAbstractAPIs): gen_qsciabstractapis_types.QsciAbstractAPIs =
  T(h: h)
proc create*(T: type gen_qsciabstractapis_types.QsciAbstractAPIs, lexer: gen_qscilexer.QsciLexer): gen_qsciabstractapis_types.QsciAbstractAPIs =
  gen_qsciabstractapis_types.QsciAbstractAPIs.init(fcQsciAbstractAPIs_new(lexer.h))

proc metaObject*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciAbstractAPIs_metaObject(self.h))

proc metacast*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cstring): pointer =
  fcQsciAbstractAPIs_metacast(self.h, param1)

proc metacall*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciAbstractAPIs_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs, s: cstring): string =
  let v_ms = fcQsciAbstractAPIs_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lexer*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qscilexer.QsciLexer =
  gen_qscilexer.QsciLexer(h: fcQsciAbstractAPIs_lexer(self.h))

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

proc QsciAbstractAPIsmetaObject*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciAbstractAPIs_virtualbase_metaObject(self.h))

type QsciAbstractAPIsmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_metaObject(self: ptr cQsciAbstractAPIs, slot: int): pointer {.exportc: "miqt_exec_callback_QsciAbstractAPIs_metaObject ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciAbstractAPIsmetacast*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cstring): pointer =
  fQsciAbstractAPIs_virtualbase_metacast(self.h, param1)

type QsciAbstractAPIsmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsmetacastProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_metacast(self: ptr cQsciAbstractAPIs, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciAbstractAPIs_metacast ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciAbstractAPIsmetacall*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, param1: cint, param2: cint, param3: pointer): cint =
  fQsciAbstractAPIs_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciAbstractAPIsmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsmetacallProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_metacall(self: ptr cQsciAbstractAPIs, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciAbstractAPIs_metacall ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciAbstractAPIsupdateAutoCompletionListProc* = proc(context: seq[string], list: seq[string]): void
proc onupdateAutoCompletionList*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsupdateAutoCompletionListProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsupdateAutoCompletionListProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_updateAutoCompletionList(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_updateAutoCompletionList(self: ptr cQsciAbstractAPIs, slot: int, context: struct_miqt_array, list: struct_miqt_array): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_updateAutoCompletionList ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsupdateAutoCompletionListProc](cast[pointer](slot))
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
proc QsciAbstractAPIsautoCompletionSelected*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, selection: string): void =
  fQsciAbstractAPIs_virtualbase_autoCompletionSelected(self.h, struct_miqt_string(data: selection, len: csize_t(len(selection))))

type QsciAbstractAPIsautoCompletionSelectedProc* = proc(selection: string): void
proc onautoCompletionSelected*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsautoCompletionSelectedProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsautoCompletionSelectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_autoCompletionSelected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_autoCompletionSelected(self: ptr cQsciAbstractAPIs, slot: int, selection: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_autoCompletionSelected ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsautoCompletionSelectedProc](cast[pointer](slot))
  let vselection_ms = selection
  let vselectionx_ret = string.fromBytes(toOpenArrayByte(vselection_ms.data, 0, int(vselection_ms.len)-1))
  c_free(vselection_ms.data)
  let slotval1 = vselectionx_ret


  nimfunc[](slotval1)
type QsciAbstractAPIscallTipsProc* = proc(context: seq[string], commas: cint, style: cint, shifts: seq[cint]): seq[string]
proc oncallTips*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIscallTipsProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIscallTipsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_callTips(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_callTips(self: ptr cQsciAbstractAPIs, slot: int, context: struct_miqt_array, commas: cint, style: cint, shifts: struct_miqt_array): struct_miqt_array {.exportc: "miqt_exec_callback_QsciAbstractAPIs_callTips ".} =
  var nimfunc = cast[ptr QsciAbstractAPIscallTipsProc](cast[pointer](slot))
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
proc QsciAbstractAPIsevent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent.QEvent): bool =
  fQsciAbstractAPIs_virtualbase_event(self.h, event.h)

type QsciAbstractAPIseventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIseventProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_event(self: ptr cQsciAbstractAPIs, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciAbstractAPIs_event ".} =
  var nimfunc = cast[ptr QsciAbstractAPIseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciAbstractAPIseventFilter*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciAbstractAPIs_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciAbstractAPIseventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIseventFilterProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_eventFilter(self: ptr cQsciAbstractAPIs, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciAbstractAPIs_eventFilter ".} =
  var nimfunc = cast[ptr QsciAbstractAPIseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciAbstractAPIstimerEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent.QTimerEvent): void =
  fQsciAbstractAPIs_virtualbase_timerEvent(self.h, event.h)

type QsciAbstractAPIstimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIstimerEventProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIstimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_timerEvent(self: ptr cQsciAbstractAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_timerEvent ".} =
  var nimfunc = cast[ptr QsciAbstractAPIstimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciAbstractAPIschildEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent.QChildEvent): void =
  fQsciAbstractAPIs_virtualbase_childEvent(self.h, event.h)

type QsciAbstractAPIschildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIschildEventProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_childEvent(self: ptr cQsciAbstractAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_childEvent ".} =
  var nimfunc = cast[ptr QsciAbstractAPIschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciAbstractAPIscustomEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, event: gen_qcoreevent.QEvent): void =
  fQsciAbstractAPIs_virtualbase_customEvent(self.h, event.h)

type QsciAbstractAPIscustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIscustomEventProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIscustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_customEvent(self: ptr cQsciAbstractAPIs, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_customEvent ".} =
  var nimfunc = cast[ptr QsciAbstractAPIscustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciAbstractAPIsconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciAbstractAPIs_virtualbase_connectNotify(self.h, signal.h)

type QsciAbstractAPIsconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_connectNotify(self: ptr cQsciAbstractAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_connectNotify ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciAbstractAPIsdisconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciAbstractAPIs_virtualbase_disconnectNotify(self.h, signal.h)

type QsciAbstractAPIsdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsciabstractapis_types.QsciAbstractAPIs, slot: QsciAbstractAPIsdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciAbstractAPIsdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciAbstractAPIs_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciAbstractAPIs_disconnectNotify(self: ptr cQsciAbstractAPIs, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciAbstractAPIs_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciAbstractAPIsdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsciabstractapis_types.QsciAbstractAPIs): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciAbstractAPIs_staticMetaObject())
proc delete*(self: gen_qsciabstractapis_types.QsciAbstractAPIs) =
  fcQsciAbstractAPIs_delete(self.h)
