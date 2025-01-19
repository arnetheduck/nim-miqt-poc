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


type QsciLexerVHDLEnum* = cint
const
  QsciLexerVHDLDefault* = 0
  QsciLexerVHDLComment* = 1
  QsciLexerVHDLCommentLine* = 2
  QsciLexerVHDLNumber* = 3
  QsciLexerVHDLString* = 4
  QsciLexerVHDLOperator* = 5
  QsciLexerVHDLIdentifier* = 6
  QsciLexerVHDLUnclosedString* = 7
  QsciLexerVHDLKeyword* = 8
  QsciLexerVHDLStandardOperator* = 9
  QsciLexerVHDLAttribute* = 10
  QsciLexerVHDLStandardFunction* = 11
  QsciLexerVHDLStandardPackage* = 12
  QsciLexerVHDLStandardType* = 13
  QsciLexerVHDLKeywordSet7* = 14
  QsciLexerVHDLCommentBlock* = 15



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


func init*(T: type QsciLexerVHDL, h: ptr cQsciLexerVHDL): QsciLexerVHDL =
  T(h: h)
proc create*(T: type QsciLexerVHDL, ): QsciLexerVHDL =

  QsciLexerVHDL.init(fcQsciLexerVHDL_new())
proc create*(T: type QsciLexerVHDL, parent: gen_qobject.QObject): QsciLexerVHDL =

  QsciLexerVHDL.init(fcQsciLexerVHDL_new2(parent.h))
proc metaObject*(self: QsciLexerVHDL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVHDL_metaObject(self.h))

proc metacast*(self: QsciLexerVHDL, param1: cstring): pointer =

  fcQsciLexerVHDL_metacast(self.h, param1)

proc metacall*(self: QsciLexerVHDL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerVHDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerVHDL, s: cstring): string =

  let v_ms = fcQsciLexerVHDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerVHDL, ): cstring =

  (fcQsciLexerVHDL_language(self.h))

proc lexer*(self: QsciLexerVHDL, ): cstring =

  (fcQsciLexerVHDL_lexer(self.h))

proc braceStyle*(self: QsciLexerVHDL, ): cint =

  fcQsciLexerVHDL_braceStyle(self.h)

proc defaultColor*(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerVHDL_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerVHDL, style: cint): bool =

  fcQsciLexerVHDL_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerVHDL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerVHDL_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerVHDL_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerVHDL, set: cint): cstring =

  (fcQsciLexerVHDL_keywords(self.h, set))

proc description*(self: QsciLexerVHDL, style: cint): string =

  let v_ms = fcQsciLexerVHDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerVHDL, ): void =

  fcQsciLexerVHDL_refreshProperties(self.h)

proc foldComments*(self: QsciLexerVHDL, ): bool =

  fcQsciLexerVHDL_foldComments(self.h)

proc foldCompact*(self: QsciLexerVHDL, ): bool =

  fcQsciLexerVHDL_foldCompact(self.h)

proc foldAtElse*(self: QsciLexerVHDL, ): bool =

  fcQsciLexerVHDL_foldAtElse(self.h)

proc foldAtBegin*(self: QsciLexerVHDL, ): bool =

  fcQsciLexerVHDL_foldAtBegin(self.h)

proc foldAtParenthesis*(self: QsciLexerVHDL, ): bool =

  fcQsciLexerVHDL_foldAtParenthesis(self.h)

proc setFoldComments*(self: QsciLexerVHDL, fold: bool): void =

  fcQsciLexerVHDL_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerVHDL, fold: bool): void =

  fcQsciLexerVHDL_setFoldCompact(self.h, fold)

proc setFoldAtElse*(self: QsciLexerVHDL, fold: bool): void =

  fcQsciLexerVHDL_setFoldAtElse(self.h, fold)

proc setFoldAtBegin*(self: QsciLexerVHDL, fold: bool): void =

  fcQsciLexerVHDL_setFoldAtBegin(self.h, fold)

proc setFoldAtParenthesis*(self: QsciLexerVHDL, fold: bool): void =

  fcQsciLexerVHDL_setFoldAtParenthesis(self.h, fold)

proc tr2*(_: type QsciLexerVHDL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerVHDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerVHDL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerVHDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerVHDL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerVHDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerVHDLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_metacall(self: ptr cQsciLexerVHDL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_metacall ".} =
  type Cb = proc(super: QsciLexerVHDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerVHDL(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerVHDL, fold: bool): void =


  fQsciLexerVHDL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerVHDLsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldComments(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldComments ".} =
  type Cb = proc(super: QsciLexerVHDLsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerVHDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerVHDL, fold: bool): void =


  fQsciLexerVHDL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerVHDLsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldCompact(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerVHDLsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerVHDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldAtElse(self: QsciLexerVHDL, fold: bool): void =


  fQsciLexerVHDL_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerVHDLsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtElse(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerVHDLsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerVHDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldAtBegin(self: QsciLexerVHDL, fold: bool): void =


  fQsciLexerVHDL_virtualbase_setFoldAtBegin(self.h, fold)

type QsciLexerVHDLsetFoldAtBeginBase* = proc(fold: bool): void
proc onsetFoldAtBegin*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFoldAtBeginBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFoldAtBeginBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtBegin(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtBegin ".} =
  type Cb = proc(super: QsciLexerVHDLsetFoldAtBeginBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtBegin(QsciLexerVHDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldAtParenthesis(self: QsciLexerVHDL, fold: bool): void =


  fQsciLexerVHDL_virtualbase_setFoldAtParenthesis(self.h, fold)

type QsciLexerVHDLsetFoldAtParenthesisBase* = proc(fold: bool): void
proc onsetFoldAtParenthesis*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFoldAtParenthesisBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFoldAtParenthesisBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFoldAtParenthesis(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFoldAtParenthesis(self: ptr cQsciLexerVHDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFoldAtParenthesis ".} =
  type Cb = proc(super: QsciLexerVHDLsetFoldAtParenthesisBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtParenthesis(QsciLexerVHDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerVHDLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerVHDL, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_language(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerVHDL, ): cstring =


  (fQsciLexerVHDL_virtualbase_lexer(self.h))

type QsciLexerVHDLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_lexer(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_lexer ".} =
  type Cb = proc(super: QsciLexerVHDLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_lexerId(self.h)

type QsciLexerVHDLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_lexerId(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_lexerId ".} =
  type Cb = proc(super: QsciLexerVHDLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerVHDL, ): cstring =


  (fQsciLexerVHDL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerVHDLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_autoCompletionFillups(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerVHDLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerVHDL, ): seq[string] =


  var v_ma = fQsciLexerVHDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerVHDLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_autoCompletionWordSeparators(self: ptr cQsciLexerVHDL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerVHDL_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerVHDLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerVHDL, style: ptr cint): cstring =


  (fQsciLexerVHDL_virtualbase_blockEnd(self.h, style))

type QsciLexerVHDLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockEnd(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockEnd ".} =
  type Cb = proc(super: QsciLexerVHDLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_blockLookback(self.h)

type QsciLexerVHDLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockLookback(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockLookback ".} =
  type Cb = proc(super: QsciLexerVHDLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerVHDL, style: ptr cint): cstring =


  (fQsciLexerVHDL_virtualbase_blockStart(self.h, style))

type QsciLexerVHDLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockStart(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockStart ".} =
  type Cb = proc(super: QsciLexerVHDLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerVHDL, style: ptr cint): cstring =


  (fQsciLexerVHDL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerVHDLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_blockStartKeyword(self: ptr cQsciLexerVHDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerVHDLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_braceStyle(self.h)

type QsciLexerVHDLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_braceStyle(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_braceStyle ".} =
  type Cb = proc(super: QsciLexerVHDLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerVHDL, ): bool =


  fQsciLexerVHDL_virtualbase_caseSensitive(self.h)

type QsciLexerVHDLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_caseSensitive(self: ptr cQsciLexerVHDL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_caseSensitive ".} =
  type Cb = proc(super: QsciLexerVHDLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_color(self.h, style))

type QsciLexerVHDLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_color(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_color ".} =
  type Cb = proc(super: QsciLexerVHDLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerVHDL, style: cint): bool =


  fQsciLexerVHDL_virtualbase_eolFill(self.h, style)

type QsciLexerVHDLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_eolFill(self: ptr cQsciLexerVHDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_eolFill ".} =
  type Cb = proc(super: QsciLexerVHDLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerVHDL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerVHDL_virtualbase_font(self.h, style))

type QsciLexerVHDLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_font(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_font ".} =
  type Cb = proc(super: QsciLexerVHDLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_indentationGuideView(self.h)

type QsciLexerVHDLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_indentationGuideView(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerVHDLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerVHDL, set: cint): cstring =


  (fQsciLexerVHDL_virtualbase_keywords(self.h, set))

type QsciLexerVHDLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_keywords(self: ptr cQsciLexerVHDL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_keywords ".} =
  type Cb = proc(super: QsciLexerVHDLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerVHDL(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_defaultStyle(self.h)

type QsciLexerVHDLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultStyle(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultStyle ".} =
  type Cb = proc(super: QsciLexerVHDLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerVHDLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerVHDL, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_description(self: ptr cQsciLexerVHDL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerVHDL_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_paper(self.h, style))

type QsciLexerVHDLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_paper(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_paper ".} =
  type Cb = proc(super: QsciLexerVHDLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerVHDLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultColorWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerVHDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerVHDL, style: cint): bool =


  fQsciLexerVHDL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerVHDLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultEolFill(self: ptr cQsciLexerVHDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerVHDLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerVHDL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerVHDL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerVHDLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultFontWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerVHDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerVHDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerVHDL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerVHDLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_defaultPaperWithStyle(self: ptr cQsciLexerVHDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerVHDL_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerVHDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerVHDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerVHDL, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerVHDL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerVHDLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setEditor(self: ptr cQsciLexerVHDL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setEditor ".} =
  type Cb = proc(super: QsciLexerVHDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerVHDL(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerVHDL, ): void =


  fQsciLexerVHDL_virtualbase_refreshProperties(self.h)

type QsciLexerVHDLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_refreshProperties(self: ptr cQsciLexerVHDL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_refreshProperties ".} =
  type Cb = proc(super: QsciLexerVHDLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerVHDL(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerVHDL, ): cint =


  fQsciLexerVHDL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerVHDLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_styleBitsNeeded(self: ptr cQsciLexerVHDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerVHDL_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerVHDLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerVHDL, ): cstring =


  (fQsciLexerVHDL_virtualbase_wordCharacters(self.h))

type QsciLexerVHDLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_wordCharacters(self: ptr cQsciLexerVHDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerVHDL_wordCharacters ".} =
  type Cb = proc(super: QsciLexerVHDLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerVHDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerVHDL, autoindentstyle: cint): void =


  fQsciLexerVHDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerVHDLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setAutoIndentStyle(self: ptr cQsciLexerVHDL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerVHDLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerVHDL(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerVHDL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerVHDL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerVHDLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setColor(self: ptr cQsciLexerVHDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setColor ".} =
  type Cb = proc(super: QsciLexerVHDLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerVHDL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerVHDL, eoffill: bool, style: cint): void =


  fQsciLexerVHDL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerVHDLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setEolFill(self: ptr cQsciLexerVHDL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setEolFill ".} =
  type Cb = proc(super: QsciLexerVHDLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerVHDL(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerVHDL, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerVHDL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerVHDLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setFont(self: ptr cQsciLexerVHDL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setFont ".} =
  type Cb = proc(super: QsciLexerVHDLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerVHDL(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerVHDL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerVHDL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerVHDLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_setPaper(self: ptr cQsciLexerVHDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_setPaper ".} =
  type Cb = proc(super: QsciLexerVHDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerVHDL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerVHDL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerVHDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVHDLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_readProperties(self: ptr cQsciLexerVHDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_readProperties ".} =
  type Cb = proc(super: QsciLexerVHDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerVHDL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerVHDL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerVHDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerVHDLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_writeProperties(self: ptr cQsciLexerVHDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_writeProperties ".} =
  type Cb = proc(super: QsciLexerVHDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerVHDL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerVHDL, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerVHDL_virtualbase_event(self.h, event.h)

type QsciLexerVHDLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_event(self: ptr cQsciLexerVHDL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_event ".} =
  type Cb = proc(super: QsciLexerVHDLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerVHDL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerVHDL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerVHDL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerVHDLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_eventFilter(self: ptr cQsciLexerVHDL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerVHDL_eventFilter ".} =
  type Cb = proc(super: QsciLexerVHDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerVHDL(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerVHDL, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerVHDL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerVHDLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_timerEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_timerEvent ".} =
  type Cb = proc(super: QsciLexerVHDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerVHDL(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerVHDL, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerVHDL_virtualbase_childEvent(self.h, event.h)

type QsciLexerVHDLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_childEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_childEvent ".} =
  type Cb = proc(super: QsciLexerVHDLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerVHDL(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerVHDL, event: gen_qcoreevent.QEvent): void =


  fQsciLexerVHDL_virtualbase_customEvent(self.h, event.h)

type QsciLexerVHDLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_customEvent(self: ptr cQsciLexerVHDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_customEvent ".} =
  type Cb = proc(super: QsciLexerVHDLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerVHDL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerVHDL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerVHDL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerVHDLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_connectNotify(self: ptr cQsciLexerVHDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_connectNotify ".} =
  type Cb = proc(super: QsciLexerVHDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerVHDL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerVHDL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerVHDL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerVHDLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerVHDL, slot: proc(super: QsciLexerVHDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerVHDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerVHDL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerVHDL_disconnectNotify(self: ptr cQsciLexerVHDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerVHDL_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerVHDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerVHDL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerVHDL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerVHDL_staticMetaObject())
proc delete*(self: QsciLexerVHDL) =
  fcQsciLexerVHDL_delete(self.h)
