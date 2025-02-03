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
{.compile("gen_qscilexerverilog.cpp", cflags).}


type QsciLexerVerilogEnum* = cint
const
  QsciLexerVerilogDefault* = 0
  QsciLexerVerilogInactiveDefault* = 64
  QsciLexerVerilogComment* = 1
  QsciLexerVerilogInactiveComment* = 65
  QsciLexerVerilogCommentLine* = 2
  QsciLexerVerilogInactiveCommentLine* = 66
  QsciLexerVerilogCommentBang* = 3
  QsciLexerVerilogInactiveCommentBang* = 67
  QsciLexerVerilogNumber* = 4
  QsciLexerVerilogInactiveNumber* = 68
  QsciLexerVerilogKeyword* = 5
  QsciLexerVerilogInactiveKeyword* = 69
  QsciLexerVerilogString* = 6
  QsciLexerVerilogInactiveString* = 70
  QsciLexerVerilogKeywordSet2* = 7
  QsciLexerVerilogInactiveKeywordSet2* = 71
  QsciLexerVerilogSystemTask* = 8
  QsciLexerVerilogInactiveSystemTask* = 72
  QsciLexerVerilogPreprocessor* = 9
  QsciLexerVerilogInactivePreprocessor* = 73
  QsciLexerVerilogOperator* = 10
  QsciLexerVerilogInactiveOperator* = 74
  QsciLexerVerilogIdentifier* = 11
  QsciLexerVerilogInactiveIdentifier* = 75
  QsciLexerVerilogUnclosedString* = 12
  QsciLexerVerilogInactiveUnclosedString* = 76
  QsciLexerVerilogUserKeywordSet* = 19
  QsciLexerVerilogInactiveUserKeywordSet* = 83
  QsciLexerVerilogCommentKeyword* = 20
  QsciLexerVerilogInactiveCommentKeyword* = 84
  QsciLexerVerilogDeclareInputPort* = 21
  QsciLexerVerilogInactiveDeclareInputPort* = 85
  QsciLexerVerilogDeclareOutputPort* = 22
  QsciLexerVerilogInactiveDeclareOutputPort* = 86
  QsciLexerVerilogDeclareInputOutputPort* = 23
  QsciLexerVerilogInactiveDeclareInputOutputPort* = 87
  QsciLexerVerilogPortConnection* = 24
  QsciLexerVerilogInactivePortConnection* = 88



import gen_qscilexerverilog_types
export gen_qscilexerverilog_types

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

type cQsciLexerVerilog*{.exportc: "QsciLexerVerilog", incompleteStruct.} = object

proc fcQsciLexerVerilog_new(): ptr cQsciLexerVerilog {.importc: "QsciLexerVerilog_new".}
proc fcQsciLexerVerilog_new2(parent: pointer): ptr cQsciLexerVerilog {.importc: "QsciLexerVerilog_new2".}
proc fcQsciLexerVerilog_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVerilog_metaObject".}
proc fcQsciLexerVerilog_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVerilog_metacast".}
proc fcQsciLexerVerilog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVerilog_metacall".}
proc fcQsciLexerVerilog_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_tr".}
proc fcQsciLexerVerilog_language(self: pointer, ): cstring {.importc: "QsciLexerVerilog_language".}
proc fcQsciLexerVerilog_lexer(self: pointer, ): cstring {.importc: "QsciLexerVerilog_lexer".}
proc fcQsciLexerVerilog_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVerilog_braceStyle".}
proc fcQsciLexerVerilog_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerVerilog_wordCharacters".}
proc fcQsciLexerVerilog_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultColor".}
proc fcQsciLexerVerilog_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVerilog_defaultEolFill".}
proc fcQsciLexerVerilog_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultFont".}
proc fcQsciLexerVerilog_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultPaper".}
proc fcQsciLexerVerilog_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVerilog_keywords".}
proc fcQsciLexerVerilog_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerVerilog_description".}
proc fcQsciLexerVerilog_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVerilog_refreshProperties".}
proc fcQsciLexerVerilog_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldAtElse".}
proc fcQsciLexerVerilog_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldAtElse".}
proc fcQsciLexerVerilog_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldComments".}
proc fcQsciLexerVerilog_foldComments(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldComments".}
proc fcQsciLexerVerilog_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldCompact".}
proc fcQsciLexerVerilog_foldCompact(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldCompact".}
proc fcQsciLexerVerilog_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldPreprocessor".}
proc fcQsciLexerVerilog_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldPreprocessor".}
proc fcQsciLexerVerilog_setFoldAtModule(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldAtModule".}
proc fcQsciLexerVerilog_foldAtModule(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldAtModule".}
proc fcQsciLexerVerilog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_tr2".}
proc fcQsciLexerVerilog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVerilog_tr3".}
proc fQsciLexerVerilog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerVerilog_virtualbase_metacall".}
proc fcQsciLexerVerilog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_metacall".}
proc fcQsciLexerVerilog_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_language".}
proc fQsciLexerVerilog_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerVerilog_virtualbase_lexer".}
proc fcQsciLexerVerilog_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_lexer".}
proc fQsciLexerVerilog_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_lexerId".}
proc fcQsciLexerVerilog_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_lexerId".}
proc fQsciLexerVerilog_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerVerilog_virtualbase_autoCompletionFillups".}
proc fcQsciLexerVerilog_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_autoCompletionFillups".}
proc fQsciLexerVerilog_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerVerilog_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerVerilog_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerVerilog_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVerilog_virtualbase_blockEnd".}
proc fcQsciLexerVerilog_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_blockEnd".}
proc fQsciLexerVerilog_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_blockLookback".}
proc fcQsciLexerVerilog_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_blockLookback".}
proc fQsciLexerVerilog_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVerilog_virtualbase_blockStart".}
proc fcQsciLexerVerilog_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_blockStart".}
proc fQsciLexerVerilog_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVerilog_virtualbase_blockStartKeyword".}
proc fcQsciLexerVerilog_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_blockStartKeyword".}
proc fQsciLexerVerilog_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_braceStyle".}
proc fcQsciLexerVerilog_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_braceStyle".}
proc fQsciLexerVerilog_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerVerilog_virtualbase_caseSensitive".}
proc fcQsciLexerVerilog_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_caseSensitive".}
proc fQsciLexerVerilog_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_color".}
proc fcQsciLexerVerilog_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_color".}
proc fQsciLexerVerilog_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerVerilog_virtualbase_eolFill".}
proc fcQsciLexerVerilog_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_eolFill".}
proc fQsciLexerVerilog_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_font".}
proc fcQsciLexerVerilog_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_font".}
proc fQsciLexerVerilog_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_indentationGuideView".}
proc fcQsciLexerVerilog_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_indentationGuideView".}
proc fQsciLexerVerilog_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerVerilog_virtualbase_keywords".}
proc fcQsciLexerVerilog_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_keywords".}
proc fQsciLexerVerilog_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_defaultStyle".}
proc fcQsciLexerVerilog_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_defaultStyle".}
proc fcQsciLexerVerilog_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_description".}
proc fQsciLexerVerilog_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_paper".}
proc fcQsciLexerVerilog_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_paper".}
proc fQsciLexerVerilog_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerVerilog_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_defaultColorWithStyle".}
proc fQsciLexerVerilog_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerVerilog_virtualbase_defaultEolFill".}
proc fcQsciLexerVerilog_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_defaultEolFill".}
proc fQsciLexerVerilog_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerVerilog_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_defaultFontWithStyle".}
proc fQsciLexerVerilog_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVerilog_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerVerilog_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerVerilog_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerVerilog_virtualbase_setEditor".}
proc fcQsciLexerVerilog_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setEditor".}
proc fQsciLexerVerilog_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerVerilog_virtualbase_refreshProperties".}
proc fcQsciLexerVerilog_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_refreshProperties".}
proc fQsciLexerVerilog_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerVerilog_virtualbase_styleBitsNeeded".}
proc fcQsciLexerVerilog_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_styleBitsNeeded".}
proc fQsciLexerVerilog_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerVerilog_virtualbase_wordCharacters".}
proc fcQsciLexerVerilog_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_wordCharacters".}
proc fQsciLexerVerilog_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerVerilog_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerVerilog_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setAutoIndentStyle".}
proc fQsciLexerVerilog_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerVerilog_virtualbase_setColor".}
proc fcQsciLexerVerilog_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setColor".}
proc fQsciLexerVerilog_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerVerilog_virtualbase_setEolFill".}
proc fcQsciLexerVerilog_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setEolFill".}
proc fQsciLexerVerilog_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerVerilog_virtualbase_setFont".}
proc fcQsciLexerVerilog_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setFont".}
proc fQsciLexerVerilog_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerVerilog_virtualbase_setPaper".}
proc fcQsciLexerVerilog_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_setPaper".}
proc fQsciLexerVerilog_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerVerilog_virtualbase_readProperties".}
proc fcQsciLexerVerilog_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_readProperties".}
proc fQsciLexerVerilog_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerVerilog_virtualbase_writeProperties".}
proc fcQsciLexerVerilog_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_writeProperties".}
proc fQsciLexerVerilog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerVerilog_virtualbase_event".}
proc fcQsciLexerVerilog_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_event".}
proc fQsciLexerVerilog_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerVerilog_virtualbase_eventFilter".}
proc fcQsciLexerVerilog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_eventFilter".}
proc fQsciLexerVerilog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVerilog_virtualbase_timerEvent".}
proc fcQsciLexerVerilog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_timerEvent".}
proc fQsciLexerVerilog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVerilog_virtualbase_childEvent".}
proc fcQsciLexerVerilog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_childEvent".}
proc fQsciLexerVerilog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVerilog_virtualbase_customEvent".}
proc fcQsciLexerVerilog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_customEvent".}
proc fQsciLexerVerilog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerVerilog_virtualbase_connectNotify".}
proc fcQsciLexerVerilog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_connectNotify".}
proc fQsciLexerVerilog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerVerilog_virtualbase_disconnectNotify".}
proc fcQsciLexerVerilog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_disconnectNotify".}
proc fcQsciLexerVerilog_delete(self: pointer) {.importc: "QsciLexerVerilog_delete".}


func init*(T: type QsciLexerVerilog, h: ptr cQsciLexerVerilog): QsciLexerVerilog =
  T(h: h)
proc create*(T: type QsciLexerVerilog, ): QsciLexerVerilog =

  QsciLexerVerilog.init(fcQsciLexerVerilog_new())
proc create*(T: type QsciLexerVerilog, parent: gen_qobject.QObject): QsciLexerVerilog =

  QsciLexerVerilog.init(fcQsciLexerVerilog_new2(parent.h))
proc metaObject*(self: QsciLexerVerilog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVerilog_metaObject(self.h))

proc metacast*(self: QsciLexerVerilog, param1: cstring): pointer =

  fcQsciLexerVerilog_metacast(self.h, param1)

proc metacall*(self: QsciLexerVerilog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerVerilog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerVerilog, s: cstring): string =

  let v_ms = fcQsciLexerVerilog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerVerilog, ): cstring =

  (fcQsciLexerVerilog_language(self.h))

proc lexer*(self: QsciLexerVerilog, ): cstring =

  (fcQsciLexerVerilog_lexer(self.h))

proc braceStyle*(self: QsciLexerVerilog, ): cint =

  fcQsciLexerVerilog_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerVerilog, ): cstring =

  (fcQsciLexerVerilog_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerVerilog_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerVerilog, style: cint): bool =

  fcQsciLexerVerilog_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerVerilog, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerVerilog_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerVerilog_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerVerilog, set: cint): cstring =

  (fcQsciLexerVerilog_keywords(self.h, set))

proc description*(self: QsciLexerVerilog, style: cint): string =

  let v_ms = fcQsciLexerVerilog_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerVerilog, ): void =

  fcQsciLexerVerilog_refreshProperties(self.h)

proc setFoldAtElse*(self: QsciLexerVerilog, fold: bool): void =

  fcQsciLexerVerilog_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: QsciLexerVerilog, ): bool =

  fcQsciLexerVerilog_foldAtElse(self.h)

proc setFoldComments*(self: QsciLexerVerilog, fold: bool): void =

  fcQsciLexerVerilog_setFoldComments(self.h, fold)

proc foldComments*(self: QsciLexerVerilog, ): bool =

  fcQsciLexerVerilog_foldComments(self.h)

proc setFoldCompact*(self: QsciLexerVerilog, fold: bool): void =

  fcQsciLexerVerilog_setFoldCompact(self.h, fold)

proc foldCompact*(self: QsciLexerVerilog, ): bool =

  fcQsciLexerVerilog_foldCompact(self.h)

proc setFoldPreprocessor*(self: QsciLexerVerilog, fold: bool): void =

  fcQsciLexerVerilog_setFoldPreprocessor(self.h, fold)

proc foldPreprocessor*(self: QsciLexerVerilog, ): bool =

  fcQsciLexerVerilog_foldPreprocessor(self.h)

proc setFoldAtModule*(self: QsciLexerVerilog, fold: bool): void =

  fcQsciLexerVerilog_setFoldAtModule(self.h, fold)

proc foldAtModule*(self: QsciLexerVerilog, ): bool =

  fcQsciLexerVerilog_foldAtModule(self.h)

proc tr2*(_: type QsciLexerVerilog, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerVerilog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerVerilog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerVerilog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerVerilog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerVerilog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerVerilogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_metacall(self: ptr cQsciLexerVerilog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_metacall ".} =
  type Cb = proc(super: QsciLexerVerilogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerVerilog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerVeriloglanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerVerilog, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_language(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerVerilog, ): cstring =


  (fQsciLexerVerilog_virtualbase_lexer(self.h))

type QsciLexerVeriloglexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVeriloglexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVeriloglexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_lexer(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_lexer ".} =
  type Cb = proc(super: QsciLexerVeriloglexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_lexerId(self.h)

type QsciLexerVeriloglexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVeriloglexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVeriloglexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_lexerId(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_lexerId ".} =
  type Cb = proc(super: QsciLexerVeriloglexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerVerilog, ): cstring =


  (fQsciLexerVerilog_virtualbase_autoCompletionFillups(self.h))

type QsciLexerVerilogautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_autoCompletionFillups(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerVerilogautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerVerilog, ): seq[string] =


  var v_ma = fQsciLexerVerilog_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerVerilogautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_autoCompletionWordSeparators(self: ptr cQsciLexerVerilog, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerVerilog_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerVerilogautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerVerilog, style: ptr cint): cstring =


  (fQsciLexerVerilog_virtualbase_blockEnd(self.h, style))

type QsciLexerVerilogblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockEnd(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockEnd ".} =
  type Cb = proc(super: QsciLexerVerilogblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_blockLookback(self.h)

type QsciLexerVerilogblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockLookback(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockLookback ".} =
  type Cb = proc(super: QsciLexerVerilogblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerVerilog, style: ptr cint): cstring =


  (fQsciLexerVerilog_virtualbase_blockStart(self.h, style))

type QsciLexerVerilogblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockStart(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockStart ".} =
  type Cb = proc(super: QsciLexerVerilogblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerVerilog, style: ptr cint): cstring =


  (fQsciLexerVerilog_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerVerilogblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockStartKeyword(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerVerilogblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_braceStyle(self.h)

type QsciLexerVerilogbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_braceStyle(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_braceStyle ".} =
  type Cb = proc(super: QsciLexerVerilogbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerVerilog, ): bool =


  fQsciLexerVerilog_virtualbase_caseSensitive(self.h)

type QsciLexerVerilogcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_caseSensitive(self: ptr cQsciLexerVerilog, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_caseSensitive ".} =
  type Cb = proc(super: QsciLexerVerilogcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_color(self.h, style))

type QsciLexerVerilogcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_color(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_color ".} =
  type Cb = proc(super: QsciLexerVerilogcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerVerilog, style: cint): bool =


  fQsciLexerVerilog_virtualbase_eolFill(self.h, style)

type QsciLexerVerilogeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_eolFill(self: ptr cQsciLexerVerilog, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_eolFill ".} =
  type Cb = proc(super: QsciLexerVerilogeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerVerilog, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerVerilog_virtualbase_font(self.h, style))

type QsciLexerVerilogfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_font(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_font ".} =
  type Cb = proc(super: QsciLexerVerilogfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_indentationGuideView(self.h)

type QsciLexerVerilogindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_indentationGuideView(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerVerilogindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerVerilog, set: cint): cstring =


  (fQsciLexerVerilog_virtualbase_keywords(self.h, set))

type QsciLexerVerilogkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_keywords(self: ptr cQsciLexerVerilog, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_keywords ".} =
  type Cb = proc(super: QsciLexerVerilogkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerVerilog(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_defaultStyle(self.h)

type QsciLexerVerilogdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultStyle(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultStyle ".} =
  type Cb = proc(super: QsciLexerVerilogdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerVerilogdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerVerilog, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_description(self: ptr cQsciLexerVerilog, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerVerilog_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_paper(self.h, style))

type QsciLexerVerilogpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_paper(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_paper ".} =
  type Cb = proc(super: QsciLexerVerilogpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerVerilogdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultColorWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerVerilogdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerVerilog, style: cint): bool =


  fQsciLexerVerilog_virtualbase_defaultEolFill(self.h, style)

type QsciLexerVerilogdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultEolFill(self: ptr cQsciLexerVerilog, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerVerilogdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerVerilog, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerVerilog_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerVerilogdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultFontWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerVerilogdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerVerilog, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerVerilogdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultPaperWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerVerilogdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerVerilog(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerVerilog, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerVerilog_virtualbase_setEditor(self.h, editor.h)

type QsciLexerVerilogsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setEditor(self: ptr cQsciLexerVerilog, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setEditor ".} =
  type Cb = proc(super: QsciLexerVerilogsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerVerilog(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerVerilog, ): void =


  fQsciLexerVerilog_virtualbase_refreshProperties(self.h)

type QsciLexerVerilogrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_refreshProperties(self: ptr cQsciLexerVerilog, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_refreshProperties ".} =
  type Cb = proc(super: QsciLexerVerilogrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerVerilog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerVerilog, ): cint =


  fQsciLexerVerilog_virtualbase_styleBitsNeeded(self.h)

type QsciLexerVerilogstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_styleBitsNeeded(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerVerilogstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerVerilog, ): cstring =


  (fQsciLexerVerilog_virtualbase_wordCharacters(self.h))

type QsciLexerVerilogwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_wordCharacters(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_wordCharacters ".} =
  type Cb = proc(super: QsciLexerVerilogwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerVerilog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerVerilog, autoindentstyle: cint): void =


  fQsciLexerVerilog_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerVerilogsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setAutoIndentStyle(self: ptr cQsciLexerVerilog, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerVerilogsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerVerilog(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerVerilog, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerVerilog_virtualbase_setColor(self.h, c.h, style)

type QsciLexerVerilogsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setColor(self: ptr cQsciLexerVerilog, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setColor ".} =
  type Cb = proc(super: QsciLexerVerilogsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerVerilog(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerVerilog, eoffill: bool, style: cint): void =


  fQsciLexerVerilog_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerVerilogsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setEolFill(self: ptr cQsciLexerVerilog, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setEolFill ".} =
  type Cb = proc(super: QsciLexerVerilogsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerVerilog(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerVerilog, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerVerilog_virtualbase_setFont(self.h, f.h, style)

type QsciLexerVerilogsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setFont(self: ptr cQsciLexerVerilog, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setFont ".} =
  type Cb = proc(super: QsciLexerVerilogsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerVerilog(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerVerilog, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerVerilog_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerVerilogsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setPaper(self: ptr cQsciLexerVerilog, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setPaper ".} =
  type Cb = proc(super: QsciLexerVerilogsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerVerilog(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerVerilog, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerVerilog_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVerilogreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_readProperties(self: ptr cQsciLexerVerilog, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_readProperties ".} =
  type Cb = proc(super: QsciLexerVerilogreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerVerilog(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerVerilog, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerVerilog_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVerilogwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_writeProperties(self: ptr cQsciLexerVerilog, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_writeProperties ".} =
  type Cb = proc(super: QsciLexerVerilogwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerVerilog(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerVerilog, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerVerilog_virtualbase_event(self.h, event.h)

type QsciLexerVerilogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_event(self: ptr cQsciLexerVerilog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_event ".} =
  type Cb = proc(super: QsciLexerVerilogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerVerilog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerVerilog, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerVerilog_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerVerilogeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_eventFilter(self: ptr cQsciLexerVerilog, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_eventFilter ".} =
  type Cb = proc(super: QsciLexerVerilogeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerVerilog(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerVerilog, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerVerilog_virtualbase_timerEvent(self.h, event.h)

type QsciLexerVerilogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_timerEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_timerEvent ".} =
  type Cb = proc(super: QsciLexerVerilogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerVerilog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerVerilog, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerVerilog_virtualbase_childEvent(self.h, event.h)

type QsciLexerVerilogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_childEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_childEvent ".} =
  type Cb = proc(super: QsciLexerVerilogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerVerilog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerVerilog, event: gen_qcoreevent.QEvent): void =


  fQsciLexerVerilog_virtualbase_customEvent(self.h, event.h)

type QsciLexerVerilogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_customEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_customEvent ".} =
  type Cb = proc(super: QsciLexerVerilogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerVerilog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerVerilog, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerVerilog_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerVerilogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_connectNotify(self: ptr cQsciLexerVerilog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_connectNotify ".} =
  type Cb = proc(super: QsciLexerVerilogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerVerilog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerVerilog, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerVerilog_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerVerilogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerVerilog, slot: proc(super: QsciLexerVerilogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVerilogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_disconnectNotify(self: ptr cQsciLexerVerilog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerVerilogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerVerilog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerVerilog) =
  fcQsciLexerVerilog_delete(self.h)
