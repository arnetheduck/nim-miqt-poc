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
{.compile("gen_qscilexercmake.cpp", cflags).}


type QsciLexerCMakeEnum* = cint
const
  QsciLexerCMakeDefault* = 0
  QsciLexerCMakeComment* = 1
  QsciLexerCMakeString* = 2
  QsciLexerCMakeStringLeftQuote* = 3
  QsciLexerCMakeStringRightQuote* = 4
  QsciLexerCMakeFunction* = 5
  QsciLexerCMakeVariable* = 6
  QsciLexerCMakeLabel* = 7
  QsciLexerCMakeKeywordSet3* = 8
  QsciLexerCMakeBlockWhile* = 9
  QsciLexerCMakeBlockForeach* = 10
  QsciLexerCMakeBlockIf* = 11
  QsciLexerCMakeBlockMacro* = 12
  QsciLexerCMakeStringVariable* = 13
  QsciLexerCMakeNumber* = 14



import gen_qscilexercmake_types
export gen_qscilexercmake_types

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

type cQsciLexerCMake*{.exportc: "QsciLexerCMake", incompleteStruct.} = object

proc fcQsciLexerCMake_new(): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new".}
proc fcQsciLexerCMake_new2(parent: pointer): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new2".}
proc fcQsciLexerCMake_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCMake_metaObject".}
proc fcQsciLexerCMake_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCMake_metacast".}
proc fcQsciLexerCMake_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCMake_metacall".}
proc fcQsciLexerCMake_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr".}
proc fcQsciLexerCMake_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf8".}
proc fcQsciLexerCMake_language(self: pointer, ): cstring {.importc: "QsciLexerCMake_language".}
proc fcQsciLexerCMake_lexer(self: pointer, ): cstring {.importc: "QsciLexerCMake_lexer".}
proc fcQsciLexerCMake_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultColor".}
proc fcQsciLexerCMake_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultFont".}
proc fcQsciLexerCMake_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultPaper".}
proc fcQsciLexerCMake_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCMake_keywords".}
proc fcQsciLexerCMake_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCMake_description".}
proc fcQsciLexerCMake_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCMake_refreshProperties".}
proc fcQsciLexerCMake_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerCMake_foldAtElse".}
proc fcQsciLexerCMake_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCMake_setFoldAtElse".}
proc fcQsciLexerCMake_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr2".}
proc fcQsciLexerCMake_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_tr3".}
proc fcQsciLexerCMake_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf82".}
proc fcQsciLexerCMake_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_trUtf83".}
proc fQsciLexerCMake_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCMake_virtualbase_metaObject".}
proc fcQsciLexerCMake_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metaObject".}
proc fQsciLexerCMake_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCMake_virtualbase_metacast".}
proc fcQsciLexerCMake_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metacast".}
proc fQsciLexerCMake_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCMake_virtualbase_metacall".}
proc fcQsciLexerCMake_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_metacall".}
proc fQsciLexerCMake_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerCMake_virtualbase_setFoldAtElse".}
proc fcQsciLexerCMake_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setFoldAtElse".}
proc fcQsciLexerCMake_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_language".}
proc fQsciLexerCMake_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_lexer".}
proc fcQsciLexerCMake_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_lexer".}
proc fQsciLexerCMake_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_lexerId".}
proc fcQsciLexerCMake_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_lexerId".}
proc fQsciLexerCMake_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCMake_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_autoCompletionFillups".}
proc fQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCMake_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCMake_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCMake_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockEnd".}
proc fcQsciLexerCMake_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockEnd".}
proc fQsciLexerCMake_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_blockLookback".}
proc fcQsciLexerCMake_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockLookback".}
proc fQsciLexerCMake_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockStart".}
proc fcQsciLexerCMake_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockStart".}
proc fQsciLexerCMake_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCMake_virtualbase_blockStartKeyword".}
proc fcQsciLexerCMake_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_blockStartKeyword".}
proc fQsciLexerCMake_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_braceStyle".}
proc fcQsciLexerCMake_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_braceStyle".}
proc fQsciLexerCMake_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCMake_virtualbase_caseSensitive".}
proc fcQsciLexerCMake_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_caseSensitive".}
proc fQsciLexerCMake_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_color".}
proc fcQsciLexerCMake_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_color".}
proc fQsciLexerCMake_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCMake_virtualbase_eolFill".}
proc fcQsciLexerCMake_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_eolFill".}
proc fQsciLexerCMake_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_font".}
proc fcQsciLexerCMake_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_font".}
proc fQsciLexerCMake_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_indentationGuideView".}
proc fcQsciLexerCMake_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_indentationGuideView".}
proc fQsciLexerCMake_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCMake_virtualbase_keywords".}
proc fcQsciLexerCMake_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_keywords".}
proc fQsciLexerCMake_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_defaultStyle".}
proc fcQsciLexerCMake_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultStyle".}
proc fcQsciLexerCMake_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_description".}
proc fQsciLexerCMake_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_paper".}
proc fcQsciLexerCMake_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_paper".}
proc fQsciLexerCMake_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCMake_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCMake_virtualbase_defaultEolFill".}
proc fcQsciLexerCMake_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultEolFill".}
proc fQsciLexerCMake_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCMake_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCMake_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCMake_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCMake_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCMake_virtualbase_setEditor".}
proc fcQsciLexerCMake_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setEditor".}
proc fQsciLexerCMake_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCMake_virtualbase_refreshProperties".}
proc fcQsciLexerCMake_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_refreshProperties".}
proc fQsciLexerCMake_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCMake_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCMake_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_styleBitsNeeded".}
proc fQsciLexerCMake_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCMake_virtualbase_wordCharacters".}
proc fcQsciLexerCMake_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_wordCharacters".}
proc fQsciLexerCMake_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCMake_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCMake_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCMake_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setColor".}
proc fcQsciLexerCMake_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setColor".}
proc fQsciLexerCMake_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setEolFill".}
proc fcQsciLexerCMake_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setEolFill".}
proc fQsciLexerCMake_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setFont".}
proc fcQsciLexerCMake_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setFont".}
proc fQsciLexerCMake_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCMake_virtualbase_setPaper".}
proc fcQsciLexerCMake_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_setPaper".}
proc fQsciLexerCMake_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCMake_virtualbase_readProperties".}
proc fcQsciLexerCMake_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_readProperties".}
proc fQsciLexerCMake_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCMake_virtualbase_writeProperties".}
proc fcQsciLexerCMake_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_writeProperties".}
proc fQsciLexerCMake_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCMake_virtualbase_event".}
proc fcQsciLexerCMake_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_event".}
proc fQsciLexerCMake_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCMake_virtualbase_eventFilter".}
proc fcQsciLexerCMake_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_eventFilter".}
proc fQsciLexerCMake_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_timerEvent".}
proc fcQsciLexerCMake_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_timerEvent".}
proc fQsciLexerCMake_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_childEvent".}
proc fcQsciLexerCMake_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_childEvent".}
proc fQsciLexerCMake_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCMake_virtualbase_customEvent".}
proc fcQsciLexerCMake_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_customEvent".}
proc fQsciLexerCMake_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCMake_virtualbase_connectNotify".}
proc fcQsciLexerCMake_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_connectNotify".}
proc fQsciLexerCMake_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCMake_virtualbase_disconnectNotify".}
proc fcQsciLexerCMake_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCMake_override_virtual_disconnectNotify".}
proc fcQsciLexerCMake_staticMetaObject(): pointer {.importc: "QsciLexerCMake_staticMetaObject".}
proc fcQsciLexerCMake_delete(self: pointer) {.importc: "QsciLexerCMake_delete".}


func init*(T: type QsciLexerCMake, h: ptr cQsciLexerCMake): QsciLexerCMake =
  T(h: h)
proc create*(T: type QsciLexerCMake, ): QsciLexerCMake =

  QsciLexerCMake.init(fcQsciLexerCMake_new())
proc create*(T: type QsciLexerCMake, parent: gen_qobject.QObject): QsciLexerCMake =

  QsciLexerCMake.init(fcQsciLexerCMake_new2(parent.h))
proc metaObject*(self: QsciLexerCMake, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCMake_metaObject(self.h))

proc metacast*(self: QsciLexerCMake, param1: cstring): pointer =

  fcQsciLexerCMake_metacast(self.h, param1)

proc metacall*(self: QsciLexerCMake, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCMake_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCMake, s: cstring): string =

  let v_ms = fcQsciLexerCMake_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerCMake, s: cstring): string =

  let v_ms = fcQsciLexerCMake_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerCMake, ): cstring =

  (fcQsciLexerCMake_language(self.h))

proc lexer*(self: QsciLexerCMake, ): cstring =

  (fcQsciLexerCMake_lexer(self.h))

proc defaultColor*(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCMake_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerCMake, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCMake_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCMake_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerCMake, set: cint): cstring =

  (fcQsciLexerCMake_keywords(self.h, set))

proc description*(self: QsciLexerCMake, style: cint): string =

  let v_ms = fcQsciLexerCMake_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerCMake, ): void =

  fcQsciLexerCMake_refreshProperties(self.h)

proc foldAtElse*(self: QsciLexerCMake, ): bool =

  fcQsciLexerCMake_foldAtElse(self.h)

proc setFoldAtElse*(self: QsciLexerCMake, fold: bool): void =

  fcQsciLexerCMake_setFoldAtElse(self.h, fold)

proc tr2*(_: type QsciLexerCMake, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCMake_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCMake, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCMake_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerCMake, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCMake_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerCMake, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCMake_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerCMake, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerCMake_virtualbase_metaObject(self.h))

type QsciLexerCMakemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metaObject(self: ptr cQsciLexerCMake, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_metaObject ".} =
  type Cb = proc(super: QsciLexerCMakemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerCMake, param1: cstring): pointer =


  fQsciLexerCMake_virtualbase_metacast(self.h, param1)

type QsciLexerCMakemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metacast(self: ptr cQsciLexerCMake, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_metacast ".} =
  type Cb = proc(super: QsciLexerCMakemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerCMake(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerCMake, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCMake_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCMakemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_metacall(self: ptr cQsciLexerCMake, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_metacall ".} =
  type Cb = proc(super: QsciLexerCMakemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCMake(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerCMake, fold: bool): void =


  fQsciLexerCMake_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCMakesetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setFoldAtElse(self: ptr cQsciLexerCMake, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerCMakesetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerCMake(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerCMakelanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCMake, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_language(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCMake, ): cstring =


  (fQsciLexerCMake_virtualbase_lexer(self.h))

type QsciLexerCMakelexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakelexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakelexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_lexer(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_lexer ".} =
  type Cb = proc(super: QsciLexerCMakelexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_lexerId(self.h)

type QsciLexerCMakelexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakelexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakelexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_lexerId(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_lexerId ".} =
  type Cb = proc(super: QsciLexerCMakelexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCMake, ): cstring =


  (fQsciLexerCMake_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCMakeautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_autoCompletionFillups(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCMakeautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCMake, ): seq[string] =


  var v_ma = fQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCMakeautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_autoCompletionWordSeparators(self: ptr cQsciLexerCMake, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCMake_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCMakeautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCMake, style: ptr cint): cstring =


  (fQsciLexerCMake_virtualbase_blockEnd(self.h, style))

type QsciLexerCMakeblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockEnd(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockEnd ".} =
  type Cb = proc(super: QsciLexerCMakeblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_blockLookback(self.h)

type QsciLexerCMakeblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockLookback(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_blockLookback ".} =
  type Cb = proc(super: QsciLexerCMakeblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCMake, style: ptr cint): cstring =


  (fQsciLexerCMake_virtualbase_blockStart(self.h, style))

type QsciLexerCMakeblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockStart(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockStart ".} =
  type Cb = proc(super: QsciLexerCMakeblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCMake, style: ptr cint): cstring =


  (fQsciLexerCMake_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCMakeblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_blockStartKeyword(self: ptr cQsciLexerCMake, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCMakeblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_braceStyle(self.h)

type QsciLexerCMakebraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakebraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakebraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_braceStyle(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_braceStyle ".} =
  type Cb = proc(super: QsciLexerCMakebraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCMake, ): bool =


  fQsciLexerCMake_virtualbase_caseSensitive(self.h)

type QsciLexerCMakecaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakecaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakecaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_caseSensitive(self: ptr cQsciLexerCMake, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCMakecaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_color(self.h, style))

type QsciLexerCMakecolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakecolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakecolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_color(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_color ".} =
  type Cb = proc(super: QsciLexerCMakecolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCMake, style: cint): bool =


  fQsciLexerCMake_virtualbase_eolFill(self.h, style)

type QsciLexerCMakeeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_eolFill(self: ptr cQsciLexerCMake, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_eolFill ".} =
  type Cb = proc(super: QsciLexerCMakeeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCMake, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCMake_virtualbase_font(self.h, style))

type QsciLexerCMakefontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakefontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakefontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_font(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_font ".} =
  type Cb = proc(super: QsciLexerCMakefontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_indentationGuideView(self.h)

type QsciLexerCMakeindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_indentationGuideView(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCMakeindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCMake, set: cint): cstring =


  (fQsciLexerCMake_virtualbase_keywords(self.h, set))

type QsciLexerCMakekeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakekeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakekeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_keywords(self: ptr cQsciLexerCMake, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_keywords ".} =
  type Cb = proc(super: QsciLexerCMakekeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCMake(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_defaultStyle(self.h)

type QsciLexerCMakedefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultStyle(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCMakedefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCMakedescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCMake, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_description(self: ptr cQsciLexerCMake, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCMake_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_paper(self.h, style))

type QsciLexerCMakepaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakepaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakepaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_paper(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_paper ".} =
  type Cb = proc(super: QsciLexerCMakepaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCMakedefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultColorWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCMakedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCMake, style: cint): bool =


  fQsciLexerCMake_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCMakedefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultEolFill(self: ptr cQsciLexerCMake, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCMakedefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCMake, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCMake_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCMakedefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultFontWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCMakedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCMake, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCMake_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCMakedefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_defaultPaperWithStyle(self: ptr cQsciLexerCMake, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCMake_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCMakedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCMake(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerCMake, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCMake_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCMakesetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setEditor(self: ptr cQsciLexerCMake, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setEditor ".} =
  type Cb = proc(super: QsciLexerCMakesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCMake(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerCMake, ): void =


  fQsciLexerCMake_virtualbase_refreshProperties(self.h)

type QsciLexerCMakerefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakerefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakerefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_refreshProperties(self: ptr cQsciLexerCMake, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCMake_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCMakerefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCMake(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCMake, ): cint =


  fQsciLexerCMake_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCMakestyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakestyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakestyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_styleBitsNeeded(self: ptr cQsciLexerCMake, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCMake_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCMakestyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerCMake, ): cstring =


  (fQsciLexerCMake_virtualbase_wordCharacters(self.h))

type QsciLexerCMakewordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakewordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakewordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_wordCharacters(self: ptr cQsciLexerCMake, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCMake_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCMakewordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCMake(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCMake, autoindentstyle: cint): void =


  fQsciLexerCMake_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCMakesetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setAutoIndentStyle(self: ptr cQsciLexerCMake, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCMakesetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCMake(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCMake, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCMake_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCMakesetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setColor(self: ptr cQsciLexerCMake, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setColor ".} =
  type Cb = proc(super: QsciLexerCMakesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCMake(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCMake, eoffill: bool, style: cint): void =


  fQsciLexerCMake_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCMakesetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setEolFill(self: ptr cQsciLexerCMake, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setEolFill ".} =
  type Cb = proc(super: QsciLexerCMakesetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCMake(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCMake, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCMake_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCMakesetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setFont(self: ptr cQsciLexerCMake, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setFont ".} =
  type Cb = proc(super: QsciLexerCMakesetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCMake(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCMake, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCMake_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCMakesetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakesetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_setPaper(self: ptr cQsciLexerCMake, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCMake_setPaper ".} =
  type Cb = proc(super: QsciLexerCMakesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCMake(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCMake, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCMake_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCMakereadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_readProperties(self: ptr cQsciLexerCMake, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_readProperties ".} =
  type Cb = proc(super: QsciLexerCMakereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCMake(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCMake, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCMake_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCMakewritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_writeProperties(self: ptr cQsciLexerCMake, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_writeProperties ".} =
  type Cb = proc(super: QsciLexerCMakewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCMake(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCMake, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCMake_virtualbase_event(self.h, event.h)

type QsciLexerCMakeeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_event(self: ptr cQsciLexerCMake, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_event ".} =
  type Cb = proc(super: QsciLexerCMakeeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCMake(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCMake, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCMake_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCMakeeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_eventFilter(self: ptr cQsciLexerCMake, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCMake_eventFilter ".} =
  type Cb = proc(super: QsciLexerCMakeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCMake(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCMake, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCMake_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCMaketimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMaketimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMaketimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_timerEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_timerEvent ".} =
  type Cb = proc(super: QsciLexerCMaketimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCMake(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCMake, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCMake_virtualbase_childEvent(self.h, event.h)

type QsciLexerCMakechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_childEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_childEvent ".} =
  type Cb = proc(super: QsciLexerCMakechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCMake(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCMake, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCMake_virtualbase_customEvent(self.h, event.h)

type QsciLexerCMakecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_customEvent(self: ptr cQsciLexerCMake, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_customEvent ".} =
  type Cb = proc(super: QsciLexerCMakecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCMake(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCMake, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCMake_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCMakeconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_connectNotify(self: ptr cQsciLexerCMake, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_connectNotify ".} =
  type Cb = proc(super: QsciLexerCMakeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCMake(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCMake, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCMake_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCMakedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCMake, slot: proc(super: QsciLexerCMakedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCMakedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCMake_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCMake_disconnectNotify(self: ptr cQsciLexerCMake, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCMake_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCMakedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCMake(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerCMake): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCMake_staticMetaObject())
proc delete*(self: QsciLexerCMake) =
  fcQsciLexerCMake_delete(self.h)
