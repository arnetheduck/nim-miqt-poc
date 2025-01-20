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
proc fcQsciLexerCSharp_language(self: pointer, ): cstring {.importc: "QsciLexerCSharp_language".}
proc fcQsciLexerCSharp_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultColor".}
proc fcQsciLexerCSharp_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSharp_defaultEolFill".}
proc fcQsciLexerCSharp_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultFont".}
proc fcQsciLexerCSharp_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultPaper".}
proc fcQsciLexerCSharp_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSharp_keywords".}
proc fcQsciLexerCSharp_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCSharp_description".}
proc fcQsciLexerCSharp_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_tr2".}
proc fcQsciLexerCSharp_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSharp_tr3".}
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


func init*(T: type gen_qscilexercsharp_types.QsciLexerCSharp, h: ptr cQsciLexerCSharp): gen_qscilexercsharp_types.QsciLexerCSharp =
  T(h: h)
proc create*(T: type gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qscilexercsharp_types.QsciLexerCSharp =
  gen_qscilexercsharp_types.QsciLexerCSharp.init(fcQsciLexerCSharp_new())

proc create*(T: type gen_qscilexercsharp_types.QsciLexerCSharp, parent: gen_qobject.QObject): gen_qscilexercsharp_types.QsciLexerCSharp =
  gen_qscilexercsharp_types.QsciLexerCSharp.init(fcQsciLexerCSharp_new2(parent.h))

proc metaObject*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSharp_metaObject(self.h))

proc metacast*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cstring): pointer =
  fcQsciLexerCSharp_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCSharp_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring): string =
  let v_ms = fcQsciLexerCSharp_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fcQsciLexerCSharp_language(self.h))

proc defaultColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCSharp_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fcQsciLexerCSharp_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerCSharp_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerCSharp_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercsharp_types.QsciLexerCSharp, set: cint): cstring =
  (fcQsciLexerCSharp_keywords(self.h, set))

proc description*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): string =
  let v_ms = fcQsciLexerCSharp_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCSharp_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCSharp_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerCSharpmetaObject*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerCSharp_virtualbase_metaObject(self.h))

type QsciLexerCSharpmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metaObject(self: ptr cQsciLexerCSharp, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCSharpmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCSharpmetacast*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cstring): pointer =
  fQsciLexerCSharp_virtualbase_metacast(self.h, param1)

type QsciLexerCSharpmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metacast(self: ptr cQsciLexerCSharp, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCSharpmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpmetacall*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerCSharp_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCSharpmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_metacall(self: ptr cQsciLexerCSharp, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCSharpmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerCSharpsetFoldAtElse*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fQsciLexerCSharp_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerCSharpsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldAtElse(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCSharpsetFoldComments*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fQsciLexerCSharp_virtualbase_setFoldComments(self.h, fold)

type QsciLexerCSharpsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldComments(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCSharpsetFoldCompact*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fQsciLexerCSharp_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerCSharpsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldCompact(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCSharpsetFoldPreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fQsciLexerCSharp_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerCSharpsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFoldPreprocessor(self: ptr cQsciLexerCSharp, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerCSharpsetStylePreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: bool): void =
  fQsciLexerCSharp_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerCSharpsetStylePreprocessorProc* = proc(style: bool): void
proc onsetStylePreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetStylePreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetStylePreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setStylePreprocessor(self: ptr cQsciLexerCSharp, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setStylePreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetStylePreprocessorProc](cast[pointer](slot))
  let slotval1 = style


  nimfunc[](slotval1)
type QsciLexerCSharplanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharplanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharplanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_language(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_language ".} =
  var nimfunc = cast[ptr QsciLexerCSharplanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharplexer*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fQsciLexerCSharp_virtualbase_lexer(self.h))

type QsciLexerCSharplexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharplexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharplexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_lexer(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCSharplexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharplexerId*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_lexerId(self.h)

type QsciLexerCSharplexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharplexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharplexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_lexerId(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCSharplexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpautoCompletionFillups*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fQsciLexerCSharp_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCSharpautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_autoCompletionFillups(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCSharpautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpautoCompletionWordSeparators*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): seq[string] =
  var v_ma = fQsciLexerCSharp_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCSharpautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_autoCompletionWordSeparators(self: ptr cQsciLexerCSharp, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCSharp_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCSharpautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCSharpblockEnd*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fQsciLexerCSharp_virtualbase_blockEnd(self.h, style))

type QsciLexerCSharpblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockEnd(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCSharpblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpblockLookback*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_blockLookback(self.h)

type QsciLexerCSharpblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockLookback(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCSharpblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpblockStart*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fQsciLexerCSharp_virtualbase_blockStart(self.h, style))

type QsciLexerCSharpblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockStart(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCSharpblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpblockStartKeyword*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fQsciLexerCSharp_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCSharpblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_blockStartKeyword(self: ptr cQsciLexerCSharp, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCSharpblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpbraceStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_braceStyle(self.h)

type QsciLexerCSharpbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_braceStyle(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpcaseSensitive*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): bool =
  fQsciLexerCSharp_virtualbase_caseSensitive(self.h)

type QsciLexerCSharpcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_caseSensitive(self: ptr cQsciLexerCSharp, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCSharpcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpcolor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_color(self.h, style))

type QsciLexerCSharpcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_color(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_color ".} =
  var nimfunc = cast[ptr QsciLexerCSharpcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpeolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fQsciLexerCSharp_virtualbase_eolFill(self.h, style)

type QsciLexerCSharpeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_eolFill(self: ptr cQsciLexerCSharp, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSharpeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpfont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCSharp_virtualbase_font(self.h, style))

type QsciLexerCSharpfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_font(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_font ".} =
  var nimfunc = cast[ptr QsciLexerCSharpfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpindentationGuideView*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_indentationGuideView(self.h)

type QsciLexerCSharpindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_indentationGuideView(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCSharpindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpkeywords*(self: gen_qscilexercsharp_types.QsciLexerCSharp, set: cint): cstring =
  (fQsciLexerCSharp_virtualbase_keywords(self.h, set))

type QsciLexerCSharpkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_keywords(self: ptr cQsciLexerCSharp, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCSharpkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpdefaultStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_defaultStyle(self.h)

type QsciLexerCSharpdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultStyle(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCSharpdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_description(self: ptr cQsciLexerCSharp, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCSharp_description ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCSharppaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_paper(self.h, style))

type QsciLexerCSharppaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharppaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharppaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_paper(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_paper ".} =
  var nimfunc = cast[ptr QsciLexerCSharppaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpdefaultColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCSharpdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultColorWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpdefaultEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fQsciLexerCSharp_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCSharpdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultEolFill(self: ptr cQsciLexerCSharp, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpdefaultFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCSharp_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCSharpdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultFontWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpdefaultPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCSharp_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCSharpdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_defaultPaperWithStyle(self: ptr cQsciLexerCSharp, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCSharp_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCSharpsetEditor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerCSharp_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCSharpsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setEditor(self: ptr cQsciLexerCSharp, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCSharprefreshProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): void =
  fQsciLexerCSharp_virtualbase_refreshProperties(self.h)

type QsciLexerCSharprefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharprefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharprefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_refreshProperties(self: ptr cQsciLexerCSharp, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSharprefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCSharpstyleBitsNeeded*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fQsciLexerCSharp_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCSharpstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_styleBitsNeeded(self: ptr cQsciLexerCSharp, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCSharp_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCSharpstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpwordCharacters*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fQsciLexerCSharp_virtualbase_wordCharacters(self.h))

type QsciLexerCSharpwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_wordCharacters(self: ptr cQsciLexerCSharp, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCSharp_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCSharpwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCSharpsetAutoIndentStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, autoindentstyle: cint): void =
  fQsciLexerCSharp_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCSharpsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setAutoIndentStyle(self: ptr cQsciLexerCSharp, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCSharpsetColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCSharp_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCSharpsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setColor(self: ptr cQsciLexerCSharp, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSharpsetEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, eoffill: bool, style: cint): void =
  fQsciLexerCSharp_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCSharpsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setEolFill(self: ptr cQsciLexerCSharp, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSharpsetFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerCSharp_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCSharpsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setFont(self: ptr cQsciLexerCSharp, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSharpsetPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCSharp_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCSharpsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_setPaper(self: ptr cQsciLexerCSharp, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCSharpsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCSharpreadProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCSharp_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSharpreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_readProperties(self: ptr cQsciLexerCSharp, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSharpreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSharpwriteProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCSharp_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCSharpwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_writeProperties(self: ptr cQsciLexerCSharp, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCSharpwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSharpevent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCSharp_virtualbase_event(self.h, event.h)

type QsciLexerCSharpeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_event(self: ptr cQsciLexerCSharp, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_event ".} =
  var nimfunc = cast[ptr QsciLexerCSharpeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCSharpeventFilter*(self: gen_qscilexercsharp_types.QsciLexerCSharp, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCSharp_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCSharpeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_eventFilter(self: ptr cQsciLexerCSharp, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCSharp_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCSharpeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCSharptimerEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerCSharp_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCSharptimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharptimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_timerEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSharptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSharpchildEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerCSharp_virtualbase_childEvent(self.h, event.h)

type QsciLexerCSharpchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_childEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSharpchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSharpcustomEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent.QEvent): void =
  fQsciLexerCSharp_virtualbase_customEvent(self.h, event.h)

type QsciLexerCSharpcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_customEvent(self: ptr cQsciLexerCSharp, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCSharpcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCSharpconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCSharp_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCSharpconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_connectNotify(self: ptr cQsciLexerCSharp, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCSharpconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCSharpdisconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCSharp_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCSharpdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, slot: QsciLexerCSharpdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCSharpdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCSharp_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCSharp_disconnectNotify(self: ptr cQsciLexerCSharp, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCSharp_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCSharpdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercsharp_types.QsciLexerCSharp): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCSharp_staticMetaObject())
proc delete*(self: gen_qscilexercsharp_types.QsciLexerCSharp) =
  fcQsciLexerCSharp_delete(self.h)
