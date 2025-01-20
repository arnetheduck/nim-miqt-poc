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
{.compile("gen_qscilexeravs.cpp", cflags).}


type QsciLexerAVSEnum* = cint
const
  QsciLexerAVSDefault* = 0
  QsciLexerAVSBlockComment* = 1
  QsciLexerAVSNestedBlockComment* = 2
  QsciLexerAVSLineComment* = 3
  QsciLexerAVSNumber* = 4
  QsciLexerAVSOperator* = 5
  QsciLexerAVSIdentifier* = 6
  QsciLexerAVSString* = 7
  QsciLexerAVSTripleString* = 8
  QsciLexerAVSKeyword* = 9
  QsciLexerAVSFilter* = 10
  QsciLexerAVSPlugin* = 11
  QsciLexerAVSFunction* = 12
  QsciLexerAVSClipProperty* = 13
  QsciLexerAVSKeywordSet6* = 14



import gen_qscilexeravs_types
export gen_qscilexeravs_types

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

type cQsciLexerAVS*{.exportc: "QsciLexerAVS", incompleteStruct.} = object

proc fcQsciLexerAVS_new(): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new".}
proc fcQsciLexerAVS_new2(parent: pointer): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new2".}
proc fcQsciLexerAVS_metaObject(self: pointer, ): pointer {.importc: "QsciLexerAVS_metaObject".}
proc fcQsciLexerAVS_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerAVS_metacast".}
proc fcQsciLexerAVS_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerAVS_metacall".}
proc fcQsciLexerAVS_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerAVS_tr".}
proc fcQsciLexerAVS_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerAVS_trUtf8".}
proc fcQsciLexerAVS_language(self: pointer, ): cstring {.importc: "QsciLexerAVS_language".}
proc fcQsciLexerAVS_lexer(self: pointer, ): cstring {.importc: "QsciLexerAVS_lexer".}
proc fcQsciLexerAVS_braceStyle(self: pointer, ): cint {.importc: "QsciLexerAVS_braceStyle".}
proc fcQsciLexerAVS_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerAVS_wordCharacters".}
proc fcQsciLexerAVS_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_defaultColor".}
proc fcQsciLexerAVS_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_defaultFont".}
proc fcQsciLexerAVS_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerAVS_keywords".}
proc fcQsciLexerAVS_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerAVS_description".}
proc fcQsciLexerAVS_refreshProperties(self: pointer, ): void {.importc: "QsciLexerAVS_refreshProperties".}
proc fcQsciLexerAVS_foldComments(self: pointer, ): bool {.importc: "QsciLexerAVS_foldComments".}
proc fcQsciLexerAVS_foldCompact(self: pointer, ): bool {.importc: "QsciLexerAVS_foldCompact".}
proc fcQsciLexerAVS_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_setFoldComments".}
proc fcQsciLexerAVS_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_setFoldCompact".}
proc fcQsciLexerAVS_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerAVS_tr2".}
proc fcQsciLexerAVS_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerAVS_tr3".}
proc fcQsciLexerAVS_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerAVS_trUtf82".}
proc fcQsciLexerAVS_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerAVS_trUtf83".}
proc fQsciLexerAVS_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerAVS_virtualbase_metaObject".}
proc fcQsciLexerAVS_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metaObject".}
proc fQsciLexerAVS_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerAVS_virtualbase_metacast".}
proc fcQsciLexerAVS_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metacast".}
proc fQsciLexerAVS_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerAVS_virtualbase_metacall".}
proc fcQsciLexerAVS_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_metacall".}
proc fQsciLexerAVS_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerAVS_virtualbase_setFoldComments".}
proc fcQsciLexerAVS_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFoldComments".}
proc fQsciLexerAVS_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerAVS_virtualbase_setFoldCompact".}
proc fcQsciLexerAVS_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFoldCompact".}
proc fcQsciLexerAVS_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_language".}
proc fQsciLexerAVS_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_lexer".}
proc fcQsciLexerAVS_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_lexer".}
proc fQsciLexerAVS_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_lexerId".}
proc fcQsciLexerAVS_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_lexerId".}
proc fQsciLexerAVS_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_autoCompletionFillups".}
proc fcQsciLexerAVS_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_autoCompletionFillups".}
proc fQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerAVS_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerAVS_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerAVS_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockEnd".}
proc fcQsciLexerAVS_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockEnd".}
proc fQsciLexerAVS_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_blockLookback".}
proc fcQsciLexerAVS_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockLookback".}
proc fQsciLexerAVS_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockStart".}
proc fcQsciLexerAVS_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockStart".}
proc fQsciLexerAVS_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerAVS_virtualbase_blockStartKeyword".}
proc fcQsciLexerAVS_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_blockStartKeyword".}
proc fQsciLexerAVS_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_braceStyle".}
proc fcQsciLexerAVS_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_braceStyle".}
proc fQsciLexerAVS_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerAVS_virtualbase_caseSensitive".}
proc fcQsciLexerAVS_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_caseSensitive".}
proc fQsciLexerAVS_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_color".}
proc fcQsciLexerAVS_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_color".}
proc fQsciLexerAVS_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerAVS_virtualbase_eolFill".}
proc fcQsciLexerAVS_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_eolFill".}
proc fQsciLexerAVS_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_font".}
proc fcQsciLexerAVS_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_font".}
proc fQsciLexerAVS_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_indentationGuideView".}
proc fcQsciLexerAVS_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_indentationGuideView".}
proc fQsciLexerAVS_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerAVS_virtualbase_keywords".}
proc fcQsciLexerAVS_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_keywords".}
proc fQsciLexerAVS_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_defaultStyle".}
proc fcQsciLexerAVS_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultStyle".}
proc fcQsciLexerAVS_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_description".}
proc fQsciLexerAVS_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_paper".}
proc fcQsciLexerAVS_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_paper".}
proc fQsciLexerAVS_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultColorWithStyle".}
proc fQsciLexerAVS_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerAVS_virtualbase_defaultEolFill".}
proc fcQsciLexerAVS_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultEolFill".}
proc fQsciLexerAVS_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultFontWithStyle".}
proc fQsciLexerAVS_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerAVS_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerAVS_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerAVS_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerAVS_virtualbase_setEditor".}
proc fcQsciLexerAVS_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setEditor".}
proc fQsciLexerAVS_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerAVS_virtualbase_refreshProperties".}
proc fcQsciLexerAVS_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_refreshProperties".}
proc fQsciLexerAVS_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerAVS_virtualbase_styleBitsNeeded".}
proc fcQsciLexerAVS_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_styleBitsNeeded".}
proc fQsciLexerAVS_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerAVS_virtualbase_wordCharacters".}
proc fcQsciLexerAVS_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_wordCharacters".}
proc fQsciLexerAVS_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerAVS_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerAVS_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setAutoIndentStyle".}
proc fQsciLexerAVS_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setColor".}
proc fcQsciLexerAVS_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setColor".}
proc fQsciLexerAVS_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setEolFill".}
proc fcQsciLexerAVS_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setEolFill".}
proc fQsciLexerAVS_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setFont".}
proc fcQsciLexerAVS_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setFont".}
proc fQsciLexerAVS_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerAVS_virtualbase_setPaper".}
proc fcQsciLexerAVS_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_setPaper".}
proc fQsciLexerAVS_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerAVS_virtualbase_readProperties".}
proc fcQsciLexerAVS_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_readProperties".}
proc fQsciLexerAVS_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerAVS_virtualbase_writeProperties".}
proc fcQsciLexerAVS_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_writeProperties".}
proc fQsciLexerAVS_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerAVS_virtualbase_event".}
proc fcQsciLexerAVS_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_event".}
proc fQsciLexerAVS_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerAVS_virtualbase_eventFilter".}
proc fcQsciLexerAVS_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_eventFilter".}
proc fQsciLexerAVS_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_timerEvent".}
proc fcQsciLexerAVS_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_timerEvent".}
proc fQsciLexerAVS_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_childEvent".}
proc fcQsciLexerAVS_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_childEvent".}
proc fQsciLexerAVS_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerAVS_virtualbase_customEvent".}
proc fcQsciLexerAVS_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_customEvent".}
proc fQsciLexerAVS_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerAVS_virtualbase_connectNotify".}
proc fcQsciLexerAVS_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_connectNotify".}
proc fQsciLexerAVS_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerAVS_virtualbase_disconnectNotify".}
proc fcQsciLexerAVS_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerAVS_override_virtual_disconnectNotify".}
proc fcQsciLexerAVS_staticMetaObject(): pointer {.importc: "QsciLexerAVS_staticMetaObject".}
proc fcQsciLexerAVS_delete(self: pointer) {.importc: "QsciLexerAVS_delete".}


func init*(T: type QsciLexerAVS, h: ptr cQsciLexerAVS): QsciLexerAVS =
  T(h: h)
proc create*(T: type QsciLexerAVS, ): QsciLexerAVS =

  QsciLexerAVS.init(fcQsciLexerAVS_new())
proc create*(T: type QsciLexerAVS, parent: gen_qobject.QObject): QsciLexerAVS =

  QsciLexerAVS.init(fcQsciLexerAVS_new2(parent.h))
proc metaObject*(self: QsciLexerAVS, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerAVS_metaObject(self.h))

proc metacast*(self: QsciLexerAVS, param1: cstring): pointer =

  fcQsciLexerAVS_metacast(self.h, param1)

proc metacall*(self: QsciLexerAVS, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerAVS_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerAVS, s: cstring): string =

  let v_ms = fcQsciLexerAVS_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerAVS, s: cstring): string =

  let v_ms = fcQsciLexerAVS_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerAVS, ): cstring =

  (fcQsciLexerAVS_language(self.h))

proc lexer*(self: QsciLexerAVS, ): cstring =

  (fcQsciLexerAVS_lexer(self.h))

proc braceStyle*(self: QsciLexerAVS, ): cint =

  fcQsciLexerAVS_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerAVS, ): cstring =

  (fcQsciLexerAVS_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerAVS, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerAVS_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerAVS, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerAVS_defaultFont(self.h, style))

proc keywords*(self: QsciLexerAVS, set: cint): cstring =

  (fcQsciLexerAVS_keywords(self.h, set))

proc description*(self: QsciLexerAVS, style: cint): string =

  let v_ms = fcQsciLexerAVS_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerAVS, ): void =

  fcQsciLexerAVS_refreshProperties(self.h)

proc foldComments*(self: QsciLexerAVS, ): bool =

  fcQsciLexerAVS_foldComments(self.h)

proc foldCompact*(self: QsciLexerAVS, ): bool =

  fcQsciLexerAVS_foldCompact(self.h)

proc setFoldComments*(self: QsciLexerAVS, fold: bool): void =

  fcQsciLexerAVS_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerAVS, fold: bool): void =

  fcQsciLexerAVS_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerAVS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerAVS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerAVS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerAVS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerAVS, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerAVS_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerAVS, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerAVS_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerAVS, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerAVS_virtualbase_metaObject(self.h))

type QsciLexerAVSmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metaObject(self: ptr cQsciLexerAVS, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_metaObject ".} =
  type Cb = proc(super: QsciLexerAVSmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerAVS, param1: cstring): pointer =


  fQsciLexerAVS_virtualbase_metacast(self.h, param1)

type QsciLexerAVSmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metacast(self: ptr cQsciLexerAVS, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_metacast ".} =
  type Cb = proc(super: QsciLexerAVSmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerAVS(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerAVS, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerAVS_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerAVSmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_metacall(self: ptr cQsciLexerAVS, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_metacall ".} =
  type Cb = proc(super: QsciLexerAVSmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerAVS(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerAVS, fold: bool): void =


  fQsciLexerAVS_virtualbase_setFoldComments(self.h, fold)

type QsciLexerAVSsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFoldComments(self: ptr cQsciLexerAVS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFoldComments ".} =
  type Cb = proc(super: QsciLexerAVSsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerAVS(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerAVS, fold: bool): void =


  fQsciLexerAVS_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerAVSsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFoldCompact(self: ptr cQsciLexerAVS, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerAVSsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerAVS(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerAVSlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerAVS, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_language(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerAVS, ): cstring =


  (fQsciLexerAVS_virtualbase_lexer(self.h))

type QsciLexerAVSlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_lexer(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_lexer ".} =
  type Cb = proc(super: QsciLexerAVSlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_lexerId(self.h)

type QsciLexerAVSlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_lexerId(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_lexerId ".} =
  type Cb = proc(super: QsciLexerAVSlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerAVS, ): cstring =


  (fQsciLexerAVS_virtualbase_autoCompletionFillups(self.h))

type QsciLexerAVSautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_autoCompletionFillups(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerAVSautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerAVS, ): seq[string] =


  var v_ma = fQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerAVSautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_autoCompletionWordSeparators(self: ptr cQsciLexerAVS, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerAVS_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerAVSautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerAVS, style: ptr cint): cstring =


  (fQsciLexerAVS_virtualbase_blockEnd(self.h, style))

type QsciLexerAVSblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockEnd(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockEnd ".} =
  type Cb = proc(super: QsciLexerAVSblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_blockLookback(self.h)

type QsciLexerAVSblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockLookback(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_blockLookback ".} =
  type Cb = proc(super: QsciLexerAVSblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerAVS, style: ptr cint): cstring =


  (fQsciLexerAVS_virtualbase_blockStart(self.h, style))

type QsciLexerAVSblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockStart(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockStart ".} =
  type Cb = proc(super: QsciLexerAVSblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerAVS, style: ptr cint): cstring =


  (fQsciLexerAVS_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerAVSblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_blockStartKeyword(self: ptr cQsciLexerAVS, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerAVSblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_braceStyle(self.h)

type QsciLexerAVSbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_braceStyle(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_braceStyle ".} =
  type Cb = proc(super: QsciLexerAVSbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerAVS, ): bool =


  fQsciLexerAVS_virtualbase_caseSensitive(self.h)

type QsciLexerAVScaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVScaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVScaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_caseSensitive(self: ptr cQsciLexerAVS, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_caseSensitive ".} =
  type Cb = proc(super: QsciLexerAVScaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerAVS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_color(self.h, style))

type QsciLexerAVScolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVScolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVScolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_color(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_color ".} =
  type Cb = proc(super: QsciLexerAVScolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerAVS, style: cint): bool =


  fQsciLexerAVS_virtualbase_eolFill(self.h, style)

type QsciLexerAVSeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_eolFill(self: ptr cQsciLexerAVS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_eolFill ".} =
  type Cb = proc(super: QsciLexerAVSeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerAVS, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerAVS_virtualbase_font(self.h, style))

type QsciLexerAVSfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_font(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_font ".} =
  type Cb = proc(super: QsciLexerAVSfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_indentationGuideView(self.h)

type QsciLexerAVSindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_indentationGuideView(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerAVSindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerAVS, set: cint): cstring =


  (fQsciLexerAVS_virtualbase_keywords(self.h, set))

type QsciLexerAVSkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_keywords(self: ptr cQsciLexerAVS, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_keywords ".} =
  type Cb = proc(super: QsciLexerAVSkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerAVS(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_defaultStyle(self.h)

type QsciLexerAVSdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultStyle(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultStyle ".} =
  type Cb = proc(super: QsciLexerAVSdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerAVSdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerAVS, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_description(self: ptr cQsciLexerAVS, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerAVS_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerAVS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_paper(self.h, style))

type QsciLexerAVSpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_paper(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_paper ".} =
  type Cb = proc(super: QsciLexerAVSpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerAVS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerAVSdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultColorWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerAVSdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerAVS, style: cint): bool =


  fQsciLexerAVS_virtualbase_defaultEolFill(self.h, style)

type QsciLexerAVSdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultEolFill(self: ptr cQsciLexerAVS, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerAVSdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerAVS, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerAVS_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerAVSdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultFontWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerAVSdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerAVS, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerAVS_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerAVSdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_defaultPaperWithStyle(self: ptr cQsciLexerAVS, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerAVS_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerAVSdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerAVS(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerAVS, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerAVS_virtualbase_setEditor(self.h, editor.h)

type QsciLexerAVSsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setEditor(self: ptr cQsciLexerAVS, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setEditor ".} =
  type Cb = proc(super: QsciLexerAVSsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerAVS(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerAVS, ): void =


  fQsciLexerAVS_virtualbase_refreshProperties(self.h)

type QsciLexerAVSrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_refreshProperties(self: ptr cQsciLexerAVS, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerAVS_refreshProperties ".} =
  type Cb = proc(super: QsciLexerAVSrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerAVS(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerAVS, ): cint =


  fQsciLexerAVS_virtualbase_styleBitsNeeded(self.h)

type QsciLexerAVSstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_styleBitsNeeded(self: ptr cQsciLexerAVS, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerAVS_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerAVSstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerAVS, ): cstring =


  (fQsciLexerAVS_virtualbase_wordCharacters(self.h))

type QsciLexerAVSwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_wordCharacters(self: ptr cQsciLexerAVS, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerAVS_wordCharacters ".} =
  type Cb = proc(super: QsciLexerAVSwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerAVS(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerAVS, autoindentstyle: cint): void =


  fQsciLexerAVS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerAVSsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setAutoIndentStyle(self: ptr cQsciLexerAVS, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerAVSsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerAVS(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerAVS, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerAVS_virtualbase_setColor(self.h, c.h, style)

type QsciLexerAVSsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setColor(self: ptr cQsciLexerAVS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setColor ".} =
  type Cb = proc(super: QsciLexerAVSsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerAVS(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerAVS, eoffill: bool, style: cint): void =


  fQsciLexerAVS_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerAVSsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setEolFill(self: ptr cQsciLexerAVS, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setEolFill ".} =
  type Cb = proc(super: QsciLexerAVSsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerAVS(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerAVS, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerAVS_virtualbase_setFont(self.h, f.h, style)

type QsciLexerAVSsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setFont(self: ptr cQsciLexerAVS, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setFont ".} =
  type Cb = proc(super: QsciLexerAVSsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerAVS(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerAVS, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerAVS_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerAVSsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_setPaper(self: ptr cQsciLexerAVS, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerAVS_setPaper ".} =
  type Cb = proc(super: QsciLexerAVSsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerAVS(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerAVS, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerAVS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerAVSreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_readProperties(self: ptr cQsciLexerAVS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_readProperties ".} =
  type Cb = proc(super: QsciLexerAVSreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerAVS(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerAVS, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerAVS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerAVSwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_writeProperties(self: ptr cQsciLexerAVS, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_writeProperties ".} =
  type Cb = proc(super: QsciLexerAVSwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerAVS(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerAVS, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerAVS_virtualbase_event(self.h, event.h)

type QsciLexerAVSeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_event(self: ptr cQsciLexerAVS, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_event ".} =
  type Cb = proc(super: QsciLexerAVSeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerAVS(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerAVS, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerAVS_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerAVSeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_eventFilter(self: ptr cQsciLexerAVS, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerAVS_eventFilter ".} =
  type Cb = proc(super: QsciLexerAVSeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerAVS(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerAVS, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerAVS_virtualbase_timerEvent(self.h, event.h)

type QsciLexerAVStimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVStimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVStimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_timerEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_timerEvent ".} =
  type Cb = proc(super: QsciLexerAVStimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerAVS(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerAVS, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerAVS_virtualbase_childEvent(self.h, event.h)

type QsciLexerAVSchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_childEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_childEvent ".} =
  type Cb = proc(super: QsciLexerAVSchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerAVS(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerAVS, event: gen_qcoreevent.QEvent): void =


  fQsciLexerAVS_virtualbase_customEvent(self.h, event.h)

type QsciLexerAVScustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVScustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVScustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_customEvent(self: ptr cQsciLexerAVS, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_customEvent ".} =
  type Cb = proc(super: QsciLexerAVScustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerAVS(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerAVS, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerAVS_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerAVSconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_connectNotify(self: ptr cQsciLexerAVS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_connectNotify ".} =
  type Cb = proc(super: QsciLexerAVSconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerAVS(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerAVS, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerAVS_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerAVSdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerAVS, slot: proc(super: QsciLexerAVSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerAVSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerAVS_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerAVS_disconnectNotify(self: ptr cQsciLexerAVS, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerAVS_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerAVSdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerAVS(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerAVS): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerAVS_staticMetaObject())
proc delete*(self: QsciLexerAVS) =
  fcQsciLexerAVS_delete(self.h)
