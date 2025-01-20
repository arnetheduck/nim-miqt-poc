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
{.compile("gen_qscilexeryaml.cpp", cflags).}


type QsciLexerYAMLEnum* = cint
const
  QsciLexerYAMLDefault* = 0
  QsciLexerYAMLComment* = 1
  QsciLexerYAMLIdentifier* = 2
  QsciLexerYAMLKeyword* = 3
  QsciLexerYAMLNumber* = 4
  QsciLexerYAMLReference* = 5
  QsciLexerYAMLDocumentDelimiter* = 6
  QsciLexerYAMLTextBlockMarker* = 7
  QsciLexerYAMLSyntaxErrorMarker* = 8
  QsciLexerYAMLOperator* = 9



import gen_qscilexeryaml_types
export gen_qscilexeryaml_types

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

type cQsciLexerYAML*{.exportc: "QsciLexerYAML", incompleteStruct.} = object

proc fcQsciLexerYAML_new(): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new".}
proc fcQsciLexerYAML_new2(parent: pointer): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new2".}
proc fcQsciLexerYAML_metaObject(self: pointer, ): pointer {.importc: "QsciLexerYAML_metaObject".}
proc fcQsciLexerYAML_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerYAML_metacast".}
proc fcQsciLexerYAML_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerYAML_metacall".}
proc fcQsciLexerYAML_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerYAML_tr".}
proc fcQsciLexerYAML_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerYAML_trUtf8".}
proc fcQsciLexerYAML_language(self: pointer, ): cstring {.importc: "QsciLexerYAML_language".}
proc fcQsciLexerYAML_lexer(self: pointer, ): cstring {.importc: "QsciLexerYAML_lexer".}
proc fcQsciLexerYAML_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultColor".}
proc fcQsciLexerYAML_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerYAML_defaultEolFill".}
proc fcQsciLexerYAML_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultFont".}
proc fcQsciLexerYAML_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_defaultPaper".}
proc fcQsciLexerYAML_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerYAML_keywords".}
proc fcQsciLexerYAML_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerYAML_description".}
proc fcQsciLexerYAML_refreshProperties(self: pointer, ): void {.importc: "QsciLexerYAML_refreshProperties".}
proc fcQsciLexerYAML_foldComments(self: pointer, ): bool {.importc: "QsciLexerYAML_foldComments".}
proc fcQsciLexerYAML_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerYAML_setFoldComments".}
proc fcQsciLexerYAML_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerYAML_tr2".}
proc fcQsciLexerYAML_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerYAML_tr3".}
proc fcQsciLexerYAML_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerYAML_trUtf82".}
proc fcQsciLexerYAML_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerYAML_trUtf83".}
proc fQsciLexerYAML_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerYAML_virtualbase_metaObject".}
proc fcQsciLexerYAML_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metaObject".}
proc fQsciLexerYAML_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerYAML_virtualbase_metacast".}
proc fcQsciLexerYAML_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metacast".}
proc fQsciLexerYAML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerYAML_virtualbase_metacall".}
proc fcQsciLexerYAML_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_metacall".}
proc fQsciLexerYAML_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerYAML_virtualbase_setFoldComments".}
proc fcQsciLexerYAML_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setFoldComments".}
proc fcQsciLexerYAML_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_language".}
proc fQsciLexerYAML_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_lexer".}
proc fcQsciLexerYAML_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_lexer".}
proc fQsciLexerYAML_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_lexerId".}
proc fcQsciLexerYAML_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_lexerId".}
proc fQsciLexerYAML_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerYAML_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_autoCompletionFillups".}
proc fQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerYAML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerYAML_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerYAML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockEnd".}
proc fcQsciLexerYAML_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockEnd".}
proc fQsciLexerYAML_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_blockLookback".}
proc fcQsciLexerYAML_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockLookback".}
proc fQsciLexerYAML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockStart".}
proc fcQsciLexerYAML_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockStart".}
proc fQsciLexerYAML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerYAML_virtualbase_blockStartKeyword".}
proc fcQsciLexerYAML_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_blockStartKeyword".}
proc fQsciLexerYAML_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_braceStyle".}
proc fcQsciLexerYAML_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_braceStyle".}
proc fQsciLexerYAML_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerYAML_virtualbase_caseSensitive".}
proc fcQsciLexerYAML_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_caseSensitive".}
proc fQsciLexerYAML_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_color".}
proc fcQsciLexerYAML_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_color".}
proc fQsciLexerYAML_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerYAML_virtualbase_eolFill".}
proc fcQsciLexerYAML_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_eolFill".}
proc fQsciLexerYAML_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_font".}
proc fcQsciLexerYAML_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_font".}
proc fQsciLexerYAML_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_indentationGuideView".}
proc fcQsciLexerYAML_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_indentationGuideView".}
proc fQsciLexerYAML_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerYAML_virtualbase_keywords".}
proc fcQsciLexerYAML_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_keywords".}
proc fQsciLexerYAML_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_defaultStyle".}
proc fcQsciLexerYAML_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultStyle".}
proc fcQsciLexerYAML_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_description".}
proc fQsciLexerYAML_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_paper".}
proc fcQsciLexerYAML_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_paper".}
proc fQsciLexerYAML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultColorWithStyle".}
proc fQsciLexerYAML_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerYAML_virtualbase_defaultEolFill".}
proc fcQsciLexerYAML_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultEolFill".}
proc fQsciLexerYAML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultFontWithStyle".}
proc fQsciLexerYAML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerYAML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerYAML_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerYAML_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerYAML_virtualbase_setEditor".}
proc fcQsciLexerYAML_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setEditor".}
proc fQsciLexerYAML_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerYAML_virtualbase_refreshProperties".}
proc fcQsciLexerYAML_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_refreshProperties".}
proc fQsciLexerYAML_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerYAML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerYAML_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_styleBitsNeeded".}
proc fQsciLexerYAML_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerYAML_virtualbase_wordCharacters".}
proc fcQsciLexerYAML_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_wordCharacters".}
proc fQsciLexerYAML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerYAML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerYAML_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setAutoIndentStyle".}
proc fQsciLexerYAML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setColor".}
proc fcQsciLexerYAML_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setColor".}
proc fQsciLexerYAML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setEolFill".}
proc fcQsciLexerYAML_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setEolFill".}
proc fQsciLexerYAML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setFont".}
proc fcQsciLexerYAML_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setFont".}
proc fQsciLexerYAML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerYAML_virtualbase_setPaper".}
proc fcQsciLexerYAML_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_setPaper".}
proc fQsciLexerYAML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerYAML_virtualbase_readProperties".}
proc fcQsciLexerYAML_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_readProperties".}
proc fQsciLexerYAML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerYAML_virtualbase_writeProperties".}
proc fcQsciLexerYAML_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_writeProperties".}
proc fQsciLexerYAML_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerYAML_virtualbase_event".}
proc fcQsciLexerYAML_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_event".}
proc fQsciLexerYAML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerYAML_virtualbase_eventFilter".}
proc fcQsciLexerYAML_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_eventFilter".}
proc fQsciLexerYAML_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_timerEvent".}
proc fcQsciLexerYAML_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_timerEvent".}
proc fQsciLexerYAML_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_childEvent".}
proc fcQsciLexerYAML_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_childEvent".}
proc fQsciLexerYAML_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerYAML_virtualbase_customEvent".}
proc fcQsciLexerYAML_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_customEvent".}
proc fQsciLexerYAML_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerYAML_virtualbase_connectNotify".}
proc fcQsciLexerYAML_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_connectNotify".}
proc fQsciLexerYAML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerYAML_virtualbase_disconnectNotify".}
proc fcQsciLexerYAML_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerYAML_override_virtual_disconnectNotify".}
proc fcQsciLexerYAML_staticMetaObject(): pointer {.importc: "QsciLexerYAML_staticMetaObject".}
proc fcQsciLexerYAML_delete(self: pointer) {.importc: "QsciLexerYAML_delete".}


func init*(T: type QsciLexerYAML, h: ptr cQsciLexerYAML): QsciLexerYAML =
  T(h: h)
proc create*(T: type QsciLexerYAML, ): QsciLexerYAML =

  QsciLexerYAML.init(fcQsciLexerYAML_new())
proc create*(T: type QsciLexerYAML, parent: gen_qobject.QObject): QsciLexerYAML =

  QsciLexerYAML.init(fcQsciLexerYAML_new2(parent.h))
proc metaObject*(self: QsciLexerYAML, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerYAML_metaObject(self.h))

proc metacast*(self: QsciLexerYAML, param1: cstring): pointer =

  fcQsciLexerYAML_metacast(self.h, param1)

proc metacall*(self: QsciLexerYAML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerYAML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerYAML, s: cstring): string =

  let v_ms = fcQsciLexerYAML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerYAML, s: cstring): string =

  let v_ms = fcQsciLexerYAML_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerYAML, ): cstring =

  (fcQsciLexerYAML_language(self.h))

proc lexer*(self: QsciLexerYAML, ): cstring =

  (fcQsciLexerYAML_lexer(self.h))

proc defaultColor*(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerYAML_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerYAML, style: cint): bool =

  fcQsciLexerYAML_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerYAML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerYAML_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerYAML_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerYAML, set: cint): cstring =

  (fcQsciLexerYAML_keywords(self.h, set))

proc description*(self: QsciLexerYAML, style: cint): string =

  let v_ms = fcQsciLexerYAML_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerYAML, ): void =

  fcQsciLexerYAML_refreshProperties(self.h)

proc foldComments*(self: QsciLexerYAML, ): bool =

  fcQsciLexerYAML_foldComments(self.h)

proc setFoldComments*(self: QsciLexerYAML, fold: bool): void =

  fcQsciLexerYAML_setFoldComments(self.h, fold)

proc tr2*(_: type QsciLexerYAML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerYAML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerYAML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerYAML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerYAML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerYAML_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerYAML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerYAML_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerYAML, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerYAML_virtualbase_metaObject(self.h))

type QsciLexerYAMLmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metaObject(self: ptr cQsciLexerYAML, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_metaObject ".} =
  type Cb = proc(super: QsciLexerYAMLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerYAML, param1: cstring): pointer =


  fQsciLexerYAML_virtualbase_metacast(self.h, param1)

type QsciLexerYAMLmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metacast(self: ptr cQsciLexerYAML, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_metacast ".} =
  type Cb = proc(super: QsciLexerYAMLmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerYAML(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerYAML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerYAML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerYAMLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_metacall(self: ptr cQsciLexerYAML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_metacall ".} =
  type Cb = proc(super: QsciLexerYAMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerYAML(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerYAML, fold: bool): void =


  fQsciLexerYAML_virtualbase_setFoldComments(self.h, fold)

type QsciLexerYAMLsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setFoldComments(self: ptr cQsciLexerYAML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setFoldComments ".} =
  type Cb = proc(super: QsciLexerYAMLsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerYAML(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerYAMLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerYAML, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_language(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerYAML, ): cstring =


  (fQsciLexerYAML_virtualbase_lexer(self.h))

type QsciLexerYAMLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_lexer(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_lexer ".} =
  type Cb = proc(super: QsciLexerYAMLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_lexerId(self.h)

type QsciLexerYAMLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_lexerId(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_lexerId ".} =
  type Cb = proc(super: QsciLexerYAMLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerYAML, ): cstring =


  (fQsciLexerYAML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerYAMLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_autoCompletionFillups(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerYAMLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerYAML, ): seq[string] =


  var v_ma = fQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerYAMLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_autoCompletionWordSeparators(self: ptr cQsciLexerYAML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerYAML_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerYAMLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerYAML, style: ptr cint): cstring =


  (fQsciLexerYAML_virtualbase_blockEnd(self.h, style))

type QsciLexerYAMLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockEnd(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockEnd ".} =
  type Cb = proc(super: QsciLexerYAMLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_blockLookback(self.h)

type QsciLexerYAMLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockLookback(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_blockLookback ".} =
  type Cb = proc(super: QsciLexerYAMLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerYAML, style: ptr cint): cstring =


  (fQsciLexerYAML_virtualbase_blockStart(self.h, style))

type QsciLexerYAMLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockStart(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockStart ".} =
  type Cb = proc(super: QsciLexerYAMLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerYAML, style: ptr cint): cstring =


  (fQsciLexerYAML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerYAMLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_blockStartKeyword(self: ptr cQsciLexerYAML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerYAMLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_braceStyle(self.h)

type QsciLexerYAMLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_braceStyle(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_braceStyle ".} =
  type Cb = proc(super: QsciLexerYAMLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerYAML, ): bool =


  fQsciLexerYAML_virtualbase_caseSensitive(self.h)

type QsciLexerYAMLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_caseSensitive(self: ptr cQsciLexerYAML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_caseSensitive ".} =
  type Cb = proc(super: QsciLexerYAMLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_color(self.h, style))

type QsciLexerYAMLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_color(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_color ".} =
  type Cb = proc(super: QsciLexerYAMLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerYAML, style: cint): bool =


  fQsciLexerYAML_virtualbase_eolFill(self.h, style)

type QsciLexerYAMLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_eolFill(self: ptr cQsciLexerYAML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_eolFill ".} =
  type Cb = proc(super: QsciLexerYAMLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerYAML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerYAML_virtualbase_font(self.h, style))

type QsciLexerYAMLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_font(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_font ".} =
  type Cb = proc(super: QsciLexerYAMLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_indentationGuideView(self.h)

type QsciLexerYAMLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_indentationGuideView(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerYAMLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerYAML, set: cint): cstring =


  (fQsciLexerYAML_virtualbase_keywords(self.h, set))

type QsciLexerYAMLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_keywords(self: ptr cQsciLexerYAML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_keywords ".} =
  type Cb = proc(super: QsciLexerYAMLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerYAML(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_defaultStyle(self.h)

type QsciLexerYAMLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultStyle(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultStyle ".} =
  type Cb = proc(super: QsciLexerYAMLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerYAMLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerYAML, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_description(self: ptr cQsciLexerYAML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerYAML_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_paper(self.h, style))

type QsciLexerYAMLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_paper(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_paper ".} =
  type Cb = proc(super: QsciLexerYAMLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerYAMLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultColorWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerYAMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerYAML, style: cint): bool =


  fQsciLexerYAML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerYAMLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultEolFill(self: ptr cQsciLexerYAML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerYAMLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerYAML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerYAML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerYAMLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultFontWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerYAMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerYAML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerYAML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerYAMLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_defaultPaperWithStyle(self: ptr cQsciLexerYAML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerYAML_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerYAMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerYAML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerYAML, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerYAML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerYAMLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setEditor(self: ptr cQsciLexerYAML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setEditor ".} =
  type Cb = proc(super: QsciLexerYAMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerYAML(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerYAML, ): void =


  fQsciLexerYAML_virtualbase_refreshProperties(self.h)

type QsciLexerYAMLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_refreshProperties(self: ptr cQsciLexerYAML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerYAML_refreshProperties ".} =
  type Cb = proc(super: QsciLexerYAMLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerYAML(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerYAML, ): cint =


  fQsciLexerYAML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerYAMLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_styleBitsNeeded(self: ptr cQsciLexerYAML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerYAML_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerYAMLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerYAML, ): cstring =


  (fQsciLexerYAML_virtualbase_wordCharacters(self.h))

type QsciLexerYAMLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_wordCharacters(self: ptr cQsciLexerYAML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerYAML_wordCharacters ".} =
  type Cb = proc(super: QsciLexerYAMLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerYAML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerYAML, autoindentstyle: cint): void =


  fQsciLexerYAML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerYAMLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setAutoIndentStyle(self: ptr cQsciLexerYAML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerYAMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerYAML(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerYAML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerYAML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerYAMLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setColor(self: ptr cQsciLexerYAML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setColor ".} =
  type Cb = proc(super: QsciLexerYAMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerYAML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerYAML, eoffill: bool, style: cint): void =


  fQsciLexerYAML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerYAMLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setEolFill(self: ptr cQsciLexerYAML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setEolFill ".} =
  type Cb = proc(super: QsciLexerYAMLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerYAML(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerYAML, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerYAML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerYAMLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setFont(self: ptr cQsciLexerYAML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setFont ".} =
  type Cb = proc(super: QsciLexerYAMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerYAML(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerYAML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerYAML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerYAMLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_setPaper(self: ptr cQsciLexerYAML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerYAML_setPaper ".} =
  type Cb = proc(super: QsciLexerYAMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerYAML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerYAML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerYAML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerYAMLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_readProperties(self: ptr cQsciLexerYAML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_readProperties ".} =
  type Cb = proc(super: QsciLexerYAMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerYAML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerYAML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerYAML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerYAMLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_writeProperties(self: ptr cQsciLexerYAML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_writeProperties ".} =
  type Cb = proc(super: QsciLexerYAMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerYAML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerYAML, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerYAML_virtualbase_event(self.h, event.h)

type QsciLexerYAMLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_event(self: ptr cQsciLexerYAML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_event ".} =
  type Cb = proc(super: QsciLexerYAMLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerYAML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerYAML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerYAML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerYAMLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_eventFilter(self: ptr cQsciLexerYAML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerYAML_eventFilter ".} =
  type Cb = proc(super: QsciLexerYAMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerYAML(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerYAML, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerYAML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerYAMLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_timerEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_timerEvent ".} =
  type Cb = proc(super: QsciLexerYAMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerYAML(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerYAML, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerYAML_virtualbase_childEvent(self.h, event.h)

type QsciLexerYAMLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_childEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_childEvent ".} =
  type Cb = proc(super: QsciLexerYAMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerYAML(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerYAML, event: gen_qcoreevent.QEvent): void =


  fQsciLexerYAML_virtualbase_customEvent(self.h, event.h)

type QsciLexerYAMLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_customEvent(self: ptr cQsciLexerYAML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_customEvent ".} =
  type Cb = proc(super: QsciLexerYAMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerYAML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerYAML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerYAML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerYAMLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_connectNotify(self: ptr cQsciLexerYAML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_connectNotify ".} =
  type Cb = proc(super: QsciLexerYAMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerYAML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerYAML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerYAML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerYAMLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerYAML, slot: proc(super: QsciLexerYAMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerYAMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerYAML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerYAML_disconnectNotify(self: ptr cQsciLexerYAML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerYAML_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerYAMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerYAML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerYAML): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerYAML_staticMetaObject())
proc delete*(self: QsciLexerYAML) =
  fcQsciLexerYAML_delete(self.h)
