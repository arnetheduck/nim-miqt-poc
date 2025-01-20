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
{.compile("gen_qscilexercsharp.cpp", cflags).}


import gen_qscilexercsharp_types
export gen_qscilexercsharp_types

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

type cQsciLexerCSharp*{.exportc: "QsciLexerCSharp", incompleteStruct.} = object

proc fcQsciLexerCSharp_new(): ptr cQsciLexerCSharp {.importc: "QsciLexerCSharp_new".}
proc fcQsciLexerCSharp_new2(parent: pointer): ptr cQsciLexerCSharp {.importc: "QsciLexerCSharp_new2".}
proc fcQsciLexerCSharp_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCSharp_metaObject".}
proc fcQsciLexerCSharp_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCSharp_metacast".}
proc fcQsciLexerCSharp_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCSharp_metacall".}
proc fcQsciLexerCSharp_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_tr".}
proc fcQsciLexerCSharp_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf8".}
proc fcQsciLexerCSharp_language(self: pointer, ): cstring {.importc: "QsciLexerCSharp_language".}
proc fcQsciLexerCSharp_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultColor".}
proc fcQsciLexerCSharp_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSharp_defaultEolFill".}
proc fcQsciLexerCSharp_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultFont".}
proc fcQsciLexerCSharp_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultPaper".}
proc fcQsciLexerCSharp_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSharp_keywords".}
proc fcQsciLexerCSharp_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCSharp_description".}
proc fcQsciLexerCSharp_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_tr2".}
proc fcQsciLexerCSharp_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSharp_tr3".}
proc fcQsciLexerCSharp_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf82".}
proc fcQsciLexerCSharp_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf83".}
proc fQsciLexerCSharp_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCSharp_virtualbase_metaObject".}
proc fcQsciLexerCSharp_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_metaObject".}
proc fQsciLexerCSharp_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCSharp_virtualbase_metacast".}
proc fcQsciLexerCSharp_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_metacast".}
proc fQsciLexerCSharp_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCSharp_virtualbase_metacall".}
proc fcQsciLexerCSharp_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_metacall".}
proc fQsciLexerCSharp_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerCSharp_virtualbase_setFoldAtElse".}
proc fcQsciLexerCSharp_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setFoldAtElse".}
proc fQsciLexerCSharp_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerCSharp_virtualbase_setFoldComments".}
proc fcQsciLexerCSharp_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setFoldComments".}
proc fQsciLexerCSharp_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerCSharp_virtualbase_setFoldCompact".}
proc fcQsciLexerCSharp_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setFoldCompact".}
proc fQsciLexerCSharp_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerCSharp_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerCSharp_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setFoldPreprocessor".}
proc fQsciLexerCSharp_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerCSharp_virtualbase_setStylePreprocessor".}
proc fcQsciLexerCSharp_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setStylePreprocessor".}
proc fcQsciLexerCSharp_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_language".}
proc fQsciLexerCSharp_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCSharp_virtualbase_lexer".}
proc fcQsciLexerCSharp_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_lexer".}
proc fQsciLexerCSharp_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_lexerId".}
proc fcQsciLexerCSharp_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_lexerId".}
proc fQsciLexerCSharp_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCSharp_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCSharp_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_autoCompletionFillups".}
proc fQsciLexerCSharp_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCSharp_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCSharp_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCSharp_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSharp_virtualbase_blockEnd".}
proc fcQsciLexerCSharp_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_blockEnd".}
proc fQsciLexerCSharp_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_blockLookback".}
proc fcQsciLexerCSharp_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_blockLookback".}
proc fQsciLexerCSharp_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSharp_virtualbase_blockStart".}
proc fcQsciLexerCSharp_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_blockStart".}
proc fQsciLexerCSharp_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCSharp_virtualbase_blockStartKeyword".}
proc fcQsciLexerCSharp_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_blockStartKeyword".}
proc fQsciLexerCSharp_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_braceStyle".}
proc fcQsciLexerCSharp_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_braceStyle".}
proc fQsciLexerCSharp_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCSharp_virtualbase_caseSensitive".}
proc fcQsciLexerCSharp_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_caseSensitive".}
proc fQsciLexerCSharp_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_color".}
proc fcQsciLexerCSharp_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_color".}
proc fQsciLexerCSharp_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCSharp_virtualbase_eolFill".}
proc fcQsciLexerCSharp_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_eolFill".}
proc fQsciLexerCSharp_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_font".}
proc fcQsciLexerCSharp_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_font".}
proc fQsciLexerCSharp_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_indentationGuideView".}
proc fcQsciLexerCSharp_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_indentationGuideView".}
proc fQsciLexerCSharp_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCSharp_virtualbase_keywords".}
proc fcQsciLexerCSharp_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_keywords".}
proc fQsciLexerCSharp_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_defaultStyle".}
proc fcQsciLexerCSharp_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_defaultStyle".}
proc fcQsciLexerCSharp_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_description".}
proc fQsciLexerCSharp_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_paper".}
proc fcQsciLexerCSharp_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_paper".}
proc fQsciLexerCSharp_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCSharp_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCSharp_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCSharp_virtualbase_defaultEolFill".}
proc fcQsciLexerCSharp_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_defaultEolFill".}
proc fQsciLexerCSharp_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCSharp_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCSharp_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCSharp_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCSharp_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCSharp_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCSharp_virtualbase_setEditor".}
proc fcQsciLexerCSharp_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setEditor".}
proc fQsciLexerCSharp_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCSharp_virtualbase_refreshProperties".}
proc fcQsciLexerCSharp_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_refreshProperties".}
proc fQsciLexerCSharp_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCSharp_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCSharp_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_styleBitsNeeded".}
proc fQsciLexerCSharp_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCSharp_virtualbase_wordCharacters".}
proc fcQsciLexerCSharp_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_wordCharacters".}
proc fQsciLexerCSharp_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCSharp_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCSharp_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCSharp_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCSharp_virtualbase_setColor".}
proc fcQsciLexerCSharp_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setColor".}
proc fQsciLexerCSharp_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCSharp_virtualbase_setEolFill".}
proc fcQsciLexerCSharp_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setEolFill".}
proc fQsciLexerCSharp_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCSharp_virtualbase_setFont".}
proc fcQsciLexerCSharp_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setFont".}
proc fQsciLexerCSharp_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCSharp_virtualbase_setPaper".}
proc fcQsciLexerCSharp_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_setPaper".}
proc fQsciLexerCSharp_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCSharp_virtualbase_readProperties".}
proc fcQsciLexerCSharp_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_readProperties".}
proc fQsciLexerCSharp_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCSharp_virtualbase_writeProperties".}
proc fcQsciLexerCSharp_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_writeProperties".}
proc fQsciLexerCSharp_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCSharp_virtualbase_event".}
proc fcQsciLexerCSharp_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_event".}
proc fQsciLexerCSharp_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCSharp_virtualbase_eventFilter".}
proc fcQsciLexerCSharp_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_eventFilter".}
proc fQsciLexerCSharp_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSharp_virtualbase_timerEvent".}
proc fcQsciLexerCSharp_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_timerEvent".}
proc fQsciLexerCSharp_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSharp_virtualbase_childEvent".}
proc fcQsciLexerCSharp_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_childEvent".}
proc fQsciLexerCSharp_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCSharp_virtualbase_customEvent".}
proc fcQsciLexerCSharp_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_customEvent".}
proc fQsciLexerCSharp_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCSharp_virtualbase_connectNotify".}
proc fcQsciLexerCSharp_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_connectNotify".}
proc fQsciLexerCSharp_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCSharp_virtualbase_disconnectNotify".}
proc fcQsciLexerCSharp_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCSharp_override_virtual_disconnectNotify".}
proc fcQsciLexerCSharp_staticMetaObject(): pointer {.importc: "QsciLexerCSharp_staticMetaObject".}
proc fcQsciLexerCSharp_delete(self: pointer) {.importc: "QsciLexerCSharp_delete".}


func init*(T: type QsciLexerCSharp, h: ptr cQsciLexerCSharp): QsciLexerCSharp =
  T(h: h)
proc create*(T: type QsciLexerCSharp, ): QsciLexerCSharp =

  QsciLexerCSharp.init(fcQsciLexerCSharp_new())
proc create*(T: type QsciLexerCSharp, parent: gen_qobject.QObject): QsciLexerCSharp =

  QsciLexerCSharp.init(fcQsciLexerCSharp_new2(parent.h))
proc metaObject*(self: QsciLexerCSharp, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSharp_metaObject(self.h))

proc metacast*(self: QsciLexerCSharp, param1: cstring): pointer =

  fcQsciLexerCSharp_metacast(self.h, param1)

proc metacall*(self: QsciLexerCSharp, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCSharp_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCSharp, s: cstring): string =

  let v_ms = fcQsciLexerCSharp_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerCSharp, s: cstring): string =

  let v_ms = fcQsciLexerCSharp_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerCSharp, ): cstring =

  (fcQsciLexerCSharp_language(self.h))

proc defaultColor*(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCSharp_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerCSharp, style: cint): bool =

  fcQsciLexerCSharp_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerCSharp, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerCSharp_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerCSharp_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerCSharp, set: cint): cstring =

  (fcQsciLexerCSharp_keywords(self.h, set))

proc description*(self: QsciLexerCSharp, style: cint): string =

  let v_ms = fcQsciLexerCSharp_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerCSharp, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSharp_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCSharp, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSharp_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerCSharp, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCSharp_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerCSharp, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCSharp_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerCSharp, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerCSharp_virtualbase_metaObject(self.h))

type QsciLexerCSharpmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metaObject(self: ptr cQsciLexerCSharp, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_metaObject ".} =
  type Cb = proc(super: QsciLexerCSharpmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerCSharp, param1: cstring): pointer =


  fQsciLexerCSharp_virtualbase_metacast(self.h, param1)

type QsciLexerCSharpmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metacast(self: ptr cQsciLexerCSharp, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_metacast ".} =
  type Cb = proc(super: QsciLexerCSharpmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerCSharp(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerCSharp, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCSharp_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCSharpmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metacall(self: ptr cQsciLexerCSharp, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_metacall ".} =
  type Cb = proc(super: QsciLexerCSharpmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCSharp(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerCSharp, fold: bool): void =


  fQsciLexerCSharp_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCSharpsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldAtElse(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerCSharpsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerCSharp(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerCSharp, fold: bool): void =


  fQsciLexerCSharp_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCSharpsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldComments(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldComments ".} =
  type Cb = proc(super: QsciLexerCSharpsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerCSharp(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerCSharp, fold: bool): void =


  fQsciLexerCSharp_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCSharpsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldCompact(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerCSharpsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerCSharp(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerCSharp, fold: bool): void =


  fQsciLexerCSharp_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerCSharpsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldPreprocessor(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerCSharpsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerCSharp(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setStylePreprocessor(self: QsciLexerCSharp, style: bool): void =


  fQsciLexerCSharp_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerCSharpsetStylePreprocessorBase* = proc(style: bool): void
proc onsetStylePreprocessor*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetStylePreprocessorBase, style: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetStylePreprocessorBase, style: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setStylePreprocessor(self: ptr cQsciLexerCSharp, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setStylePreprocessor ".} =
  type Cb = proc(super: QsciLexerCSharpsetStylePreprocessorBase, style: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: bool): auto =
    callVirtualBase_setStylePreprocessor(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  nimfunc[](superCall, slotval1)
type QsciLexerCSharplanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCSharp, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_language(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCSharp, ): cstring =


  (fQsciLexerCSharp_virtualbase_lexer(self.h))

type QsciLexerCSharplexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharplexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharplexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_lexer(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_lexer ".} =
  type Cb = proc(super: QsciLexerCSharplexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_lexerId(self.h)

type QsciLexerCSharplexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharplexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharplexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_lexerId(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_lexerId ".} =
  type Cb = proc(super: QsciLexerCSharplexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCSharp, ): cstring =


  (fQsciLexerCSharp_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCSharpautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_autoCompletionFillups(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCSharpautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCSharp, ): seq[string] =


  var v_ma = fQsciLexerCSharp_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCSharpautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_autoCompletionWordSeparators(self: ptr cQsciLexerCSharp, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCSharp_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCSharpautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCSharp, style: ptr cint): cstring =


  (fQsciLexerCSharp_virtualbase_blockEnd(self.h, style))

type QsciLexerCSharpblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockEnd(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockEnd ".} =
  type Cb = proc(super: QsciLexerCSharpblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_blockLookback(self.h)

type QsciLexerCSharpblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockLookback(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockLookback ".} =
  type Cb = proc(super: QsciLexerCSharpblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCSharp, style: ptr cint): cstring =


  (fQsciLexerCSharp_virtualbase_blockStart(self.h, style))

type QsciLexerCSharpblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockStart(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockStart ".} =
  type Cb = proc(super: QsciLexerCSharpblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCSharp, style: ptr cint): cstring =


  (fQsciLexerCSharp_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCSharpblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockStartKeyword(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCSharpblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_braceStyle(self.h)

type QsciLexerCSharpbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_braceStyle(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_braceStyle ".} =
  type Cb = proc(super: QsciLexerCSharpbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCSharp, ): bool =


  fQsciLexerCSharp_virtualbase_caseSensitive(self.h)

type QsciLexerCSharpcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_caseSensitive(self: ptr cQsciLexerCSharp, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCSharpcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_color(self.h, style))

type QsciLexerCSharpcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_color(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_color ".} =
  type Cb = proc(super: QsciLexerCSharpcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCSharp, style: cint): bool =


  fQsciLexerCSharp_virtualbase_eolFill(self.h, style)

type QsciLexerCSharpeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_eolFill(self: ptr cQsciLexerCSharp, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_eolFill ".} =
  type Cb = proc(super: QsciLexerCSharpeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCSharp, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCSharp_virtualbase_font(self.h, style))

type QsciLexerCSharpfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_font(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_font ".} =
  type Cb = proc(super: QsciLexerCSharpfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_indentationGuideView(self.h)

type QsciLexerCSharpindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_indentationGuideView(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCSharpindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCSharp, set: cint): cstring =


  (fQsciLexerCSharp_virtualbase_keywords(self.h, set))

type QsciLexerCSharpkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_keywords(self: ptr cQsciLexerCSharp, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_keywords ".} =
  type Cb = proc(super: QsciLexerCSharpkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCSharp(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_defaultStyle(self.h)

type QsciLexerCSharpdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultStyle(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCSharpdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCSharpdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCSharp, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_description(self: ptr cQsciLexerCSharp, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCSharp_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_paper(self.h, style))

type QsciLexerCSharppaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharppaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharppaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_paper(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_paper ".} =
  type Cb = proc(super: QsciLexerCSharppaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCSharpdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultColorWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCSharpdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCSharp, style: cint): bool =


  fQsciLexerCSharp_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCSharpdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultEolFill(self: ptr cQsciLexerCSharp, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCSharpdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCSharp, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCSharp_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCSharpdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultFontWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCSharpdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCSharp, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCSharpdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultPaperWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCSharpdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCSharp(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerCSharp, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCSharp_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCSharpsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setEditor(self: ptr cQsciLexerCSharp, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setEditor ".} =
  type Cb = proc(super: QsciLexerCSharpsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCSharp(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerCSharp, ): void =


  fQsciLexerCSharp_virtualbase_refreshProperties(self.h)

type QsciLexerCSharprefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharprefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharprefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_refreshProperties(self: ptr cQsciLexerCSharp, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCSharprefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCSharp(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCSharp, ): cint =


  fQsciLexerCSharp_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCSharpstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_styleBitsNeeded(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCSharpstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerCSharp, ): cstring =


  (fQsciLexerCSharp_virtualbase_wordCharacters(self.h))

type QsciLexerCSharpwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_wordCharacters(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCSharpwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCSharp(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCSharp, autoindentstyle: cint): void =


  fQsciLexerCSharp_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCSharpsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setAutoIndentStyle(self: ptr cQsciLexerCSharp, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCSharpsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCSharp(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCSharp, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCSharp_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCSharpsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setColor(self: ptr cQsciLexerCSharp, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setColor ".} =
  type Cb = proc(super: QsciLexerCSharpsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCSharp(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCSharp, eoffill: bool, style: cint): void =


  fQsciLexerCSharp_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCSharpsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setEolFill(self: ptr cQsciLexerCSharp, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setEolFill ".} =
  type Cb = proc(super: QsciLexerCSharpsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCSharp(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCSharp, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCSharp_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCSharpsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFont(self: ptr cQsciLexerCSharp, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFont ".} =
  type Cb = proc(super: QsciLexerCSharpsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCSharp(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCSharp, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCSharp_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCSharpsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setPaper(self: ptr cQsciLexerCSharp, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setPaper ".} =
  type Cb = proc(super: QsciLexerCSharpsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCSharp(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCSharp, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCSharp_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSharpreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_readProperties(self: ptr cQsciLexerCSharp, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_readProperties ".} =
  type Cb = proc(super: QsciLexerCSharpreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCSharp(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCSharp, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCSharp_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSharpwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_writeProperties(self: ptr cQsciLexerCSharp, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_writeProperties ".} =
  type Cb = proc(super: QsciLexerCSharpwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCSharp(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCSharp, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCSharp_virtualbase_event(self.h, event.h)

type QsciLexerCSharpeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_event(self: ptr cQsciLexerCSharp, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_event ".} =
  type Cb = proc(super: QsciLexerCSharpeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCSharp(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCSharp, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCSharp_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCSharpeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_eventFilter(self: ptr cQsciLexerCSharp, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_eventFilter ".} =
  type Cb = proc(super: QsciLexerCSharpeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCSharp(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCSharp, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCSharp_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCSharptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_timerEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_timerEvent ".} =
  type Cb = proc(super: QsciLexerCSharptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCSharp(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCSharp, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCSharp_virtualbase_childEvent(self.h, event.h)

type QsciLexerCSharpchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_childEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_childEvent ".} =
  type Cb = proc(super: QsciLexerCSharpchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCSharp(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCSharp, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCSharp_virtualbase_customEvent(self.h, event.h)

type QsciLexerCSharpcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_customEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_customEvent ".} =
  type Cb = proc(super: QsciLexerCSharpcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCSharp(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCSharp, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCSharp_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCSharpconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_connectNotify(self: ptr cQsciLexerCSharp, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_connectNotify ".} =
  type Cb = proc(super: QsciLexerCSharpconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCSharp(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCSharp, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCSharp_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCSharpdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCSharp, slot: proc(super: QsciLexerCSharpdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCSharpdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_disconnectNotify(self: ptr cQsciLexerCSharp, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCSharpdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCSharp(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerCSharp): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSharp_staticMetaObject())
proc delete*(self: QsciLexerCSharp) =
  fcQsciLexerCSharp_delete(self.h)
