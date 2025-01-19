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
{.compile("gen_qscilexermarkdown.cpp", cflags).}


type QsciLexerMarkdownEnum* = cint
const
  QsciLexerMarkdownDefault* = 0
  QsciLexerMarkdownSpecial* = 1
  QsciLexerMarkdownStrongEmphasisAsterisks* = 2
  QsciLexerMarkdownStrongEmphasisUnderscores* = 3
  QsciLexerMarkdownEmphasisAsterisks* = 4
  QsciLexerMarkdownEmphasisUnderscores* = 5
  QsciLexerMarkdownHeader1* = 6
  QsciLexerMarkdownHeader2* = 7
  QsciLexerMarkdownHeader3* = 8
  QsciLexerMarkdownHeader4* = 9
  QsciLexerMarkdownHeader5* = 10
  QsciLexerMarkdownHeader6* = 11
  QsciLexerMarkdownPrechar* = 12
  QsciLexerMarkdownUnorderedListItem* = 13
  QsciLexerMarkdownOrderedListItem* = 14
  QsciLexerMarkdownBlockQuote* = 15
  QsciLexerMarkdownStrikeOut* = 16
  QsciLexerMarkdownHorizontalRule* = 17
  QsciLexerMarkdownLink* = 18
  QsciLexerMarkdownCodeBackticks* = 19
  QsciLexerMarkdownCodeDoubleBackticks* = 20
  QsciLexerMarkdownCodeBlock* = 21



import gen_qscilexermarkdown_types
export gen_qscilexermarkdown_types

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

type cQsciLexerMarkdown*{.exportc: "QsciLexerMarkdown", incompleteStruct.} = object

proc fcQsciLexerMarkdown_new(): ptr cQsciLexerMarkdown {.importc: "QsciLexerMarkdown_new".}
proc fcQsciLexerMarkdown_new2(parent: pointer): ptr cQsciLexerMarkdown {.importc: "QsciLexerMarkdown_new2".}
proc fcQsciLexerMarkdown_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMarkdown_metaObject".}
proc fcQsciLexerMarkdown_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMarkdown_metacast".}
proc fcQsciLexerMarkdown_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMarkdown_metacall".}
proc fcQsciLexerMarkdown_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_tr".}
proc fcQsciLexerMarkdown_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf8".}
proc fcQsciLexerMarkdown_language(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_language".}
proc fcQsciLexerMarkdown_lexer(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_lexer".}
proc fcQsciLexerMarkdown_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultColor".}
proc fcQsciLexerMarkdown_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultFont".}
proc fcQsciLexerMarkdown_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultPaper".}
proc fcQsciLexerMarkdown_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_description".}
proc fcQsciLexerMarkdown_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_tr2".}
proc fcQsciLexerMarkdown_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_tr3".}
proc fcQsciLexerMarkdown_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf82".}
proc fcQsciLexerMarkdown_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf83".}
proc fQsciLexerMarkdown_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerMarkdown_virtualbase_metacall".}
proc fcQsciLexerMarkdown_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_metacall".}
proc fcQsciLexerMarkdown_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_language".}
proc fQsciLexerMarkdown_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerMarkdown_virtualbase_lexer".}
proc fcQsciLexerMarkdown_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_lexer".}
proc fQsciLexerMarkdown_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_lexerId".}
proc fcQsciLexerMarkdown_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_lexerId".}
proc fQsciLexerMarkdown_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerMarkdown_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMarkdown_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_autoCompletionFillups".}
proc fQsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerMarkdown_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMarkdown_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerMarkdown_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMarkdown_virtualbase_blockEnd".}
proc fcQsciLexerMarkdown_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_blockEnd".}
proc fQsciLexerMarkdown_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_blockLookback".}
proc fcQsciLexerMarkdown_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_blockLookback".}
proc fQsciLexerMarkdown_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMarkdown_virtualbase_blockStart".}
proc fcQsciLexerMarkdown_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_blockStart".}
proc fQsciLexerMarkdown_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMarkdown_virtualbase_blockStartKeyword".}
proc fcQsciLexerMarkdown_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_blockStartKeyword".}
proc fQsciLexerMarkdown_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_braceStyle".}
proc fcQsciLexerMarkdown_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_braceStyle".}
proc fQsciLexerMarkdown_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerMarkdown_virtualbase_caseSensitive".}
proc fcQsciLexerMarkdown_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_caseSensitive".}
proc fQsciLexerMarkdown_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_color".}
proc fcQsciLexerMarkdown_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_color".}
proc fQsciLexerMarkdown_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMarkdown_virtualbase_eolFill".}
proc fcQsciLexerMarkdown_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_eolFill".}
proc fQsciLexerMarkdown_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_font".}
proc fcQsciLexerMarkdown_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_font".}
proc fQsciLexerMarkdown_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_indentationGuideView".}
proc fcQsciLexerMarkdown_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_indentationGuideView".}
proc fQsciLexerMarkdown_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerMarkdown_virtualbase_keywords".}
proc fcQsciLexerMarkdown_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_keywords".}
proc fQsciLexerMarkdown_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_defaultStyle".}
proc fcQsciLexerMarkdown_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_defaultStyle".}
proc fcQsciLexerMarkdown_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_description".}
proc fQsciLexerMarkdown_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_paper".}
proc fcQsciLexerMarkdown_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_paper".}
proc fQsciLexerMarkdown_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMarkdown_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_defaultColorWithStyle".}
proc fQsciLexerMarkdown_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMarkdown_virtualbase_defaultEolFill".}
proc fcQsciLexerMarkdown_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_defaultEolFill".}
proc fQsciLexerMarkdown_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMarkdown_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_defaultFontWithStyle".}
proc fQsciLexerMarkdown_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMarkdown_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMarkdown_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerMarkdown_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_setEditor".}
proc fcQsciLexerMarkdown_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setEditor".}
proc fQsciLexerMarkdown_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerMarkdown_virtualbase_refreshProperties".}
proc fcQsciLexerMarkdown_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_refreshProperties".}
proc fQsciLexerMarkdown_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerMarkdown_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMarkdown_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_styleBitsNeeded".}
proc fQsciLexerMarkdown_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerMarkdown_virtualbase_wordCharacters".}
proc fcQsciLexerMarkdown_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_wordCharacters".}
proc fQsciLexerMarkdown_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerMarkdown_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMarkdown_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setAutoIndentStyle".}
proc fQsciLexerMarkdown_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMarkdown_virtualbase_setColor".}
proc fcQsciLexerMarkdown_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setColor".}
proc fQsciLexerMarkdown_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerMarkdown_virtualbase_setEolFill".}
proc fcQsciLexerMarkdown_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setEolFill".}
proc fQsciLexerMarkdown_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerMarkdown_virtualbase_setFont".}
proc fcQsciLexerMarkdown_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setFont".}
proc fQsciLexerMarkdown_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMarkdown_virtualbase_setPaper".}
proc fcQsciLexerMarkdown_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_setPaper".}
proc fQsciLexerMarkdown_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMarkdown_virtualbase_readProperties".}
proc fcQsciLexerMarkdown_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_readProperties".}
proc fQsciLexerMarkdown_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMarkdown_virtualbase_writeProperties".}
proc fcQsciLexerMarkdown_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_writeProperties".}
proc fQsciLexerMarkdown_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerMarkdown_virtualbase_event".}
proc fcQsciLexerMarkdown_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_event".}
proc fQsciLexerMarkdown_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerMarkdown_virtualbase_eventFilter".}
proc fcQsciLexerMarkdown_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_eventFilter".}
proc fQsciLexerMarkdown_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_timerEvent".}
proc fcQsciLexerMarkdown_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_timerEvent".}
proc fQsciLexerMarkdown_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_childEvent".}
proc fcQsciLexerMarkdown_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_childEvent".}
proc fQsciLexerMarkdown_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_customEvent".}
proc fcQsciLexerMarkdown_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_customEvent".}
proc fQsciLexerMarkdown_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_connectNotify".}
proc fcQsciLexerMarkdown_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_connectNotify".}
proc fQsciLexerMarkdown_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMarkdown_virtualbase_disconnectNotify".}
proc fcQsciLexerMarkdown_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_disconnectNotify".}
proc fcQsciLexerMarkdown_staticMetaObject(): pointer {.importc: "QsciLexerMarkdown_staticMetaObject".}
proc fcQsciLexerMarkdown_delete(self: pointer) {.importc: "QsciLexerMarkdown_delete".}


func init*(T: type QsciLexerMarkdown, h: ptr cQsciLexerMarkdown): QsciLexerMarkdown =
  T(h: h)
proc create*(T: type QsciLexerMarkdown, ): QsciLexerMarkdown =

  QsciLexerMarkdown.init(fcQsciLexerMarkdown_new())
proc create*(T: type QsciLexerMarkdown, parent: gen_qobject.QObject): QsciLexerMarkdown =

  QsciLexerMarkdown.init(fcQsciLexerMarkdown_new2(parent.h))
proc metaObject*(self: QsciLexerMarkdown, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMarkdown_metaObject(self.h))

proc metacast*(self: QsciLexerMarkdown, param1: cstring): pointer =

  fcQsciLexerMarkdown_metacast(self.h, param1)

proc metacall*(self: QsciLexerMarkdown, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerMarkdown_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerMarkdown, s: cstring): string =

  let v_ms = fcQsciLexerMarkdown_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerMarkdown, s: cstring): string =

  let v_ms = fcQsciLexerMarkdown_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerMarkdown, ): cstring =

  (fcQsciLexerMarkdown_language(self.h))

proc lexer*(self: QsciLexerMarkdown, ): cstring =

  (fcQsciLexerMarkdown_lexer(self.h))

proc defaultColor*(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMarkdown_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerMarkdown, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerMarkdown_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMarkdown_defaultPaper(self.h, style))

proc description*(self: QsciLexerMarkdown, style: cint): string =

  let v_ms = fcQsciLexerMarkdown_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerMarkdown, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerMarkdown_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerMarkdown, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerMarkdown_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerMarkdown, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerMarkdown_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerMarkdown, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerMarkdown_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerMarkdown, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerMarkdown_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMarkdownmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_metacall(self: ptr cQsciLexerMarkdown, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_metacall ".} =
  type Cb = proc(super: QsciLexerMarkdownmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerMarkdown(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMarkdownlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerMarkdown, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_language(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerMarkdown, ): cstring =


  (fQsciLexerMarkdown_virtualbase_lexer(self.h))

type QsciLexerMarkdownlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_lexer(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_lexer ".} =
  type Cb = proc(super: QsciLexerMarkdownlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_lexerId(self.h)

type QsciLexerMarkdownlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_lexerId(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_lexerId ".} =
  type Cb = proc(super: QsciLexerMarkdownlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerMarkdown, ): cstring =


  (fQsciLexerMarkdown_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMarkdownautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_autoCompletionFillups(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerMarkdownautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerMarkdown, ): seq[string] =


  var v_ma = fQsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMarkdownautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_autoCompletionWordSeparators(self: ptr cQsciLexerMarkdown, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMarkdown_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerMarkdownautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerMarkdown, style: ptr cint): cstring =


  (fQsciLexerMarkdown_virtualbase_blockEnd(self.h, style))

type QsciLexerMarkdownblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockEnd(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockEnd ".} =
  type Cb = proc(super: QsciLexerMarkdownblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_blockLookback(self.h)

type QsciLexerMarkdownblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockLookback(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockLookback ".} =
  type Cb = proc(super: QsciLexerMarkdownblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerMarkdown, style: ptr cint): cstring =


  (fQsciLexerMarkdown_virtualbase_blockStart(self.h, style))

type QsciLexerMarkdownblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockStart(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockStart ".} =
  type Cb = proc(super: QsciLexerMarkdownblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerMarkdown, style: ptr cint): cstring =


  (fQsciLexerMarkdown_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMarkdownblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockStartKeyword(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerMarkdownblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_braceStyle(self.h)

type QsciLexerMarkdownbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_braceStyle(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_braceStyle ".} =
  type Cb = proc(super: QsciLexerMarkdownbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerMarkdown, ): bool =


  fQsciLexerMarkdown_virtualbase_caseSensitive(self.h)

type QsciLexerMarkdowncaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowncaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowncaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_caseSensitive(self: ptr cQsciLexerMarkdown, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_caseSensitive ".} =
  type Cb = proc(super: QsciLexerMarkdowncaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_color(self.h, style))

type QsciLexerMarkdowncolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowncolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowncolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_color(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_color ".} =
  type Cb = proc(super: QsciLexerMarkdowncolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerMarkdown, style: cint): bool =


  fQsciLexerMarkdown_virtualbase_eolFill(self.h, style)

type QsciLexerMarkdowneolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowneolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowneolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_eolFill(self: ptr cQsciLexerMarkdown, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_eolFill ".} =
  type Cb = proc(super: QsciLexerMarkdowneolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerMarkdown, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMarkdown_virtualbase_font(self.h, style))

type QsciLexerMarkdownfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_font(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_font ".} =
  type Cb = proc(super: QsciLexerMarkdownfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_indentationGuideView(self.h)

type QsciLexerMarkdownindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_indentationGuideView(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerMarkdownindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerMarkdown, set: cint): cstring =


  (fQsciLexerMarkdown_virtualbase_keywords(self.h, set))

type QsciLexerMarkdownkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_keywords(self: ptr cQsciLexerMarkdown, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_keywords ".} =
  type Cb = proc(super: QsciLexerMarkdownkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerMarkdown(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_defaultStyle(self.h)

type QsciLexerMarkdowndefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultStyle(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultStyle ".} =
  type Cb = proc(super: QsciLexerMarkdowndefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerMarkdowndescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerMarkdown, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_description(self: ptr cQsciLexerMarkdown, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMarkdown_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_paper(self.h, style))

type QsciLexerMarkdownpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_paper(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_paper ".} =
  type Cb = proc(super: QsciLexerMarkdownpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMarkdowndefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultColorWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerMarkdowndefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerMarkdown, style: cint): bool =


  fQsciLexerMarkdown_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMarkdowndefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultEolFill(self: ptr cQsciLexerMarkdown, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerMarkdowndefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerMarkdown, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMarkdown_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMarkdowndefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultFontWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerMarkdowndefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerMarkdown, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMarkdowndefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultPaperWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerMarkdowndefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerMarkdown(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerMarkdown, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerMarkdown_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMarkdownsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setEditor(self: ptr cQsciLexerMarkdown, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setEditor ".} =
  type Cb = proc(super: QsciLexerMarkdownsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerMarkdown(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerMarkdown, ): void =


  fQsciLexerMarkdown_virtualbase_refreshProperties(self.h)

type QsciLexerMarkdownrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_refreshProperties(self: ptr cQsciLexerMarkdown, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_refreshProperties ".} =
  type Cb = proc(super: QsciLexerMarkdownrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerMarkdown(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerMarkdown, ): cint =


  fQsciLexerMarkdown_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMarkdownstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_styleBitsNeeded(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerMarkdownstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerMarkdown, ): cstring =


  (fQsciLexerMarkdown_virtualbase_wordCharacters(self.h))

type QsciLexerMarkdownwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_wordCharacters(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_wordCharacters ".} =
  type Cb = proc(super: QsciLexerMarkdownwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerMarkdown(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerMarkdown, autoindentstyle: cint): void =


  fQsciLexerMarkdown_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMarkdownsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setAutoIndentStyle(self: ptr cQsciLexerMarkdown, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerMarkdownsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerMarkdown(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerMarkdown, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMarkdown_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMarkdownsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setColor(self: ptr cQsciLexerMarkdown, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setColor ".} =
  type Cb = proc(super: QsciLexerMarkdownsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerMarkdown(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerMarkdown, eoffill: bool, style: cint): void =


  fQsciLexerMarkdown_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMarkdownsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setEolFill(self: ptr cQsciLexerMarkdown, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setEolFill ".} =
  type Cb = proc(super: QsciLexerMarkdownsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerMarkdown(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerMarkdown, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerMarkdown_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMarkdownsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setFont(self: ptr cQsciLexerMarkdown, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setFont ".} =
  type Cb = proc(super: QsciLexerMarkdownsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerMarkdown(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerMarkdown, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMarkdown_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMarkdownsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setPaper(self: ptr cQsciLexerMarkdown, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setPaper ".} =
  type Cb = proc(super: QsciLexerMarkdownsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerMarkdown(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerMarkdown, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMarkdown_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMarkdownreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_readProperties(self: ptr cQsciLexerMarkdown, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_readProperties ".} =
  type Cb = proc(super: QsciLexerMarkdownreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerMarkdown(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerMarkdown, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMarkdown_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMarkdownwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_writeProperties(self: ptr cQsciLexerMarkdown, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_writeProperties ".} =
  type Cb = proc(super: QsciLexerMarkdownwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerMarkdown(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerMarkdown, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMarkdown_virtualbase_event(self.h, event.h)

type QsciLexerMarkdowneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_event(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_event ".} =
  type Cb = proc(super: QsciLexerMarkdowneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerMarkdown(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerMarkdown, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMarkdown_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMarkdowneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_eventFilter(self: ptr cQsciLexerMarkdown, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_eventFilter ".} =
  type Cb = proc(super: QsciLexerMarkdowneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerMarkdown(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerMarkdown, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerMarkdown_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMarkdowntimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowntimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowntimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_timerEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_timerEvent ".} =
  type Cb = proc(super: QsciLexerMarkdowntimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerMarkdown(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerMarkdown, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerMarkdown_virtualbase_childEvent(self.h, event.h)

type QsciLexerMarkdownchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_childEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_childEvent ".} =
  type Cb = proc(super: QsciLexerMarkdownchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerMarkdown(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerMarkdown, event: gen_qcoreevent.QEvent): void =


  fQsciLexerMarkdown_virtualbase_customEvent(self.h, event.h)

type QsciLexerMarkdowncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_customEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_customEvent ".} =
  type Cb = proc(super: QsciLexerMarkdowncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerMarkdown(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerMarkdown, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMarkdown_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMarkdownconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdownconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdownconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_connectNotify(self: ptr cQsciLexerMarkdown, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_connectNotify ".} =
  type Cb = proc(super: QsciLexerMarkdownconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerMarkdown(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerMarkdown, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMarkdown_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMarkdowndisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerMarkdown, slot: proc(super: QsciLexerMarkdowndisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMarkdowndisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_disconnectNotify(self: ptr cQsciLexerMarkdown, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerMarkdowndisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerMarkdown(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerMarkdown): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMarkdown_staticMetaObject())
proc delete*(self: QsciLexerMarkdown) =
  fcQsciLexerMarkdown_delete(self.h)
