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
{.compile("gen_qscilexeryaml.cpp", cflags).}


type QsciLexerYAMLEnumEnum* = distinct cint
template Default*(_: type QsciLexerYAMLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerYAMLEnumEnum): untyped = 1
template Identifier*(_: type QsciLexerYAMLEnumEnum): untyped = 2
template Keyword*(_: type QsciLexerYAMLEnumEnum): untyped = 3
template Number*(_: type QsciLexerYAMLEnumEnum): untyped = 4
template Reference*(_: type QsciLexerYAMLEnumEnum): untyped = 5
template DocumentDelimiter*(_: type QsciLexerYAMLEnumEnum): untyped = 6
template TextBlockMarker*(_: type QsciLexerYAMLEnumEnum): untyped = 7
template SyntaxErrorMarker*(_: type QsciLexerYAMLEnumEnum): untyped = 8
template Operator*(_: type QsciLexerYAMLEnumEnum): untyped = 9

import gen_qscilexeryaml_types
export gen_qscilexeryaml_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerYAML*{.exportc: "QsciLexerYAML", incompleteStruct.} = object

proc fcQsciLexerYAML_metaObject(self: pointer, ): pointer {.importc: "QsciLexerYAML_metaObject".}
proc fcQsciLexerYAML_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerYAML_metacast".}
proc fcQsciLexerYAML_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerYAML_metacall".}
proc fcQsciLexerYAML_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerYAML_tr".}
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
type cQsciLexerYAMLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerYAMLVTable, self: ptr cQsciLexerYAML) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  language*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexer*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexerId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  autoCompletionFillups*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  autoCompletionWordSeparators*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  blockEnd*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockLookback*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  blockStart*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockStartKeyword*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  braceStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  caseSensitive*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  color*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  eolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  font*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  indentationGuideView*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  keywords*: proc(vtbl, self: pointer, set: cint): cstring {.cdecl, raises: [], gcsafe.}
  defaultStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  description*: proc(vtbl, self: pointer, style: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  paper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultColor*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultEolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  defaultFont*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultPaper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  setEditor*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  refreshProperties*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  styleBitsNeeded*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  wordCharacters*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  setAutoIndentStyle*: proc(vtbl, self: pointer, autoindentstyle: cint): void {.cdecl, raises: [], gcsafe.}
  setColor*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setEolFill*: proc(vtbl, self: pointer, eoffill: bool, style: cint): void {.cdecl, raises: [], gcsafe.}
  setFont*: proc(vtbl, self: pointer, f: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setPaper*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  readProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  writeProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciLexerYAML_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerYAML_virtualbase_metaObject".}
proc fcQsciLexerYAML_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerYAML_virtualbase_metacast".}
proc fcQsciLexerYAML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerYAML_virtualbase_metacall".}
proc fcQsciLexerYAML_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerYAML_virtualbase_setFoldComments".}
proc fcQsciLexerYAML_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerYAML_virtualbase_lexer".}
proc fcQsciLexerYAML_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_lexerId".}
proc fcQsciLexerYAML_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerYAML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerYAML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerYAML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerYAML_virtualbase_blockEnd".}
proc fcQsciLexerYAML_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_blockLookback".}
proc fcQsciLexerYAML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerYAML_virtualbase_blockStart".}
proc fcQsciLexerYAML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerYAML_virtualbase_blockStartKeyword".}
proc fcQsciLexerYAML_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_braceStyle".}
proc fcQsciLexerYAML_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerYAML_virtualbase_caseSensitive".}
proc fcQsciLexerYAML_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_color".}
proc fcQsciLexerYAML_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerYAML_virtualbase_eolFill".}
proc fcQsciLexerYAML_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_font".}
proc fcQsciLexerYAML_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_indentationGuideView".}
proc fcQsciLexerYAML_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerYAML_virtualbase_keywords".}
proc fcQsciLexerYAML_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_defaultStyle".}
proc fcQsciLexerYAML_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_paper".}
proc fcQsciLexerYAML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerYAML_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerYAML_virtualbase_defaultEolFill".}
proc fcQsciLexerYAML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerYAML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerYAML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerYAML_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerYAML_virtualbase_setEditor".}
proc fcQsciLexerYAML_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerYAML_virtualbase_refreshProperties".}
proc fcQsciLexerYAML_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerYAML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerYAML_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerYAML_virtualbase_wordCharacters".}
proc fcQsciLexerYAML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerYAML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerYAML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerYAML_virtualbase_setColor".}
proc fcQsciLexerYAML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerYAML_virtualbase_setEolFill".}
proc fcQsciLexerYAML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerYAML_virtualbase_setFont".}
proc fcQsciLexerYAML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerYAML_virtualbase_setPaper".}
proc fcQsciLexerYAML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerYAML_virtualbase_readProperties".}
proc fcQsciLexerYAML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerYAML_virtualbase_writeProperties".}
proc fcQsciLexerYAML_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerYAML_virtualbase_event".}
proc fcQsciLexerYAML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerYAML_virtualbase_eventFilter".}
proc fcQsciLexerYAML_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerYAML_virtualbase_timerEvent".}
proc fcQsciLexerYAML_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerYAML_virtualbase_childEvent".}
proc fcQsciLexerYAML_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerYAML_virtualbase_customEvent".}
proc fcQsciLexerYAML_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerYAML_virtualbase_connectNotify".}
proc fcQsciLexerYAML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerYAML_virtualbase_disconnectNotify".}
proc fcQsciLexerYAML_new(vtbl: pointer, ): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new".}
proc fcQsciLexerYAML_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerYAML {.importc: "QsciLexerYAML_new2".}
proc fcQsciLexerYAML_staticMetaObject(): pointer {.importc: "QsciLexerYAML_staticMetaObject".}
proc fcQsciLexerYAML_delete(self: pointer) {.importc: "QsciLexerYAML_delete".}

proc metaObject*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerYAML_metaObject(self.h))

proc metacast*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cstring): pointer =
  fcQsciLexerYAML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerYAML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring): string =
  let v_ms = fcQsciLexerYAML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_language(self.h))

proc lexer*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_lexer(self.h))

proc defaultColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fcQsciLexerYAML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerYAML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexeryaml_types.QsciLexerYAML, set: cint): cstring =
  (fcQsciLexerYAML_keywords(self.h, set))

proc description*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): string =
  let v_ms = fcQsciLexerYAML_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): void =
  fcQsciLexerYAML_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): bool =
  fcQsciLexerYAML_foldComments(self.h)

proc setFoldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, fold: bool): void =
  fcQsciLexerYAML_setFoldComments(self.h, fold)

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerYAML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeryaml_types.QsciLexerYAML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerYAML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerYAMLmetaObjectProc* = proc(self: QsciLexerYAML): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerYAMLmetacastProc* = proc(self: QsciLexerYAML, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerYAMLmetacallProc* = proc(self: QsciLexerYAML, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerYAMLsetFoldCommentsProc* = proc(self: QsciLexerYAML, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerYAMLlanguageProc* = proc(self: QsciLexerYAML): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLlexerProc* = proc(self: QsciLexerYAML): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLlexerIdProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLautoCompletionFillupsProc* = proc(self: QsciLexerYAML): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerYAML): seq[string] {.raises: [], gcsafe.}
type QsciLexerYAMLblockEndProc* = proc(self: QsciLexerYAML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLblockLookbackProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLblockStartProc* = proc(self: QsciLexerYAML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLblockStartKeywordProc* = proc(self: QsciLexerYAML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLbraceStyleProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLcaseSensitiveProc* = proc(self: QsciLexerYAML): bool {.raises: [], gcsafe.}
type QsciLexerYAMLcolorProc* = proc(self: QsciLexerYAML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerYAMLeolFillProc* = proc(self: QsciLexerYAML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerYAMLfontProc* = proc(self: QsciLexerYAML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerYAMLindentationGuideViewProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLkeywordsProc* = proc(self: QsciLexerYAML, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLdefaultStyleProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLdescriptionProc* = proc(self: QsciLexerYAML, style: cint): string {.raises: [], gcsafe.}
type QsciLexerYAMLpaperProc* = proc(self: QsciLexerYAML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerYAMLdefaultColorProc* = proc(self: QsciLexerYAML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerYAMLdefaultEolFillProc* = proc(self: QsciLexerYAML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerYAMLdefaultFontProc* = proc(self: QsciLexerYAML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerYAMLdefaultPaperProc* = proc(self: QsciLexerYAML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerYAMLsetEditorProc* = proc(self: QsciLexerYAML, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerYAMLrefreshPropertiesProc* = proc(self: QsciLexerYAML): void {.raises: [], gcsafe.}
type QsciLexerYAMLstyleBitsNeededProc* = proc(self: QsciLexerYAML): cint {.raises: [], gcsafe.}
type QsciLexerYAMLwordCharactersProc* = proc(self: QsciLexerYAML): cstring {.raises: [], gcsafe.}
type QsciLexerYAMLsetAutoIndentStyleProc* = proc(self: QsciLexerYAML, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerYAMLsetColorProc* = proc(self: QsciLexerYAML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerYAMLsetEolFillProc* = proc(self: QsciLexerYAML, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerYAMLsetFontProc* = proc(self: QsciLexerYAML, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerYAMLsetPaperProc* = proc(self: QsciLexerYAML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerYAMLreadPropertiesProc* = proc(self: QsciLexerYAML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerYAMLwritePropertiesProc* = proc(self: QsciLexerYAML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerYAMLeventProc* = proc(self: QsciLexerYAML, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerYAMLeventFilterProc* = proc(self: QsciLexerYAML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerYAMLtimerEventProc* = proc(self: QsciLexerYAML, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerYAMLchildEventProc* = proc(self: QsciLexerYAML, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerYAMLcustomEventProc* = proc(self: QsciLexerYAML, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerYAMLconnectNotifyProc* = proc(self: QsciLexerYAML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerYAMLdisconnectNotifyProc* = proc(self: QsciLexerYAML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerYAMLVTable* = object
  vtbl: cQsciLexerYAMLVTable
  metaObject*: QsciLexerYAMLmetaObjectProc
  metacast*: QsciLexerYAMLmetacastProc
  metacall*: QsciLexerYAMLmetacallProc
  setFoldComments*: QsciLexerYAMLsetFoldCommentsProc
  language*: QsciLexerYAMLlanguageProc
  lexer*: QsciLexerYAMLlexerProc
  lexerId*: QsciLexerYAMLlexerIdProc
  autoCompletionFillups*: QsciLexerYAMLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerYAMLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerYAMLblockEndProc
  blockLookback*: QsciLexerYAMLblockLookbackProc
  blockStart*: QsciLexerYAMLblockStartProc
  blockStartKeyword*: QsciLexerYAMLblockStartKeywordProc
  braceStyle*: QsciLexerYAMLbraceStyleProc
  caseSensitive*: QsciLexerYAMLcaseSensitiveProc
  color*: QsciLexerYAMLcolorProc
  eolFill*: QsciLexerYAMLeolFillProc
  font*: QsciLexerYAMLfontProc
  indentationGuideView*: QsciLexerYAMLindentationGuideViewProc
  keywords*: QsciLexerYAMLkeywordsProc
  defaultStyle*: QsciLexerYAMLdefaultStyleProc
  description*: QsciLexerYAMLdescriptionProc
  paper*: QsciLexerYAMLpaperProc
  defaultColor*: QsciLexerYAMLdefaultColorProc
  defaultEolFill*: QsciLexerYAMLdefaultEolFillProc
  defaultFont*: QsciLexerYAMLdefaultFontProc
  defaultPaper*: QsciLexerYAMLdefaultPaperProc
  setEditor*: QsciLexerYAMLsetEditorProc
  refreshProperties*: QsciLexerYAMLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerYAMLstyleBitsNeededProc
  wordCharacters*: QsciLexerYAMLwordCharactersProc
  setAutoIndentStyle*: QsciLexerYAMLsetAutoIndentStyleProc
  setColor*: QsciLexerYAMLsetColorProc
  setEolFill*: QsciLexerYAMLsetEolFillProc
  setFont*: QsciLexerYAMLsetFontProc
  setPaper*: QsciLexerYAMLsetPaperProc
  readProperties*: QsciLexerYAMLreadPropertiesProc
  writeProperties*: QsciLexerYAMLwritePropertiesProc
  event*: QsciLexerYAMLeventProc
  eventFilter*: QsciLexerYAMLeventFilterProc
  timerEvent*: QsciLexerYAMLtimerEventProc
  childEvent*: QsciLexerYAMLchildEventProc
  customEvent*: QsciLexerYAMLcustomEventProc
  connectNotify*: QsciLexerYAMLconnectNotifyProc
  disconnectNotify*: QsciLexerYAMLdisconnectNotifyProc
proc QsciLexerYAMLmetaObject*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerYAML_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerYAML_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerYAMLmetacast*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cstring): pointer =
  fcQsciLexerYAML_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerYAML_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerYAMLmetacall*(self: gen_qscilexeryaml_types.QsciLexerYAML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerYAML_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerYAML_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerYAMLsetFoldComments*(self: gen_qscilexeryaml_types.QsciLexerYAML, fold: bool): void =
  fcQsciLexerYAML_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerYAML_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc miqt_exec_callback_cQsciLexerYAML_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerYAMLlexer*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerYAML_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerYAMLlexerId*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerYAML_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerYAMLautoCompletionFillups*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerYAML_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerYAMLautoCompletionWordSeparators*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): seq[string] =
  var v_ma = fcQsciLexerYAML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerYAML_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerYAMLblockEnd*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fcQsciLexerYAML_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerYAMLblockLookback*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerYAML_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerYAMLblockStart*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fcQsciLexerYAML_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerYAMLblockStartKeyword*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: ptr cint): cstring =
  (fcQsciLexerYAML_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerYAMLbraceStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerYAML_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerYAMLcaseSensitive*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): bool =
  fcQsciLexerYAML_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerYAML_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerYAMLcolor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLeolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fcQsciLexerYAML_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerYAML_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerYAMLfont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerYAML_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLindentationGuideView*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerYAML_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerYAMLkeywords*(self: gen_qscilexeryaml_types.QsciLexerYAML, set: cint): cstring =
  (fcQsciLexerYAML_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerYAML_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerYAMLdefaultStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerYAML_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerYAML_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerYAMLpaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLdefaultColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLdefaultEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): bool =
  fcQsciLexerYAML_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerYAML_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerYAMLdefaultFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerYAML_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLdefaultPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerYAML_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerYAML_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerYAMLsetEditor*(self: gen_qscilexeryaml_types.QsciLexerYAML, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerYAML_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerYAML_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerYAMLrefreshProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): void =
  fcQsciLexerYAML_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerYAML_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerYAMLstyleBitsNeeded*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cint =
  fcQsciLexerYAML_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerYAML_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerYAMLwordCharacters*(self: gen_qscilexeryaml_types.QsciLexerYAML, ): cstring =
  (fcQsciLexerYAML_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerYAML_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerYAMLsetAutoIndentStyle*(self: gen_qscilexeryaml_types.QsciLexerYAML, autoindentstyle: cint): void =
  fcQsciLexerYAML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerYAML_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerYAMLsetColor*(self: gen_qscilexeryaml_types.QsciLexerYAML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerYAML_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerYAML_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerYAMLsetEolFill*(self: gen_qscilexeryaml_types.QsciLexerYAML, eoffill: bool, style: cint): void =
  fcQsciLexerYAML_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerYAML_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerYAMLsetFont*(self: gen_qscilexeryaml_types.QsciLexerYAML, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerYAML_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerYAML_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerYAMLsetPaper*(self: gen_qscilexeryaml_types.QsciLexerYAML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerYAML_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerYAML_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerYAMLreadProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerYAML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerYAML_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerYAMLwriteProperties*(self: gen_qscilexeryaml_types.QsciLexerYAML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerYAML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerYAML_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerYAMLevent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerYAML_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerYAML_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerYAMLeventFilter*(self: gen_qscilexeryaml_types.QsciLexerYAML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerYAML_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerYAML_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerYAMLtimerEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerYAML_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerYAML_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerYAMLchildEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerYAML_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerYAML_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerYAMLcustomEvent*(self: gen_qscilexeryaml_types.QsciLexerYAML, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerYAML_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerYAML_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerYAMLconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerYAML_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerYAML_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerYAMLdisconnectNotify*(self: gen_qscilexeryaml_types.QsciLexerYAML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerYAML_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerYAML_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerYAMLVTable](vtbl)
  let self = QsciLexerYAML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexeryaml_types.QsciLexerYAML,
    vtbl: ref QsciLexerYAMLVTable = nil): gen_qscilexeryaml_types.QsciLexerYAML =
  let vtbl = if vtbl == nil: new QsciLexerYAMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerYAMLVTable, _: ptr cQsciLexerYAML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerYAMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerYAML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerYAML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerYAML_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerYAML_setFoldComments
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerYAML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerYAML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerYAML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerYAML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerYAML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerYAML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerYAML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerYAML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerYAML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerYAML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerYAML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerYAML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerYAML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerYAML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerYAML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerYAML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerYAML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerYAML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerYAML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerYAML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerYAML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerYAML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerYAML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerYAML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerYAML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerYAML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerYAML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerYAML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerYAML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerYAML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerYAML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerYAML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerYAML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerYAML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerYAML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerYAML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerYAML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerYAML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerYAML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerYAML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerYAML_disconnectNotify
  gen_qscilexeryaml_types.QsciLexerYAML(h: fcQsciLexerYAML_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexeryaml_types.QsciLexerYAML,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerYAMLVTable = nil): gen_qscilexeryaml_types.QsciLexerYAML =
  let vtbl = if vtbl == nil: new QsciLexerYAMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerYAMLVTable, _: ptr cQsciLexerYAML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerYAMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerYAML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerYAML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerYAML_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerYAML_setFoldComments
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerYAML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerYAML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerYAML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerYAML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerYAML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerYAML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerYAML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerYAML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerYAML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerYAML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerYAML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerYAML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerYAML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerYAML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerYAML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerYAML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerYAML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerYAML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerYAML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerYAML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerYAML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerYAML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerYAML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerYAML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerYAML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerYAML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerYAML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerYAML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerYAML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerYAML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerYAML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerYAML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerYAML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerYAML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerYAML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerYAML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerYAML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerYAML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerYAML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerYAML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerYAML_disconnectNotify
  gen_qscilexeryaml_types.QsciLexerYAML(h: fcQsciLexerYAML_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexeryaml_types.QsciLexerYAML): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerYAML_staticMetaObject())
proc delete*(self: gen_qscilexeryaml_types.QsciLexerYAML) =
  fcQsciLexerYAML_delete(self.h)
