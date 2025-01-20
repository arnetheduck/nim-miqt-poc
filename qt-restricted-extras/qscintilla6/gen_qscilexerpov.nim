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
{.compile("gen_qscilexerpov.cpp", cflags).}


type QsciLexerPOVEnum* = cint
const
  QsciLexerPOVDefault* = 0
  QsciLexerPOVComment* = 1
  QsciLexerPOVCommentLine* = 2
  QsciLexerPOVNumber* = 3
  QsciLexerPOVOperator* = 4
  QsciLexerPOVIdentifier* = 5
  QsciLexerPOVString* = 6
  QsciLexerPOVUnclosedString* = 7
  QsciLexerPOVDirective* = 8
  QsciLexerPOVBadDirective* = 9
  QsciLexerPOVObjectsCSGAppearance* = 10
  QsciLexerPOVTypesModifiersItems* = 11
  QsciLexerPOVPredefinedIdentifiers* = 12
  QsciLexerPOVPredefinedFunctions* = 13
  QsciLexerPOVKeywordSet6* = 14
  QsciLexerPOVKeywordSet7* = 15
  QsciLexerPOVKeywordSet8* = 16



import gen_qscilexerpov_types
export gen_qscilexerpov_types

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

type cQsciLexerPOV*{.exportc: "QsciLexerPOV", incompleteStruct.} = object

proc fcQsciLexerPOV_new(): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new".}
proc fcQsciLexerPOV_new2(parent: pointer): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new2".}
proc fcQsciLexerPOV_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPOV_metaObject".}
proc fcQsciLexerPOV_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPOV_metacast".}
proc fcQsciLexerPOV_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPOV_metacall".}
proc fcQsciLexerPOV_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr".}
proc fcQsciLexerPOV_language(self: pointer, ): cstring {.importc: "QsciLexerPOV_language".}
proc fcQsciLexerPOV_lexer(self: pointer, ): cstring {.importc: "QsciLexerPOV_lexer".}
proc fcQsciLexerPOV_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPOV_braceStyle".}
proc fcQsciLexerPOV_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPOV_wordCharacters".}
proc fcQsciLexerPOV_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultColor".}
proc fcQsciLexerPOV_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPOV_defaultEolFill".}
proc fcQsciLexerPOV_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultFont".}
proc fcQsciLexerPOV_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultPaper".}
proc fcQsciLexerPOV_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPOV_keywords".}
proc fcQsciLexerPOV_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPOV_description".}
proc fcQsciLexerPOV_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPOV_refreshProperties".}
proc fcQsciLexerPOV_foldComments(self: pointer, ): bool {.importc: "QsciLexerPOV_foldComments".}
proc fcQsciLexerPOV_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPOV_foldCompact".}
proc fcQsciLexerPOV_foldDirectives(self: pointer, ): bool {.importc: "QsciLexerPOV_foldDirectives".}
proc fcQsciLexerPOV_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldComments".}
proc fcQsciLexerPOV_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldCompact".}
proc fcQsciLexerPOV_setFoldDirectives(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldDirectives".}
proc fcQsciLexerPOV_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr2".}
proc fcQsciLexerPOV_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPOV_tr3".}
proc fQsciLexerPOV_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPOV_virtualbase_metaObject".}
proc fcQsciLexerPOV_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metaObject".}
proc fQsciLexerPOV_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPOV_virtualbase_metacast".}
proc fcQsciLexerPOV_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metacast".}
proc fQsciLexerPOV_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPOV_virtualbase_metacall".}
proc fcQsciLexerPOV_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_metacall".}
proc fQsciLexerPOV_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldComments".}
proc fcQsciLexerPOV_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldComments".}
proc fQsciLexerPOV_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldCompact".}
proc fcQsciLexerPOV_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldCompact".}
proc fQsciLexerPOV_virtualbase_setFoldDirectives(self: pointer, fold: bool): void{.importc: "QsciLexerPOV_virtualbase_setFoldDirectives".}
proc fcQsciLexerPOV_override_virtual_setFoldDirectives(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFoldDirectives".}
proc fcQsciLexerPOV_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_language".}
proc fQsciLexerPOV_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_lexer".}
proc fcQsciLexerPOV_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_lexer".}
proc fQsciLexerPOV_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_lexerId".}
proc fcQsciLexerPOV_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_lexerId".}
proc fQsciLexerPOV_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPOV_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_autoCompletionFillups".}
proc fQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPOV_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPOV_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPOV_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockEnd".}
proc fcQsciLexerPOV_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockEnd".}
proc fQsciLexerPOV_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_blockLookback".}
proc fcQsciLexerPOV_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockLookback".}
proc fQsciLexerPOV_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockStart".}
proc fcQsciLexerPOV_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockStart".}
proc fQsciLexerPOV_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPOV_virtualbase_blockStartKeyword".}
proc fcQsciLexerPOV_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_blockStartKeyword".}
proc fQsciLexerPOV_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_braceStyle".}
proc fcQsciLexerPOV_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_braceStyle".}
proc fQsciLexerPOV_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPOV_virtualbase_caseSensitive".}
proc fcQsciLexerPOV_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_caseSensitive".}
proc fQsciLexerPOV_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_color".}
proc fcQsciLexerPOV_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_color".}
proc fQsciLexerPOV_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPOV_virtualbase_eolFill".}
proc fcQsciLexerPOV_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_eolFill".}
proc fQsciLexerPOV_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_font".}
proc fcQsciLexerPOV_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_font".}
proc fQsciLexerPOV_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_indentationGuideView".}
proc fcQsciLexerPOV_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_indentationGuideView".}
proc fQsciLexerPOV_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPOV_virtualbase_keywords".}
proc fcQsciLexerPOV_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_keywords".}
proc fQsciLexerPOV_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_defaultStyle".}
proc fcQsciLexerPOV_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultStyle".}
proc fcQsciLexerPOV_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_description".}
proc fQsciLexerPOV_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_paper".}
proc fcQsciLexerPOV_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_paper".}
proc fQsciLexerPOV_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPOV_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPOV_virtualbase_defaultEolFill".}
proc fcQsciLexerPOV_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultEolFill".}
proc fQsciLexerPOV_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPOV_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPOV_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPOV_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPOV_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPOV_virtualbase_setEditor".}
proc fcQsciLexerPOV_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setEditor".}
proc fQsciLexerPOV_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPOV_virtualbase_refreshProperties".}
proc fcQsciLexerPOV_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_refreshProperties".}
proc fQsciLexerPOV_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPOV_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPOV_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_styleBitsNeeded".}
proc fQsciLexerPOV_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPOV_virtualbase_wordCharacters".}
proc fcQsciLexerPOV_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_wordCharacters".}
proc fQsciLexerPOV_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPOV_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPOV_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPOV_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setColor".}
proc fcQsciLexerPOV_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setColor".}
proc fQsciLexerPOV_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setEolFill".}
proc fcQsciLexerPOV_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setEolFill".}
proc fQsciLexerPOV_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setFont".}
proc fcQsciLexerPOV_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setFont".}
proc fQsciLexerPOV_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPOV_virtualbase_setPaper".}
proc fcQsciLexerPOV_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_setPaper".}
proc fQsciLexerPOV_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPOV_virtualbase_readProperties".}
proc fcQsciLexerPOV_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_readProperties".}
proc fQsciLexerPOV_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPOV_virtualbase_writeProperties".}
proc fcQsciLexerPOV_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_writeProperties".}
proc fQsciLexerPOV_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPOV_virtualbase_event".}
proc fcQsciLexerPOV_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_event".}
proc fQsciLexerPOV_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPOV_virtualbase_eventFilter".}
proc fcQsciLexerPOV_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_eventFilter".}
proc fQsciLexerPOV_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_timerEvent".}
proc fcQsciLexerPOV_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_timerEvent".}
proc fQsciLexerPOV_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_childEvent".}
proc fcQsciLexerPOV_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_childEvent".}
proc fQsciLexerPOV_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPOV_virtualbase_customEvent".}
proc fcQsciLexerPOV_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_customEvent".}
proc fQsciLexerPOV_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPOV_virtualbase_connectNotify".}
proc fcQsciLexerPOV_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_connectNotify".}
proc fQsciLexerPOV_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPOV_virtualbase_disconnectNotify".}
proc fcQsciLexerPOV_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPOV_override_virtual_disconnectNotify".}
proc fcQsciLexerPOV_staticMetaObject(): pointer {.importc: "QsciLexerPOV_staticMetaObject".}
proc fcQsciLexerPOV_delete(self: pointer) {.importc: "QsciLexerPOV_delete".}


func init*(T: type QsciLexerPOV, h: ptr cQsciLexerPOV): QsciLexerPOV =
  T(h: h)
proc create*(T: type QsciLexerPOV, ): QsciLexerPOV =

  QsciLexerPOV.init(fcQsciLexerPOV_new())
proc create*(T: type QsciLexerPOV, parent: gen_qobject.QObject): QsciLexerPOV =

  QsciLexerPOV.init(fcQsciLexerPOV_new2(parent.h))
proc metaObject*(self: QsciLexerPOV, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPOV_metaObject(self.h))

proc metacast*(self: QsciLexerPOV, param1: cstring): pointer =

  fcQsciLexerPOV_metacast(self.h, param1)

proc metacall*(self: QsciLexerPOV, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPOV_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPOV, s: cstring): string =

  let v_ms = fcQsciLexerPOV_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPOV, ): cstring =

  (fcQsciLexerPOV_language(self.h))

proc lexer*(self: QsciLexerPOV, ): cstring =

  (fcQsciLexerPOV_lexer(self.h))

proc braceStyle*(self: QsciLexerPOV, ): cint =

  fcQsciLexerPOV_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerPOV, ): cstring =

  (fcQsciLexerPOV_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPOV_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerPOV, style: cint): bool =

  fcQsciLexerPOV_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerPOV, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPOV_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPOV_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerPOV, set: cint): cstring =

  (fcQsciLexerPOV_keywords(self.h, set))

proc description*(self: QsciLexerPOV, style: cint): string =

  let v_ms = fcQsciLexerPOV_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPOV, ): void =

  fcQsciLexerPOV_refreshProperties(self.h)

proc foldComments*(self: QsciLexerPOV, ): bool =

  fcQsciLexerPOV_foldComments(self.h)

proc foldCompact*(self: QsciLexerPOV, ): bool =

  fcQsciLexerPOV_foldCompact(self.h)

proc foldDirectives*(self: QsciLexerPOV, ): bool =

  fcQsciLexerPOV_foldDirectives(self.h)

proc setFoldComments*(self: QsciLexerPOV, fold: bool): void =

  fcQsciLexerPOV_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerPOV, fold: bool): void =

  fcQsciLexerPOV_setFoldCompact(self.h, fold)

proc setFoldDirectives*(self: QsciLexerPOV, fold: bool): void =

  fcQsciLexerPOV_setFoldDirectives(self.h, fold)

proc tr2*(_: type QsciLexerPOV, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPOV_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPOV, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPOV_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerPOV, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerPOV_virtualbase_metaObject(self.h))

type QsciLexerPOVmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metaObject(self: ptr cQsciLexerPOV, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_metaObject ".} =
  type Cb = proc(super: QsciLexerPOVmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerPOV, param1: cstring): pointer =


  fQsciLexerPOV_virtualbase_metacast(self.h, param1)

type QsciLexerPOVmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metacast(self: ptr cQsciLexerPOV, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_metacast ".} =
  type Cb = proc(super: QsciLexerPOVmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerPOV(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerPOV, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPOV_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPOVmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_metacall(self: ptr cQsciLexerPOV, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_metacall ".} =
  type Cb = proc(super: QsciLexerPOVmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPOV(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerPOV, fold: bool): void =


  fQsciLexerPOV_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPOVsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldComments(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldComments ".} =
  type Cb = proc(super: QsciLexerPOVsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerPOV(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerPOV, fold: bool): void =


  fQsciLexerPOV_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPOVsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldCompact(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPOVsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerPOV(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldDirectives(self: QsciLexerPOV, fold: bool): void =


  fQsciLexerPOV_virtualbase_setFoldDirectives(self.h, fold)

type QsciLexerPOVsetFoldDirectivesBase* = proc(fold: bool): void
proc onsetFoldDirectives*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetFoldDirectivesBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetFoldDirectivesBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFoldDirectives(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFoldDirectives(self: ptr cQsciLexerPOV, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFoldDirectives ".} =
  type Cb = proc(super: QsciLexerPOVsetFoldDirectivesBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldDirectives(QsciLexerPOV(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPOVlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPOV, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_language(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPOV, ): cstring =


  (fQsciLexerPOV_virtualbase_lexer(self.h))

type QsciLexerPOVlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_lexer(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_lexer ".} =
  type Cb = proc(super: QsciLexerPOVlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_lexerId(self.h)

type QsciLexerPOVlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_lexerId(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_lexerId ".} =
  type Cb = proc(super: QsciLexerPOVlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPOV, ): cstring =


  (fQsciLexerPOV_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPOVautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_autoCompletionFillups(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPOVautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPOV, ): seq[string] =


  var v_ma = fQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPOVautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_autoCompletionWordSeparators(self: ptr cQsciLexerPOV, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPOV_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPOVautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPOV, style: ptr cint): cstring =


  (fQsciLexerPOV_virtualbase_blockEnd(self.h, style))

type QsciLexerPOVblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockEnd(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockEnd ".} =
  type Cb = proc(super: QsciLexerPOVblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_blockLookback(self.h)

type QsciLexerPOVblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockLookback(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_blockLookback ".} =
  type Cb = proc(super: QsciLexerPOVblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPOV, style: ptr cint): cstring =


  (fQsciLexerPOV_virtualbase_blockStart(self.h, style))

type QsciLexerPOVblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockStart(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockStart ".} =
  type Cb = proc(super: QsciLexerPOVblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPOV, style: ptr cint): cstring =


  (fQsciLexerPOV_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPOVblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_blockStartKeyword(self: ptr cQsciLexerPOV, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPOVblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_braceStyle(self.h)

type QsciLexerPOVbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_braceStyle(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_braceStyle ".} =
  type Cb = proc(super: QsciLexerPOVbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPOV, ): bool =


  fQsciLexerPOV_virtualbase_caseSensitive(self.h)

type QsciLexerPOVcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_caseSensitive(self: ptr cQsciLexerPOV, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPOVcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_color(self.h, style))

type QsciLexerPOVcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_color(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_color ".} =
  type Cb = proc(super: QsciLexerPOVcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPOV, style: cint): bool =


  fQsciLexerPOV_virtualbase_eolFill(self.h, style)

type QsciLexerPOVeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_eolFill(self: ptr cQsciLexerPOV, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_eolFill ".} =
  type Cb = proc(super: QsciLexerPOVeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPOV, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPOV_virtualbase_font(self.h, style))

type QsciLexerPOVfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_font(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_font ".} =
  type Cb = proc(super: QsciLexerPOVfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_indentationGuideView(self.h)

type QsciLexerPOVindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_indentationGuideView(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPOVindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerPOV, set: cint): cstring =


  (fQsciLexerPOV_virtualbase_keywords(self.h, set))

type QsciLexerPOVkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_keywords(self: ptr cQsciLexerPOV, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_keywords ".} =
  type Cb = proc(super: QsciLexerPOVkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPOV(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_defaultStyle(self.h)

type QsciLexerPOVdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultStyle(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPOVdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPOVdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPOV, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_description(self: ptr cQsciLexerPOV, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPOV_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_paper(self.h, style))

type QsciLexerPOVpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_paper(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_paper ".} =
  type Cb = proc(super: QsciLexerPOVpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPOVdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultColorWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPOVdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPOV, style: cint): bool =


  fQsciLexerPOV_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPOVdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultEolFill(self: ptr cQsciLexerPOV, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPOVdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPOV, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPOV_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPOVdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultFontWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPOVdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPOV, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPOV_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPOVdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_defaultPaperWithStyle(self: ptr cQsciLexerPOV, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPOV_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPOVdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPOV(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPOV, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPOV_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPOVsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setEditor(self: ptr cQsciLexerPOV, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setEditor ".} =
  type Cb = proc(super: QsciLexerPOVsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPOV(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPOV, ): void =


  fQsciLexerPOV_virtualbase_refreshProperties(self.h)

type QsciLexerPOVrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_refreshProperties(self: ptr cQsciLexerPOV, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPOV_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPOVrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPOV(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPOV, ): cint =


  fQsciLexerPOV_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPOVstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_styleBitsNeeded(self: ptr cQsciLexerPOV, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPOV_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPOVstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPOV, ): cstring =


  (fQsciLexerPOV_virtualbase_wordCharacters(self.h))

type QsciLexerPOVwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_wordCharacters(self: ptr cQsciLexerPOV, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPOV_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPOVwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPOV(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPOV, autoindentstyle: cint): void =


  fQsciLexerPOV_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPOVsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setAutoIndentStyle(self: ptr cQsciLexerPOV, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPOVsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPOV(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPOV, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPOV_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPOVsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setColor(self: ptr cQsciLexerPOV, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setColor ".} =
  type Cb = proc(super: QsciLexerPOVsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPOV(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPOV, eoffill: bool, style: cint): void =


  fQsciLexerPOV_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPOVsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setEolFill(self: ptr cQsciLexerPOV, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setEolFill ".} =
  type Cb = proc(super: QsciLexerPOVsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPOV(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPOV, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPOV_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPOVsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setFont(self: ptr cQsciLexerPOV, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setFont ".} =
  type Cb = proc(super: QsciLexerPOVsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPOV(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPOV, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPOV_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPOVsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_setPaper(self: ptr cQsciLexerPOV, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPOV_setPaper ".} =
  type Cb = proc(super: QsciLexerPOVsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPOV(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPOV, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPOV_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOVreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_readProperties(self: ptr cQsciLexerPOV, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_readProperties ".} =
  type Cb = proc(super: QsciLexerPOVreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPOV(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPOV, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPOV_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOVwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_writeProperties(self: ptr cQsciLexerPOV, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_writeProperties ".} =
  type Cb = proc(super: QsciLexerPOVwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPOV(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPOV, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPOV_virtualbase_event(self.h, event.h)

type QsciLexerPOVeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_event(self: ptr cQsciLexerPOV, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_event ".} =
  type Cb = proc(super: QsciLexerPOVeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPOV(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPOV, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPOV_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPOVeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_eventFilter(self: ptr cQsciLexerPOV, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPOV_eventFilter ".} =
  type Cb = proc(super: QsciLexerPOVeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPOV(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPOV, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPOV_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPOVtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_timerEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_timerEvent ".} =
  type Cb = proc(super: QsciLexerPOVtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPOV(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPOV, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPOV_virtualbase_childEvent(self.h, event.h)

type QsciLexerPOVchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_childEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_childEvent ".} =
  type Cb = proc(super: QsciLexerPOVchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPOV(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPOV, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPOV_virtualbase_customEvent(self.h, event.h)

type QsciLexerPOVcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_customEvent(self: ptr cQsciLexerPOV, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_customEvent ".} =
  type Cb = proc(super: QsciLexerPOVcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPOV(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPOV, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPOV_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPOVconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_connectNotify(self: ptr cQsciLexerPOV, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_connectNotify ".} =
  type Cb = proc(super: QsciLexerPOVconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPOV(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPOV, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPOV_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPOVdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPOV, slot: proc(super: QsciLexerPOVdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOVdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPOV_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPOV_disconnectNotify(self: ptr cQsciLexerPOV, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPOV_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPOVdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPOV(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerPOV): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPOV_staticMetaObject())
proc delete*(self: QsciLexerPOV) =
  fcQsciLexerPOV_delete(self.h)
