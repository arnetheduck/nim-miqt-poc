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
{.compile("gen_qscilexervhdl.cpp", cflags).}


type QsciLexerVHDLEnumEnum* = distinct cint
template Default*(_: type QsciLexerVHDLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerVHDLEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerVHDLEnumEnum): untyped = 2
template Number*(_: type QsciLexerVHDLEnumEnum): untyped = 3
template String*(_: type QsciLexerVHDLEnumEnum): untyped = 4
template Operator*(_: type QsciLexerVHDLEnumEnum): untyped = 5
template Identifier*(_: type QsciLexerVHDLEnumEnum): untyped = 6
template UnclosedString*(_: type QsciLexerVHDLEnumEnum): untyped = 7
template Keyword*(_: type QsciLexerVHDLEnumEnum): untyped = 8
template StandardOperator*(_: type QsciLexerVHDLEnumEnum): untyped = 9
template Attribute*(_: type QsciLexerVHDLEnumEnum): untyped = 10
template StandardFunction*(_: type QsciLexerVHDLEnumEnum): untyped = 11
template StandardPackage*(_: type QsciLexerVHDLEnumEnum): untyped = 12
template StandardType*(_: type QsciLexerVHDLEnumEnum): untyped = 13
template KeywordSet7*(_: type QsciLexerVHDLEnumEnum): untyped = 14
template CommentBlock*(_: type QsciLexerVHDLEnumEnum): untyped = 15


import gen_qscilexervhdl_types
export gen_qscilexervhdl_types

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

type cQsciLexerVHDL*{.exportc: "QsciLexerVHDL", incompleteStruct.} = object

proc fcQsciLexerVHDL_new(): ptr cQsciLexerVHDL {.importc: "QsciLexerVHDL_new".}
proc fcQsciLexerVHDL_new2(parent: pointer): ptr cQsciLexerVHDL {.importc: "QsciLexerVHDL_new2".}
proc fcQsciLexerVHDL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVHDL_metaObject".}
proc fcQsciLexerVHDL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVHDL_metacast".}
proc fcQsciLexerVHDL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVHDL_metacall".}
proc fcQsciLexerVHDL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerVHDL_tr".}
proc fcQsciLexerVHDL_language(self: pointer, ): cstring {.importc: "QsciLexerVHDL_language".}
proc fcQsciLexerVHDL_lexer(self: pointer, ): cstring {.importc: "QsciLexerVHDL_lexer".}
proc fcQsciLexerVHDL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVHDL_braceStyle".}
proc fcQsciLexerVHDL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultColor".}
proc fcQsciLexerVHDL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVHDL_defaultEolFill".}
proc fcQsciLexerVHDL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultFont".}
proc fcQsciLexerVHDL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultPaper".}
proc fcQsciLexerVHDL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVHDL_keywords".}
proc fcQsciLexerVHDL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerVHDL_description".}
proc fcQsciLexerVHDL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVHDL_refreshProperties".}
proc fcQsciLexerVHDL_foldComments(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldComments".}
proc fcQsciLexerVHDL_foldCompact(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldCompact".}
proc fcQsciLexerVHDL_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtElse".}
proc fcQsciLexerVHDL_foldAtBegin(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtBegin".}
proc fcQsciLexerVHDL_foldAtParenthesis(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtParenthesis".}
proc fcQsciLexerVHDL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldComments".}
proc fcQsciLexerVHDL_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldCompact".}
proc fcQsciLexerVHDL_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtElse".}
proc fcQsciLexerVHDL_setFoldAtBegin(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtBegin".}
proc fcQsciLexerVHDL_setFoldAtParenthesis(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtParenthesis".}
proc fcQsciLexerVHDL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVHDL_tr2".}
proc fcQsciLexerVHDL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVHDL_tr3".}
proc fQsciLexerVHDL_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerVHDL_virtualbase_metaObject".}
proc fcQsciLexerVHDL_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_metaObject".}
proc fQsciLexerVHDL_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerVHDL_virtualbase_metacast".}
proc fcQsciLexerVHDL_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_metacast".}
proc fQsciLexerVHDL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerVHDL_virtualbase_metacall".}
proc fcQsciLexerVHDL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_metacall".}
proc fQsciLexerVHDL_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerVHDL_virtualbase_setFoldComments".}
proc fcQsciLexerVHDL_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFoldComments".}
proc fQsciLexerVHDL_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerVHDL_virtualbase_setFoldCompact".}
proc fcQsciLexerVHDL_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFoldCompact".}
proc fQsciLexerVHDL_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerVHDL_virtualbase_setFoldAtElse".}
proc fcQsciLexerVHDL_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFoldAtElse".}
proc fQsciLexerVHDL_virtualbase_setFoldAtBegin(self: pointer, fold: bool): void{.importc: "QsciLexerVHDL_virtualbase_setFoldAtBegin".}
proc fcQsciLexerVHDL_override_virtual_setFoldAtBegin(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFoldAtBegin".}
proc fQsciLexerVHDL_virtualbase_setFoldAtParenthesis(self: pointer, fold: bool): void{.importc: "QsciLexerVHDL_virtualbase_setFoldAtParenthesis".}
proc fcQsciLexerVHDL_override_virtual_setFoldAtParenthesis(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFoldAtParenthesis".}
proc fcQsciLexerVHDL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_language".}
proc fQsciLexerVHDL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerVHDL_virtualbase_lexer".}
proc fcQsciLexerVHDL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_lexer".}
proc fQsciLexerVHDL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_lexerId".}
proc fcQsciLexerVHDL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_lexerId".}
proc fQsciLexerVHDL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerVHDL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerVHDL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_autoCompletionFillups".}
proc fQsciLexerVHDL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerVHDL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerVHDL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerVHDL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVHDL_virtualbase_blockEnd".}
proc fcQsciLexerVHDL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_blockEnd".}
proc fQsciLexerVHDL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_blockLookback".}
proc fcQsciLexerVHDL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_blockLookback".}
proc fQsciLexerVHDL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVHDL_virtualbase_blockStart".}
proc fcQsciLexerVHDL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_blockStart".}
proc fQsciLexerVHDL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerVHDL_virtualbase_blockStartKeyword".}
proc fcQsciLexerVHDL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_blockStartKeyword".}
proc fQsciLexerVHDL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_braceStyle".}
proc fcQsciLexerVHDL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_braceStyle".}
proc fQsciLexerVHDL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerVHDL_virtualbase_caseSensitive".}
proc fcQsciLexerVHDL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_caseSensitive".}
proc fQsciLexerVHDL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_color".}
proc fcQsciLexerVHDL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_color".}
proc fQsciLexerVHDL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerVHDL_virtualbase_eolFill".}
proc fcQsciLexerVHDL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_eolFill".}
proc fQsciLexerVHDL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_font".}
proc fcQsciLexerVHDL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_font".}
proc fQsciLexerVHDL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_indentationGuideView".}
proc fcQsciLexerVHDL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_indentationGuideView".}
proc fQsciLexerVHDL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerVHDL_virtualbase_keywords".}
proc fcQsciLexerVHDL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_keywords".}
proc fQsciLexerVHDL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_defaultStyle".}
proc fcQsciLexerVHDL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_defaultStyle".}
proc fcQsciLexerVHDL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_description".}
proc fQsciLexerVHDL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_paper".}
proc fcQsciLexerVHDL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_paper".}
proc fQsciLexerVHDL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerVHDL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerVHDL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerVHDL_virtualbase_defaultEolFill".}
proc fcQsciLexerVHDL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_defaultEolFill".}
proc fQsciLexerVHDL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerVHDL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerVHDL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerVHDL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerVHDL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerVHDL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerVHDL_virtualbase_setEditor".}
proc fcQsciLexerVHDL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setEditor".}
proc fQsciLexerVHDL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerVHDL_virtualbase_refreshProperties".}
proc fcQsciLexerVHDL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_refreshProperties".}
proc fQsciLexerVHDL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerVHDL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerVHDL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_styleBitsNeeded".}
proc fQsciLexerVHDL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerVHDL_virtualbase_wordCharacters".}
proc fcQsciLexerVHDL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_wordCharacters".}
proc fQsciLexerVHDL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerVHDL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerVHDL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerVHDL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerVHDL_virtualbase_setColor".}
proc fcQsciLexerVHDL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setColor".}
proc fQsciLexerVHDL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerVHDL_virtualbase_setEolFill".}
proc fcQsciLexerVHDL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setEolFill".}
proc fQsciLexerVHDL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerVHDL_virtualbase_setFont".}
proc fcQsciLexerVHDL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setFont".}
proc fQsciLexerVHDL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerVHDL_virtualbase_setPaper".}
proc fcQsciLexerVHDL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_setPaper".}
proc fQsciLexerVHDL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerVHDL_virtualbase_readProperties".}
proc fcQsciLexerVHDL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_readProperties".}
proc fQsciLexerVHDL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerVHDL_virtualbase_writeProperties".}
proc fcQsciLexerVHDL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_writeProperties".}
proc fQsciLexerVHDL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerVHDL_virtualbase_event".}
proc fcQsciLexerVHDL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_event".}
proc fQsciLexerVHDL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerVHDL_virtualbase_eventFilter".}
proc fcQsciLexerVHDL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_eventFilter".}
proc fQsciLexerVHDL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVHDL_virtualbase_timerEvent".}
proc fcQsciLexerVHDL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_timerEvent".}
proc fQsciLexerVHDL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVHDL_virtualbase_childEvent".}
proc fcQsciLexerVHDL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_childEvent".}
proc fQsciLexerVHDL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerVHDL_virtualbase_customEvent".}
proc fcQsciLexerVHDL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_customEvent".}
proc fQsciLexerVHDL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerVHDL_virtualbase_connectNotify".}
proc fcQsciLexerVHDL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_connectNotify".}
proc fQsciLexerVHDL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerVHDL_virtualbase_disconnectNotify".}
proc fcQsciLexerVHDL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerVHDL_override_virtual_disconnectNotify".}
proc fcQsciLexerVHDL_staticMetaObject(): pointer {.importc: "QsciLexerVHDL_staticMetaObject".}
proc fcQsciLexerVHDL_delete(self: pointer) {.importc: "QsciLexerVHDL_delete".}


func init*(T: type gen_qscilexervhdl_types.QsciLexerVHDL, h: ptr cQsciLexerVHDL): gen_qscilexervhdl_types.QsciLexerVHDL =
  T(h: h)
proc create*(T: type gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qscilexervhdl_types.QsciLexerVHDL =
  gen_qscilexervhdl_types.QsciLexerVHDL.init(fcQsciLexerVHDL_new())

proc create*(T: type gen_qscilexervhdl_types.QsciLexerVHDL, parent: gen_qobject.QObject): gen_qscilexervhdl_types.QsciLexerVHDL =
  gen_qscilexervhdl_types.QsciLexerVHDL.init(fcQsciLexerVHDL_new2(parent.h))

proc metaObject*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVHDL_metaObject(self.h))

proc metacast*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cstring): pointer =
  fcQsciLexerVHDL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVHDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring): string =
  let v_ms = fcQsciLexerVHDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_language(self.h))

proc lexer*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_lexer(self.h))

proc braceStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerVHDL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fcQsciLexerVHDL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerVHDL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerVHDL_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexervhdl_types.QsciLexerVHDL, set: cint): cstring =
  (fcQsciLexerVHDL_keywords(self.h, set))

proc description*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): string =
  let v_ms = fcQsciLexerVHDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): void =
  fcQsciLexerVHDL_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldComments(self.h)

proc foldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldCompact(self.h)

proc foldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtElse(self.h)

proc foldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtBegin(self.h)

proc foldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtParenthesis(self.h)

proc setFoldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldCompact(self.h, fold)

proc setFoldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtElse(self.h, fold)

proc setFoldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtBegin(self.h, fold)

proc setFoldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtParenthesis(self.h, fold)

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVHDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVHDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerVHDLmetaObject*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerVHDL_virtualbase_metaObject(self.h))

type QsciLexerVHDLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_metaObject(self: ptr cQsciLexerVHDL, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerVHDLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerVHDLmetacast*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cstring): pointer =
  fQsciLexerVHDL_virtualbase_metacast(self.h, param1)

type QsciLexerVHDLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_metacast(self: ptr cQsciLexerVHDL, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_metacast ".} =
  var nimfunc = cast[ptr QsciLexerVHDLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLmetacall*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerVHDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerVHDLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_metacall(self: ptr cQsciLexerVHDL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_metacall ".} =
  var nimfunc = cast[ptr QsciLexerVHDLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerVHDLsetFoldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fQsciLexerVHDL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerVHDLsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldComments(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerVHDLsetFoldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fQsciLexerVHDL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerVHDLsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldCompact(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerVHDLsetFoldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fQsciLexerVHDL_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerVHDLsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtElse(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerVHDLsetFoldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fQsciLexerVHDL_virtualbase_setFoldAtBegin(self.h, fold)

type QsciLexerVHDLsetFoldAtBeginProc* = proc(fold: bool): void
proc onsetFoldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFoldAtBeginProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFoldAtBeginProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtBegin(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtBegin ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFoldAtBeginProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerVHDLsetFoldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fQsciLexerVHDL_virtualbase_setFoldAtParenthesis(self.h, fold)

type QsciLexerVHDLsetFoldAtParenthesisProc* = proc(fold: bool): void
proc onsetFoldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFoldAtParenthesisProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFoldAtParenthesisProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtParenthesis(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtParenthesis(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtParenthesis ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFoldAtParenthesisProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerVHDLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_language(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_language ".} =
  var nimfunc = cast[ptr QsciLexerVHDLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLlexer*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fQsciLexerVHDL_virtualbase_lexer(self.h))

type QsciLexerVHDLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_lexer(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_lexer ".} =
  var nimfunc = cast[ptr QsciLexerVHDLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLlexerId*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_lexerId(self.h)

type QsciLexerVHDLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_lexerId(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerVHDLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLautoCompletionFillups*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fQsciLexerVHDL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerVHDLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_autoCompletionFillups(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerVHDLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLautoCompletionWordSeparators*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): seq[string] =
  var v_ma = fQsciLexerVHDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerVHDLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_autoCompletionWordSeparators(self: ptr cQsciLexerVHDL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerVHDL_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerVHDLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerVHDLblockEnd*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fQsciLexerVHDL_virtualbase_blockEnd(self.h, style))

type QsciLexerVHDLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockEnd(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerVHDLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLblockLookback*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_blockLookback(self.h)

type QsciLexerVHDLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockLookback(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerVHDLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLblockStart*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fQsciLexerVHDL_virtualbase_blockStart(self.h, style))

type QsciLexerVHDLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockStart(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerVHDLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLblockStartKeyword*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fQsciLexerVHDL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerVHDLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockStartKeyword(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerVHDLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLbraceStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_braceStyle(self.h)

type QsciLexerVHDLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_braceStyle(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLcaseSensitive*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fQsciLexerVHDL_virtualbase_caseSensitive(self.h)

type QsciLexerVHDLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_caseSensitive(self: ptr cQsciLexerVHDL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerVHDLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLcolor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_color(self.h, style))

type QsciLexerVHDLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_color(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_color ".} =
  var nimfunc = cast[ptr QsciLexerVHDLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLeolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fQsciLexerVHDL_virtualbase_eolFill(self.h, style)

type QsciLexerVHDLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_eolFill(self: ptr cQsciLexerVHDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerVHDLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLfont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerVHDL_virtualbase_font(self.h, style))

type QsciLexerVHDLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_font(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_font ".} =
  var nimfunc = cast[ptr QsciLexerVHDLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLindentationGuideView*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_indentationGuideView(self.h)

type QsciLexerVHDLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_indentationGuideView(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerVHDLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLkeywords*(self: gen_qscilexervhdl_types.QsciLexerVHDL, set: cint): cstring =
  (fQsciLexerVHDL_virtualbase_keywords(self.h, set))

type QsciLexerVHDLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_keywords(self: ptr cQsciLexerVHDL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_keywords ".} =
  var nimfunc = cast[ptr QsciLexerVHDLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLdefaultStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_defaultStyle(self.h)

type QsciLexerVHDLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultStyle(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerVHDLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_description(self: ptr cQsciLexerVHDL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerVHDL_description ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerVHDLpaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_paper(self.h, style))

type QsciLexerVHDLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_paper(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_paper ".} =
  var nimfunc = cast[ptr QsciLexerVHDLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLdefaultColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerVHDLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultColorWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLdefaultEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fQsciLexerVHDL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerVHDLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultEolFill(self: ptr cQsciLexerVHDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLdefaultFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerVHDL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerVHDLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultFontWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLdefaultPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerVHDLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultPaperWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVHDLsetEditor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerVHDL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerVHDLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setEditor(self: ptr cQsciLexerVHDL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerVHDLrefreshProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): void =
  fQsciLexerVHDL_virtualbase_refreshProperties(self.h)

type QsciLexerVHDLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_refreshProperties(self: ptr cQsciLexerVHDL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerVHDLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerVHDLstyleBitsNeeded*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fQsciLexerVHDL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerVHDLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_styleBitsNeeded(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerVHDLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLwordCharacters*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fQsciLexerVHDL_virtualbase_wordCharacters(self.h))

type QsciLexerVHDLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_wordCharacters(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerVHDLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVHDLsetAutoIndentStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, autoindentstyle: cint): void =
  fQsciLexerVHDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerVHDLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setAutoIndentStyle(self: ptr cQsciLexerVHDL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerVHDLsetColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerVHDL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerVHDLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setColor(self: ptr cQsciLexerVHDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setColor ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVHDLsetEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, eoffill: bool, style: cint): void =
  fQsciLexerVHDL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerVHDLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setEolFill(self: ptr cQsciLexerVHDL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVHDLsetFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerVHDL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerVHDLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFont(self: ptr cQsciLexerVHDL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFont ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVHDLsetPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerVHDL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerVHDLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setPaper(self: ptr cQsciLexerVHDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerVHDLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVHDLreadProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerVHDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVHDLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_readProperties(self: ptr cQsciLexerVHDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerVHDLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVHDLwriteProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerVHDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVHDLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_writeProperties(self: ptr cQsciLexerVHDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerVHDLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVHDLevent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerVHDL_virtualbase_event(self.h, event.h)

type QsciLexerVHDLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_event(self: ptr cQsciLexerVHDL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_event ".} =
  var nimfunc = cast[ptr QsciLexerVHDLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVHDLeventFilter*(self: gen_qscilexervhdl_types.QsciLexerVHDL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerVHDL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerVHDLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_eventFilter(self: ptr cQsciLexerVHDL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerVHDLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVHDLtimerEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerVHDL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerVHDLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_timerEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerVHDLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVHDLchildEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerVHDL_virtualbase_childEvent(self.h, event.h)

type QsciLexerVHDLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_childEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerVHDLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVHDLcustomEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent.QEvent): void =
  fQsciLexerVHDL_virtualbase_customEvent(self.h, event.h)

type QsciLexerVHDLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_customEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerVHDLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVHDLconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerVHDL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerVHDLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_connectNotify(self: ptr cQsciLexerVHDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerVHDLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerVHDLdisconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerVHDL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerVHDLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, slot: QsciLexerVHDLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerVHDLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_disconnectNotify(self: ptr cQsciLexerVHDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerVHDLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexervhdl_types.QsciLexerVHDL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVHDL_staticMetaObject())
proc delete*(self: gen_qscilexervhdl_types.QsciLexerVHDL) =
  fcQsciLexerVHDL_delete(self.h)
