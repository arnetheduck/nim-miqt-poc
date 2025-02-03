import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
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
proc fcQSyntaxHighlighter_setDocument(self: pointer, doc: pointer): void {.importc: "QSyntaxHighlighter_setDocument".}
proc fcQSyntaxHighlighter_document(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_document".}
proc fcQSyntaxHighlighter_rehighlight(self: pointer, ): void {.importc: "QSyntaxHighlighter_rehighlight".}
proc fcQSyntaxHighlighter_rehighlightBlock(self: pointer, blockVal: pointer): void {.importc: "QSyntaxHighlighter_rehighlightBlock".}
proc fcQSyntaxHighlighter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr2".}
proc fcQSyntaxHighlighter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_tr3".}
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
proc fcQSyntaxHighlighter_delete(self: pointer) {.importc: "QSyntaxHighlighter_delete".}


func init*(T: type QSyntaxHighlighter, h: ptr cQSyntaxHighlighter): QSyntaxHighlighter =
  T(h: h)
proc create*(T: type QSyntaxHighlighter, parent: gen_qobject.QObject): QSyntaxHighlighter =

  QSyntaxHighlighter.init(fcQSyntaxHighlighter_new(parent.h))
proc create2*(T: type QSyntaxHighlighter, parent: gen_qtextdocument.QTextDocument): QSyntaxHighlighter =

  QSyntaxHighlighter.init(fcQSyntaxHighlighter_new2(parent.h))
proc metaObject*(self: QSyntaxHighlighter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSyntaxHighlighter_metaObject(self.h))

proc metacast*(self: QSyntaxHighlighter, param1: cstring): pointer =

  fcQSyntaxHighlighter_metacast(self.h, param1)

proc metacall*(self: QSyntaxHighlighter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSyntaxHighlighter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSyntaxHighlighter, s: cstring): string =

  let v_ms = fcQSyntaxHighlighter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: QSyntaxHighlighter, doc: gen_qtextdocument.QTextDocument): void =

  fcQSyntaxHighlighter_setDocument(self.h, doc.h)

proc document*(self: QSyntaxHighlighter, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQSyntaxHighlighter_document(self.h))

proc rehighlight*(self: QSyntaxHighlighter, ): void =

  fcQSyntaxHighlighter_rehighlight(self.h)

proc rehighlightBlock*(self: QSyntaxHighlighter, blockVal: gen_qtextobject.QTextBlock): void =

  fcQSyntaxHighlighter_rehighlightBlock(self.h, blockVal.h)

proc tr2*(_: type QSyntaxHighlighter, s: cstring, c: cstring): string =

  let v_ms = fcQSyntaxHighlighter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSyntaxHighlighter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSyntaxHighlighter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSyntaxHighlighter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSyntaxHighlightermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlightermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlightermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_metacall(self: ptr cQSyntaxHighlighter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSyntaxHighlighter_metacall ".} =
  type Cb = proc(super: QSyntaxHighlightermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSyntaxHighlighter(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QSyntaxHighlighterhighlightBlockBase* = proc(text: string): void
proc onhighlightBlock*(self: QSyntaxHighlighter, slot: proc(text: string): void) =
  # TODO check subclass
  type Cb = proc(text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_highlightBlock(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_highlightBlock(self: ptr cQSyntaxHighlighter, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_highlightBlock ".} =
  type Cb = proc(text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QSyntaxHighlighter, event: gen_qcoreevent.QEvent): bool =


  fQSyntaxHighlighter_virtualbase_event(self.h, event.h)

type QSyntaxHighlightereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlightereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlightereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_event(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSyntaxHighlighter_event ".} =
  type Cb = proc(super: QSyntaxHighlightereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSyntaxHighlighter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSyntaxHighlighter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSyntaxHighlighter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSyntaxHighlightereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlightereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlightereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_eventFilter(self: ptr cQSyntaxHighlighter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSyntaxHighlighter_eventFilter ".} =
  type Cb = proc(super: QSyntaxHighlightereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSyntaxHighlighter(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSyntaxHighlighter, event: gen_qcoreevent.QTimerEvent): void =


  fQSyntaxHighlighter_virtualbase_timerEvent(self.h, event.h)

type QSyntaxHighlightertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlightertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlightertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_timerEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_timerEvent ".} =
  type Cb = proc(super: QSyntaxHighlightertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSyntaxHighlighter(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSyntaxHighlighter, event: gen_qcoreevent.QChildEvent): void =


  fQSyntaxHighlighter_virtualbase_childEvent(self.h, event.h)

type QSyntaxHighlighterchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlighterchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlighterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_childEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_childEvent ".} =
  type Cb = proc(super: QSyntaxHighlighterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSyntaxHighlighter(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSyntaxHighlighter, event: gen_qcoreevent.QEvent): void =


  fQSyntaxHighlighter_virtualbase_customEvent(self.h, event.h)

type QSyntaxHighlightercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlightercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlightercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_customEvent(self: ptr cQSyntaxHighlighter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_customEvent ".} =
  type Cb = proc(super: QSyntaxHighlightercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSyntaxHighlighter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSyntaxHighlighter, signal: gen_qmetaobject.QMetaMethod): void =


  fQSyntaxHighlighter_virtualbase_connectNotify(self.h, signal.h)

type QSyntaxHighlighterconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlighterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlighterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_connectNotify(self: ptr cQSyntaxHighlighter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_connectNotify ".} =
  type Cb = proc(super: QSyntaxHighlighterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSyntaxHighlighter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSyntaxHighlighter, signal: gen_qmetaobject.QMetaMethod): void =


  fQSyntaxHighlighter_virtualbase_disconnectNotify(self.h, signal.h)

type QSyntaxHighlighterdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSyntaxHighlighter, slot: proc(super: QSyntaxHighlighterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSyntaxHighlighterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSyntaxHighlighter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSyntaxHighlighter_disconnectNotify(self: ptr cQSyntaxHighlighter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSyntaxHighlighter_disconnectNotify ".} =
  type Cb = proc(super: QSyntaxHighlighterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSyntaxHighlighter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSyntaxHighlighter) =
  fcQSyntaxHighlighter_delete(self.h)
