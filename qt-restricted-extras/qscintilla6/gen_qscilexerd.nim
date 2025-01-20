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
{.compile("gen_qscilexerd.cpp", cflags).}


type QsciLexerDEnumEnum* = distinct cint
template Default*(_: type QsciLexerDEnumEnum): untyped = 0
template Comment*(_: type QsciLexerDEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerDEnumEnum): untyped = 2
template CommentDoc*(_: type QsciLexerDEnumEnum): untyped = 3
template CommentNested*(_: type QsciLexerDEnumEnum): untyped = 4
template Number*(_: type QsciLexerDEnumEnum): untyped = 5
template Keyword*(_: type QsciLexerDEnumEnum): untyped = 6
template KeywordSecondary*(_: type QsciLexerDEnumEnum): untyped = 7
template KeywordDoc*(_: type QsciLexerDEnumEnum): untyped = 8
template Typedefs*(_: type QsciLexerDEnumEnum): untyped = 9
template String*(_: type QsciLexerDEnumEnum): untyped = 10
template UnclosedString*(_: type QsciLexerDEnumEnum): untyped = 11
template Character*(_: type QsciLexerDEnumEnum): untyped = 12
template Operator*(_: type QsciLexerDEnumEnum): untyped = 13
template Identifier*(_: type QsciLexerDEnumEnum): untyped = 14
template CommentLineDoc*(_: type QsciLexerDEnumEnum): untyped = 15
template CommentDocKeyword*(_: type QsciLexerDEnumEnum): untyped = 16
template CommentDocKeywordError*(_: type QsciLexerDEnumEnum): untyped = 17
template BackquoteString*(_: type QsciLexerDEnumEnum): untyped = 18
template RawString*(_: type QsciLexerDEnumEnum): untyped = 19
template KeywordSet5*(_: type QsciLexerDEnumEnum): untyped = 20
template KeywordSet6*(_: type QsciLexerDEnumEnum): untyped = 21
template KeywordSet7*(_: type QsciLexerDEnumEnum): untyped = 22


import gen_qscilexerd_types
export gen_qscilexerd_types

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

type cQsciLexerD*{.exportc: "QsciLexerD", incompleteStruct.} = object

proc fcQsciLexerD_new(): ptr cQsciLexerD {.importc: "QsciLexerD_new".}
proc fcQsciLexerD_new2(parent: pointer): ptr cQsciLexerD {.importc: "QsciLexerD_new2".}
proc fcQsciLexerD_metaObject(self: pointer, ): pointer {.importc: "QsciLexerD_metaObject".}
proc fcQsciLexerD_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerD_metacast".}
proc fcQsciLexerD_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerD_metacall".}
proc fcQsciLexerD_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerD_tr".}
proc fcQsciLexerD_language(self: pointer, ): cstring {.importc: "QsciLexerD_language".}
proc fcQsciLexerD_lexer(self: pointer, ): cstring {.importc: "QsciLexerD_lexer".}
proc fcQsciLexerD_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerD_autoCompletionWordSeparators".}
proc fcQsciLexerD_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerD_blockEnd".}
proc fcQsciLexerD_blockStart(self: pointer, ): cstring {.importc: "QsciLexerD_blockStart".}
proc fcQsciLexerD_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerD_blockStartKeyword".}
proc fcQsciLexerD_braceStyle(self: pointer, ): cint {.importc: "QsciLexerD_braceStyle".}
proc fcQsciLexerD_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerD_wordCharacters".}
proc fcQsciLexerD_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultColor".}
proc fcQsciLexerD_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerD_defaultEolFill".}
proc fcQsciLexerD_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultFont".}
proc fcQsciLexerD_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultPaper".}
proc fcQsciLexerD_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerD_keywords".}
proc fcQsciLexerD_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerD_description".}
proc fcQsciLexerD_refreshProperties(self: pointer, ): void {.importc: "QsciLexerD_refreshProperties".}
proc fcQsciLexerD_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerD_foldAtElse".}
proc fcQsciLexerD_foldComments(self: pointer, ): bool {.importc: "QsciLexerD_foldComments".}
proc fcQsciLexerD_foldCompact(self: pointer, ): bool {.importc: "QsciLexerD_foldCompact".}
proc fcQsciLexerD_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldAtElse".}
proc fcQsciLexerD_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldComments".}
proc fcQsciLexerD_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldCompact".}
proc fcQsciLexerD_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerD_tr2".}
proc fcQsciLexerD_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerD_tr3".}
proc fcQsciLexerD_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockEnd1".}
proc fcQsciLexerD_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStart1".}
proc fcQsciLexerD_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStartKeyword1".}
proc fQsciLexerD_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerD_virtualbase_metaObject".}
proc fcQsciLexerD_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_metaObject".}
proc fQsciLexerD_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerD_virtualbase_metacast".}
proc fcQsciLexerD_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_metacast".}
proc fQsciLexerD_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerD_virtualbase_metacall".}
proc fcQsciLexerD_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_metacall".}
proc fQsciLexerD_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldAtElse".}
proc fcQsciLexerD_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldAtElse".}
proc fQsciLexerD_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldComments".}
proc fcQsciLexerD_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldComments".}
proc fQsciLexerD_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldCompact".}
proc fcQsciLexerD_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldCompact".}
proc fcQsciLexerD_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_language".}
proc fQsciLexerD_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_lexer".}
proc fcQsciLexerD_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_lexer".}
proc fQsciLexerD_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_lexerId".}
proc fcQsciLexerD_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_lexerId".}
proc fQsciLexerD_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_autoCompletionFillups".}
proc fcQsciLexerD_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_autoCompletionFillups".}
proc fQsciLexerD_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerD_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerD_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerD_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockEnd".}
proc fcQsciLexerD_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockEnd".}
proc fQsciLexerD_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_blockLookback".}
proc fcQsciLexerD_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockLookback".}
proc fQsciLexerD_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockStart".}
proc fcQsciLexerD_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockStart".}
proc fQsciLexerD_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockStartKeyword".}
proc fcQsciLexerD_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockStartKeyword".}
proc fQsciLexerD_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_braceStyle".}
proc fcQsciLexerD_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_braceStyle".}
proc fQsciLexerD_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerD_virtualbase_caseSensitive".}
proc fcQsciLexerD_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_caseSensitive".}
proc fQsciLexerD_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_color".}
proc fcQsciLexerD_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_color".}
proc fQsciLexerD_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerD_virtualbase_eolFill".}
proc fcQsciLexerD_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_eolFill".}
proc fQsciLexerD_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_font".}
proc fcQsciLexerD_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_font".}
proc fQsciLexerD_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_indentationGuideView".}
proc fcQsciLexerD_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_indentationGuideView".}
proc fQsciLexerD_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerD_virtualbase_keywords".}
proc fcQsciLexerD_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_keywords".}
proc fQsciLexerD_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_defaultStyle".}
proc fcQsciLexerD_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultStyle".}
proc fcQsciLexerD_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_description".}
proc fQsciLexerD_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_paper".}
proc fcQsciLexerD_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_paper".}
proc fQsciLexerD_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerD_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultColorWithStyle".}
proc fQsciLexerD_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerD_virtualbase_defaultEolFill".}
proc fcQsciLexerD_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultEolFill".}
proc fQsciLexerD_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerD_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultFontWithStyle".}
proc fQsciLexerD_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerD_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerD_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerD_virtualbase_setEditor".}
proc fcQsciLexerD_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setEditor".}
proc fQsciLexerD_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerD_virtualbase_refreshProperties".}
proc fcQsciLexerD_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_refreshProperties".}
proc fQsciLexerD_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_styleBitsNeeded".}
proc fcQsciLexerD_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_styleBitsNeeded".}
proc fQsciLexerD_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_wordCharacters".}
proc fcQsciLexerD_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_wordCharacters".}
proc fQsciLexerD_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerD_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerD_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setAutoIndentStyle".}
proc fQsciLexerD_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setColor".}
proc fcQsciLexerD_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setColor".}
proc fQsciLexerD_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerD_virtualbase_setEolFill".}
proc fcQsciLexerD_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setEolFill".}
proc fQsciLexerD_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setFont".}
proc fcQsciLexerD_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFont".}
proc fQsciLexerD_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setPaper".}
proc fcQsciLexerD_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setPaper".}
proc fQsciLexerD_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerD_virtualbase_readProperties".}
proc fcQsciLexerD_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_readProperties".}
proc fQsciLexerD_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerD_virtualbase_writeProperties".}
proc fcQsciLexerD_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_writeProperties".}
proc fQsciLexerD_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerD_virtualbase_event".}
proc fcQsciLexerD_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_event".}
proc fQsciLexerD_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerD_virtualbase_eventFilter".}
proc fcQsciLexerD_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_eventFilter".}
proc fQsciLexerD_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_timerEvent".}
proc fcQsciLexerD_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_timerEvent".}
proc fQsciLexerD_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_childEvent".}
proc fcQsciLexerD_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_childEvent".}
proc fQsciLexerD_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_customEvent".}
proc fcQsciLexerD_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_customEvent".}
proc fQsciLexerD_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerD_virtualbase_connectNotify".}
proc fcQsciLexerD_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_connectNotify".}
proc fQsciLexerD_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerD_virtualbase_disconnectNotify".}
proc fcQsciLexerD_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_disconnectNotify".}
proc fcQsciLexerD_staticMetaObject(): pointer {.importc: "QsciLexerD_staticMetaObject".}
proc fcQsciLexerD_delete(self: pointer) {.importc: "QsciLexerD_delete".}


func init*(T: type gen_qscilexerd_types.QsciLexerD, h: ptr cQsciLexerD): gen_qscilexerd_types.QsciLexerD =
  T(h: h)
proc create*(T: type gen_qscilexerd_types.QsciLexerD, ): gen_qscilexerd_types.QsciLexerD =

  gen_qscilexerd_types.QsciLexerD.init(fcQsciLexerD_new())
proc create*(T: type gen_qscilexerd_types.QsciLexerD, parent: gen_qobject.QObject): gen_qscilexerd_types.QsciLexerD =

  gen_qscilexerd_types.QsciLexerD.init(fcQsciLexerD_new2(parent.h))
proc metaObject*(self: gen_qscilexerd_types.QsciLexerD, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerD_metaObject(self.h))

proc metacast*(self: gen_qscilexerd_types.QsciLexerD, param1: cstring): pointer =

  fcQsciLexerD_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerd_types.QsciLexerD, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerD_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring): string =

  let v_ms = fcQsciLexerD_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_language(self.h))

proc lexer*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerd_types.QsciLexerD, ): seq[string] =

  var v_ma = fcQsciLexerD_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fcQsciLexerD_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fcQsciLexerD_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerD_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =

  fcQsciLexerD_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerD_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerD_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerd_types.QsciLexerD, set: cint): cstring =

  (fcQsciLexerD_keywords(self.h, set))

proc description*(self: gen_qscilexerd_types.QsciLexerD, style: cint): string =

  let v_ms = fcQsciLexerD_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerd_types.QsciLexerD, ): void =

  fcQsciLexerD_refreshProperties(self.h)

proc foldAtElse*(self: gen_qscilexerd_types.QsciLexerD, ): bool =

  fcQsciLexerD_foldAtElse(self.h)

proc foldComments*(self: gen_qscilexerd_types.QsciLexerD, ): bool =

  fcQsciLexerD_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerd_types.QsciLexerD, ): bool =

  fcQsciLexerD_foldCompact(self.h)

proc setFoldAtElse*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldAtElse(self.h, fold)

proc setFoldComments*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldCompact(self.h, fold)

proc tr2*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerD_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerD_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockEnd1(self.h, style))

proc blockStart1*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockStart1(self.h, style))

proc blockStartKeyword1*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockStartKeyword1(self.h, style))

proc QsciLexerDmetaObject*(self: gen_qscilexerd_types.QsciLexerD, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerD_virtualbase_metaObject(self.h))

type QsciLexerDmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerDmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_metaObject(self: ptr cQsciLexerD, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerD_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerDmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerDmetacast*(self: gen_qscilexerd_types.QsciLexerD, param1: cstring): pointer =

  fQsciLexerD_virtualbase_metacast(self.h, param1)

type QsciLexerDmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerDmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_metacast(self: ptr cQsciLexerD, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerD_metacast ".} =
  var nimfunc = cast[ptr QsciLexerDmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDmetacall*(self: gen_qscilexerd_types.QsciLexerD, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerD_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerDmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerDmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_metacall(self: ptr cQsciLexerD, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerD_metacall ".} =
  var nimfunc = cast[ptr QsciLexerDmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerDsetFoldAtElse*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fQsciLexerD_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerDsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldAtElse(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerDsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerDsetFoldComments*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fQsciLexerD_virtualbase_setFoldComments(self.h, fold)

type QsciLexerDsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldComments(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerDsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerDsetFoldCompact*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =

  fQsciLexerD_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerDsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldCompact(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerDsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerDlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerDlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_language(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_language ".} =
  var nimfunc = cast[ptr QsciLexerDlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDlexer*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fQsciLexerD_virtualbase_lexer(self.h))

type QsciLexerDlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerDlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_lexer(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_lexer ".} =
  var nimfunc = cast[ptr QsciLexerDlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDlexerId*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_lexerId(self.h)

type QsciLexerDlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerDlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_lexerId(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerDlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDautoCompletionFillups*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fQsciLexerD_virtualbase_autoCompletionFillups(self.h))

type QsciLexerDautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_autoCompletionFillups(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerDautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDautoCompletionWordSeparators*(self: gen_qscilexerd_types.QsciLexerD, ): seq[string] =

  var v_ma = fQsciLexerD_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerDautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_autoCompletionWordSeparators(self: ptr cQsciLexerD, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerD_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerDautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerDblockEnd*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fQsciLexerD_virtualbase_blockEnd(self.h, style))

type QsciLexerDblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerDblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockEnd(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerDblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDblockLookback*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_blockLookback(self.h)

type QsciLexerDblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerDblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockLookback(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerDblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDblockStart*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fQsciLexerD_virtualbase_blockStart(self.h, style))

type QsciLexerDblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerDblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockStart(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerDblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDblockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =

  (fQsciLexerD_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerDblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerDblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockStartKeyword(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerDblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDbraceStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_braceStyle(self.h)

type QsciLexerDbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_braceStyle(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerDbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDcaseSensitive*(self: gen_qscilexerd_types.QsciLexerD, ): bool =

  fQsciLexerD_virtualbase_caseSensitive(self.h)

type QsciLexerDcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerDcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_caseSensitive(self: ptr cQsciLexerD, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerD_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerDcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDcolor*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_color(self.h, style))

type QsciLexerDcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_color(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_color ".} =
  var nimfunc = cast[ptr QsciLexerDcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDeolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =

  fQsciLexerD_virtualbase_eolFill(self.h, style)

type QsciLexerDeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_eolFill(self: ptr cQsciLexerD, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerD_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerDeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDfont*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerD_virtualbase_font(self.h, style))

type QsciLexerDfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerDfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_font(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_font ".} =
  var nimfunc = cast[ptr QsciLexerDfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDindentationGuideView*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_indentationGuideView(self.h)

type QsciLexerDindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerDindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_indentationGuideView(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerDindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDkeywords*(self: gen_qscilexerd_types.QsciLexerD, set: cint): cstring =

  (fQsciLexerD_virtualbase_keywords(self.h, set))

type QsciLexerDkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_keywords(self: ptr cQsciLexerD, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_keywords ".} =
  var nimfunc = cast[ptr QsciLexerDkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDdefaultStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_defaultStyle(self.h)

type QsciLexerDdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultStyle(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerDdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerDdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_description(self: ptr cQsciLexerD, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerD_description ".} =
  var nimfunc = cast[ptr QsciLexerDdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerDpaper*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_paper(self.h, style))

type QsciLexerDpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerDpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_paper(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_paper ".} =
  var nimfunc = cast[ptr QsciLexerDpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDdefaultColorWithStyle*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerDdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultColorWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDdefaultEolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =

  fQsciLexerD_virtualbase_defaultEolFill(self.h, style)

type QsciLexerDdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultEolFill(self: ptr cQsciLexerD, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerD_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerDdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDdefaultFontWithStyle*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerD_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerDdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultFontWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDdefaultPaperWithStyle*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerDdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultPaperWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDsetEditor*(self: gen_qscilexerd_types.QsciLexerD, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerD_virtualbase_setEditor(self.h, editor.h)

type QsciLexerDsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setEditor(self: ptr cQsciLexerD, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerDsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerDrefreshProperties*(self: gen_qscilexerd_types.QsciLexerD, ): void =

  fQsciLexerD_virtualbase_refreshProperties(self.h)

type QsciLexerDrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_refreshProperties(self: ptr cQsciLexerD, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerD_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerDrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerDstyleBitsNeeded*(self: gen_qscilexerd_types.QsciLexerD, ): cint =

  fQsciLexerD_virtualbase_styleBitsNeeded(self.h)

type QsciLexerDstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerDstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_styleBitsNeeded(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerDstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDwordCharacters*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =

  (fQsciLexerD_virtualbase_wordCharacters(self.h))

type QsciLexerDwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerDwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_wordCharacters(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerDwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDsetAutoIndentStyle*(self: gen_qscilexerd_types.QsciLexerD, autoindentstyle: cint): void =

  fQsciLexerD_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerDsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setAutoIndentStyle(self: ptr cQsciLexerD, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerDsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerDsetColor*(self: gen_qscilexerd_types.QsciLexerD, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerD_virtualbase_setColor(self.h, c.h, style)

type QsciLexerDsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setColor(self: ptr cQsciLexerD, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setColor ".} =
  var nimfunc = cast[ptr QsciLexerDsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDsetEolFill*(self: gen_qscilexerd_types.QsciLexerD, eoffill: bool, style: cint): void =

  fQsciLexerD_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerDsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setEolFill(self: ptr cQsciLexerD, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerDsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDsetFont*(self: gen_qscilexerd_types.QsciLexerD, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerD_virtualbase_setFont(self.h, f.h, style)

type QsciLexerDsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFont(self: ptr cQsciLexerD, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setFont ".} =
  var nimfunc = cast[ptr QsciLexerDsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDsetPaper*(self: gen_qscilexerd_types.QsciLexerD, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerD_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerDsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerDsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setPaper(self: ptr cQsciLexerD, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerDsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDreadProperties*(self: gen_qscilexerd_types.QsciLexerD, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerD_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_readProperties(self: ptr cQsciLexerD, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerD_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerDreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDwriteProperties*(self: gen_qscilexerd_types.QsciLexerD, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerD_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_writeProperties(self: ptr cQsciLexerD, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerD_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerDwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDevent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerD_virtualbase_event(self.h, event.h)

type QsciLexerDeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_event(self: ptr cQsciLexerD, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerD_event ".} =
  var nimfunc = cast[ptr QsciLexerDeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDeventFilter*(self: gen_qscilexerd_types.QsciLexerD, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerD_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerDeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerDeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_eventFilter(self: ptr cQsciLexerD, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerD_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerDeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDtimerEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerD_virtualbase_timerEvent(self.h, event.h)

type QsciLexerDtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_timerEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerDtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDchildEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerD_virtualbase_childEvent(self.h, event.h)

type QsciLexerDchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_childEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerDchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDcustomEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent.QEvent): void =

  fQsciLexerD_virtualbase_customEvent(self.h, event.h)

type QsciLexerDcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_customEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerDcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerD_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerDconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerDconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_connectNotify(self: ptr cQsciLexerD, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerDconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerDdisconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerD_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerDdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, slot: QsciLexerDdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerDdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_disconnectNotify(self: ptr cQsciLexerD, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerDdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerd_types.QsciLexerD): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerD_staticMetaObject())
proc delete*(self: gen_qscilexerd_types.QsciLexerD) =
  fcQsciLexerD_delete(self.h)
