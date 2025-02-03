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
{.compile("gen_qscilexertcl.cpp", cflags).}


type QsciLexerTCLEnum* = cint
const
  QsciLexerTCLDefault* = 0
  QsciLexerTCLComment* = 1
  QsciLexerTCLCommentLine* = 2
  QsciLexerTCLNumber* = 3
  QsciLexerTCLQuotedKeyword* = 4
  QsciLexerTCLQuotedString* = 5
  QsciLexerTCLOperator* = 6
  QsciLexerTCLIdentifier* = 7
  QsciLexerTCLSubstitution* = 8
  QsciLexerTCLSubstitutionBrace* = 9
  QsciLexerTCLModifier* = 10
  QsciLexerTCLExpandKeyword* = 11
  QsciLexerTCLTCLKeyword* = 12
  QsciLexerTCLTkKeyword* = 13
  QsciLexerTCLITCLKeyword* = 14
  QsciLexerTCLTkCommand* = 15
  QsciLexerTCLKeywordSet6* = 16
  QsciLexerTCLKeywordSet7* = 17
  QsciLexerTCLKeywordSet8* = 18
  QsciLexerTCLKeywordSet9* = 19
  QsciLexerTCLCommentBox* = 20
  QsciLexerTCLCommentBlock* = 21



import gen_qscilexertcl_types
export gen_qscilexertcl_types

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

type cQsciLexerTCL*{.exportc: "QsciLexerTCL", incompleteStruct.} = object

proc fcQsciLexerTCL_new(): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new".}
proc fcQsciLexerTCL_new2(parent: pointer): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new2".}
proc fcQsciLexerTCL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTCL_metaObject".}
proc fcQsciLexerTCL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTCL_metacast".}
proc fcQsciLexerTCL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTCL_metacall".}
proc fcQsciLexerTCL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr".}
proc fcQsciLexerTCL_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerTCL_trUtf8".}
proc fcQsciLexerTCL_language(self: pointer, ): cstring {.importc: "QsciLexerTCL_language".}
proc fcQsciLexerTCL_lexer(self: pointer, ): cstring {.importc: "QsciLexerTCL_lexer".}
proc fcQsciLexerTCL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerTCL_braceStyle".}
proc fcQsciLexerTCL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultColor".}
proc fcQsciLexerTCL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTCL_defaultEolFill".}
proc fcQsciLexerTCL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultFont".}
proc fcQsciLexerTCL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultPaper".}
proc fcQsciLexerTCL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTCL_keywords".}
proc fcQsciLexerTCL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTCL_description".}
proc fcQsciLexerTCL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTCL_refreshProperties".}
proc fcQsciLexerTCL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTCL_setFoldComments".}
proc fcQsciLexerTCL_foldComments(self: pointer, ): bool {.importc: "QsciLexerTCL_foldComments".}
proc fcQsciLexerTCL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr2".}
proc fcQsciLexerTCL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTCL_tr3".}
proc fcQsciLexerTCL_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTCL_trUtf82".}
proc fcQsciLexerTCL_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTCL_trUtf83".}
proc fQsciLexerTCL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerTCL_virtualbase_metacall".}
proc fcQsciLexerTCL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_metacall".}
proc fcQsciLexerTCL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_language".}
proc fQsciLexerTCL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_lexer".}
proc fcQsciLexerTCL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_lexer".}
proc fQsciLexerTCL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_lexerId".}
proc fcQsciLexerTCL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_lexerId".}
proc fQsciLexerTCL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTCL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_autoCompletionFillups".}
proc fQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerTCL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTCL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerTCL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockEnd".}
proc fcQsciLexerTCL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockEnd".}
proc fQsciLexerTCL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_blockLookback".}
proc fcQsciLexerTCL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockLookback".}
proc fQsciLexerTCL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockStart".}
proc fcQsciLexerTCL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockStart".}
proc fQsciLexerTCL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTCL_virtualbase_blockStartKeyword".}
proc fcQsciLexerTCL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_blockStartKeyword".}
proc fQsciLexerTCL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_braceStyle".}
proc fcQsciLexerTCL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_braceStyle".}
proc fQsciLexerTCL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerTCL_virtualbase_caseSensitive".}
proc fcQsciLexerTCL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_caseSensitive".}
proc fQsciLexerTCL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_color".}
proc fcQsciLexerTCL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_color".}
proc fQsciLexerTCL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTCL_virtualbase_eolFill".}
proc fcQsciLexerTCL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_eolFill".}
proc fQsciLexerTCL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_font".}
proc fcQsciLexerTCL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_font".}
proc fQsciLexerTCL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_indentationGuideView".}
proc fcQsciLexerTCL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_indentationGuideView".}
proc fQsciLexerTCL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerTCL_virtualbase_keywords".}
proc fcQsciLexerTCL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_keywords".}
proc fQsciLexerTCL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_defaultStyle".}
proc fcQsciLexerTCL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultStyle".}
proc fcQsciLexerTCL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_description".}
proc fQsciLexerTCL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_paper".}
proc fcQsciLexerTCL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_paper".}
proc fQsciLexerTCL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerTCL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTCL_virtualbase_defaultEolFill".}
proc fcQsciLexerTCL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultEolFill".}
proc fQsciLexerTCL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerTCL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTCL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTCL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerTCL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerTCL_virtualbase_setEditor".}
proc fcQsciLexerTCL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setEditor".}
proc fQsciLexerTCL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerTCL_virtualbase_refreshProperties".}
proc fcQsciLexerTCL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_refreshProperties".}
proc fQsciLexerTCL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerTCL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTCL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_styleBitsNeeded".}
proc fQsciLexerTCL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerTCL_virtualbase_wordCharacters".}
proc fcQsciLexerTCL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_wordCharacters".}
proc fQsciLexerTCL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerTCL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTCL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerTCL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setColor".}
proc fcQsciLexerTCL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setColor".}
proc fQsciLexerTCL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setEolFill".}
proc fcQsciLexerTCL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setEolFill".}
proc fQsciLexerTCL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setFont".}
proc fcQsciLexerTCL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setFont".}
proc fQsciLexerTCL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTCL_virtualbase_setPaper".}
proc fcQsciLexerTCL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_setPaper".}
proc fQsciLexerTCL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTCL_virtualbase_readProperties".}
proc fcQsciLexerTCL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_readProperties".}
proc fQsciLexerTCL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTCL_virtualbase_writeProperties".}
proc fcQsciLexerTCL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_writeProperties".}
proc fQsciLexerTCL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerTCL_virtualbase_event".}
proc fcQsciLexerTCL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_event".}
proc fQsciLexerTCL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerTCL_virtualbase_eventFilter".}
proc fcQsciLexerTCL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_eventFilter".}
proc fQsciLexerTCL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_timerEvent".}
proc fcQsciLexerTCL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_timerEvent".}
proc fQsciLexerTCL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_childEvent".}
proc fcQsciLexerTCL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_childEvent".}
proc fQsciLexerTCL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTCL_virtualbase_customEvent".}
proc fcQsciLexerTCL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_customEvent".}
proc fQsciLexerTCL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTCL_virtualbase_connectNotify".}
proc fcQsciLexerTCL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_connectNotify".}
proc fQsciLexerTCL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTCL_virtualbase_disconnectNotify".}
proc fcQsciLexerTCL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerTCL_override_virtual_disconnectNotify".}
proc fcQsciLexerTCL_delete(self: pointer) {.importc: "QsciLexerTCL_delete".}


func init*(T: type QsciLexerTCL, h: ptr cQsciLexerTCL): QsciLexerTCL =
  T(h: h)
proc create*(T: type QsciLexerTCL, ): QsciLexerTCL =

  QsciLexerTCL.init(fcQsciLexerTCL_new())
proc create*(T: type QsciLexerTCL, parent: gen_qobject.QObject): QsciLexerTCL =

  QsciLexerTCL.init(fcQsciLexerTCL_new2(parent.h))
proc metaObject*(self: QsciLexerTCL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTCL_metaObject(self.h))

proc metacast*(self: QsciLexerTCL, param1: cstring): pointer =

  fcQsciLexerTCL_metacast(self.h, param1)

proc metacall*(self: QsciLexerTCL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerTCL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerTCL, s: cstring): string =

  let v_ms = fcQsciLexerTCL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerTCL, s: cstring): string =

  let v_ms = fcQsciLexerTCL_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerTCL, ): cstring =

  (fcQsciLexerTCL_language(self.h))

proc lexer*(self: QsciLexerTCL, ): cstring =

  (fcQsciLexerTCL_lexer(self.h))

proc braceStyle*(self: QsciLexerTCL, ): cint =

  fcQsciLexerTCL_braceStyle(self.h)

proc defaultColor*(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerTCL_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerTCL, style: cint): bool =

  fcQsciLexerTCL_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerTCL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerTCL_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerTCL_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerTCL, set: cint): cstring =

  (fcQsciLexerTCL_keywords(self.h, set))

proc description*(self: QsciLexerTCL, style: cint): string =

  let v_ms = fcQsciLexerTCL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerTCL, ): void =

  fcQsciLexerTCL_refreshProperties(self.h)

proc setFoldComments*(self: QsciLexerTCL, fold: bool): void =

  fcQsciLexerTCL_setFoldComments(self.h, fold)

proc foldComments*(self: QsciLexerTCL, ): bool =

  fcQsciLexerTCL_foldComments(self.h)

proc tr2*(_: type QsciLexerTCL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerTCL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerTCL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerTCL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerTCL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerTCL_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerTCL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerTCL_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerTCL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerTCL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerTCLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_metacall(self: ptr cQsciLexerTCL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_metacall ".} =
  type Cb = proc(super: QsciLexerTCLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerTCL(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerTCLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerTCL, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_language(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerTCL, ): cstring =


  (fQsciLexerTCL_virtualbase_lexer(self.h))

type QsciLexerTCLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_lexer(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_lexer ".} =
  type Cb = proc(super: QsciLexerTCLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_lexerId(self.h)

type QsciLexerTCLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_lexerId(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_lexerId ".} =
  type Cb = proc(super: QsciLexerTCLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerTCL, ): cstring =


  (fQsciLexerTCL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerTCLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_autoCompletionFillups(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerTCLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerTCL, ): seq[string] =


  var v_ma = fQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerTCLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_autoCompletionWordSeparators(self: ptr cQsciLexerTCL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerTCL_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerTCLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerTCL, style: ptr cint): cstring =


  (fQsciLexerTCL_virtualbase_blockEnd(self.h, style))

type QsciLexerTCLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockEnd(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockEnd ".} =
  type Cb = proc(super: QsciLexerTCLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_blockLookback(self.h)

type QsciLexerTCLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockLookback(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_blockLookback ".} =
  type Cb = proc(super: QsciLexerTCLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerTCL, style: ptr cint): cstring =


  (fQsciLexerTCL_virtualbase_blockStart(self.h, style))

type QsciLexerTCLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockStart(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockStart ".} =
  type Cb = proc(super: QsciLexerTCLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerTCL, style: ptr cint): cstring =


  (fQsciLexerTCL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerTCLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_blockStartKeyword(self: ptr cQsciLexerTCL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerTCLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_braceStyle(self.h)

type QsciLexerTCLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_braceStyle(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_braceStyle ".} =
  type Cb = proc(super: QsciLexerTCLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerTCL, ): bool =


  fQsciLexerTCL_virtualbase_caseSensitive(self.h)

type QsciLexerTCLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_caseSensitive(self: ptr cQsciLexerTCL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_caseSensitive ".} =
  type Cb = proc(super: QsciLexerTCLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_color(self.h, style))

type QsciLexerTCLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_color(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_color ".} =
  type Cb = proc(super: QsciLexerTCLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerTCL, style: cint): bool =


  fQsciLexerTCL_virtualbase_eolFill(self.h, style)

type QsciLexerTCLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_eolFill(self: ptr cQsciLexerTCL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_eolFill ".} =
  type Cb = proc(super: QsciLexerTCLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerTCL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerTCL_virtualbase_font(self.h, style))

type QsciLexerTCLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_font(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_font ".} =
  type Cb = proc(super: QsciLexerTCLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_indentationGuideView(self.h)

type QsciLexerTCLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_indentationGuideView(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerTCLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerTCL, set: cint): cstring =


  (fQsciLexerTCL_virtualbase_keywords(self.h, set))

type QsciLexerTCLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_keywords(self: ptr cQsciLexerTCL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_keywords ".} =
  type Cb = proc(super: QsciLexerTCLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerTCL(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_defaultStyle(self.h)

type QsciLexerTCLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultStyle(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultStyle ".} =
  type Cb = proc(super: QsciLexerTCLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerTCLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerTCL, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_description(self: ptr cQsciLexerTCL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerTCL_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_paper(self.h, style))

type QsciLexerTCLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_paper(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_paper ".} =
  type Cb = proc(super: QsciLexerTCLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerTCLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultColorWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerTCLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerTCL, style: cint): bool =


  fQsciLexerTCL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerTCLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultEolFill(self: ptr cQsciLexerTCL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerTCLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerTCL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerTCL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerTCLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultFontWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerTCLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerTCL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTCL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerTCLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_defaultPaperWithStyle(self: ptr cQsciLexerTCL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTCL_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerTCLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerTCL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerTCL, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerTCL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerTCLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setEditor(self: ptr cQsciLexerTCL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setEditor ".} =
  type Cb = proc(super: QsciLexerTCLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerTCL(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerTCL, ): void =


  fQsciLexerTCL_virtualbase_refreshProperties(self.h)

type QsciLexerTCLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_refreshProperties(self: ptr cQsciLexerTCL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerTCL_refreshProperties ".} =
  type Cb = proc(super: QsciLexerTCLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerTCL(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerTCL, ): cint =


  fQsciLexerTCL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerTCLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_styleBitsNeeded(self: ptr cQsciLexerTCL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTCL_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerTCLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerTCL, ): cstring =


  (fQsciLexerTCL_virtualbase_wordCharacters(self.h))

type QsciLexerTCLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_wordCharacters(self: ptr cQsciLexerTCL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTCL_wordCharacters ".} =
  type Cb = proc(super: QsciLexerTCLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerTCL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerTCL, autoindentstyle: cint): void =


  fQsciLexerTCL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerTCLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setAutoIndentStyle(self: ptr cQsciLexerTCL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerTCLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerTCL(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerTCL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerTCL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerTCLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setColor(self: ptr cQsciLexerTCL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setColor ".} =
  type Cb = proc(super: QsciLexerTCLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerTCL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerTCL, eoffill: bool, style: cint): void =


  fQsciLexerTCL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerTCLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setEolFill(self: ptr cQsciLexerTCL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setEolFill ".} =
  type Cb = proc(super: QsciLexerTCLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerTCL(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerTCL, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerTCL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerTCLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setFont(self: ptr cQsciLexerTCL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setFont ".} =
  type Cb = proc(super: QsciLexerTCLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerTCL(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerTCL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerTCL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerTCLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_setPaper(self: ptr cQsciLexerTCL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTCL_setPaper ".} =
  type Cb = proc(super: QsciLexerTCLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerTCL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerTCL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerTCL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTCLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_readProperties(self: ptr cQsciLexerTCL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_readProperties ".} =
  type Cb = proc(super: QsciLexerTCLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerTCL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerTCL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerTCL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTCLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_writeProperties(self: ptr cQsciLexerTCL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_writeProperties ".} =
  type Cb = proc(super: QsciLexerTCLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerTCL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerTCL, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerTCL_virtualbase_event(self.h, event.h)

type QsciLexerTCLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_event(self: ptr cQsciLexerTCL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_event ".} =
  type Cb = proc(super: QsciLexerTCLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerTCL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerTCL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerTCL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerTCLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_eventFilter(self: ptr cQsciLexerTCL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTCL_eventFilter ".} =
  type Cb = proc(super: QsciLexerTCLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerTCL(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerTCL, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerTCL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerTCLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_timerEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_timerEvent ".} =
  type Cb = proc(super: QsciLexerTCLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerTCL(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerTCL, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerTCL_virtualbase_childEvent(self.h, event.h)

type QsciLexerTCLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_childEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_childEvent ".} =
  type Cb = proc(super: QsciLexerTCLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerTCL(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerTCL, event: gen_qcoreevent.QEvent): void =


  fQsciLexerTCL_virtualbase_customEvent(self.h, event.h)

type QsciLexerTCLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_customEvent(self: ptr cQsciLexerTCL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_customEvent ".} =
  type Cb = proc(super: QsciLexerTCLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerTCL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerTCL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerTCL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerTCLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_connectNotify(self: ptr cQsciLexerTCL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_connectNotify ".} =
  type Cb = proc(super: QsciLexerTCLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerTCL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerTCL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerTCL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerTCLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerTCL, slot: proc(super: QsciLexerTCLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTCLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTCL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTCL_disconnectNotify(self: ptr cQsciLexerTCL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTCL_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerTCLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerTCL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerTCL) =
  fcQsciLexerTCL_delete(self.h)
