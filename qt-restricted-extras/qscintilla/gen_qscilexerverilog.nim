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
{.compile("gen_qscilexerverilog.cpp", cflags).}


type QsciLexerVerilogEnumEnum* = distinct cint
template Default*(_: type QsciLexerVerilogEnumEnum): untyped = 0
template InactiveDefault*(_: type QsciLexerVerilogEnumEnum): untyped = 64
template Comment*(_: type QsciLexerVerilogEnumEnum): untyped = 1
template InactiveComment*(_: type QsciLexerVerilogEnumEnum): untyped = 65
template CommentLine*(_: type QsciLexerVerilogEnumEnum): untyped = 2
template InactiveCommentLine*(_: type QsciLexerVerilogEnumEnum): untyped = 66
template CommentBang*(_: type QsciLexerVerilogEnumEnum): untyped = 3
template InactiveCommentBang*(_: type QsciLexerVerilogEnumEnum): untyped = 67
template Number*(_: type QsciLexerVerilogEnumEnum): untyped = 4
template InactiveNumber*(_: type QsciLexerVerilogEnumEnum): untyped = 68
template Keyword*(_: type QsciLexerVerilogEnumEnum): untyped = 5
template InactiveKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 69
template String*(_: type QsciLexerVerilogEnumEnum): untyped = 6
template InactiveString*(_: type QsciLexerVerilogEnumEnum): untyped = 70
template KeywordSet2*(_: type QsciLexerVerilogEnumEnum): untyped = 7
template InactiveKeywordSet2*(_: type QsciLexerVerilogEnumEnum): untyped = 71
template SystemTask*(_: type QsciLexerVerilogEnumEnum): untyped = 8
template InactiveSystemTask*(_: type QsciLexerVerilogEnumEnum): untyped = 72
template Preprocessor*(_: type QsciLexerVerilogEnumEnum): untyped = 9
template InactivePreprocessor*(_: type QsciLexerVerilogEnumEnum): untyped = 73
template Operator*(_: type QsciLexerVerilogEnumEnum): untyped = 10
template InactiveOperator*(_: type QsciLexerVerilogEnumEnum): untyped = 74
template Identifier*(_: type QsciLexerVerilogEnumEnum): untyped = 11
template InactiveIdentifier*(_: type QsciLexerVerilogEnumEnum): untyped = 75
template UnclosedString*(_: type QsciLexerVerilogEnumEnum): untyped = 12
template InactiveUnclosedString*(_: type QsciLexerVerilogEnumEnum): untyped = 76
template UserKeywordSet*(_: type QsciLexerVerilogEnumEnum): untyped = 19
template InactiveUserKeywordSet*(_: type QsciLexerVerilogEnumEnum): untyped = 83
template CommentKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 20
template InactiveCommentKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 84
template DeclareInputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 21
template InactiveDeclareInputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 85
template DeclareOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 22
template InactiveDeclareOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 86
template DeclareInputOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 23
template InactiveDeclareInputOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 87
template PortConnection*(_: type QsciLexerVerilogEnumEnum): untyped = 24
template InactivePortConnection*(_: type QsciLexerVerilogEnumEnum): untyped = 88


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
proc fcQsciLexerVerilog_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf8".}
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
proc fcQsciLexerVerilog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf82".}
proc fcQsciLexerVerilog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf83".}
proc fQsciLexerVerilog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerVerilog_virtualbase_metaObject".}
proc fcQsciLexerVerilog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_metaObject".}
proc fQsciLexerVerilog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerVerilog_virtualbase_metacast".}
proc fcQsciLexerVerilog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerVerilog_override_virtual_metacast".}
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
proc fcQsciLexerVerilog_staticMetaObject(): pointer {.importc: "QsciLexerVerilog_staticMetaObject".}
proc fcQsciLexerVerilog_delete(self: pointer) {.importc: "QsciLexerVerilog_delete".}


func init*(T: type gen_qscilexerverilog_types.QsciLexerVerilog, h: ptr cQsciLexerVerilog): gen_qscilexerverilog_types.QsciLexerVerilog =
  T(h: h)
proc create*(T: type gen_qscilexerverilog_types.QsciLexerVerilog, ): gen_qscilexerverilog_types.QsciLexerVerilog =
  gen_qscilexerverilog_types.QsciLexerVerilog.init(fcQsciLexerVerilog_new())

proc create*(T: type gen_qscilexerverilog_types.QsciLexerVerilog, parent: gen_qobject.QObject): gen_qscilexerverilog_types.QsciLexerVerilog =
  gen_qscilexerverilog_types.QsciLexerVerilog.init(fcQsciLexerVerilog_new2(parent.h))

proc metaObject*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVerilog_metaObject(self.h))

proc metacast*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cstring): pointer =
  fcQsciLexerVerilog_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVerilog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring): string =
  let v_ms = fcQsciLexerVerilog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring): string =
  let v_ms = fcQsciLexerVerilog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_language(self.h))

proc lexer*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_lexer(self.h))

proc braceStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerVerilog_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fcQsciLexerVerilog_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerVerilog_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerVerilog_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerverilog_types.QsciLexerVerilog, set: cint): cstring =
  (fcQsciLexerVerilog_keywords(self.h, set))

proc description*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): string =
  let v_ms = fcQsciLexerVerilog_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): void =
  fcQsciLexerVerilog_refreshProperties(self.h)

proc setFoldAtElse*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldAtElse(self.h)

proc setFoldComments*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldCompact(self.h)

proc setFoldPreprocessor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldPreprocessor(self.h, fold)

proc foldPreprocessor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldPreprocessor(self.h)

proc setFoldAtModule*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldAtModule(self.h, fold)

proc foldAtModule*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldAtModule(self.h)

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVerilog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVerilog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVerilog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVerilog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerVerilogmetaObject*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerVerilog_virtualbase_metaObject(self.h))

type QsciLexerVerilogmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_metaObject(self: ptr cQsciLexerVerilog, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerVerilogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerVerilogmetacast*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cstring): pointer =
  fQsciLexerVerilog_virtualbase_metacast(self.h, param1)

type QsciLexerVerilogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_metacast(self: ptr cQsciLexerVerilog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_metacast ".} =
  var nimfunc = cast[ptr QsciLexerVerilogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogmetacall*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerVerilog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerVerilogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_metacall(self: ptr cQsciLexerVerilog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_metacall ".} =
  var nimfunc = cast[ptr QsciLexerVerilogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerVeriloglanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVeriloglanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerVeriloglanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_language(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_language ".} =
  var nimfunc = cast[ptr QsciLexerVeriloglanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVeriloglexer*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fQsciLexerVerilog_virtualbase_lexer(self.h))

type QsciLexerVeriloglexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVeriloglexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerVeriloglexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_lexer(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_lexer ".} =
  var nimfunc = cast[ptr QsciLexerVeriloglexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVeriloglexerId*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_lexerId(self.h)

type QsciLexerVeriloglexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVeriloglexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerVeriloglexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_lexerId(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerVeriloglexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogautoCompletionFillups*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fQsciLexerVerilog_virtualbase_autoCompletionFillups(self.h))

type QsciLexerVerilogautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_autoCompletionFillups(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerVerilogautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogautoCompletionWordSeparators*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): seq[string] =
  var v_ma = fQsciLexerVerilog_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerVerilogautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_autoCompletionWordSeparators(self: ptr cQsciLexerVerilog, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerVerilog_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerVerilogautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerVerilogblockEnd*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fQsciLexerVerilog_virtualbase_blockEnd(self.h, style))

type QsciLexerVerilogblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockEnd(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerVerilogblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogblockLookback*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_blockLookback(self.h)

type QsciLexerVerilogblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockLookback(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerVerilogblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogblockStart*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fQsciLexerVerilog_virtualbase_blockStart(self.h, style))

type QsciLexerVerilogblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockStart(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerVerilogblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogblockStartKeyword*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fQsciLexerVerilog_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerVerilogblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_blockStartKeyword(self: ptr cQsciLexerVerilog, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerVerilogblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogbraceStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_braceStyle(self.h)

type QsciLexerVerilogbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_braceStyle(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogcaseSensitive*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fQsciLexerVerilog_virtualbase_caseSensitive(self.h)

type QsciLexerVerilogcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_caseSensitive(self: ptr cQsciLexerVerilog, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerVerilogcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogcolor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_color(self.h, style))

type QsciLexerVerilogcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_color(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_color ".} =
  var nimfunc = cast[ptr QsciLexerVerilogcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogeolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fQsciLexerVerilog_virtualbase_eolFill(self.h, style)

type QsciLexerVerilogeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_eolFill(self: ptr cQsciLexerVerilog, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerVerilogeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogfont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerVerilog_virtualbase_font(self.h, style))

type QsciLexerVerilogfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_font(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_font ".} =
  var nimfunc = cast[ptr QsciLexerVerilogfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogindentationGuideView*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_indentationGuideView(self.h)

type QsciLexerVerilogindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_indentationGuideView(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerVerilogindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogkeywords*(self: gen_qscilexerverilog_types.QsciLexerVerilog, set: cint): cstring =
  (fQsciLexerVerilog_virtualbase_keywords(self.h, set))

type QsciLexerVerilogkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_keywords(self: ptr cQsciLexerVerilog, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_keywords ".} =
  var nimfunc = cast[ptr QsciLexerVerilogkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogdefaultStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_defaultStyle(self.h)

type QsciLexerVerilogdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultStyle(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerVerilogdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_description(self: ptr cQsciLexerVerilog, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerVerilog_description ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerVerilogpaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_paper(self.h, style))

type QsciLexerVerilogpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_paper(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_paper ".} =
  var nimfunc = cast[ptr QsciLexerVerilogpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogdefaultColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerVerilogdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultColorWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogdefaultEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fQsciLexerVerilog_virtualbase_defaultEolFill(self.h, style)

type QsciLexerVerilogdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultEolFill(self: ptr cQsciLexerVerilog, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogdefaultFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerVerilog_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerVerilogdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultFontWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogdefaultPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerVerilog_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerVerilogdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_defaultPaperWithStyle(self: ptr cQsciLexerVerilog, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVerilog_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerVerilogsetEditor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerVerilog_virtualbase_setEditor(self.h, editor.h)

type QsciLexerVerilogsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setEditor(self: ptr cQsciLexerVerilog, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerVerilogrefreshProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): void =
  fQsciLexerVerilog_virtualbase_refreshProperties(self.h)

type QsciLexerVerilogrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_refreshProperties(self: ptr cQsciLexerVerilog, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerVerilogrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerVerilogstyleBitsNeeded*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fQsciLexerVerilog_virtualbase_styleBitsNeeded(self.h)

type QsciLexerVerilogstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_styleBitsNeeded(self: ptr cQsciLexerVerilog, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVerilog_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerVerilogstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogwordCharacters*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fQsciLexerVerilog_virtualbase_wordCharacters(self.h))

type QsciLexerVerilogwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_wordCharacters(self: ptr cQsciLexerVerilog, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVerilog_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerVerilogwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerVerilogsetAutoIndentStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, autoindentstyle: cint): void =
  fQsciLexerVerilog_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerVerilogsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setAutoIndentStyle(self: ptr cQsciLexerVerilog, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerVerilogsetColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerVerilog_virtualbase_setColor(self.h, c.h, style)

type QsciLexerVerilogsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setColor(self: ptr cQsciLexerVerilog, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setColor ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVerilogsetEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, eoffill: bool, style: cint): void =
  fQsciLexerVerilog_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerVerilogsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setEolFill(self: ptr cQsciLexerVerilog, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVerilogsetFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerVerilog_virtualbase_setFont(self.h, f.h, style)

type QsciLexerVerilogsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setFont(self: ptr cQsciLexerVerilog, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setFont ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVerilogsetPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerVerilog_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerVerilogsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_setPaper(self: ptr cQsciLexerVerilog, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerVerilogsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerVerilogreadProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerVerilog_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVerilogreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_readProperties(self: ptr cQsciLexerVerilog, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerVerilogreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVerilogwriteProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerVerilog_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVerilogwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_writeProperties(self: ptr cQsciLexerVerilog, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerVerilogwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVerilogevent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerVerilog_virtualbase_event(self.h, event.h)

type QsciLexerVerilogeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_event(self: ptr cQsciLexerVerilog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_event ".} =
  var nimfunc = cast[ptr QsciLexerVerilogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerVerilogeventFilter*(self: gen_qscilexerverilog_types.QsciLexerVerilog, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerVerilog_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerVerilogeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_eventFilter(self: ptr cQsciLexerVerilog, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVerilog_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerVerilogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerVerilogtimerEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerVerilog_virtualbase_timerEvent(self.h, event.h)

type QsciLexerVerilogtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_timerEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerVerilogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVerilogchildEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerVerilog_virtualbase_childEvent(self.h, event.h)

type QsciLexerVerilogchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_childEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerVerilogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVerilogcustomEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent.QEvent): void =
  fQsciLexerVerilog_virtualbase_customEvent(self.h, event.h)

type QsciLexerVerilogcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_customEvent(self: ptr cQsciLexerVerilog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerVerilogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerVerilogconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerVerilog_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerVerilogconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_connectNotify(self: ptr cQsciLexerVerilog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerVerilogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerVerilogdisconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerVerilog_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerVerilogdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, slot: QsciLexerVerilogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerVerilogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVerilog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVerilog_disconnectNotify(self: ptr cQsciLexerVerilog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVerilog_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerVerilogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerverilog_types.QsciLexerVerilog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVerilog_staticMetaObject())
proc delete*(self: gen_qscilexerverilog_types.QsciLexerVerilog) =
  fcQsciLexerVerilog_delete(self.h)
