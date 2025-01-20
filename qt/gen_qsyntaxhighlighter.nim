import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qsyntaxhighlighter.cpp", cflags).}


import gen_qsyntaxhighlighter_types
export gen_qsyntaxhighlighter_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextdocument,
  gen_qtextobject
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextdocument,
  gen_qtextobject

type cQSyntaxHighlighter*{.exportc: "QSyntaxHighlighter", incompleteStruct.} = object

proc fcQSyntaxHighlighter_new(parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new".}
proc fcQSyntaxHighlighter_new2(parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new2".}
proc fcQSyntaxHighlighter_metaObject(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_metaObject".}
proc fcQSyntaxHighlighter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSyntaxHighlighter_metacast".}
proc fcQSyntaxHighlighter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSyntaxHighlighter_metacall".}
proc fcQSyntaxHighlighter_tr(s: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr".}
proc fcQSyntaxHighlighter_trUtf8(s: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf8".}
proc fcQSyntaxHighlighter_setDocument(self: pointer, doc: pointer): void {.importc: "QSyntaxHighlighter_setDocument".}
proc fcQSyntaxHighlighter_document(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_document".}
proc fcQSyntaxHighlighter_rehighlight(self: pointer, ): void {.importc: "QSyntaxHighlighter_rehighlight".}
proc fcQSyntaxHighlighter_rehighlightBlock(self: pointer, blockVal: pointer): void {.importc: "QSyntaxHighlighter_rehighlightBlock".}
proc fcQSyntaxHighlighter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr2".}
proc fcQSyntaxHighlighter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_tr3".}
proc fcQSyntaxHighlighter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf82".}
proc fcQSyntaxHighlighter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf83".}
proc fQSyntaxHighlighter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSyntaxHighlighter_virtualbase_metaObject".}
proc fcQSyntaxHighlighter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_metaObject".}
proc fQSyntaxHighlighter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSyntaxHighlighter_virtualbase_metacast".}
proc fcQSyntaxHighlighter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_metacast".}
proc fQSyntaxHighlighter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSyntaxHighlighter_virtualbase_metacall".}
proc fcQSyntaxHighlighter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_metacall".}
proc fcQSyntaxHighlighter_override_virtual_highlightBlock(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_highlightBlock".}
proc fQSyntaxHighlighter_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSyntaxHighlighter_virtualbase_event".}
proc fcQSyntaxHighlighter_override_virtual_event(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_event".}
proc fQSyntaxHighlighter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSyntaxHighlighter_virtualbase_eventFilter".}
proc fcQSyntaxHighlighter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_eventFilter".}
proc fQSyntaxHighlighter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSyntaxHighlighter_virtualbase_timerEvent".}
proc fcQSyntaxHighlighter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_timerEvent".}
proc fQSyntaxHighlighter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSyntaxHighlighter_virtualbase_childEvent".}
proc fcQSyntaxHighlighter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_childEvent".}
proc fQSyntaxHighlighter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSyntaxHighlighter_virtualbase_customEvent".}
proc fcQSyntaxHighlighter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_customEvent".}
proc fQSyntaxHighlighter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSyntaxHighlighter_virtualbase_connectNotify".}
proc fcQSyntaxHighlighter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_connectNotify".}
proc fQSyntaxHighlighter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSyntaxHighlighter_virtualbase_disconnectNotify".}
proc fcQSyntaxHighlighter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSyntaxHighlighter_override_virtual_disconnectNotify".}
proc fcQSyntaxHighlighter_staticMetaObject(): pointer {.importc: "QSyntaxHighlighter_staticMetaObject".}
proc fcQSyntaxHighlighter_delete(self: pointer) {.importc: "QSyntaxHighlighter_delete".}


func init*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, h: ptr cQSyntaxHighlighter): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =
  T(h: h)
proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, parent: gen_qobject.QObject): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =

  gen_qsyntaxhighlighter_types.QSyntaxHighlighter.init(fcQSyntaxHighlighter_new(parent.h))
proc create2*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, parent: gen_qtextdocument.QTextDocument): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =

  gen_qsyntaxhighlighter_types.QSyntaxHighlighter.init(fcQSyntaxHighlighter_new2(parent.h))
proc metaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSyntaxHighlighter_metaObject(self.h))

proc metacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =

  fcQSyntaxHighlighter_metacast(self.h, param1)

proc metacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =

  fcQSyntaxHighlighter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring): string =

  let v_ms = fcQSyntaxHighlighter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring): string =

  let v_ms = fcQSyntaxHighlighter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, doc: gen_qtextdocument.QTextDocument): void =

  fcQSyntaxHighlighter_setDocument(self.h, doc.h)

proc document*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQSyntaxHighlighter_document(self.h))

proc rehighlight*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): void =

  fcQSyntaxHighlighter_rehighlight(self.h)

proc rehighlightBlock*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, blockVal: gen_qtextobject.QTextBlock): void =

  fcQSyntaxHighlighter_rehighlightBlock(self.h, blockVal.h)

proc tr2*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring): string =

  let v_ms = fcQSyntaxHighlighter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSyntaxHighlighter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring): string =

  let v_ms = fcQSyntaxHighlighter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSyntaxHighlighter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSyntaxHighlightermetaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQSyntaxHighlighter_virtualbase_metaObject(self.h))

type QSyntaxHighlightermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightermetaObjectProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_metaObject(self: ptr cQSyntaxHighlighter, slot: int): pointer {.exportc: "miqt_exec_callback_QSyntaxHighlighter_metaObject ".} =
  var nimfunc = cast[ptr QSyntaxHighlightermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSyntaxHighlightermetacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =

  fQSyntaxHighlighter_virtualbase_metacast(self.h, param1)

type QSyntaxHighlightermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightermetacastProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_metacast(self: ptr cQSyntaxHighlighter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSyntaxHighlighter_metacast ".} =
  var nimfunc = cast[ptr QSyntaxHighlightermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSyntaxHighlightermetacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =

  fQSyntaxHighlighter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSyntaxHighlightermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightermetacallProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_metacall(self: ptr cQSyntaxHighlighter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSyntaxHighlighter_metacall ".} =
  var nimfunc = cast[ptr QSyntaxHighlightermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QSyntaxHighlighterhighlightBlockProc* = proc(text: string): void
proc onhighlightBlock*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlighterhighlightBlockProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlighterhighlightBlockProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_highlightBlock(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_highlightBlock(self: ptr cQSyntaxHighlighter, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_highlightBlock ".} =
  var nimfunc = cast[ptr QSyntaxHighlighterhighlightBlockProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc QSyntaxHighlighterevent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent.QEvent): bool =

  fQSyntaxHighlighter_virtualbase_event(self.h, event.h)

type QSyntaxHighlightereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightereventProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_event(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSyntaxHighlighter_event ".} =
  var nimfunc = cast[ptr QSyntaxHighlightereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSyntaxHighlightereventFilter*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQSyntaxHighlighter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSyntaxHighlightereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightereventFilterProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_eventFilter(self: ptr cQSyntaxHighlighter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSyntaxHighlighter_eventFilter ".} =
  var nimfunc = cast[ptr QSyntaxHighlightereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSyntaxHighlightertimerEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent.QTimerEvent): void =

  fQSyntaxHighlighter_virtualbase_timerEvent(self.h, event.h)

type QSyntaxHighlightertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightertimerEventProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_timerEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_timerEvent ".} =
  var nimfunc = cast[ptr QSyntaxHighlightertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSyntaxHighlighterchildEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent.QChildEvent): void =

  fQSyntaxHighlighter_virtualbase_childEvent(self.h, event.h)

type QSyntaxHighlighterchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlighterchildEventProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlighterchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_childEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_childEvent ".} =
  var nimfunc = cast[ptr QSyntaxHighlighterchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSyntaxHighlightercustomEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent.QEvent): void =

  fQSyntaxHighlighter_virtualbase_customEvent(self.h, event.h)

type QSyntaxHighlightercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlightercustomEventProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlightercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_customEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_customEvent ".} =
  var nimfunc = cast[ptr QSyntaxHighlightercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QSyntaxHighlighterconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject.QMetaMethod): void =

  fQSyntaxHighlighter_virtualbase_connectNotify(self.h, signal.h)

type QSyntaxHighlighterconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlighterconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlighterconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_connectNotify(self: ptr cQSyntaxHighlighter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_connectNotify ".} =
  var nimfunc = cast[ptr QSyntaxHighlighterconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSyntaxHighlighterdisconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject.QMetaMethod): void =

  fQSyntaxHighlighter_virtualbase_disconnectNotify(self.h, signal.h)

type QSyntaxHighlighterdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, slot: QSyntaxHighlighterdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSyntaxHighlighterdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_disconnectNotify(self: ptr cQSyntaxHighlighter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_disconnectNotify ".} =
  var nimfunc = cast[ptr QSyntaxHighlighterdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSyntaxHighlighter_staticMetaObject())
proc delete*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter) =
  fcQSyntaxHighlighter_delete(self.h)
