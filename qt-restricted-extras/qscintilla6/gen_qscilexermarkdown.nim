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
{.compile("gen_qscilexermarkdown.cpp", cflags).}


type QsciLexerMarkdownEnumEnum* = distinct cint
template Default*(_: type QsciLexerMarkdownEnumEnum): untyped = 0
template Special*(_: type QsciLexerMarkdownEnumEnum): untyped = 1
template StrongEmphasisAsterisks*(_: type QsciLexerMarkdownEnumEnum): untyped = 2
template StrongEmphasisUnderscores*(_: type QsciLexerMarkdownEnumEnum): untyped = 3
template EmphasisAsterisks*(_: type QsciLexerMarkdownEnumEnum): untyped = 4
template EmphasisUnderscores*(_: type QsciLexerMarkdownEnumEnum): untyped = 5
template Header1*(_: type QsciLexerMarkdownEnumEnum): untyped = 6
template Header2*(_: type QsciLexerMarkdownEnumEnum): untyped = 7
template Header3*(_: type QsciLexerMarkdownEnumEnum): untyped = 8
template Header4*(_: type QsciLexerMarkdownEnumEnum): untyped = 9
template Header5*(_: type QsciLexerMarkdownEnumEnum): untyped = 10
template Header6*(_: type QsciLexerMarkdownEnumEnum): untyped = 11
template Prechar*(_: type QsciLexerMarkdownEnumEnum): untyped = 12
template UnorderedListItem*(_: type QsciLexerMarkdownEnumEnum): untyped = 13
template OrderedListItem*(_: type QsciLexerMarkdownEnumEnum): untyped = 14
template BlockQuote*(_: type QsciLexerMarkdownEnumEnum): untyped = 15
template StrikeOut*(_: type QsciLexerMarkdownEnumEnum): untyped = 16
template HorizontalRule*(_: type QsciLexerMarkdownEnumEnum): untyped = 17
template Link*(_: type QsciLexerMarkdownEnumEnum): untyped = 18
template CodeBackticks*(_: type QsciLexerMarkdownEnumEnum): untyped = 19
template CodeDoubleBackticks*(_: type QsciLexerMarkdownEnumEnum): untyped = 20
template CodeBlock*(_: type QsciLexerMarkdownEnumEnum): untyped = 21


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
proc fcQsciLexerMarkdown_language(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_language".}
proc fcQsciLexerMarkdown_lexer(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_lexer".}
proc fcQsciLexerMarkdown_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultColor".}
proc fcQsciLexerMarkdown_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultFont".}
proc fcQsciLexerMarkdown_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultPaper".}
proc fcQsciLexerMarkdown_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_description".}
proc fcQsciLexerMarkdown_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_tr2".}
proc fcQsciLexerMarkdown_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_tr3".}
proc fQsciLexerMarkdown_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerMarkdown_virtualbase_metaObject".}
proc fcQsciLexerMarkdown_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_metaObject".}
proc fQsciLexerMarkdown_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerMarkdown_virtualbase_metacast".}
proc fcQsciLexerMarkdown_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerMarkdown_override_virtual_metacast".}
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


func init*(T: type gen_qscilexermarkdown_types.QsciLexerMarkdown, h: ptr cQsciLexerMarkdown): gen_qscilexermarkdown_types.QsciLexerMarkdown =
  T(h: h)
proc create*(T: type gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qscilexermarkdown_types.QsciLexerMarkdown =

  gen_qscilexermarkdown_types.QsciLexerMarkdown.init(fcQsciLexerMarkdown_new())
proc create*(T: type gen_qscilexermarkdown_types.QsciLexerMarkdown, parent: gen_qobject.QObject): gen_qscilexermarkdown_types.QsciLexerMarkdown =

  gen_qscilexermarkdown_types.QsciLexerMarkdown.init(fcQsciLexerMarkdown_new2(parent.h))
proc metaObject*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMarkdown_metaObject(self.h))

proc metacast*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cstring): pointer =

  fcQsciLexerMarkdown_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerMarkdown_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring): string =

  let v_ms = fcQsciLexerMarkdown_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =

  (fcQsciLexerMarkdown_language(self.h))

proc lexer*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =

  (fcQsciLexerMarkdown_lexer(self.h))

proc defaultColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMarkdown_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerMarkdown_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMarkdown_defaultPaper(self.h, style))

proc description*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): string =

  let v_ms = fcQsciLexerMarkdown_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerMarkdown_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerMarkdown_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerMarkdownmetaObject*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerMarkdown_virtualbase_metaObject(self.h))

type QsciLexerMarkdownmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_metaObject(self: ptr cQsciLexerMarkdown, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerMarkdownmetacast*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cstring): pointer =

  fQsciLexerMarkdown_virtualbase_metacast(self.h, param1)

type QsciLexerMarkdownmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_metacast(self: ptr cQsciLexerMarkdown, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_metacast ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdownmetacall*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerMarkdown_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMarkdownmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_metacall(self: ptr cQsciLexerMarkdown, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_metacall ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMarkdownlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_language(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_language ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownlexer*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =

  (fQsciLexerMarkdown_virtualbase_lexer(self.h))

type QsciLexerMarkdownlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_lexer(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_lexer ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownlexerId*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_lexerId(self.h)

type QsciLexerMarkdownlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_lexerId(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownautoCompletionFillups*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =

  (fQsciLexerMarkdown_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMarkdownautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_autoCompletionFillups(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownautoCompletionWordSeparators*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): seq[string] =

  var v_ma = fQsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMarkdownautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_autoCompletionWordSeparators(self: ptr cQsciLexerMarkdown, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMarkdown_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerMarkdownblockEnd*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =

  (fQsciLexerMarkdown_virtualbase_blockEnd(self.h, style))

type QsciLexerMarkdownblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockEnd(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdownblockLookback*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_blockLookback(self.h)

type QsciLexerMarkdownblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockLookback(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownblockStart*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =

  (fQsciLexerMarkdown_virtualbase_blockStart(self.h, style))

type QsciLexerMarkdownblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockStart(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdownblockStartKeyword*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =

  (fQsciLexerMarkdown_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMarkdownblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_blockStartKeyword(self: ptr cQsciLexerMarkdown, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdownbraceStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_braceStyle(self.h)

type QsciLexerMarkdownbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_braceStyle(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdowncaseSensitive*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): bool =

  fQsciLexerMarkdown_virtualbase_caseSensitive(self.h)

type QsciLexerMarkdowncaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowncaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowncaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_caseSensitive(self: ptr cQsciLexerMarkdown, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowncaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdowncolor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_color(self.h, style))

type QsciLexerMarkdowncolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowncolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowncolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_color(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_color ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowncolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdowneolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): bool =

  fQsciLexerMarkdown_virtualbase_eolFill(self.h, style)

type QsciLexerMarkdowneolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowneolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowneolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_eolFill(self: ptr cQsciLexerMarkdown, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowneolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdownfont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerMarkdown_virtualbase_font(self.h, style))

type QsciLexerMarkdownfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_font(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_font ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdownindentationGuideView*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_indentationGuideView(self.h)

type QsciLexerMarkdownindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_indentationGuideView(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownkeywords*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, set: cint): cstring =

  (fQsciLexerMarkdown_virtualbase_keywords(self.h, set))

type QsciLexerMarkdownkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_keywords(self: ptr cQsciLexerMarkdown, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_keywords ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdowndefaultStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_defaultStyle(self.h)

type QsciLexerMarkdowndefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultStyle(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerMarkdowndescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_description(self: ptr cQsciLexerMarkdown, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMarkdown_description ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerMarkdownpaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_paper(self.h, style))

type QsciLexerMarkdownpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_paper(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_paper ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdowndefaultColorWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMarkdowndefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultColorWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdowndefaultEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): bool =

  fQsciLexerMarkdown_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMarkdowndefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultEolFill(self: ptr cQsciLexerMarkdown, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdowndefaultFontWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerMarkdown_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMarkdowndefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultFontWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdowndefaultPaperWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerMarkdown_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMarkdowndefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_defaultPaperWithStyle(self: ptr cQsciLexerMarkdown, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMarkdown_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMarkdownsetEditor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerMarkdown_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMarkdownsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setEditor(self: ptr cQsciLexerMarkdown, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerMarkdownrefreshProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): void =

  fQsciLexerMarkdown_virtualbase_refreshProperties(self.h)

type QsciLexerMarkdownrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_refreshProperties(self: ptr cQsciLexerMarkdown, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerMarkdownstyleBitsNeeded*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =

  fQsciLexerMarkdown_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMarkdownstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_styleBitsNeeded(self: ptr cQsciLexerMarkdown, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMarkdown_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownwordCharacters*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =

  (fQsciLexerMarkdown_virtualbase_wordCharacters(self.h))

type QsciLexerMarkdownwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_wordCharacters(self: ptr cQsciLexerMarkdown, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMarkdown_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMarkdownsetAutoIndentStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, autoindentstyle: cint): void =

  fQsciLexerMarkdown_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMarkdownsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setAutoIndentStyle(self: ptr cQsciLexerMarkdown, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerMarkdownsetColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerMarkdown_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMarkdownsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setColor(self: ptr cQsciLexerMarkdown, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setColor ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMarkdownsetEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, eoffill: bool, style: cint): void =

  fQsciLexerMarkdown_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMarkdownsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setEolFill(self: ptr cQsciLexerMarkdown, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMarkdownsetFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerMarkdown_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMarkdownsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setFont(self: ptr cQsciLexerMarkdown, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setFont ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMarkdownsetPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerMarkdown_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMarkdownsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_setPaper(self: ptr cQsciLexerMarkdown, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMarkdownreadProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerMarkdown_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMarkdownreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_readProperties(self: ptr cQsciLexerMarkdown, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMarkdownwriteProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerMarkdown_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMarkdownwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_writeProperties(self: ptr cQsciLexerMarkdown, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMarkdownevent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerMarkdown_virtualbase_event(self.h, event.h)

type QsciLexerMarkdowneventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowneventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_event(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_event ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMarkdowneventFilter*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerMarkdown_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMarkdowneventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowneventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_eventFilter(self: ptr cQsciLexerMarkdown, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMarkdown_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMarkdowntimerEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerMarkdown_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMarkdowntimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowntimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowntimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_timerEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowntimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMarkdownchildEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerMarkdown_virtualbase_childEvent(self.h, event.h)

type QsciLexerMarkdownchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_childEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMarkdowncustomEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent.QEvent): void =

  fQsciLexerMarkdown_virtualbase_customEvent(self.h, event.h)

type QsciLexerMarkdowncustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowncustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_customEvent(self: ptr cQsciLexerMarkdown, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMarkdownconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerMarkdown_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMarkdownconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdownconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdownconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_connectNotify(self: ptr cQsciLexerMarkdown, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMarkdownconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerMarkdowndisconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerMarkdown_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMarkdowndisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, slot: QsciLexerMarkdowndisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMarkdowndisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMarkdown_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMarkdown_disconnectNotify(self: ptr cQsciLexerMarkdown, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMarkdown_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMarkdowndisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMarkdown_staticMetaObject())
proc delete*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown) =
  fcQsciLexerMarkdown_delete(self.h)
