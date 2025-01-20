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
{.compile("gen_qscilexertcl.cpp", cflags).}


type QsciLexerTCLEnumEnum* = distinct cint
template Default*(_: type QsciLexerTCLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerTCLEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerTCLEnumEnum): untyped = 2
template Number*(_: type QsciLexerTCLEnumEnum): untyped = 3
template QuotedKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 4
template QuotedString*(_: type QsciLexerTCLEnumEnum): untyped = 5
template Operator*(_: type QsciLexerTCLEnumEnum): untyped = 6
template Identifier*(_: type QsciLexerTCLEnumEnum): untyped = 7
template Substitution*(_: type QsciLexerTCLEnumEnum): untyped = 8
template SubstitutionBrace*(_: type QsciLexerTCLEnumEnum): untyped = 9
template Modifier*(_: type QsciLexerTCLEnumEnum): untyped = 10
template ExpandKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 11
template TCLKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 12
template TkKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 13
template ITCLKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 14
template TkCommand*(_: type QsciLexerTCLEnumEnum): untyped = 15
template KeywordSet6*(_: type QsciLexerTCLEnumEnum): untyped = 16
template KeywordSet7*(_: type QsciLexerTCLEnumEnum): untyped = 17
template KeywordSet8*(_: type QsciLexerTCLEnumEnum): untyped = 18
template KeywordSet9*(_: type QsciLexerTCLEnumEnum): untyped = 19
template CommentBox*(_: type QsciLexerTCLEnumEnum): untyped = 20
template CommentBlock*(_: type QsciLexerTCLEnumEnum): untyped = 21


import gen_qscilexertcl_types
export gen_qscilexertcl_types

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

type cQsciLexerTCL*{.exportc: "QsciLexerTCL", incompleteStruct.} = object

proc fcQsciLexerTCL_new(): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new".}
proc fcQsciLexerTCL_new2(parent: pointer): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new2".}
proc fcQsciLexerTCL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTCL_metaObject".}
proc fcQsciLexerTCL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTCL_metacast".}
proc fcQsciLexerTCL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTCL_metacall".}
proc fcQsciLexerTCL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr".}
proc fcQsciLexerTCL_language(self: pointer, ): cstring {.importc: "QsciLexerTCL_language".}
proc fcQsciLexerTCL_lexer(self: pointer, ): cstring {.importc: "QsciLexerTCL_lexer".}
proc fcQsciLexerTCL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerTCL_braceStyle".}
proc fcQsciLexerTCL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultColor".}
proc fcQsciLexerTCL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTCL_defaultEolFill".}
proc fcQsciLexerTCL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultFont".}
proc fcQsciLexerTCL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultPaper".}
proc fcQsciLexerTCL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTCL_keywords".}
proc fcQsciLexerTCL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTCL_description".}
proc fcQsciLexerTCL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTCL_refreshProperties".}
proc fcQsciLexerTCL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTCL_setFoldComments".}
proc fcQsciLexerTCL_foldComments(self: pointer, ): bool {.importc: "QsciLexerTCL_foldComments".}
proc fcQsciLexerTCL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr2".}
proc fcQsciLexerTCL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTCL_tr3".}
proc fQsciLexerTCL_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerTCL_virtualbase_metaObject".}
proc fcQsciLexerTCL_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_metaObject".}
proc fQsciLexerTCL_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerTCL_virtualbase_metacast".}
proc fcQsciLexerTCL_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_metacast".}
proc fQsciLexerTCL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerTCL_virtualbase_metacall".}
proc fcQsciLexerTCL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_metacall".}
proc fcQsciLexerTCL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_language".}
proc fQsciLexerTCL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_lexer".}
proc fcQsciLexerTCL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_lexer".}
proc fQsciLexerTCL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_lexerId".}
proc fcQsciLexerTCL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_lexerId".}
proc fQsciLexerTCL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTCL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_autoCompletionFillups".}
proc fQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerTCL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTCL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerTCL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockEnd".}
proc fcQsciLexerTCL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockEnd".}
proc fQsciLexerTCL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_blockLookback".}
proc fcQsciLexerTCL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockLookback".}
proc fQsciLexerTCL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockStart".}
proc fcQsciLexerTCL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockStart".}
proc fQsciLexerTCL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockStartKeyword".}
proc fcQsciLexerTCL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockStartKeyword".}
proc fQsciLexerTCL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_braceStyle".}
proc fcQsciLexerTCL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_braceStyle".}
proc fQsciLexerTCL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerTCL_virtualbase_caseSensitive".}
proc fcQsciLexerTCL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_caseSensitive".}
proc fQsciLexerTCL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_color".}
proc fcQsciLexerTCL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_color".}
proc fQsciLexerTCL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTCL_virtualbase_eolFill".}
proc fcQsciLexerTCL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_eolFill".}
proc fQsciLexerTCL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_font".}
proc fcQsciLexerTCL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_font".}
proc fQsciLexerTCL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_indentationGuideView".}
proc fcQsciLexerTCL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_indentationGuideView".}
proc fQsciLexerTCL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerTCL_virtualbase_keywords".}
proc fcQsciLexerTCL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_keywords".}
proc fQsciLexerTCL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_defaultStyle".}
proc fcQsciLexerTCL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultStyle".}
proc fcQsciLexerTCL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_description".}
proc fQsciLexerTCL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_paper".}
proc fcQsciLexerTCL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_paper".}
proc fQsciLexerTCL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerTCL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTCL_virtualbase_defaultEolFill".}
proc fcQsciLexerTCL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultEolFill".}
proc fQsciLexerTCL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerTCL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerTCL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerTCL_virtualbase_setEditor".}
proc fcQsciLexerTCL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setEditor".}
proc fQsciLexerTCL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerTCL_virtualbase_refreshProperties".}
proc fcQsciLexerTCL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_refreshProperties".}
proc fQsciLexerTCL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTCL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_styleBitsNeeded".}
proc fQsciLexerTCL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_wordCharacters".}
proc fcQsciLexerTCL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_wordCharacters".}
proc fQsciLexerTCL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerTCL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTCL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerTCL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setColor".}
proc fcQsciLexerTCL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setColor".}
proc fQsciLexerTCL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setEolFill".}
proc fcQsciLexerTCL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setEolFill".}
proc fQsciLexerTCL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setFont".}
proc fcQsciLexerTCL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setFont".}
proc fQsciLexerTCL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setPaper".}
proc fcQsciLexerTCL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setPaper".}
proc fQsciLexerTCL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTCL_virtualbase_readProperties".}
proc fcQsciLexerTCL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_readProperties".}
proc fQsciLexerTCL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTCL_virtualbase_writeProperties".}
proc fcQsciLexerTCL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_writeProperties".}
proc fQsciLexerTCL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerTCL_virtualbase_event".}
proc fcQsciLexerTCL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_event".}
proc fQsciLexerTCL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerTCL_virtualbase_eventFilter".}
proc fcQsciLexerTCL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_eventFilter".}
proc fQsciLexerTCL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_timerEvent".}
proc fcQsciLexerTCL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_timerEvent".}
proc fQsciLexerTCL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_childEvent".}
proc fcQsciLexerTCL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_childEvent".}
proc fQsciLexerTCL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_customEvent".}
proc fcQsciLexerTCL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_customEvent".}
proc fQsciLexerTCL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTCL_virtualbase_connectNotify".}
proc fcQsciLexerTCL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_connectNotify".}
proc fQsciLexerTCL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTCL_virtualbase_disconnectNotify".}
proc fcQsciLexerTCL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_disconnectNotify".}
proc fcQsciLexerTCL_staticMetaObject(): pointer {.importc: "QsciLexerTCL_staticMetaObject".}
proc fcQsciLexerTCL_delete(self: pointer) {.importc: "QsciLexerTCL_delete".}


func init*(T: type gen_qscilexertcl_types.QsciLexerTCL, h: ptr cQsciLexerTCL): gen_qscilexertcl_types.QsciLexerTCL =
  T(h: h)
proc create*(T: type gen_qscilexertcl_types.QsciLexerTCL, ): gen_qscilexertcl_types.QsciLexerTCL =

  gen_qscilexertcl_types.QsciLexerTCL.init(fcQsciLexerTCL_new())
proc create*(T: type gen_qscilexertcl_types.QsciLexerTCL, parent: gen_qobject.QObject): gen_qscilexertcl_types.QsciLexerTCL =

  gen_qscilexertcl_types.QsciLexerTCL.init(fcQsciLexerTCL_new2(parent.h))
proc metaObject*(self: gen_qscilexertcl_types.QsciLexerTCL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTCL_metaObject(self.h))

proc metacast*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cstring): pointer =

  fcQsciLexerTCL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerTCL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring): string =

  let v_ms = fcQsciLexerTCL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =

  (fcQsciLexerTCL_language(self.h))

proc lexer*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =

  (fcQsciLexerTCL_lexer(self.h))

proc braceStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fcQsciLexerTCL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerTCL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =

  fcQsciLexerTCL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerTCL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerTCL_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexertcl_types.QsciLexerTCL, set: cint): cstring =

  (fcQsciLexerTCL_keywords(self.h, set))

proc description*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): string =

  let v_ms = fcQsciLexerTCL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, ): void =

  fcQsciLexerTCL_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexertcl_types.QsciLexerTCL, fold: bool): void =

  fcQsciLexerTCL_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexertcl_types.QsciLexerTCL, ): bool =

  fcQsciLexerTCL_foldComments(self.h)

proc tr2*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerTCL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerTCL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerTCLmetaObject*(self: gen_qscilexertcl_types.QsciLexerTCL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerTCL_virtualbase_metaObject(self.h))

type QsciLexerTCLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_metaObject(self: ptr cQsciLexerTCL, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerTCLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerTCLmetacast*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cstring): pointer =

  fQsciLexerTCL_virtualbase_metacast(self.h, param1)

type QsciLexerTCLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_metacast(self: ptr cQsciLexerTCL, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_metacast ".} =
  var nimfunc = cast[ptr QsciLexerTCLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLmetacall*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerTCL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerTCLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_metacall(self: ptr cQsciLexerTCL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_metacall ".} =
  var nimfunc = cast[ptr QsciLexerTCLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerTCLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_language(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_language ".} =
  var nimfunc = cast[ptr QsciLexerTCLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLlexer*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =

  (fQsciLexerTCL_virtualbase_lexer(self.h))

type QsciLexerTCLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_lexer(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_lexer ".} =
  var nimfunc = cast[ptr QsciLexerTCLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLlexerId*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_lexerId(self.h)

type QsciLexerTCLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_lexerId(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerTCLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLautoCompletionFillups*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =

  (fQsciLexerTCL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerTCLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_autoCompletionFillups(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerTCLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLautoCompletionWordSeparators*(self: gen_qscilexertcl_types.QsciLexerTCL, ): seq[string] =

  var v_ma = fQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerTCLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_autoCompletionWordSeparators(self: ptr cQsciLexerTCL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerTCL_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerTCLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerTCLblockEnd*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =

  (fQsciLexerTCL_virtualbase_blockEnd(self.h, style))

type QsciLexerTCLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockEnd(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerTCLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLblockLookback*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_blockLookback(self.h)

type QsciLexerTCLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockLookback(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerTCLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLblockStart*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =

  (fQsciLexerTCL_virtualbase_blockStart(self.h, style))

type QsciLexerTCLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockStart(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerTCLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLblockStartKeyword*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =

  (fQsciLexerTCL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerTCLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockStartKeyword(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerTCLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLbraceStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_braceStyle(self.h)

type QsciLexerTCLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_braceStyle(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLcaseSensitive*(self: gen_qscilexertcl_types.QsciLexerTCL, ): bool =

  fQsciLexerTCL_virtualbase_caseSensitive(self.h)

type QsciLexerTCLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_caseSensitive(self: ptr cQsciLexerTCL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerTCLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLcolor*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_color(self.h, style))

type QsciLexerTCLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_color(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_color ".} =
  var nimfunc = cast[ptr QsciLexerTCLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLeolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =

  fQsciLexerTCL_virtualbase_eolFill(self.h, style)

type QsciLexerTCLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_eolFill(self: ptr cQsciLexerTCL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerTCLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLfont*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerTCL_virtualbase_font(self.h, style))

type QsciLexerTCLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_font(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_font ".} =
  var nimfunc = cast[ptr QsciLexerTCLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLindentationGuideView*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_indentationGuideView(self.h)

type QsciLexerTCLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_indentationGuideView(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerTCLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLkeywords*(self: gen_qscilexertcl_types.QsciLexerTCL, set: cint): cstring =

  (fQsciLexerTCL_virtualbase_keywords(self.h, set))

type QsciLexerTCLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_keywords(self: ptr cQsciLexerTCL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_keywords ".} =
  var nimfunc = cast[ptr QsciLexerTCLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLdefaultStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_defaultStyle(self.h)

type QsciLexerTCLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultStyle(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerTCLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_description(self: ptr cQsciLexerTCL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerTCL_description ".} =
  var nimfunc = cast[ptr QsciLexerTCLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerTCLpaper*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_paper(self.h, style))

type QsciLexerTCLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_paper(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_paper ".} =
  var nimfunc = cast[ptr QsciLexerTCLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLdefaultColorWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerTCLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultColorWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLdefaultEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =

  fQsciLexerTCL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerTCLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultEolFill(self: ptr cQsciLexerTCL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerTCLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLdefaultFontWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerTCL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerTCLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultFontWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLdefaultPaperWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerTCLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultPaperWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerTCLsetEditor*(self: gen_qscilexertcl_types.QsciLexerTCL, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerTCL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerTCLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setEditor(self: ptr cQsciLexerTCL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerTCLrefreshProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, ): void =

  fQsciLexerTCL_virtualbase_refreshProperties(self.h)

type QsciLexerTCLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_refreshProperties(self: ptr cQsciLexerTCL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerTCL_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerTCLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerTCLstyleBitsNeeded*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =

  fQsciLexerTCL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerTCLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_styleBitsNeeded(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerTCLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLwordCharacters*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =

  (fQsciLexerTCL_virtualbase_wordCharacters(self.h))

type QsciLexerTCLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_wordCharacters(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerTCLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerTCLsetAutoIndentStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, autoindentstyle: cint): void =

  fQsciLexerTCL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerTCLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setAutoIndentStyle(self: ptr cQsciLexerTCL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerTCLsetColor*(self: gen_qscilexertcl_types.QsciLexerTCL, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerTCL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerTCLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setColor(self: ptr cQsciLexerTCL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setColor ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTCLsetEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, eoffill: bool, style: cint): void =

  fQsciLexerTCL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerTCLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setEolFill(self: ptr cQsciLexerTCL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTCLsetFont*(self: gen_qscilexertcl_types.QsciLexerTCL, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerTCL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerTCLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setFont(self: ptr cQsciLexerTCL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setFont ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTCLsetPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerTCL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerTCLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setPaper(self: ptr cQsciLexerTCL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerTCLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerTCLreadProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerTCL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTCLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_readProperties(self: ptr cQsciLexerTCL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerTCLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTCLwriteProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerTCL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTCLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_writeProperties(self: ptr cQsciLexerTCL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerTCLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTCLevent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerTCL_virtualbase_event(self.h, event.h)

type QsciLexerTCLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_event(self: ptr cQsciLexerTCL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_event ".} =
  var nimfunc = cast[ptr QsciLexerTCLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerTCLeventFilter*(self: gen_qscilexertcl_types.QsciLexerTCL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerTCL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerTCLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_eventFilter(self: ptr cQsciLexerTCL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerTCLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerTCLtimerEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerTCL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerTCLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_timerEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerTCLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTCLchildEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerTCL_virtualbase_childEvent(self.h, event.h)

type QsciLexerTCLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_childEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerTCLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTCLcustomEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent.QEvent): void =

  fQsciLexerTCL_virtualbase_customEvent(self.h, event.h)

type QsciLexerTCLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_customEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerTCLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerTCLconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerTCL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerTCLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_connectNotify(self: ptr cQsciLexerTCL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerTCLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerTCLdisconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerTCL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerTCLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, slot: QsciLexerTCLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerTCLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_disconnectNotify(self: ptr cQsciLexerTCL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerTCLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexertcl_types.QsciLexerTCL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTCL_staticMetaObject())
proc delete*(self: gen_qscilexertcl_types.QsciLexerTCL) =
  fcQsciLexerTCL_delete(self.h)
