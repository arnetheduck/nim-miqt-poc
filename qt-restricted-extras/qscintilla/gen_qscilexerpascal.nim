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
{.compile("gen_qscilexerpascal.cpp", cflags).}


type QsciLexerPascalEnum* = cint
const
  QsciLexerPascalDefault* = 0
  QsciLexerPascalIdentifier* = 1
  QsciLexerPascalComment* = 2
  QsciLexerPascalCommentParenthesis* = 3
  QsciLexerPascalCommentLine* = 4
  QsciLexerPascalPreProcessor* = 5
  QsciLexerPascalPreProcessorParenthesis* = 6
  QsciLexerPascalNumber* = 7
  QsciLexerPascalHexNumber* = 8
  QsciLexerPascalKeyword* = 9
  QsciLexerPascalSingleQuotedString* = 10
  QsciLexerPascalUnclosedString* = 11
  QsciLexerPascalCharacter* = 12
  QsciLexerPascalOperator* = 13
  QsciLexerPascalAsm* = 14



import gen_qscilexerpascal_types
export gen_qscilexerpascal_types

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

type cQsciLexerPascal*{.exportc: "QsciLexerPascal", incompleteStruct.} = object

proc fcQsciLexerPascal_new(): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new".}
proc fcQsciLexerPascal_new2(parent: pointer): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new2".}
proc fcQsciLexerPascal_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPascal_metaObject".}
proc fcQsciLexerPascal_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPascal_metacast".}
proc fcQsciLexerPascal_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPascal_metacall".}
proc fcQsciLexerPascal_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr".}
proc fcQsciLexerPascal_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf8".}
proc fcQsciLexerPascal_language(self: pointer, ): cstring {.importc: "QsciLexerPascal_language".}
proc fcQsciLexerPascal_lexer(self: pointer, ): cstring {.importc: "QsciLexerPascal_lexer".}
proc fcQsciLexerPascal_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPascal_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockEnd".}
proc fcQsciLexerPascal_blockStart(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStart".}
proc fcQsciLexerPascal_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStartKeyword".}
proc fcQsciLexerPascal_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPascal_braceStyle".}
proc fcQsciLexerPascal_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultColor".}
proc fcQsciLexerPascal_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPascal_defaultEolFill".}
proc fcQsciLexerPascal_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultFont".}
proc fcQsciLexerPascal_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultPaper".}
proc fcQsciLexerPascal_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPascal_keywords".}
proc fcQsciLexerPascal_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPascal_description".}
proc fcQsciLexerPascal_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPascal_refreshProperties".}
proc fcQsciLexerPascal_foldComments(self: pointer, ): bool {.importc: "QsciLexerPascal_foldComments".}
proc fcQsciLexerPascal_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPascal_foldCompact".}
proc fcQsciLexerPascal_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerPascal_foldPreprocessor".}
proc fcQsciLexerPascal_setSmartHighlighting(self: pointer, enabled: bool): void {.importc: "QsciLexerPascal_setSmartHighlighting".}
proc fcQsciLexerPascal_smartHighlighting(self: pointer, ): bool {.importc: "QsciLexerPascal_smartHighlighting".}
proc fcQsciLexerPascal_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldComments".}
proc fcQsciLexerPascal_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldCompact".}
proc fcQsciLexerPascal_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldPreprocessor".}
proc fcQsciLexerPascal_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr2".}
proc fcQsciLexerPascal_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_tr3".}
proc fcQsciLexerPascal_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf82".}
proc fcQsciLexerPascal_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_trUtf83".}
proc fcQsciLexerPascal_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockEnd1".}
proc fcQsciLexerPascal_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStart1".}
proc fcQsciLexerPascal_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStartKeyword1".}
proc fQsciLexerPascal_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPascal_virtualbase_metacall".}
proc fcQsciLexerPascal_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_metacall".}
proc fQsciLexerPascal_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldComments".}
proc fcQsciLexerPascal_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldComments".}
proc fQsciLexerPascal_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldCompact".}
proc fcQsciLexerPascal_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldCompact".}
proc fQsciLexerPascal_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerPascal_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerPascal_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFoldPreprocessor".}
proc fcQsciLexerPascal_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_language".}
proc fQsciLexerPascal_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_lexer".}
proc fcQsciLexerPascal_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_lexer".}
proc fQsciLexerPascal_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_lexerId".}
proc fcQsciLexerPascal_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_lexerId".}
proc fQsciLexerPascal_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPascal_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_autoCompletionFillups".}
proc fQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPascal_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPascal_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockEnd".}
proc fcQsciLexerPascal_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockEnd".}
proc fQsciLexerPascal_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_blockLookback".}
proc fcQsciLexerPascal_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockLookback".}
proc fQsciLexerPascal_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockStart".}
proc fcQsciLexerPascal_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockStart".}
proc fQsciLexerPascal_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPascal_virtualbase_blockStartKeyword".}
proc fcQsciLexerPascal_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_blockStartKeyword".}
proc fQsciLexerPascal_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_braceStyle".}
proc fcQsciLexerPascal_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_braceStyle".}
proc fQsciLexerPascal_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPascal_virtualbase_caseSensitive".}
proc fcQsciLexerPascal_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_caseSensitive".}
proc fQsciLexerPascal_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_color".}
proc fcQsciLexerPascal_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_color".}
proc fQsciLexerPascal_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPascal_virtualbase_eolFill".}
proc fcQsciLexerPascal_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_eolFill".}
proc fQsciLexerPascal_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_font".}
proc fcQsciLexerPascal_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_font".}
proc fQsciLexerPascal_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_indentationGuideView".}
proc fcQsciLexerPascal_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_indentationGuideView".}
proc fQsciLexerPascal_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPascal_virtualbase_keywords".}
proc fcQsciLexerPascal_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_keywords".}
proc fQsciLexerPascal_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_defaultStyle".}
proc fcQsciLexerPascal_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultStyle".}
proc fcQsciLexerPascal_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_description".}
proc fQsciLexerPascal_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_paper".}
proc fcQsciLexerPascal_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_paper".}
proc fQsciLexerPascal_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPascal_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPascal_virtualbase_defaultEolFill".}
proc fcQsciLexerPascal_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultEolFill".}
proc fQsciLexerPascal_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPascal_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPascal_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPascal_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPascal_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPascal_virtualbase_setEditor".}
proc fcQsciLexerPascal_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setEditor".}
proc fQsciLexerPascal_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPascal_virtualbase_refreshProperties".}
proc fcQsciLexerPascal_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_refreshProperties".}
proc fQsciLexerPascal_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPascal_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPascal_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_styleBitsNeeded".}
proc fQsciLexerPascal_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPascal_virtualbase_wordCharacters".}
proc fcQsciLexerPascal_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_wordCharacters".}
proc fQsciLexerPascal_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPascal_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPascal_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPascal_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setColor".}
proc fcQsciLexerPascal_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setColor".}
proc fQsciLexerPascal_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setEolFill".}
proc fcQsciLexerPascal_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setEolFill".}
proc fQsciLexerPascal_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setFont".}
proc fcQsciLexerPascal_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setFont".}
proc fQsciLexerPascal_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPascal_virtualbase_setPaper".}
proc fcQsciLexerPascal_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_setPaper".}
proc fQsciLexerPascal_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPascal_virtualbase_readProperties".}
proc fcQsciLexerPascal_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_readProperties".}
proc fQsciLexerPascal_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPascal_virtualbase_writeProperties".}
proc fcQsciLexerPascal_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_writeProperties".}
proc fQsciLexerPascal_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPascal_virtualbase_event".}
proc fcQsciLexerPascal_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_event".}
proc fQsciLexerPascal_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPascal_virtualbase_eventFilter".}
proc fcQsciLexerPascal_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_eventFilter".}
proc fQsciLexerPascal_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_timerEvent".}
proc fcQsciLexerPascal_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_timerEvent".}
proc fQsciLexerPascal_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_childEvent".}
proc fcQsciLexerPascal_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_childEvent".}
proc fQsciLexerPascal_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPascal_virtualbase_customEvent".}
proc fcQsciLexerPascal_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_customEvent".}
proc fQsciLexerPascal_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPascal_virtualbase_connectNotify".}
proc fcQsciLexerPascal_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_connectNotify".}
proc fQsciLexerPascal_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPascal_virtualbase_disconnectNotify".}
proc fcQsciLexerPascal_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPascal_override_virtual_disconnectNotify".}
proc fcQsciLexerPascal_staticMetaObject(): pointer {.importc: "QsciLexerPascal_staticMetaObject".}
proc fcQsciLexerPascal_delete(self: pointer) {.importc: "QsciLexerPascal_delete".}


func init*(T: type QsciLexerPascal, h: ptr cQsciLexerPascal): QsciLexerPascal =
  T(h: h)
proc create*(T: type QsciLexerPascal, ): QsciLexerPascal =

  QsciLexerPascal.init(fcQsciLexerPascal_new())
proc create*(T: type QsciLexerPascal, parent: gen_qobject.QObject): QsciLexerPascal =

  QsciLexerPascal.init(fcQsciLexerPascal_new2(parent.h))
proc metaObject*(self: QsciLexerPascal, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPascal_metaObject(self.h))

proc metacast*(self: QsciLexerPascal, param1: cstring): pointer =

  fcQsciLexerPascal_metacast(self.h, param1)

proc metacall*(self: QsciLexerPascal, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPascal_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPascal, s: cstring): string =

  let v_ms = fcQsciLexerPascal_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerPascal, s: cstring): string =

  let v_ms = fcQsciLexerPascal_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_language(self.h))

proc lexer*(self: QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerPascal, ): seq[string] =

  var v_ma = fcQsciLexerPascal_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockEnd(self.h))

proc blockStart*(self: QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockStart(self.h))

proc blockStartKeyword*(self: QsciLexerPascal, ): cstring =

  (fcQsciLexerPascal_blockStartKeyword(self.h))

proc braceStyle*(self: QsciLexerPascal, ): cint =

  fcQsciLexerPascal_braceStyle(self.h)

proc defaultColor*(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPascal_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerPascal, style: cint): bool =

  fcQsciLexerPascal_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerPascal, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPascal_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPascal_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerPascal, set: cint): cstring =

  (fcQsciLexerPascal_keywords(self.h, set))

proc description*(self: QsciLexerPascal, style: cint): string =

  let v_ms = fcQsciLexerPascal_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPascal, ): void =

  fcQsciLexerPascal_refreshProperties(self.h)

proc foldComments*(self: QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldComments(self.h)

proc foldCompact*(self: QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldCompact(self.h)

proc foldPreprocessor*(self: QsciLexerPascal, ): bool =

  fcQsciLexerPascal_foldPreprocessor(self.h)

proc setSmartHighlighting*(self: QsciLexerPascal, enabled: bool): void =

  fcQsciLexerPascal_setSmartHighlighting(self.h, enabled)

proc smartHighlighting*(self: QsciLexerPascal, ): bool =

  fcQsciLexerPascal_smartHighlighting(self.h)

proc setFoldComments*(self: QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: QsciLexerPascal, fold: bool): void =

  fcQsciLexerPascal_setFoldPreprocessor(self.h, fold)

proc tr2*(_: type QsciLexerPascal, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPascal_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPascal, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPascal_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerPascal, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPascal_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerPascal, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPascal_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockStart1(self.h, style))

proc blockStartKeyword1*(self: QsciLexerPascal, style: ptr cint): cstring =

  (fcQsciLexerPascal_blockStartKeyword1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerPascal, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPascal_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPascalmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_metacall(self: ptr cQsciLexerPascal, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_metacall ".} =
  type Cb = proc(super: QsciLexerPascalmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPascal(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerPascal, fold: bool): void =


  fQsciLexerPascal_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPascalsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldComments(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldComments ".} =
  type Cb = proc(super: QsciLexerPascalsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerPascal(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerPascal, fold: bool): void =


  fQsciLexerPascal_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPascalsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldCompact(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPascalsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerPascal(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerPascal, fold: bool): void =


  fQsciLexerPascal_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerPascalsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFoldPreprocessor(self: ptr cQsciLexerPascal, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerPascalsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerPascal(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPascallanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPascal, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_language(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPascal, ): cstring =


  (fQsciLexerPascal_virtualbase_lexer(self.h))

type QsciLexerPascallexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascallexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascallexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_lexer(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_lexer ".} =
  type Cb = proc(super: QsciLexerPascallexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_lexerId(self.h)

type QsciLexerPascallexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascallexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascallexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_lexerId(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_lexerId ".} =
  type Cb = proc(super: QsciLexerPascallexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPascal, ): cstring =


  (fQsciLexerPascal_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPascalautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_autoCompletionFillups(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPascalautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPascal, ): seq[string] =


  var v_ma = fQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPascalautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_autoCompletionWordSeparators(self: ptr cQsciLexerPascal, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPascal_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPascalautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPascal, style: ptr cint): cstring =


  (fQsciLexerPascal_virtualbase_blockEnd(self.h, style))

type QsciLexerPascalblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockEnd(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockEnd ".} =
  type Cb = proc(super: QsciLexerPascalblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_blockLookback(self.h)

type QsciLexerPascalblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockLookback(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_blockLookback ".} =
  type Cb = proc(super: QsciLexerPascalblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPascal, style: ptr cint): cstring =


  (fQsciLexerPascal_virtualbase_blockStart(self.h, style))

type QsciLexerPascalblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockStart(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockStart ".} =
  type Cb = proc(super: QsciLexerPascalblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPascal, style: ptr cint): cstring =


  (fQsciLexerPascal_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPascalblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_blockStartKeyword(self: ptr cQsciLexerPascal, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPascalblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_braceStyle(self.h)

type QsciLexerPascalbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_braceStyle(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_braceStyle ".} =
  type Cb = proc(super: QsciLexerPascalbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPascal, ): bool =


  fQsciLexerPascal_virtualbase_caseSensitive(self.h)

type QsciLexerPascalcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_caseSensitive(self: ptr cQsciLexerPascal, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPascalcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_color(self.h, style))

type QsciLexerPascalcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_color(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_color ".} =
  type Cb = proc(super: QsciLexerPascalcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPascal, style: cint): bool =


  fQsciLexerPascal_virtualbase_eolFill(self.h, style)

type QsciLexerPascaleolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaleolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaleolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_eolFill(self: ptr cQsciLexerPascal, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_eolFill ".} =
  type Cb = proc(super: QsciLexerPascaleolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPascal, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPascal_virtualbase_font(self.h, style))

type QsciLexerPascalfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_font(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_font ".} =
  type Cb = proc(super: QsciLexerPascalfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_indentationGuideView(self.h)

type QsciLexerPascalindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_indentationGuideView(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPascalindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerPascal, set: cint): cstring =


  (fQsciLexerPascal_virtualbase_keywords(self.h, set))

type QsciLexerPascalkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_keywords(self: ptr cQsciLexerPascal, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_keywords ".} =
  type Cb = proc(super: QsciLexerPascalkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPascal(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_defaultStyle(self.h)

type QsciLexerPascaldefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultStyle(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPascaldefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPascaldescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPascal, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_description(self: ptr cQsciLexerPascal, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPascal_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_paper(self.h, style))

type QsciLexerPascalpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_paper(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_paper ".} =
  type Cb = proc(super: QsciLexerPascalpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPascaldefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultColorWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPascaldefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPascal, style: cint): bool =


  fQsciLexerPascal_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPascaldefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultEolFill(self: ptr cQsciLexerPascal, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPascaldefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPascal, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPascal_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPascaldefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultFontWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPascaldefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPascal, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPascal_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPascaldefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_defaultPaperWithStyle(self: ptr cQsciLexerPascal, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPascal_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPascaldefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPascal(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPascal, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPascal_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPascalsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setEditor(self: ptr cQsciLexerPascal, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setEditor ".} =
  type Cb = proc(super: QsciLexerPascalsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPascal(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPascal, ): void =


  fQsciLexerPascal_virtualbase_refreshProperties(self.h)

type QsciLexerPascalrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_refreshProperties(self: ptr cQsciLexerPascal, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPascal_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPascalrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPascal(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPascal, ): cint =


  fQsciLexerPascal_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPascalstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_styleBitsNeeded(self: ptr cQsciLexerPascal, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPascal_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPascalstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPascal, ): cstring =


  (fQsciLexerPascal_virtualbase_wordCharacters(self.h))

type QsciLexerPascalwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_wordCharacters(self: ptr cQsciLexerPascal, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPascal_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPascalwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPascal(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPascal, autoindentstyle: cint): void =


  fQsciLexerPascal_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPascalsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setAutoIndentStyle(self: ptr cQsciLexerPascal, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPascalsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPascal(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPascal, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPascal_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPascalsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setColor(self: ptr cQsciLexerPascal, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setColor ".} =
  type Cb = proc(super: QsciLexerPascalsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPascal(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPascal, eoffill: bool, style: cint): void =


  fQsciLexerPascal_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPascalsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setEolFill(self: ptr cQsciLexerPascal, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setEolFill ".} =
  type Cb = proc(super: QsciLexerPascalsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPascal(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPascal, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPascal_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPascalsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setFont(self: ptr cQsciLexerPascal, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setFont ".} =
  type Cb = proc(super: QsciLexerPascalsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPascal(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPascal, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPascal_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPascalsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_setPaper(self: ptr cQsciLexerPascal, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPascal_setPaper ".} =
  type Cb = proc(super: QsciLexerPascalsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPascal(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPascal, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPascal_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPascalreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_readProperties(self: ptr cQsciLexerPascal, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_readProperties ".} =
  type Cb = proc(super: QsciLexerPascalreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPascal(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPascal, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPascal_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPascalwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_writeProperties(self: ptr cQsciLexerPascal, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_writeProperties ".} =
  type Cb = proc(super: QsciLexerPascalwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPascal(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPascal, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPascal_virtualbase_event(self.h, event.h)

type QsciLexerPascaleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_event(self: ptr cQsciLexerPascal, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_event ".} =
  type Cb = proc(super: QsciLexerPascaleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPascal(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPascal, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPascal_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPascaleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_eventFilter(self: ptr cQsciLexerPascal, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPascal_eventFilter ".} =
  type Cb = proc(super: QsciLexerPascaleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPascal(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPascal, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPascal_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPascaltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_timerEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_timerEvent ".} =
  type Cb = proc(super: QsciLexerPascaltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPascal(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPascal, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPascal_virtualbase_childEvent(self.h, event.h)

type QsciLexerPascalchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_childEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_childEvent ".} =
  type Cb = proc(super: QsciLexerPascalchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPascal(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPascal, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPascal_virtualbase_customEvent(self.h, event.h)

type QsciLexerPascalcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_customEvent(self: ptr cQsciLexerPascal, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_customEvent ".} =
  type Cb = proc(super: QsciLexerPascalcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPascal(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPascal, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPascal_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPascalconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascalconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascalconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_connectNotify(self: ptr cQsciLexerPascal, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_connectNotify ".} =
  type Cb = proc(super: QsciLexerPascalconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPascal(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPascal, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPascal_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPascaldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPascal, slot: proc(super: QsciLexerPascaldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPascaldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPascal_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPascal_disconnectNotify(self: ptr cQsciLexerPascal, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPascal_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPascaldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPascal(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerPascal): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPascal_staticMetaObject())
proc delete*(self: QsciLexerPascal) =
  fcQsciLexerPascal_delete(self.h)
