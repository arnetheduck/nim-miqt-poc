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
{.compile("gen_qscilexeredifact.cpp", cflags).}


type QsciLexerEDIFACTEnumEnum* = distinct cint
template Default*(_: type QsciLexerEDIFACTEnumEnum): untyped = 0
template SegmentStart*(_: type QsciLexerEDIFACTEnumEnum): untyped = 1
template SegmentEnd*(_: type QsciLexerEDIFACTEnumEnum): untyped = 2
template ElementSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 3
template CompositeSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 4
template ReleaseSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 5
template UNASegmentHeader*(_: type QsciLexerEDIFACTEnumEnum): untyped = 6
template UNHSegmentHeader*(_: type QsciLexerEDIFACTEnumEnum): untyped = 7
template BadSegment*(_: type QsciLexerEDIFACTEnumEnum): untyped = 8


import gen_qscilexeredifact_types
export gen_qscilexeredifact_types

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

type cQsciLexerEDIFACT*{.exportc: "QsciLexerEDIFACT", incompleteStruct.} = object

proc fcQsciLexerEDIFACT_new(): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new".}
proc fcQsciLexerEDIFACT_new2(parent: pointer): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new2".}
proc fcQsciLexerEDIFACT_metaObject(self: pointer, ): pointer {.importc: "QsciLexerEDIFACT_metaObject".}
proc fcQsciLexerEDIFACT_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerEDIFACT_metacast".}
proc fcQsciLexerEDIFACT_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerEDIFACT_metacall".}
proc fcQsciLexerEDIFACT_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr".}
proc fcQsciLexerEDIFACT_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf8".}
proc fcQsciLexerEDIFACT_language(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_language".}
proc fcQsciLexerEDIFACT_lexer(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_lexer".}
proc fcQsciLexerEDIFACT_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_defaultColor".}
proc fcQsciLexerEDIFACT_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_description".}
proc fcQsciLexerEDIFACT_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr2".}
proc fcQsciLexerEDIFACT_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr3".}
proc fcQsciLexerEDIFACT_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf82".}
proc fcQsciLexerEDIFACT_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf83".}
proc fQsciLexerEDIFACT_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerEDIFACT_virtualbase_metaObject".}
proc fcQsciLexerEDIFACT_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_metaObject".}
proc fQsciLexerEDIFACT_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerEDIFACT_virtualbase_metacast".}
proc fcQsciLexerEDIFACT_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_metacast".}
proc fQsciLexerEDIFACT_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerEDIFACT_virtualbase_metacall".}
proc fcQsciLexerEDIFACT_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_metacall".}
proc fcQsciLexerEDIFACT_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_language".}
proc fQsciLexerEDIFACT_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_lexer".}
proc fcQsciLexerEDIFACT_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_lexer".}
proc fQsciLexerEDIFACT_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_lexerId".}
proc fcQsciLexerEDIFACT_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_lexerId".}
proc fQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionFillups".}
proc fcQsciLexerEDIFACT_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_autoCompletionFillups".}
proc fQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerEDIFACT_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockEnd".}
proc fcQsciLexerEDIFACT_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockEnd".}
proc fQsciLexerEDIFACT_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_blockLookback".}
proc fcQsciLexerEDIFACT_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockLookback".}
proc fQsciLexerEDIFACT_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockStart".}
proc fcQsciLexerEDIFACT_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockStart".}
proc fQsciLexerEDIFACT_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockStartKeyword".}
proc fcQsciLexerEDIFACT_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockStartKeyword".}
proc fQsciLexerEDIFACT_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_braceStyle".}
proc fcQsciLexerEDIFACT_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_braceStyle".}
proc fQsciLexerEDIFACT_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerEDIFACT_virtualbase_caseSensitive".}
proc fcQsciLexerEDIFACT_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_caseSensitive".}
proc fQsciLexerEDIFACT_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_color".}
proc fcQsciLexerEDIFACT_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_color".}
proc fQsciLexerEDIFACT_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerEDIFACT_virtualbase_eolFill".}
proc fcQsciLexerEDIFACT_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_eolFill".}
proc fQsciLexerEDIFACT_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_font".}
proc fcQsciLexerEDIFACT_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_font".}
proc fQsciLexerEDIFACT_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_indentationGuideView".}
proc fcQsciLexerEDIFACT_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_indentationGuideView".}
proc fQsciLexerEDIFACT_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_keywords".}
proc fcQsciLexerEDIFACT_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_keywords".}
proc fQsciLexerEDIFACT_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_defaultStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultStyle".}
proc fcQsciLexerEDIFACT_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_description".}
proc fQsciLexerEDIFACT_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_paper".}
proc fcQsciLexerEDIFACT_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_paper".}
proc fQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultColorWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerEDIFACT_virtualbase_defaultEolFill".}
proc fcQsciLexerEDIFACT_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultEolFill".}
proc fQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultFontWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_setEditor".}
proc fcQsciLexerEDIFACT_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setEditor".}
proc fQsciLexerEDIFACT_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerEDIFACT_virtualbase_refreshProperties".}
proc fcQsciLexerEDIFACT_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_refreshProperties".}
proc fQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_styleBitsNeeded".}
proc fcQsciLexerEDIFACT_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_styleBitsNeeded".}
proc fQsciLexerEDIFACT_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_wordCharacters".}
proc fcQsciLexerEDIFACT_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_wordCharacters".}
proc fQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerEDIFACT_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setAutoIndentStyle".}
proc fQsciLexerEDIFACT_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setColor".}
proc fcQsciLexerEDIFACT_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setColor".}
proc fQsciLexerEDIFACT_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setEolFill".}
proc fcQsciLexerEDIFACT_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setEolFill".}
proc fQsciLexerEDIFACT_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setFont".}
proc fcQsciLexerEDIFACT_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setFont".}
proc fQsciLexerEDIFACT_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setPaper".}
proc fcQsciLexerEDIFACT_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setPaper".}
proc fQsciLexerEDIFACT_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerEDIFACT_virtualbase_readProperties".}
proc fcQsciLexerEDIFACT_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_readProperties".}
proc fQsciLexerEDIFACT_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerEDIFACT_virtualbase_writeProperties".}
proc fcQsciLexerEDIFACT_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_writeProperties".}
proc fQsciLexerEDIFACT_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerEDIFACT_virtualbase_event".}
proc fcQsciLexerEDIFACT_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_event".}
proc fQsciLexerEDIFACT_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerEDIFACT_virtualbase_eventFilter".}
proc fcQsciLexerEDIFACT_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_eventFilter".}
proc fQsciLexerEDIFACT_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_timerEvent".}
proc fcQsciLexerEDIFACT_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_timerEvent".}
proc fQsciLexerEDIFACT_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_childEvent".}
proc fcQsciLexerEDIFACT_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_childEvent".}
proc fQsciLexerEDIFACT_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_customEvent".}
proc fcQsciLexerEDIFACT_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_customEvent".}
proc fQsciLexerEDIFACT_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_connectNotify".}
proc fcQsciLexerEDIFACT_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_connectNotify".}
proc fQsciLexerEDIFACT_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_disconnectNotify".}
proc fcQsciLexerEDIFACT_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_disconnectNotify".}
proc fcQsciLexerEDIFACT_staticMetaObject(): pointer {.importc: "QsciLexerEDIFACT_staticMetaObject".}
proc fcQsciLexerEDIFACT_delete(self: pointer) {.importc: "QsciLexerEDIFACT_delete".}


func init*(T: type gen_qscilexeredifact_types.QsciLexerEDIFACT, h: ptr cQsciLexerEDIFACT): gen_qscilexeredifact_types.QsciLexerEDIFACT =
  T(h: h)
proc create*(T: type gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qscilexeredifact_types.QsciLexerEDIFACT =
  gen_qscilexeredifact_types.QsciLexerEDIFACT.init(fcQsciLexerEDIFACT_new())

proc create*(T: type gen_qscilexeredifact_types.QsciLexerEDIFACT, parent: gen_qobject.QObject): gen_qscilexeredifact_types.QsciLexerEDIFACT =
  gen_qscilexeredifact_types.QsciLexerEDIFACT.init(fcQsciLexerEDIFACT_new2(parent.h))

proc metaObject*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerEDIFACT_metaObject(self.h))

proc metacast*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cstring): pointer =
  fcQsciLexerEDIFACT_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerEDIFACT_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_language(self.h))

proc lexer*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_lexer(self.h))

proc defaultColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerEDIFACT_defaultColor(self.h, style))

proc description*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): string =
  let v_ms = fcQsciLexerEDIFACT_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerEDIFACT_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerEDIFACTmetaObject*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerEDIFACT_virtualbase_metaObject(self.h))

type QsciLexerEDIFACTmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_metaObject(self: ptr cQsciLexerEDIFACT, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerEDIFACTmetacast*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cstring): pointer =
  fQsciLexerEDIFACT_virtualbase_metacast(self.h, param1)

type QsciLexerEDIFACTmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_metacast(self: ptr cQsciLexerEDIFACT, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_metacast ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTmetacall*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerEDIFACT_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerEDIFACTmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_metacall(self: ptr cQsciLexerEDIFACT, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_metacall ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerEDIFACTlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_language(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_language ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTlexer*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fQsciLexerEDIFACT_virtualbase_lexer(self.h))

type QsciLexerEDIFACTlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_lexer(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_lexer ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTlexerId*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_lexerId(self.h)

type QsciLexerEDIFACTlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_lexerId(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTautoCompletionFillups*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self.h))

type QsciLexerEDIFACTautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_autoCompletionFillups(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTautoCompletionWordSeparators*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): seq[string] =
  var v_ma = fQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerEDIFACTautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_autoCompletionWordSeparators(self: ptr cQsciLexerEDIFACT, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerEDIFACTblockEnd*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fQsciLexerEDIFACT_virtualbase_blockEnd(self.h, style))

type QsciLexerEDIFACTblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockEnd(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTblockLookback*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_blockLookback(self.h)

type QsciLexerEDIFACTblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockLookback(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTblockStart*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fQsciLexerEDIFACT_virtualbase_blockStart(self.h, style))

type QsciLexerEDIFACTblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockStart(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTblockStartKeyword*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fQsciLexerEDIFACT_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerEDIFACTblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockStartKeyword(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTbraceStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_braceStyle(self.h)

type QsciLexerEDIFACTbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_braceStyle(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTcaseSensitive*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): bool =
  fQsciLexerEDIFACT_virtualbase_caseSensitive(self.h)

type QsciLexerEDIFACTcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_caseSensitive(self: ptr cQsciLexerEDIFACT, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTcolor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_color(self.h, style))

type QsciLexerEDIFACTcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_color(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_color ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTeolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): bool =
  fQsciLexerEDIFACT_virtualbase_eolFill(self.h, style)

type QsciLexerEDIFACTeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_eolFill(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTfont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerEDIFACT_virtualbase_font(self.h, style))

type QsciLexerEDIFACTfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_font(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_font ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTindentationGuideView*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_indentationGuideView(self.h)

type QsciLexerEDIFACTindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_indentationGuideView(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTkeywords*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, set: cint): cstring =
  (fQsciLexerEDIFACT_virtualbase_keywords(self.h, set))

type QsciLexerEDIFACTkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_keywords(self: ptr cQsciLexerEDIFACT, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_keywords ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTdefaultStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_defaultStyle(self.h)

type QsciLexerEDIFACTdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultStyle(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerEDIFACTdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_description(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_description ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerEDIFACTpaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_paper(self.h, style))

type QsciLexerEDIFACTpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_paper(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_paper ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTdefaultColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultColorWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTdefaultEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): bool =
  fQsciLexerEDIFACT_virtualbase_defaultEolFill(self.h, style)

type QsciLexerEDIFACTdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultEolFill(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTdefaultFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultFontWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTdefaultPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultPaperWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerEDIFACTsetEditor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerEDIFACT_virtualbase_setEditor(self.h, editor.h)

type QsciLexerEDIFACTsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setEditor(self: ptr cQsciLexerEDIFACT, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerEDIFACTrefreshProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): void =
  fQsciLexerEDIFACT_virtualbase_refreshProperties(self.h)

type QsciLexerEDIFACTrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_refreshProperties(self: ptr cQsciLexerEDIFACT, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerEDIFACTstyleBitsNeeded*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self.h)

type QsciLexerEDIFACTstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_styleBitsNeeded(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTwordCharacters*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fQsciLexerEDIFACT_virtualbase_wordCharacters(self.h))

type QsciLexerEDIFACTwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_wordCharacters(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerEDIFACTsetAutoIndentStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, autoindentstyle: cint): void =
  fQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerEDIFACTsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setAutoIndentStyle(self: ptr cQsciLexerEDIFACT, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerEDIFACTsetColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerEDIFACT_virtualbase_setColor(self.h, c.h, style)

type QsciLexerEDIFACTsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setColor(self: ptr cQsciLexerEDIFACT, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setColor ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerEDIFACTsetEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, eoffill: bool, style: cint): void =
  fQsciLexerEDIFACT_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerEDIFACTsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setEolFill(self: ptr cQsciLexerEDIFACT, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerEDIFACTsetFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerEDIFACT_virtualbase_setFont(self.h, f.h, style)

type QsciLexerEDIFACTsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setFont(self: ptr cQsciLexerEDIFACT, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setFont ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerEDIFACTsetPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerEDIFACT_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerEDIFACTsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setPaper(self: ptr cQsciLexerEDIFACT, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerEDIFACTreadProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerEDIFACT_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerEDIFACTreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_readProperties(self: ptr cQsciLexerEDIFACT, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerEDIFACTwriteProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerEDIFACT_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerEDIFACTwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_writeProperties(self: ptr cQsciLexerEDIFACT, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerEDIFACTevent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerEDIFACT_virtualbase_event(self.h, event.h)

type QsciLexerEDIFACTeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_event(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_event ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerEDIFACTeventFilter*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerEDIFACT_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerEDIFACTeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_eventFilter(self: ptr cQsciLexerEDIFACT, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerEDIFACTtimerEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerEDIFACT_virtualbase_timerEvent(self.h, event.h)

type QsciLexerEDIFACTtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_timerEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerEDIFACTchildEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerEDIFACT_virtualbase_childEvent(self.h, event.h)

type QsciLexerEDIFACTchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_childEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerEDIFACTcustomEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent.QEvent): void =
  fQsciLexerEDIFACT_virtualbase_customEvent(self.h, event.h)

type QsciLexerEDIFACTcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_customEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerEDIFACTconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerEDIFACT_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerEDIFACTconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_connectNotify(self: ptr cQsciLexerEDIFACT, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerEDIFACTdisconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerEDIFACT_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerEDIFACTdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, slot: QsciLexerEDIFACTdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerEDIFACTdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_disconnectNotify(self: ptr cQsciLexerEDIFACT, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerEDIFACTdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerEDIFACT_staticMetaObject())
proc delete*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT) =
  fcQsciLexerEDIFACT_delete(self.h)
