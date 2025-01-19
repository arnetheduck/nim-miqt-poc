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
{.compile("gen_qscilexerbatch.cpp", cflags).}


type QsciLexerBatchEnum* = cint
const
  QsciLexerBatchDefault* = 0
  QsciLexerBatchComment* = 1
  QsciLexerBatchKeyword* = 2
  QsciLexerBatchLabel* = 3
  QsciLexerBatchHideCommandChar* = 4
  QsciLexerBatchExternalCommand* = 5
  QsciLexerBatchVariable* = 6
  QsciLexerBatchOperator* = 7



import gen_qscilexerbatch_types
export gen_qscilexerbatch_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerBatch*{.exportc: "QsciLexerBatch", incompleteStruct.} = object

proc fcQsciLexerBatch_new(): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new".}
proc fcQsciLexerBatch_new2(parent: pointer): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new2".}
proc fcQsciLexerBatch_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBatch_metaObject".}
proc fcQsciLexerBatch_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBatch_metacast".}
proc fcQsciLexerBatch_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBatch_metacall".}
proc fcQsciLexerBatch_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr".}
proc fcQsciLexerBatch_language(self: pointer, ): cstring {.importc: "QsciLexerBatch_language".}
proc fcQsciLexerBatch_lexer(self: pointer, ): cstring {.importc: "QsciLexerBatch_lexer".}
proc fcQsciLexerBatch_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBatch_wordCharacters".}
proc fcQsciLexerBatch_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerBatch_caseSensitive".}
proc fcQsciLexerBatch_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultColor".}
proc fcQsciLexerBatch_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBatch_defaultEolFill".}
proc fcQsciLexerBatch_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultFont".}
proc fcQsciLexerBatch_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultPaper".}
proc fcQsciLexerBatch_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBatch_keywords".}
proc fcQsciLexerBatch_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBatch_description".}
proc fcQsciLexerBatch_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr2".}
proc fcQsciLexerBatch_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBatch_tr3".}
proc fQsciLexerBatch_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerBatch_virtualbase_metacall".}
proc fcQsciLexerBatch_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_metacall".}
proc fcQsciLexerBatch_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_language".}
proc fQsciLexerBatch_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_lexer".}
proc fcQsciLexerBatch_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_lexer".}
proc fQsciLexerBatch_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_lexerId".}
proc fcQsciLexerBatch_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_lexerId".}
proc fQsciLexerBatch_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBatch_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_autoCompletionFillups".}
proc fQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerBatch_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBatch_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerBatch_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockEnd".}
proc fcQsciLexerBatch_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockEnd".}
proc fQsciLexerBatch_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_blockLookback".}
proc fcQsciLexerBatch_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockLookback".}
proc fQsciLexerBatch_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockStart".}
proc fcQsciLexerBatch_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockStart".}
proc fQsciLexerBatch_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockStartKeyword".}
proc fcQsciLexerBatch_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockStartKeyword".}
proc fQsciLexerBatch_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_braceStyle".}
proc fcQsciLexerBatch_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_braceStyle".}
proc fQsciLexerBatch_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerBatch_virtualbase_caseSensitive".}
proc fcQsciLexerBatch_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_caseSensitive".}
proc fQsciLexerBatch_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_color".}
proc fcQsciLexerBatch_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_color".}
proc fQsciLexerBatch_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBatch_virtualbase_eolFill".}
proc fcQsciLexerBatch_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_eolFill".}
proc fQsciLexerBatch_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_font".}
proc fcQsciLexerBatch_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_font".}
proc fQsciLexerBatch_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_indentationGuideView".}
proc fcQsciLexerBatch_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_indentationGuideView".}
proc fQsciLexerBatch_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerBatch_virtualbase_keywords".}
proc fcQsciLexerBatch_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_keywords".}
proc fQsciLexerBatch_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_defaultStyle".}
proc fcQsciLexerBatch_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultStyle".}
proc fcQsciLexerBatch_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_description".}
proc fQsciLexerBatch_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_paper".}
proc fcQsciLexerBatch_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_paper".}
proc fQsciLexerBatch_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultColorWithStyle".}
proc fQsciLexerBatch_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBatch_virtualbase_defaultEolFill".}
proc fcQsciLexerBatch_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultEolFill".}
proc fQsciLexerBatch_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultFontWithStyle".}
proc fQsciLexerBatch_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerBatch_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerBatch_virtualbase_setEditor".}
proc fcQsciLexerBatch_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setEditor".}
proc fQsciLexerBatch_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerBatch_virtualbase_refreshProperties".}
proc fcQsciLexerBatch_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_refreshProperties".}
proc fQsciLexerBatch_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBatch_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_styleBitsNeeded".}
proc fQsciLexerBatch_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_wordCharacters".}
proc fcQsciLexerBatch_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_wordCharacters".}
proc fQsciLexerBatch_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerBatch_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBatch_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setAutoIndentStyle".}
proc fQsciLexerBatch_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setColor".}
proc fcQsciLexerBatch_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setColor".}
proc fQsciLexerBatch_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setEolFill".}
proc fcQsciLexerBatch_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setEolFill".}
proc fQsciLexerBatch_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setFont".}
proc fcQsciLexerBatch_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setFont".}
proc fQsciLexerBatch_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setPaper".}
proc fcQsciLexerBatch_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setPaper".}
proc fQsciLexerBatch_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBatch_virtualbase_readProperties".}
proc fcQsciLexerBatch_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_readProperties".}
proc fQsciLexerBatch_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBatch_virtualbase_writeProperties".}
proc fcQsciLexerBatch_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_writeProperties".}
proc fQsciLexerBatch_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerBatch_virtualbase_event".}
proc fcQsciLexerBatch_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_event".}
proc fQsciLexerBatch_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerBatch_virtualbase_eventFilter".}
proc fcQsciLexerBatch_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_eventFilter".}
proc fQsciLexerBatch_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_timerEvent".}
proc fcQsciLexerBatch_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_timerEvent".}
proc fQsciLexerBatch_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_childEvent".}
proc fcQsciLexerBatch_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_childEvent".}
proc fQsciLexerBatch_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_customEvent".}
proc fcQsciLexerBatch_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_customEvent".}
proc fQsciLexerBatch_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBatch_virtualbase_connectNotify".}
proc fcQsciLexerBatch_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_connectNotify".}
proc fQsciLexerBatch_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBatch_virtualbase_disconnectNotify".}
proc fcQsciLexerBatch_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_disconnectNotify".}
proc fcQsciLexerBatch_staticMetaObject(): pointer {.importc: "QsciLexerBatch_staticMetaObject".}
proc fcQsciLexerBatch_delete(self: pointer) {.importc: "QsciLexerBatch_delete".}


func init*(T: type QsciLexerBatch, h: ptr cQsciLexerBatch): QsciLexerBatch =
  T(h: h)
proc create*(T: type QsciLexerBatch, ): QsciLexerBatch =

  QsciLexerBatch.init(fcQsciLexerBatch_new())
proc create*(T: type QsciLexerBatch, parent: gen_qobject.QObject): QsciLexerBatch =

  QsciLexerBatch.init(fcQsciLexerBatch_new2(parent.h))
proc metaObject*(self: QsciLexerBatch, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBatch_metaObject(self.h))

proc metacast*(self: QsciLexerBatch, param1: cstring): pointer =

  fcQsciLexerBatch_metacast(self.h, param1)

proc metacall*(self: QsciLexerBatch, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerBatch_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerBatch, s: cstring): string =

  let v_ms = fcQsciLexerBatch_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_language(self.h))

proc lexer*(self: QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_lexer(self.h))

proc wordCharacters*(self: QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_wordCharacters(self.h))

proc caseSensitive*(self: QsciLexerBatch, ): bool =

  fcQsciLexerBatch_caseSensitive(self.h)

proc defaultColor*(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBatch_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerBatch, style: cint): bool =

  fcQsciLexerBatch_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerBatch, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerBatch_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBatch_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerBatch, set: cint): cstring =

  (fcQsciLexerBatch_keywords(self.h, set))

proc description*(self: QsciLexerBatch, style: cint): string =

  let v_ms = fcQsciLexerBatch_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerBatch, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerBatch_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerBatch, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerBatch_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerBatch, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerBatch_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerBatchmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_metacall(self: ptr cQsciLexerBatch, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_metacall ".} =
  type Cb = proc(super: QsciLexerBatchmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerBatch(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerBatchlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerBatch, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_language(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerBatch, ): cstring =


  (fQsciLexerBatch_virtualbase_lexer(self.h))

type QsciLexerBatchlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_lexer(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_lexer ".} =
  type Cb = proc(super: QsciLexerBatchlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_lexerId(self.h)

type QsciLexerBatchlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_lexerId(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_lexerId ".} =
  type Cb = proc(super: QsciLexerBatchlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerBatch, ): cstring =


  (fQsciLexerBatch_virtualbase_autoCompletionFillups(self.h))

type QsciLexerBatchautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_autoCompletionFillups(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerBatchautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerBatch, ): seq[string] =


  var v_ma = fQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerBatchautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators(self: ptr cQsciLexerBatch, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerBatchautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerBatch, style: ptr cint): cstring =


  (fQsciLexerBatch_virtualbase_blockEnd(self.h, style))

type QsciLexerBatchblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockEnd(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockEnd ".} =
  type Cb = proc(super: QsciLexerBatchblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_blockLookback(self.h)

type QsciLexerBatchblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockLookback(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_blockLookback ".} =
  type Cb = proc(super: QsciLexerBatchblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerBatch, style: ptr cint): cstring =


  (fQsciLexerBatch_virtualbase_blockStart(self.h, style))

type QsciLexerBatchblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockStart(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockStart ".} =
  type Cb = proc(super: QsciLexerBatchblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerBatch, style: ptr cint): cstring =


  (fQsciLexerBatch_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerBatchblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockStartKeyword(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerBatchblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_braceStyle(self.h)

type QsciLexerBatchbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_braceStyle(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_braceStyle ".} =
  type Cb = proc(super: QsciLexerBatchbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerBatch, ): bool =


  fQsciLexerBatch_virtualbase_caseSensitive(self.h)

type QsciLexerBatchcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_caseSensitive(self: ptr cQsciLexerBatch, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_caseSensitive ".} =
  type Cb = proc(super: QsciLexerBatchcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_color(self.h, style))

type QsciLexerBatchcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_color(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_color ".} =
  type Cb = proc(super: QsciLexerBatchcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerBatch, style: cint): bool =


  fQsciLexerBatch_virtualbase_eolFill(self.h, style)

type QsciLexerBatcheolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatcheolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatcheolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_eolFill(self: ptr cQsciLexerBatch, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_eolFill ".} =
  type Cb = proc(super: QsciLexerBatcheolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerBatch, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerBatch_virtualbase_font(self.h, style))

type QsciLexerBatchfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_font(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_font ".} =
  type Cb = proc(super: QsciLexerBatchfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_indentationGuideView(self.h)

type QsciLexerBatchindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_indentationGuideView(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerBatchindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerBatch, set: cint): cstring =


  (fQsciLexerBatch_virtualbase_keywords(self.h, set))

type QsciLexerBatchkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_keywords(self: ptr cQsciLexerBatch, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_keywords ".} =
  type Cb = proc(super: QsciLexerBatchkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerBatch(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_defaultStyle(self.h)

type QsciLexerBatchdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultStyle(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultStyle ".} =
  type Cb = proc(super: QsciLexerBatchdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerBatchdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerBatch, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_description(self: ptr cQsciLexerBatch, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerBatch_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_paper(self.h, style))

type QsciLexerBatchpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_paper(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_paper ".} =
  type Cb = proc(super: QsciLexerBatchpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerBatchdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerBatchdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerBatch, style: cint): bool =


  fQsciLexerBatch_virtualbase_defaultEolFill(self.h, style)

type QsciLexerBatchdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultEolFill(self: ptr cQsciLexerBatch, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerBatchdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerBatch, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerBatch_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerBatchdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerBatchdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerBatch, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerBatchdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerBatchdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerBatch(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerBatch, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerBatch_virtualbase_setEditor(self.h, editor.h)

type QsciLexerBatchsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setEditor(self: ptr cQsciLexerBatch, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setEditor ".} =
  type Cb = proc(super: QsciLexerBatchsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerBatch(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerBatch, ): void =


  fQsciLexerBatch_virtualbase_refreshProperties(self.h)

type QsciLexerBatchrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_refreshProperties(self: ptr cQsciLexerBatch, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerBatch_refreshProperties ".} =
  type Cb = proc(super: QsciLexerBatchrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerBatch(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerBatch, ): cint =


  fQsciLexerBatch_virtualbase_styleBitsNeeded(self.h)

type QsciLexerBatchstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_styleBitsNeeded(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerBatchstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerBatch, ): cstring =


  (fQsciLexerBatch_virtualbase_wordCharacters(self.h))

type QsciLexerBatchwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_wordCharacters(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_wordCharacters ".} =
  type Cb = proc(super: QsciLexerBatchwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerBatch(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerBatch, autoindentstyle: cint): void =


  fQsciLexerBatch_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerBatchsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle(self: ptr cQsciLexerBatch, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerBatchsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerBatch(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerBatch, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerBatch_virtualbase_setColor(self.h, c.h, style)

type QsciLexerBatchsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setColor(self: ptr cQsciLexerBatch, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setColor ".} =
  type Cb = proc(super: QsciLexerBatchsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerBatch(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerBatch, eoffill: bool, style: cint): void =


  fQsciLexerBatch_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerBatchsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setEolFill(self: ptr cQsciLexerBatch, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setEolFill ".} =
  type Cb = proc(super: QsciLexerBatchsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerBatch(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerBatch, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerBatch_virtualbase_setFont(self.h, f.h, style)

type QsciLexerBatchsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setFont(self: ptr cQsciLexerBatch, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setFont ".} =
  type Cb = proc(super: QsciLexerBatchsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerBatch(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerBatch, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerBatch_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerBatchsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setPaper(self: ptr cQsciLexerBatch, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setPaper ".} =
  type Cb = proc(super: QsciLexerBatchsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerBatch(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerBatch, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerBatch_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBatchreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_readProperties(self: ptr cQsciLexerBatch, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_readProperties ".} =
  type Cb = proc(super: QsciLexerBatchreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerBatch(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerBatch, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerBatch_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBatchwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_writeProperties(self: ptr cQsciLexerBatch, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_writeProperties ".} =
  type Cb = proc(super: QsciLexerBatchwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerBatch(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerBatch, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerBatch_virtualbase_event(self.h, event.h)

type QsciLexerBatcheventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatcheventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatcheventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_event(self: ptr cQsciLexerBatch, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_event ".} =
  type Cb = proc(super: QsciLexerBatcheventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerBatch(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerBatch, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerBatch_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerBatcheventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatcheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatcheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_eventFilter(self: ptr cQsciLexerBatch, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_eventFilter ".} =
  type Cb = proc(super: QsciLexerBatcheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerBatch(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerBatch, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerBatch_virtualbase_timerEvent(self.h, event.h)

type QsciLexerBatchtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_timerEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_timerEvent ".} =
  type Cb = proc(super: QsciLexerBatchtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerBatch(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerBatch, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerBatch_virtualbase_childEvent(self.h, event.h)

type QsciLexerBatchchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_childEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_childEvent ".} =
  type Cb = proc(super: QsciLexerBatchchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerBatch(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerBatch, event: gen_qcoreevent.QEvent): void =


  fQsciLexerBatch_virtualbase_customEvent(self.h, event.h)

type QsciLexerBatchcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_customEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_customEvent ".} =
  type Cb = proc(super: QsciLexerBatchcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerBatch(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerBatch, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerBatch_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerBatchconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_connectNotify(self: ptr cQsciLexerBatch, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_connectNotify ".} =
  type Cb = proc(super: QsciLexerBatchconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerBatch(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerBatch, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerBatch_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerBatchdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerBatch, slot: proc(super: QsciLexerBatchdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBatchdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_disconnectNotify(self: ptr cQsciLexerBatch, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerBatchdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerBatch(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerBatch): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBatch_staticMetaObject())
proc delete*(self: QsciLexerBatch) =
  fcQsciLexerBatch_delete(self.h)
