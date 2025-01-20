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
{.compile("gen_qscilexerjavascript.cpp", cflags).}


import gen_qscilexerjavascript_types
export gen_qscilexerjavascript_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerJavaScript*{.exportc: "QsciLexerJavaScript", incompleteStruct.} = object

proc fcQsciLexerJavaScript_new(): ptr cQsciLexerJavaScript {.importc: "QsciLexerJavaScript_new".}
proc fcQsciLexerJavaScript_new2(parent: pointer): ptr cQsciLexerJavaScript {.importc: "QsciLexerJavaScript_new2".}
proc fcQsciLexerJavaScript_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJavaScript_metaObject".}
proc fcQsciLexerJavaScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJavaScript_metacast".}
proc fcQsciLexerJavaScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJavaScript_metacall".}
proc fcQsciLexerJavaScript_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerJavaScript_tr".}
proc fcQsciLexerJavaScript_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerJavaScript_trUtf8".}
proc fcQsciLexerJavaScript_language(self: pointer, ): cstring {.importc: "QsciLexerJavaScript_language".}
proc fcQsciLexerJavaScript_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultColor".}
proc fcQsciLexerJavaScript_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJavaScript_defaultEolFill".}
proc fcQsciLexerJavaScript_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultFont".}
proc fcQsciLexerJavaScript_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultPaper".}
proc fcQsciLexerJavaScript_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJavaScript_keywords".}
proc fcQsciLexerJavaScript_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerJavaScript_description".}
proc fcQsciLexerJavaScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJavaScript_tr2".}
proc fcQsciLexerJavaScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJavaScript_tr3".}
proc fcQsciLexerJavaScript_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJavaScript_trUtf82".}
proc fcQsciLexerJavaScript_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJavaScript_trUtf83".}
proc fQsciLexerJavaScript_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerJavaScript_virtualbase_metaObject".}
proc fcQsciLexerJavaScript_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_metaObject".}
proc fQsciLexerJavaScript_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerJavaScript_virtualbase_metacast".}
proc fcQsciLexerJavaScript_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_metacast".}
proc fQsciLexerJavaScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerJavaScript_virtualbase_metacall".}
proc fcQsciLexerJavaScript_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_metacall".}
proc fQsciLexerJavaScript_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerJavaScript_virtualbase_setFoldAtElse".}
proc fcQsciLexerJavaScript_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setFoldAtElse".}
proc fQsciLexerJavaScript_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerJavaScript_virtualbase_setFoldComments".}
proc fcQsciLexerJavaScript_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setFoldComments".}
proc fQsciLexerJavaScript_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerJavaScript_virtualbase_setFoldCompact".}
proc fcQsciLexerJavaScript_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setFoldCompact".}
proc fQsciLexerJavaScript_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerJavaScript_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerJavaScript_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setFoldPreprocessor".}
proc fQsciLexerJavaScript_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerJavaScript_virtualbase_setStylePreprocessor".}
proc fcQsciLexerJavaScript_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setStylePreprocessor".}
proc fcQsciLexerJavaScript_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_language".}
proc fQsciLexerJavaScript_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerJavaScript_virtualbase_lexer".}
proc fcQsciLexerJavaScript_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_lexer".}
proc fQsciLexerJavaScript_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_lexerId".}
proc fcQsciLexerJavaScript_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_lexerId".}
proc fQsciLexerJavaScript_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerJavaScript_virtualbase_autoCompletionFillups".}
proc fcQsciLexerJavaScript_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_autoCompletionFillups".}
proc fQsciLexerJavaScript_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerJavaScript_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerJavaScript_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerJavaScript_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJavaScript_virtualbase_blockEnd".}
proc fcQsciLexerJavaScript_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_blockEnd".}
proc fQsciLexerJavaScript_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_blockLookback".}
proc fcQsciLexerJavaScript_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_blockLookback".}
proc fQsciLexerJavaScript_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJavaScript_virtualbase_blockStart".}
proc fcQsciLexerJavaScript_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_blockStart".}
proc fQsciLexerJavaScript_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJavaScript_virtualbase_blockStartKeyword".}
proc fcQsciLexerJavaScript_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_blockStartKeyword".}
proc fQsciLexerJavaScript_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_braceStyle".}
proc fcQsciLexerJavaScript_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_braceStyle".}
proc fQsciLexerJavaScript_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerJavaScript_virtualbase_caseSensitive".}
proc fcQsciLexerJavaScript_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_caseSensitive".}
proc fQsciLexerJavaScript_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_color".}
proc fcQsciLexerJavaScript_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_color".}
proc fQsciLexerJavaScript_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJavaScript_virtualbase_eolFill".}
proc fcQsciLexerJavaScript_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_eolFill".}
proc fQsciLexerJavaScript_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_font".}
proc fcQsciLexerJavaScript_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_font".}
proc fQsciLexerJavaScript_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_indentationGuideView".}
proc fcQsciLexerJavaScript_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_indentationGuideView".}
proc fQsciLexerJavaScript_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerJavaScript_virtualbase_keywords".}
proc fcQsciLexerJavaScript_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_keywords".}
proc fQsciLexerJavaScript_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_defaultStyle".}
proc fcQsciLexerJavaScript_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_defaultStyle".}
proc fcQsciLexerJavaScript_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_description".}
proc fQsciLexerJavaScript_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_paper".}
proc fcQsciLexerJavaScript_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_paper".}
proc fQsciLexerJavaScript_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerJavaScript_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_defaultColorWithStyle".}
proc fQsciLexerJavaScript_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJavaScript_virtualbase_defaultEolFill".}
proc fcQsciLexerJavaScript_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_defaultEolFill".}
proc fQsciLexerJavaScript_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerJavaScript_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_defaultFontWithStyle".}
proc fQsciLexerJavaScript_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJavaScript_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerJavaScript_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerJavaScript_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_setEditor".}
proc fcQsciLexerJavaScript_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setEditor".}
proc fQsciLexerJavaScript_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerJavaScript_virtualbase_refreshProperties".}
proc fcQsciLexerJavaScript_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_refreshProperties".}
proc fQsciLexerJavaScript_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerJavaScript_virtualbase_styleBitsNeeded".}
proc fcQsciLexerJavaScript_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_styleBitsNeeded".}
proc fQsciLexerJavaScript_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerJavaScript_virtualbase_wordCharacters".}
proc fcQsciLexerJavaScript_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_wordCharacters".}
proc fQsciLexerJavaScript_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerJavaScript_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerJavaScript_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setAutoIndentStyle".}
proc fQsciLexerJavaScript_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJavaScript_virtualbase_setColor".}
proc fcQsciLexerJavaScript_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setColor".}
proc fQsciLexerJavaScript_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerJavaScript_virtualbase_setEolFill".}
proc fcQsciLexerJavaScript_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setEolFill".}
proc fQsciLexerJavaScript_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerJavaScript_virtualbase_setFont".}
proc fcQsciLexerJavaScript_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setFont".}
proc fQsciLexerJavaScript_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJavaScript_virtualbase_setPaper".}
proc fcQsciLexerJavaScript_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_setPaper".}
proc fQsciLexerJavaScript_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJavaScript_virtualbase_readProperties".}
proc fcQsciLexerJavaScript_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_readProperties".}
proc fQsciLexerJavaScript_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJavaScript_virtualbase_writeProperties".}
proc fcQsciLexerJavaScript_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_writeProperties".}
proc fQsciLexerJavaScript_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerJavaScript_virtualbase_event".}
proc fcQsciLexerJavaScript_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_event".}
proc fQsciLexerJavaScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerJavaScript_virtualbase_eventFilter".}
proc fcQsciLexerJavaScript_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_eventFilter".}
proc fQsciLexerJavaScript_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_timerEvent".}
proc fcQsciLexerJavaScript_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_timerEvent".}
proc fQsciLexerJavaScript_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_childEvent".}
proc fcQsciLexerJavaScript_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_childEvent".}
proc fQsciLexerJavaScript_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_customEvent".}
proc fcQsciLexerJavaScript_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_customEvent".}
proc fQsciLexerJavaScript_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_connectNotify".}
proc fcQsciLexerJavaScript_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_connectNotify".}
proc fQsciLexerJavaScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJavaScript_virtualbase_disconnectNotify".}
proc fcQsciLexerJavaScript_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerJavaScript_override_virtual_disconnectNotify".}
proc fcQsciLexerJavaScript_staticMetaObject(): pointer {.importc: "QsciLexerJavaScript_staticMetaObject".}
proc fcQsciLexerJavaScript_delete(self: pointer) {.importc: "QsciLexerJavaScript_delete".}


func init*(T: type QsciLexerJavaScript, h: ptr cQsciLexerJavaScript): QsciLexerJavaScript =
  T(h: h)
proc create*(T: type QsciLexerJavaScript, ): QsciLexerJavaScript =

  QsciLexerJavaScript.init(fcQsciLexerJavaScript_new())
proc create*(T: type QsciLexerJavaScript, parent: gen_qobject.QObject): QsciLexerJavaScript =

  QsciLexerJavaScript.init(fcQsciLexerJavaScript_new2(parent.h))
proc metaObject*(self: QsciLexerJavaScript, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJavaScript_metaObject(self.h))

proc metacast*(self: QsciLexerJavaScript, param1: cstring): pointer =

  fcQsciLexerJavaScript_metacast(self.h, param1)

proc metacall*(self: QsciLexerJavaScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerJavaScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerJavaScript, s: cstring): string =

  let v_ms = fcQsciLexerJavaScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerJavaScript, s: cstring): string =

  let v_ms = fcQsciLexerJavaScript_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerJavaScript, ): cstring =

  (fcQsciLexerJavaScript_language(self.h))

proc defaultColor*(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerJavaScript_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerJavaScript, style: cint): bool =

  fcQsciLexerJavaScript_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerJavaScript, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerJavaScript_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerJavaScript_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerJavaScript, set: cint): cstring =

  (fcQsciLexerJavaScript_keywords(self.h, set))

proc description*(self: QsciLexerJavaScript, style: cint): string =

  let v_ms = fcQsciLexerJavaScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerJavaScript, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJavaScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerJavaScript, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJavaScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerJavaScript, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJavaScript_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerJavaScript, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJavaScript_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerJavaScript, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerJavaScript_virtualbase_metaObject(self.h))

type QsciLexerJavaScriptmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metaObject(self: ptr cQsciLexerJavaScript, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metaObject ".} =
  type Cb = proc(super: QsciLexerJavaScriptmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerJavaScript, param1: cstring): pointer =


  fQsciLexerJavaScript_virtualbase_metacast(self.h, param1)

type QsciLexerJavaScriptmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metacast(self: ptr cQsciLexerJavaScript, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metacast ".} =
  type Cb = proc(super: QsciLexerJavaScriptmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerJavaScript(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerJavaScript, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerJavaScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJavaScriptmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metacall(self: ptr cQsciLexerJavaScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metacall ".} =
  type Cb = proc(super: QsciLexerJavaScriptmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerJavaScript(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerJavaScript, fold: bool): void =


  fQsciLexerJavaScript_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerJavaScriptsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldAtElse(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerJavaScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerJavaScript, fold: bool): void =


  fQsciLexerJavaScript_virtualbase_setFoldComments(self.h, fold)

type QsciLexerJavaScriptsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldComments(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldComments ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerJavaScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerJavaScript, fold: bool): void =


  fQsciLexerJavaScript_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerJavaScriptsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldCompact(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerJavaScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerJavaScript, fold: bool): void =


  fQsciLexerJavaScript_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerJavaScriptsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldPreprocessor(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerJavaScript(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setStylePreprocessor(self: QsciLexerJavaScript, style: bool): void =


  fQsciLexerJavaScript_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerJavaScriptsetStylePreprocessorBase* = proc(style: bool): void
proc onsetStylePreprocessor*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetStylePreprocessorBase, style: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetStylePreprocessorBase, style: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setStylePreprocessor(self: ptr cQsciLexerJavaScript, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setStylePreprocessor ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetStylePreprocessorBase, style: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: bool): auto =
    callVirtualBase_setStylePreprocessor(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  nimfunc[](superCall, slotval1)
type QsciLexerJavaScriptlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerJavaScript, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_language(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerJavaScript, ): cstring =


  (fQsciLexerJavaScript_virtualbase_lexer(self.h))

type QsciLexerJavaScriptlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_lexer(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_lexer ".} =
  type Cb = proc(super: QsciLexerJavaScriptlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_lexerId(self.h)

type QsciLexerJavaScriptlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_lexerId(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_lexerId ".} =
  type Cb = proc(super: QsciLexerJavaScriptlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerJavaScript, ): cstring =


  (fQsciLexerJavaScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJavaScriptautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_autoCompletionFillups(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerJavaScriptautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerJavaScript, ): seq[string] =


  var v_ma = fQsciLexerJavaScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJavaScriptautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_autoCompletionWordSeparators(self: ptr cQsciLexerJavaScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJavaScript_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerJavaScriptautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerJavaScript, style: ptr cint): cstring =


  (fQsciLexerJavaScript_virtualbase_blockEnd(self.h, style))

type QsciLexerJavaScriptblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockEnd(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockEnd ".} =
  type Cb = proc(super: QsciLexerJavaScriptblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_blockLookback(self.h)

type QsciLexerJavaScriptblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockLookback(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockLookback ".} =
  type Cb = proc(super: QsciLexerJavaScriptblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerJavaScript, style: ptr cint): cstring =


  (fQsciLexerJavaScript_virtualbase_blockStart(self.h, style))

type QsciLexerJavaScriptblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockStart(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockStart ".} =
  type Cb = proc(super: QsciLexerJavaScriptblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerJavaScript, style: ptr cint): cstring =


  (fQsciLexerJavaScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJavaScriptblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockStartKeyword(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerJavaScriptblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_braceStyle(self.h)

type QsciLexerJavaScriptbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_braceStyle(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_braceStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerJavaScript, ): bool =


  fQsciLexerJavaScript_virtualbase_caseSensitive(self.h)

type QsciLexerJavaScriptcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_caseSensitive(self: ptr cQsciLexerJavaScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_caseSensitive ".} =
  type Cb = proc(super: QsciLexerJavaScriptcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_color(self.h, style))

type QsciLexerJavaScriptcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_color(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_color ".} =
  type Cb = proc(super: QsciLexerJavaScriptcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerJavaScript, style: cint): bool =


  fQsciLexerJavaScript_virtualbase_eolFill(self.h, style)

type QsciLexerJavaScripteolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScripteolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScripteolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_eolFill(self: ptr cQsciLexerJavaScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_eolFill ".} =
  type Cb = proc(super: QsciLexerJavaScripteolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerJavaScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJavaScript_virtualbase_font(self.h, style))

type QsciLexerJavaScriptfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_font(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_font ".} =
  type Cb = proc(super: QsciLexerJavaScriptfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_indentationGuideView(self.h)

type QsciLexerJavaScriptindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_indentationGuideView(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerJavaScriptindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerJavaScript, set: cint): cstring =


  (fQsciLexerJavaScript_virtualbase_keywords(self.h, set))

type QsciLexerJavaScriptkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_keywords(self: ptr cQsciLexerJavaScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_keywords ".} =
  type Cb = proc(super: QsciLexerJavaScriptkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerJavaScript(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_defaultStyle(self.h)

type QsciLexerJavaScriptdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultStyle(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerJavaScriptdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerJavaScript, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_description(self: ptr cQsciLexerJavaScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJavaScript_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_paper(self.h, style))

type QsciLexerJavaScriptpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_paper(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_paper ".} =
  type Cb = proc(super: QsciLexerJavaScriptpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultColorWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerJavaScript, style: cint): bool =


  fQsciLexerJavaScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJavaScriptdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultEolFill(self: ptr cQsciLexerJavaScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerJavaScriptdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerJavaScript, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJavaScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultFontWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerJavaScript, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultPaperWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerJavaScript(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerJavaScript, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerJavaScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJavaScriptsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setEditor(self: ptr cQsciLexerJavaScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setEditor ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerJavaScript(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerJavaScript, ): void =


  fQsciLexerJavaScript_virtualbase_refreshProperties(self.h)

type QsciLexerJavaScriptrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_refreshProperties(self: ptr cQsciLexerJavaScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_refreshProperties ".} =
  type Cb = proc(super: QsciLexerJavaScriptrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerJavaScript(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerJavaScript, ): cint =


  fQsciLexerJavaScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJavaScriptstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_styleBitsNeeded(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerJavaScriptstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerJavaScript, ): cstring =


  (fQsciLexerJavaScript_virtualbase_wordCharacters(self.h))

type QsciLexerJavaScriptwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_wordCharacters(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_wordCharacters ".} =
  type Cb = proc(super: QsciLexerJavaScriptwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerJavaScript(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerJavaScript, autoindentstyle: cint): void =


  fQsciLexerJavaScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJavaScriptsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setAutoIndentStyle(self: ptr cQsciLexerJavaScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerJavaScript(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerJavaScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJavaScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJavaScriptsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setColor(self: ptr cQsciLexerJavaScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setColor ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerJavaScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerJavaScript, eoffill: bool, style: cint): void =


  fQsciLexerJavaScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJavaScriptsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setEolFill(self: ptr cQsciLexerJavaScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setEolFill ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerJavaScript(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerJavaScript, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerJavaScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJavaScriptsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFont(self: ptr cQsciLexerJavaScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFont ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerJavaScript(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerJavaScript, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJavaScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJavaScriptsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setPaper(self: ptr cQsciLexerJavaScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setPaper ".} =
  type Cb = proc(super: QsciLexerJavaScriptsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerJavaScript(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerJavaScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJavaScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavaScriptreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_readProperties(self: ptr cQsciLexerJavaScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_readProperties ".} =
  type Cb = proc(super: QsciLexerJavaScriptreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerJavaScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerJavaScript, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJavaScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavaScriptwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_writeProperties(self: ptr cQsciLexerJavaScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_writeProperties ".} =
  type Cb = proc(super: QsciLexerJavaScriptwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerJavaScript(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerJavaScript, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJavaScript_virtualbase_event(self.h, event.h)

type QsciLexerJavaScripteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScripteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScripteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_event(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_event ".} =
  type Cb = proc(super: QsciLexerJavaScripteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerJavaScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerJavaScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJavaScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJavaScripteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_eventFilter(self: ptr cQsciLexerJavaScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_eventFilter ".} =
  type Cb = proc(super: QsciLexerJavaScripteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerJavaScript(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerJavaScript, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerJavaScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJavaScripttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_timerEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_timerEvent ".} =
  type Cb = proc(super: QsciLexerJavaScripttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerJavaScript(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerJavaScript, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerJavaScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerJavaScriptchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_childEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_childEvent ".} =
  type Cb = proc(super: QsciLexerJavaScriptchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerJavaScript(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerJavaScript, event: gen_qcoreevent.QEvent): void =


  fQsciLexerJavaScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerJavaScriptcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_customEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_customEvent ".} =
  type Cb = proc(super: QsciLexerJavaScriptcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerJavaScript(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerJavaScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJavaScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJavaScriptconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_connectNotify(self: ptr cQsciLexerJavaScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_connectNotify ".} =
  type Cb = proc(super: QsciLexerJavaScriptconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerJavaScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerJavaScript, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJavaScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJavaScriptdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerJavaScript, slot: proc(super: QsciLexerJavaScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_disconnectNotify(self: ptr cQsciLexerJavaScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerJavaScriptdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerJavaScript(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerJavaScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJavaScript_staticMetaObject())
proc delete*(self: QsciLexerJavaScript) =
  fcQsciLexerJavaScript_delete(self.h)
