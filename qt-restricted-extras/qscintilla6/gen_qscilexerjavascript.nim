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
proc fcQsciLexerJavaScript_language(self: pointer, ): cstring {.importc: "QsciLexerJavaScript_language".}
proc fcQsciLexerJavaScript_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultColor".}
proc fcQsciLexerJavaScript_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJavaScript_defaultEolFill".}
proc fcQsciLexerJavaScript_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultFont".}
proc fcQsciLexerJavaScript_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerJavaScript_defaultPaper".}
proc fcQsciLexerJavaScript_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJavaScript_keywords".}
proc fcQsciLexerJavaScript_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerJavaScript_description".}
proc fcQsciLexerJavaScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJavaScript_tr2".}
proc fcQsciLexerJavaScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJavaScript_tr3".}
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


func init*(T: type gen_qscilexerjavascript_types.QsciLexerJavaScript, h: ptr cQsciLexerJavaScript): gen_qscilexerjavascript_types.QsciLexerJavaScript =
  T(h: h)
proc create*(T: type gen_qscilexerjavascript_types.QsciLexerJavaScript, ): gen_qscilexerjavascript_types.QsciLexerJavaScript =
  gen_qscilexerjavascript_types.QsciLexerJavaScript.init(fcQsciLexerJavaScript_new())

proc create*(T: type gen_qscilexerjavascript_types.QsciLexerJavaScript, parent: gen_qobject.QObject): gen_qscilexerjavascript_types.QsciLexerJavaScript =
  gen_qscilexerjavascript_types.QsciLexerJavaScript.init(fcQsciLexerJavaScript_new2(parent.h))

proc metaObject*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJavaScript_metaObject(self.h))

proc metacast*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, param1: cstring): pointer =
  fcQsciLexerJavaScript_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJavaScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerjavascript_types.QsciLexerJavaScript, s: cstring): string =
  let v_ms = fcQsciLexerJavaScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cstring =
  (fcQsciLexerJavaScript_language(self.h))

proc defaultColor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerJavaScript_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): bool =
  fcQsciLexerJavaScript_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerJavaScript_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerJavaScript_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, set: cint): cstring =
  (fcQsciLexerJavaScript_keywords(self.h, set))

proc description*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): string =
  let v_ms = fcQsciLexerJavaScript_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerjavascript_types.QsciLexerJavaScript, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJavaScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerjavascript_types.QsciLexerJavaScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJavaScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerJavaScriptmetaObject*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerJavaScript_virtualbase_metaObject(self.h))

type QsciLexerJavaScriptmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metaObject(self: ptr cQsciLexerJavaScript, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerJavaScriptmetacast*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, param1: cstring): pointer =
  fQsciLexerJavaScript_virtualbase_metacast(self.h, param1)

type QsciLexerJavaScriptmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metacast(self: ptr cQsciLexerJavaScript, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metacast ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptmetacall*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerJavaScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJavaScriptmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_metacall(self: ptr cQsciLexerJavaScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_metacall ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerJavaScriptsetFoldAtElse*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, fold: bool): void =
  fQsciLexerJavaScript_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerJavaScriptsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldAtElse(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavaScriptsetFoldComments*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, fold: bool): void =
  fQsciLexerJavaScript_virtualbase_setFoldComments(self.h, fold)

type QsciLexerJavaScriptsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldComments(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavaScriptsetFoldCompact*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, fold: bool): void =
  fQsciLexerJavaScript_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerJavaScriptsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldCompact(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavaScriptsetFoldPreprocessor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, fold: bool): void =
  fQsciLexerJavaScript_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerJavaScriptsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFoldPreprocessor(self: ptr cQsciLexerJavaScript, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavaScriptsetStylePreprocessor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: bool): void =
  fQsciLexerJavaScript_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerJavaScriptsetStylePreprocessorProc* = proc(style: bool): void
proc onsetStylePreprocessor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetStylePreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetStylePreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setStylePreprocessor(self: ptr cQsciLexerJavaScript, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setStylePreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetStylePreprocessorProc](cast[pointer](slot))
  let slotval1 = style


  nimfunc[](slotval1)
type QsciLexerJavaScriptlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_language(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_language ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptlexer*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cstring =
  (fQsciLexerJavaScript_virtualbase_lexer(self.h))

type QsciLexerJavaScriptlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_lexer(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_lexer ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptlexerId*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_lexerId(self.h)

type QsciLexerJavaScriptlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_lexerId(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptautoCompletionFillups*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cstring =
  (fQsciLexerJavaScript_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJavaScriptautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_autoCompletionFillups(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptautoCompletionWordSeparators*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): seq[string] =
  var v_ma = fQsciLexerJavaScript_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJavaScriptautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_autoCompletionWordSeparators(self: ptr cQsciLexerJavaScript, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJavaScript_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerJavaScriptblockEnd*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: ptr cint): cstring =
  (fQsciLexerJavaScript_virtualbase_blockEnd(self.h, style))

type QsciLexerJavaScriptblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockEnd(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptblockLookback*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_blockLookback(self.h)

type QsciLexerJavaScriptblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockLookback(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptblockStart*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: ptr cint): cstring =
  (fQsciLexerJavaScript_virtualbase_blockStart(self.h, style))

type QsciLexerJavaScriptblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockStart(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptblockStartKeyword*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: ptr cint): cstring =
  (fQsciLexerJavaScript_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJavaScriptblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_blockStartKeyword(self: ptr cQsciLexerJavaScript, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptbraceStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_braceStyle(self.h)

type QsciLexerJavaScriptbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_braceStyle(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptcaseSensitive*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): bool =
  fQsciLexerJavaScript_virtualbase_caseSensitive(self.h)

type QsciLexerJavaScriptcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_caseSensitive(self: ptr cQsciLexerJavaScript, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptcolor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_color(self.h, style))

type QsciLexerJavaScriptcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_color(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_color ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScripteolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): bool =
  fQsciLexerJavaScript_virtualbase_eolFill(self.h, style)

type QsciLexerJavaScripteolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScripteolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScripteolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_eolFill(self: ptr cQsciLexerJavaScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavaScripteolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptfont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerJavaScript_virtualbase_font(self.h, style))

type QsciLexerJavaScriptfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_font(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_font ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScriptindentationGuideView*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_indentationGuideView(self.h)

type QsciLexerJavaScriptindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_indentationGuideView(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptkeywords*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, set: cint): cstring =
  (fQsciLexerJavaScript_virtualbase_keywords(self.h, set))

type QsciLexerJavaScriptkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_keywords(self: ptr cQsciLexerJavaScript, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_keywords ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptdefaultStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_defaultStyle(self.h)

type QsciLexerJavaScriptdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultStyle(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerJavaScriptdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_description(self: ptr cQsciLexerJavaScript, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJavaScript_description ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerJavaScriptpaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_paper(self.h, style))

type QsciLexerJavaScriptpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_paper(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_paper ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScriptdefaultColor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultColorWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScriptdefaultEolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): bool =
  fQsciLexerJavaScript_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJavaScriptdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultEolFill(self: ptr cQsciLexerJavaScript, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScriptdefaultFont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerJavaScript_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultFontWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScriptdefaultPaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerJavaScript_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJavaScriptdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_defaultPaperWithStyle(self: ptr cQsciLexerJavaScript, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJavaScript_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaScriptsetEditor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerJavaScript_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJavaScriptsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setEditor(self: ptr cQsciLexerJavaScript, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerJavaScriptrefreshProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): void =
  fQsciLexerJavaScript_virtualbase_refreshProperties(self.h)

type QsciLexerJavaScriptrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_refreshProperties(self: ptr cQsciLexerJavaScript, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerJavaScriptstyleBitsNeeded*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cint =
  fQsciLexerJavaScript_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJavaScriptstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_styleBitsNeeded(self: ptr cQsciLexerJavaScript, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJavaScript_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptwordCharacters*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, ): cstring =
  (fQsciLexerJavaScript_virtualbase_wordCharacters(self.h))

type QsciLexerJavaScriptwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_wordCharacters(self: ptr cQsciLexerJavaScript, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJavaScript_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaScriptsetAutoIndentStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, autoindentstyle: cint): void =
  fQsciLexerJavaScript_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJavaScriptsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setAutoIndentStyle(self: ptr cQsciLexerJavaScript, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerJavaScriptsetColor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerJavaScript_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJavaScriptsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setColor(self: ptr cQsciLexerJavaScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setColor ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavaScriptsetEolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, eoffill: bool, style: cint): void =
  fQsciLexerJavaScript_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJavaScriptsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setEolFill(self: ptr cQsciLexerJavaScript, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavaScriptsetFont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerJavaScript_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJavaScriptsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setFont(self: ptr cQsciLexerJavaScript, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setFont ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavaScriptsetPaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerJavaScript_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJavaScriptsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_setPaper(self: ptr cQsciLexerJavaScript, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavaScriptreadProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerJavaScript_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavaScriptreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_readProperties(self: ptr cQsciLexerJavaScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavaScriptwriteProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerJavaScript_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavaScriptwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_writeProperties(self: ptr cQsciLexerJavaScript, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavaScriptevent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerJavaScript_virtualbase_event(self.h, event.h)

type QsciLexerJavaScripteventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScripteventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScripteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_event(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_event ".} =
  var nimfunc = cast[ptr QsciLexerJavaScripteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaScripteventFilter*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerJavaScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJavaScripteventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScripteventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScripteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_eventFilter(self: ptr cQsciLexerJavaScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJavaScript_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerJavaScripteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavaScripttimerEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerJavaScript_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJavaScripttimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScripttimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScripttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_timerEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavaScripttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavaScriptchildEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerJavaScript_virtualbase_childEvent(self.h, event.h)

type QsciLexerJavaScriptchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_childEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavaScriptcustomEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, event: gen_qcoreevent.QEvent): void =
  fQsciLexerJavaScript_virtualbase_customEvent(self.h, event.h)

type QsciLexerJavaScriptcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_customEvent(self: ptr cQsciLexerJavaScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavaScriptconnectNotify*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerJavaScript_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJavaScriptconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_connectNotify(self: ptr cQsciLexerJavaScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerJavaScriptdisconnectNotify*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerJavaScript_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJavaScriptdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript, slot: QsciLexerJavaScriptdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaScriptdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJavaScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJavaScript_disconnectNotify(self: ptr cQsciLexerJavaScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJavaScript_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJavaScriptdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerjavascript_types.QsciLexerJavaScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJavaScript_staticMetaObject())
proc delete*(self: gen_qscilexerjavascript_types.QsciLexerJavaScript) =
  fcQsciLexerJavaScript_delete(self.h)
