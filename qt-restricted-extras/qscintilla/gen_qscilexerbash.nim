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
{.compile("gen_qscilexerbash.cpp", cflags).}


type QsciLexerBashEnum* = cint
const
  QsciLexerBashDefault* = 0
  QsciLexerBashError* = 1
  QsciLexerBashComment* = 2
  QsciLexerBashNumber* = 3
  QsciLexerBashKeyword* = 4
  QsciLexerBashDoubleQuotedString* = 5
  QsciLexerBashSingleQuotedString* = 6
  QsciLexerBashOperator* = 7
  QsciLexerBashIdentifier* = 8
  QsciLexerBashScalar* = 9
  QsciLexerBashParameterExpansion* = 10
  QsciLexerBashBackticks* = 11
  QsciLexerBashHereDocumentDelimiter* = 12
  QsciLexerBashSingleQuotedHereDocument* = 13



import gen_qscilexerbash_types
export gen_qscilexerbash_types

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

type cQsciLexerBash*{.exportc: "QsciLexerBash", incompleteStruct.} = object

proc fcQsciLexerBash_new(): ptr cQsciLexerBash {.importc: "QsciLexerBash_new".}
proc fcQsciLexerBash_new2(parent: pointer): ptr cQsciLexerBash {.importc: "QsciLexerBash_new2".}
proc fcQsciLexerBash_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBash_metaObject".}
proc fcQsciLexerBash_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBash_metacast".}
proc fcQsciLexerBash_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBash_metacall".}
proc fcQsciLexerBash_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr".}
proc fcQsciLexerBash_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerBash_trUtf8".}
proc fcQsciLexerBash_language(self: pointer, ): cstring {.importc: "QsciLexerBash_language".}
proc fcQsciLexerBash_lexer(self: pointer, ): cstring {.importc: "QsciLexerBash_lexer".}
proc fcQsciLexerBash_braceStyle(self: pointer, ): cint {.importc: "QsciLexerBash_braceStyle".}
proc fcQsciLexerBash_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBash_wordCharacters".}
proc fcQsciLexerBash_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultColor".}
proc fcQsciLexerBash_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBash_defaultEolFill".}
proc fcQsciLexerBash_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultFont".}
proc fcQsciLexerBash_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultPaper".}
proc fcQsciLexerBash_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBash_keywords".}
proc fcQsciLexerBash_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBash_description".}
proc fcQsciLexerBash_refreshProperties(self: pointer, ): void {.importc: "QsciLexerBash_refreshProperties".}
proc fcQsciLexerBash_foldComments(self: pointer, ): bool {.importc: "QsciLexerBash_foldComments".}
proc fcQsciLexerBash_foldCompact(self: pointer, ): bool {.importc: "QsciLexerBash_foldCompact".}
proc fcQsciLexerBash_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldComments".}
proc fcQsciLexerBash_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldCompact".}
proc fcQsciLexerBash_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr2".}
proc fcQsciLexerBash_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBash_tr3".}
proc fcQsciLexerBash_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBash_trUtf82".}
proc fcQsciLexerBash_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBash_trUtf83".}
proc fQsciLexerBash_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerBash_virtualbase_metacall".}
proc fcQsciLexerBash_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_metacall".}
proc fQsciLexerBash_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerBash_virtualbase_setFoldComments".}
proc fcQsciLexerBash_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFoldComments".}
proc fQsciLexerBash_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerBash_virtualbase_setFoldCompact".}
proc fcQsciLexerBash_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFoldCompact".}
proc fcQsciLexerBash_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_language".}
proc fQsciLexerBash_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_lexer".}
proc fcQsciLexerBash_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_lexer".}
proc fQsciLexerBash_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_lexerId".}
proc fcQsciLexerBash_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_lexerId".}
proc fQsciLexerBash_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBash_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_autoCompletionFillups".}
proc fQsciLexerBash_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerBash_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBash_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerBash_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockEnd".}
proc fcQsciLexerBash_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockEnd".}
proc fQsciLexerBash_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_blockLookback".}
proc fcQsciLexerBash_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockLookback".}
proc fQsciLexerBash_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockStart".}
proc fcQsciLexerBash_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockStart".}
proc fQsciLexerBash_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBash_virtualbase_blockStartKeyword".}
proc fcQsciLexerBash_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_blockStartKeyword".}
proc fQsciLexerBash_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_braceStyle".}
proc fcQsciLexerBash_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_braceStyle".}
proc fQsciLexerBash_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerBash_virtualbase_caseSensitive".}
proc fcQsciLexerBash_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_caseSensitive".}
proc fQsciLexerBash_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_color".}
proc fcQsciLexerBash_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_color".}
proc fQsciLexerBash_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBash_virtualbase_eolFill".}
proc fcQsciLexerBash_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_eolFill".}
proc fQsciLexerBash_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_font".}
proc fcQsciLexerBash_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_font".}
proc fQsciLexerBash_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_indentationGuideView".}
proc fcQsciLexerBash_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_indentationGuideView".}
proc fQsciLexerBash_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerBash_virtualbase_keywords".}
proc fcQsciLexerBash_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_keywords".}
proc fQsciLexerBash_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_defaultStyle".}
proc fcQsciLexerBash_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultStyle".}
proc fcQsciLexerBash_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_description".}
proc fQsciLexerBash_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_paper".}
proc fcQsciLexerBash_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_paper".}
proc fQsciLexerBash_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultColorWithStyle".}
proc fQsciLexerBash_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBash_virtualbase_defaultEolFill".}
proc fcQsciLexerBash_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultEolFill".}
proc fQsciLexerBash_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultFontWithStyle".}
proc fQsciLexerBash_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBash_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBash_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerBash_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerBash_virtualbase_setEditor".}
proc fcQsciLexerBash_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setEditor".}
proc fQsciLexerBash_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerBash_virtualbase_refreshProperties".}
proc fcQsciLexerBash_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_refreshProperties".}
proc fQsciLexerBash_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerBash_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBash_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_styleBitsNeeded".}
proc fQsciLexerBash_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerBash_virtualbase_wordCharacters".}
proc fcQsciLexerBash_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_wordCharacters".}
proc fQsciLexerBash_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerBash_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBash_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setAutoIndentStyle".}
proc fQsciLexerBash_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setColor".}
proc fcQsciLexerBash_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setColor".}
proc fQsciLexerBash_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerBash_virtualbase_setEolFill".}
proc fcQsciLexerBash_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setEolFill".}
proc fQsciLexerBash_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setFont".}
proc fcQsciLexerBash_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setFont".}
proc fQsciLexerBash_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBash_virtualbase_setPaper".}
proc fcQsciLexerBash_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_setPaper".}
proc fQsciLexerBash_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBash_virtualbase_readProperties".}
proc fcQsciLexerBash_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_readProperties".}
proc fQsciLexerBash_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBash_virtualbase_writeProperties".}
proc fcQsciLexerBash_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_writeProperties".}
proc fQsciLexerBash_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerBash_virtualbase_event".}
proc fcQsciLexerBash_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_event".}
proc fQsciLexerBash_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerBash_virtualbase_eventFilter".}
proc fcQsciLexerBash_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_eventFilter".}
proc fQsciLexerBash_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_timerEvent".}
proc fcQsciLexerBash_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_timerEvent".}
proc fQsciLexerBash_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_childEvent".}
proc fcQsciLexerBash_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_childEvent".}
proc fQsciLexerBash_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBash_virtualbase_customEvent".}
proc fcQsciLexerBash_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_customEvent".}
proc fQsciLexerBash_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBash_virtualbase_connectNotify".}
proc fcQsciLexerBash_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_connectNotify".}
proc fQsciLexerBash_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBash_virtualbase_disconnectNotify".}
proc fcQsciLexerBash_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerBash_override_virtual_disconnectNotify".}
proc fcQsciLexerBash_delete(self: pointer) {.importc: "QsciLexerBash_delete".}


func init*(T: type QsciLexerBash, h: ptr cQsciLexerBash): QsciLexerBash =
  T(h: h)
proc create*(T: type QsciLexerBash, ): QsciLexerBash =

  QsciLexerBash.init(fcQsciLexerBash_new())
proc create*(T: type QsciLexerBash, parent: gen_qobject.QObject): QsciLexerBash =

  QsciLexerBash.init(fcQsciLexerBash_new2(parent.h))
proc metaObject*(self: QsciLexerBash, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBash_metaObject(self.h))

proc metacast*(self: QsciLexerBash, param1: cstring): pointer =

  fcQsciLexerBash_metacast(self.h, param1)

proc metacall*(self: QsciLexerBash, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerBash_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerBash, s: cstring): string =

  let v_ms = fcQsciLexerBash_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerBash, s: cstring): string =

  let v_ms = fcQsciLexerBash_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerBash, ): cstring =

  (fcQsciLexerBash_language(self.h))

proc lexer*(self: QsciLexerBash, ): cstring =

  (fcQsciLexerBash_lexer(self.h))

proc braceStyle*(self: QsciLexerBash, ): cint =

  fcQsciLexerBash_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerBash, ): cstring =

  (fcQsciLexerBash_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerBash, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBash_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerBash, style: cint): bool =

  fcQsciLexerBash_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerBash, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerBash_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerBash, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBash_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerBash, set: cint): cstring =

  (fcQsciLexerBash_keywords(self.h, set))

proc description*(self: QsciLexerBash, style: cint): string =

  let v_ms = fcQsciLexerBash_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerBash, ): void =

  fcQsciLexerBash_refreshProperties(self.h)

proc foldComments*(self: QsciLexerBash, ): bool =

  fcQsciLexerBash_foldComments(self.h)

proc foldCompact*(self: QsciLexerBash, ): bool =

  fcQsciLexerBash_foldCompact(self.h)

proc setFoldComments*(self: QsciLexerBash, fold: bool): void =

  fcQsciLexerBash_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerBash, fold: bool): void =

  fcQsciLexerBash_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerBash, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerBash_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerBash, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerBash_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerBash, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerBash_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerBash, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerBash_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerBash, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerBash_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerBashmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerBash, slot: proc(super: QsciLexerBashmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_metacall(self: ptr cQsciLexerBash, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerBash_metacall ".} =
  type Cb = proc(super: QsciLexerBashmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerBash(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerBash, fold: bool): void =


  fQsciLexerBash_virtualbase_setFoldComments(self.h, fold)

type QsciLexerBashsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFoldComments(self: ptr cQsciLexerBash, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFoldComments ".} =
  type Cb = proc(super: QsciLexerBashsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerBash(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerBash, fold: bool): void =


  fQsciLexerBash_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerBashsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFoldCompact(self: ptr cQsciLexerBash, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerBashsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerBash(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerBashlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerBash, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_language(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerBash, ): cstring =


  (fQsciLexerBash_virtualbase_lexer(self.h))

type QsciLexerBashlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerBash, slot: proc(super: QsciLexerBashlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_lexer(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_lexer ".} =
  type Cb = proc(super: QsciLexerBashlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_lexerId(self.h)

type QsciLexerBashlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerBash, slot: proc(super: QsciLexerBashlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_lexerId(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_lexerId ".} =
  type Cb = proc(super: QsciLexerBashlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerBash, ): cstring =


  (fQsciLexerBash_virtualbase_autoCompletionFillups(self.h))

type QsciLexerBashautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerBash, slot: proc(super: QsciLexerBashautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_autoCompletionFillups(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerBashautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerBash, ): seq[string] =


  var v_ma = fQsciLexerBash_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerBashautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerBash, slot: proc(super: QsciLexerBashautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_autoCompletionWordSeparators(self: ptr cQsciLexerBash, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerBash_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerBashautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerBash, style: ptr cint): cstring =


  (fQsciLexerBash_virtualbase_blockEnd(self.h, style))

type QsciLexerBashblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerBash, slot: proc(super: QsciLexerBashblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockEnd(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockEnd ".} =
  type Cb = proc(super: QsciLexerBashblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_blockLookback(self.h)

type QsciLexerBashblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerBash, slot: proc(super: QsciLexerBashblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockLookback(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_blockLookback ".} =
  type Cb = proc(super: QsciLexerBashblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerBash, style: ptr cint): cstring =


  (fQsciLexerBash_virtualbase_blockStart(self.h, style))

type QsciLexerBashblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerBash, slot: proc(super: QsciLexerBashblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockStart(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockStart ".} =
  type Cb = proc(super: QsciLexerBashblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerBash, style: ptr cint): cstring =


  (fQsciLexerBash_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerBashblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerBash, slot: proc(super: QsciLexerBashblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_blockStartKeyword(self: ptr cQsciLexerBash, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerBashblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_braceStyle(self.h)

type QsciLexerBashbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_braceStyle(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_braceStyle ".} =
  type Cb = proc(super: QsciLexerBashbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerBash, ): bool =


  fQsciLexerBash_virtualbase_caseSensitive(self.h)

type QsciLexerBashcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerBash, slot: proc(super: QsciLexerBashcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_caseSensitive(self: ptr cQsciLexerBash, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerBash_caseSensitive ".} =
  type Cb = proc(super: QsciLexerBashcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerBash, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_color(self.h, style))

type QsciLexerBashcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerBash, slot: proc(super: QsciLexerBashcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_color(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_color ".} =
  type Cb = proc(super: QsciLexerBashcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerBash, style: cint): bool =


  fQsciLexerBash_virtualbase_eolFill(self.h, style)

type QsciLexerBasheolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerBash, slot: proc(super: QsciLexerBasheolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBasheolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_eolFill(self: ptr cQsciLexerBash, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBash_eolFill ".} =
  type Cb = proc(super: QsciLexerBasheolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerBash, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerBash_virtualbase_font(self.h, style))

type QsciLexerBashfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerBash, slot: proc(super: QsciLexerBashfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_font(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_font ".} =
  type Cb = proc(super: QsciLexerBashfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_indentationGuideView(self.h)

type QsciLexerBashindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerBash, slot: proc(super: QsciLexerBashindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_indentationGuideView(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerBashindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerBash, set: cint): cstring =


  (fQsciLexerBash_virtualbase_keywords(self.h, set))

type QsciLexerBashkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerBash, slot: proc(super: QsciLexerBashkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_keywords(self: ptr cQsciLexerBash, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_keywords ".} =
  type Cb = proc(super: QsciLexerBashkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerBash(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_defaultStyle(self.h)

type QsciLexerBashdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultStyle(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_defaultStyle ".} =
  type Cb = proc(super: QsciLexerBashdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerBashdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerBash, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_description(self: ptr cQsciLexerBash, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerBash_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerBash, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_paper(self.h, style))

type QsciLexerBashpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerBash, slot: proc(super: QsciLexerBashpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_paper(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_paper ".} =
  type Cb = proc(super: QsciLexerBashpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerBash, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerBashdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultColorWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerBashdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerBash, style: cint): bool =


  fQsciLexerBash_virtualbase_defaultEolFill(self.h, style)

type QsciLexerBashdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultEolFill(self: ptr cQsciLexerBash, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBash_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerBashdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerBash, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerBash_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerBashdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultFontWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerBashdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerBash, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerBash_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerBashdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_defaultPaperWithStyle(self: ptr cQsciLexerBash, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBash_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerBashdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerBash(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerBash, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerBash_virtualbase_setEditor(self.h, editor.h)

type QsciLexerBashsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setEditor(self: ptr cQsciLexerBash, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_setEditor ".} =
  type Cb = proc(super: QsciLexerBashsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerBash(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerBash, ): void =


  fQsciLexerBash_virtualbase_refreshProperties(self.h)

type QsciLexerBashrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerBash, slot: proc(super: QsciLexerBashrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_refreshProperties(self: ptr cQsciLexerBash, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerBash_refreshProperties ".} =
  type Cb = proc(super: QsciLexerBashrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerBash(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerBash, ): cint =


  fQsciLexerBash_virtualbase_styleBitsNeeded(self.h)

type QsciLexerBashstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerBash, slot: proc(super: QsciLexerBashstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_styleBitsNeeded(self: ptr cQsciLexerBash, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBash_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerBashstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerBash, ): cstring =


  (fQsciLexerBash_virtualbase_wordCharacters(self.h))

type QsciLexerBashwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerBash, slot: proc(super: QsciLexerBashwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_wordCharacters(self: ptr cQsciLexerBash, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBash_wordCharacters ".} =
  type Cb = proc(super: QsciLexerBashwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerBash(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerBash, autoindentstyle: cint): void =


  fQsciLexerBash_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerBashsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setAutoIndentStyle(self: ptr cQsciLexerBash, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerBashsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerBash(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerBash, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerBash_virtualbase_setColor(self.h, c.h, style)

type QsciLexerBashsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setColor(self: ptr cQsciLexerBash, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setColor ".} =
  type Cb = proc(super: QsciLexerBashsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerBash(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerBash, eoffill: bool, style: cint): void =


  fQsciLexerBash_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerBashsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setEolFill(self: ptr cQsciLexerBash, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setEolFill ".} =
  type Cb = proc(super: QsciLexerBashsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerBash(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerBash, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerBash_virtualbase_setFont(self.h, f.h, style)

type QsciLexerBashsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setFont(self: ptr cQsciLexerBash, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setFont ".} =
  type Cb = proc(super: QsciLexerBashsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerBash(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerBash, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerBash_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerBashsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerBash, slot: proc(super: QsciLexerBashsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_setPaper(self: ptr cQsciLexerBash, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBash_setPaper ".} =
  type Cb = proc(super: QsciLexerBashsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerBash(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerBash, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerBash_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBashreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerBash, slot: proc(super: QsciLexerBashreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_readProperties(self: ptr cQsciLexerBash, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBash_readProperties ".} =
  type Cb = proc(super: QsciLexerBashreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerBash(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerBash, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerBash_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBashwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerBash, slot: proc(super: QsciLexerBashwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_writeProperties(self: ptr cQsciLexerBash, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBash_writeProperties ".} =
  type Cb = proc(super: QsciLexerBashwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerBash(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerBash, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerBash_virtualbase_event(self.h, event.h)

type QsciLexerBasheventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerBash, slot: proc(super: QsciLexerBasheventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBasheventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_event(self: ptr cQsciLexerBash, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBash_event ".} =
  type Cb = proc(super: QsciLexerBasheventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerBash(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerBash, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerBash_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerBasheventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerBash, slot: proc(super: QsciLexerBasheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBasheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_eventFilter(self: ptr cQsciLexerBash, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBash_eventFilter ".} =
  type Cb = proc(super: QsciLexerBasheventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerBash(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerBash, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerBash_virtualbase_timerEvent(self.h, event.h)

type QsciLexerBashtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerBash, slot: proc(super: QsciLexerBashtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_timerEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_timerEvent ".} =
  type Cb = proc(super: QsciLexerBashtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerBash(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerBash, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerBash_virtualbase_childEvent(self.h, event.h)

type QsciLexerBashchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerBash, slot: proc(super: QsciLexerBashchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_childEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_childEvent ".} =
  type Cb = proc(super: QsciLexerBashchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerBash(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerBash, event: gen_qcoreevent.QEvent): void =


  fQsciLexerBash_virtualbase_customEvent(self.h, event.h)

type QsciLexerBashcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerBash, slot: proc(super: QsciLexerBashcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_customEvent(self: ptr cQsciLexerBash, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_customEvent ".} =
  type Cb = proc(super: QsciLexerBashcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerBash(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerBash, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerBash_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerBashconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerBash, slot: proc(super: QsciLexerBashconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_connectNotify(self: ptr cQsciLexerBash, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_connectNotify ".} =
  type Cb = proc(super: QsciLexerBashconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerBash(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerBash, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerBash_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerBashdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerBash, slot: proc(super: QsciLexerBashdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerBashdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBash_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBash_disconnectNotify(self: ptr cQsciLexerBash, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBash_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerBashdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerBash(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerBash) =
  fcQsciLexerBash_delete(self.h)
