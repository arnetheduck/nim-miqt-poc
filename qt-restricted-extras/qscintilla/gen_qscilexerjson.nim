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
{.compile("gen_qscilexerjson.cpp", cflags).}


type QsciLexerJSONEnumEnum* = distinct cint
template Default*(_: type QsciLexerJSONEnumEnum): untyped = 0
template Number*(_: type QsciLexerJSONEnumEnum): untyped = 1
template String*(_: type QsciLexerJSONEnumEnum): untyped = 2
template UnclosedString*(_: type QsciLexerJSONEnumEnum): untyped = 3
template Property*(_: type QsciLexerJSONEnumEnum): untyped = 4
template EscapeSequence*(_: type QsciLexerJSONEnumEnum): untyped = 5
template CommentLine*(_: type QsciLexerJSONEnumEnum): untyped = 6
template CommentBlock*(_: type QsciLexerJSONEnumEnum): untyped = 7
template Operator*(_: type QsciLexerJSONEnumEnum): untyped = 8
template IRI*(_: type QsciLexerJSONEnumEnum): untyped = 9
template IRICompact*(_: type QsciLexerJSONEnumEnum): untyped = 10
template Keyword*(_: type QsciLexerJSONEnumEnum): untyped = 11
template KeywordLD*(_: type QsciLexerJSONEnumEnum): untyped = 12
template Error*(_: type QsciLexerJSONEnumEnum): untyped = 13

import gen_qscilexerjson_types
export gen_qscilexerjson_types

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

type cQsciLexerJSON*{.exportc: "QsciLexerJSON", incompleteStruct.} = object

proc fcQsciLexerJSON_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJSON_metaObject".}
proc fcQsciLexerJSON_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJSON_metacast".}
proc fcQsciLexerJSON_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJSON_metacall".}
proc fcQsciLexerJSON_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerJSON_tr".}
proc fcQsciLexerJSON_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerJSON_trUtf8".}
proc fcQsciLexerJSON_language(self: pointer, ): cstring {.importc: "QsciLexerJSON_language".}
proc fcQsciLexerJSON_lexer(self: pointer, ): cstring {.importc: "QsciLexerJSON_lexer".}
proc fcQsciLexerJSON_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultColor".}
proc fcQsciLexerJSON_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJSON_defaultEolFill".}
proc fcQsciLexerJSON_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultFont".}
proc fcQsciLexerJSON_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_defaultPaper".}
proc fcQsciLexerJSON_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJSON_keywords".}
proc fcQsciLexerJSON_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerJSON_description".}
proc fcQsciLexerJSON_refreshProperties(self: pointer, ): void {.importc: "QsciLexerJSON_refreshProperties".}
proc fcQsciLexerJSON_setHighlightComments(self: pointer, highlight: bool): void {.importc: "QsciLexerJSON_setHighlightComments".}
proc fcQsciLexerJSON_highlightComments(self: pointer, ): bool {.importc: "QsciLexerJSON_highlightComments".}
proc fcQsciLexerJSON_setHighlightEscapeSequences(self: pointer, highlight: bool): void {.importc: "QsciLexerJSON_setHighlightEscapeSequences".}
proc fcQsciLexerJSON_highlightEscapeSequences(self: pointer, ): bool {.importc: "QsciLexerJSON_highlightEscapeSequences".}
proc fcQsciLexerJSON_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerJSON_setFoldCompact".}
proc fcQsciLexerJSON_foldCompact(self: pointer, ): bool {.importc: "QsciLexerJSON_foldCompact".}
proc fcQsciLexerJSON_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJSON_tr2".}
proc fcQsciLexerJSON_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJSON_tr3".}
proc fcQsciLexerJSON_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJSON_trUtf82".}
proc fcQsciLexerJSON_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJSON_trUtf83".}
type cQsciLexerJSONVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerJSONVTable, self: ptr cQsciLexerJSON) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerJSON_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJSON_virtualbase_metaObject".}
proc fcQsciLexerJSON_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJSON_virtualbase_metacast".}
proc fcQsciLexerJSON_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJSON_virtualbase_metacall".}
proc fcQsciLexerJSON_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerJSON_virtualbase_lexer".}
proc fcQsciLexerJSON_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_lexerId".}
proc fcQsciLexerJSON_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerJSON_virtualbase_autoCompletionFillups".}
proc fcQsciLexerJSON_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerJSON_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerJSON_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJSON_virtualbase_blockEnd".}
proc fcQsciLexerJSON_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_blockLookback".}
proc fcQsciLexerJSON_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJSON_virtualbase_blockStart".}
proc fcQsciLexerJSON_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJSON_virtualbase_blockStartKeyword".}
proc fcQsciLexerJSON_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_braceStyle".}
proc fcQsciLexerJSON_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerJSON_virtualbase_caseSensitive".}
proc fcQsciLexerJSON_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_color".}
proc fcQsciLexerJSON_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJSON_virtualbase_eolFill".}
proc fcQsciLexerJSON_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_font".}
proc fcQsciLexerJSON_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_indentationGuideView".}
proc fcQsciLexerJSON_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJSON_virtualbase_keywords".}
proc fcQsciLexerJSON_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_defaultStyle".}
proc fcQsciLexerJSON_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_paper".}
proc fcQsciLexerJSON_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerJSON_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJSON_virtualbase_defaultEolFill".}
proc fcQsciLexerJSON_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerJSON_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJSON_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerJSON_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerJSON_virtualbase_setEditor".}
proc fcQsciLexerJSON_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerJSON_virtualbase_refreshProperties".}
proc fcQsciLexerJSON_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerJSON_virtualbase_styleBitsNeeded".}
proc fcQsciLexerJSON_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerJSON_virtualbase_wordCharacters".}
proc fcQsciLexerJSON_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerJSON_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerJSON_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerJSON_virtualbase_setColor".}
proc fcQsciLexerJSON_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerJSON_virtualbase_setEolFill".}
proc fcQsciLexerJSON_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerJSON_virtualbase_setFont".}
proc fcQsciLexerJSON_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerJSON_virtualbase_setPaper".}
proc fcQsciLexerJSON_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJSON_virtualbase_readProperties".}
proc fcQsciLexerJSON_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJSON_virtualbase_writeProperties".}
proc fcQsciLexerJSON_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerJSON_virtualbase_event".}
proc fcQsciLexerJSON_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerJSON_virtualbase_eventFilter".}
proc fcQsciLexerJSON_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJSON_virtualbase_timerEvent".}
proc fcQsciLexerJSON_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJSON_virtualbase_childEvent".}
proc fcQsciLexerJSON_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJSON_virtualbase_customEvent".}
proc fcQsciLexerJSON_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerJSON_virtualbase_connectNotify".}
proc fcQsciLexerJSON_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerJSON_virtualbase_disconnectNotify".}
proc fcQsciLexerJSON_new(vtbl: pointer, ): ptr cQsciLexerJSON {.importc: "QsciLexerJSON_new".}
proc fcQsciLexerJSON_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerJSON {.importc: "QsciLexerJSON_new2".}
proc fcQsciLexerJSON_staticMetaObject(): pointer {.importc: "QsciLexerJSON_staticMetaObject".}
proc fcQsciLexerJSON_delete(self: pointer) {.importc: "QsciLexerJSON_delete".}

proc metaObject*(self: gen_qscilexerjson_types.QsciLexerJSON, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJSON_metaObject(self.h))

proc metacast*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cstring): pointer =
  fcQsciLexerJSON_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJSON_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring): string =
  let v_ms = fcQsciLexerJSON_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring): string =
  let v_ms = fcQsciLexerJSON_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_language(self.h))

proc lexer*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_lexer(self.h))

proc defaultColor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fcQsciLexerJSON_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerJSON_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerjson_types.QsciLexerJSON, set: cint): cstring =
  (fcQsciLexerJSON_keywords(self.h, set))

proc description*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): string =
  let v_ms = fcQsciLexerJSON_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, ): void =
  fcQsciLexerJSON_refreshProperties(self.h)

proc setHighlightComments*(self: gen_qscilexerjson_types.QsciLexerJSON, highlight: bool): void =
  fcQsciLexerJSON_setHighlightComments(self.h, highlight)

proc highlightComments*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_highlightComments(self.h)

proc setHighlightEscapeSequences*(self: gen_qscilexerjson_types.QsciLexerJSON, highlight: bool): void =
  fcQsciLexerJSON_setHighlightEscapeSequences(self.h, highlight)

proc highlightEscapeSequences*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_highlightEscapeSequences(self.h)

proc setFoldCompact*(self: gen_qscilexerjson_types.QsciLexerJSON, fold: bool): void =
  fcQsciLexerJSON_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_foldCompact(self.h)

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJSON_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJSON_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJSON_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjson_types.QsciLexerJSON, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJSON_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerJSONmetaObjectProc* = proc(self: QsciLexerJSON): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerJSONmetacastProc* = proc(self: QsciLexerJSON, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerJSONmetacallProc* = proc(self: QsciLexerJSON, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerJSONlanguageProc* = proc(self: QsciLexerJSON): cstring {.raises: [], gcsafe.}
type QsciLexerJSONlexerProc* = proc(self: QsciLexerJSON): cstring {.raises: [], gcsafe.}
type QsciLexerJSONlexerIdProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONautoCompletionFillupsProc* = proc(self: QsciLexerJSON): cstring {.raises: [], gcsafe.}
type QsciLexerJSONautoCompletionWordSeparatorsProc* = proc(self: QsciLexerJSON): seq[string] {.raises: [], gcsafe.}
type QsciLexerJSONblockEndProc* = proc(self: QsciLexerJSON, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJSONblockLookbackProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONblockStartProc* = proc(self: QsciLexerJSON, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJSONblockStartKeywordProc* = proc(self: QsciLexerJSON, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJSONbraceStyleProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONcaseSensitiveProc* = proc(self: QsciLexerJSON): bool {.raises: [], gcsafe.}
type QsciLexerJSONcolorProc* = proc(self: QsciLexerJSON, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJSONeolFillProc* = proc(self: QsciLexerJSON, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerJSONfontProc* = proc(self: QsciLexerJSON, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerJSONindentationGuideViewProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONkeywordsProc* = proc(self: QsciLexerJSON, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerJSONdefaultStyleProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONdescriptionProc* = proc(self: QsciLexerJSON, style: cint): string {.raises: [], gcsafe.}
type QsciLexerJSONpaperProc* = proc(self: QsciLexerJSON, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJSONdefaultColorProc* = proc(self: QsciLexerJSON, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJSONdefaultEolFillProc* = proc(self: QsciLexerJSON, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerJSONdefaultFontProc* = proc(self: QsciLexerJSON, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerJSONdefaultPaperProc* = proc(self: QsciLexerJSON, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJSONsetEditorProc* = proc(self: QsciLexerJSON, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerJSONrefreshPropertiesProc* = proc(self: QsciLexerJSON): void {.raises: [], gcsafe.}
type QsciLexerJSONstyleBitsNeededProc* = proc(self: QsciLexerJSON): cint {.raises: [], gcsafe.}
type QsciLexerJSONwordCharactersProc* = proc(self: QsciLexerJSON): cstring {.raises: [], gcsafe.}
type QsciLexerJSONsetAutoIndentStyleProc* = proc(self: QsciLexerJSON, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerJSONsetColorProc* = proc(self: QsciLexerJSON, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJSONsetEolFillProc* = proc(self: QsciLexerJSON, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJSONsetFontProc* = proc(self: QsciLexerJSON, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJSONsetPaperProc* = proc(self: QsciLexerJSON, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJSONreadPropertiesProc* = proc(self: QsciLexerJSON, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerJSONwritePropertiesProc* = proc(self: QsciLexerJSON, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerJSONeventProc* = proc(self: QsciLexerJSON, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerJSONeventFilterProc* = proc(self: QsciLexerJSON, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerJSONtimerEventProc* = proc(self: QsciLexerJSON, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerJSONchildEventProc* = proc(self: QsciLexerJSON, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerJSONcustomEventProc* = proc(self: QsciLexerJSON, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerJSONconnectNotifyProc* = proc(self: QsciLexerJSON, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerJSONdisconnectNotifyProc* = proc(self: QsciLexerJSON, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerJSONVTable* = object
  vtbl: cQsciLexerJSONVTable
  metaObject*: QsciLexerJSONmetaObjectProc
  metacast*: QsciLexerJSONmetacastProc
  metacall*: QsciLexerJSONmetacallProc
  language*: QsciLexerJSONlanguageProc
  lexer*: QsciLexerJSONlexerProc
  lexerId*: QsciLexerJSONlexerIdProc
  autoCompletionFillups*: QsciLexerJSONautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerJSONautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerJSONblockEndProc
  blockLookback*: QsciLexerJSONblockLookbackProc
  blockStart*: QsciLexerJSONblockStartProc
  blockStartKeyword*: QsciLexerJSONblockStartKeywordProc
  braceStyle*: QsciLexerJSONbraceStyleProc
  caseSensitive*: QsciLexerJSONcaseSensitiveProc
  color*: QsciLexerJSONcolorProc
  eolFill*: QsciLexerJSONeolFillProc
  font*: QsciLexerJSONfontProc
  indentationGuideView*: QsciLexerJSONindentationGuideViewProc
  keywords*: QsciLexerJSONkeywordsProc
  defaultStyle*: QsciLexerJSONdefaultStyleProc
  description*: QsciLexerJSONdescriptionProc
  paper*: QsciLexerJSONpaperProc
  defaultColor*: QsciLexerJSONdefaultColorProc
  defaultEolFill*: QsciLexerJSONdefaultEolFillProc
  defaultFont*: QsciLexerJSONdefaultFontProc
  defaultPaper*: QsciLexerJSONdefaultPaperProc
  setEditor*: QsciLexerJSONsetEditorProc
  refreshProperties*: QsciLexerJSONrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerJSONstyleBitsNeededProc
  wordCharacters*: QsciLexerJSONwordCharactersProc
  setAutoIndentStyle*: QsciLexerJSONsetAutoIndentStyleProc
  setColor*: QsciLexerJSONsetColorProc
  setEolFill*: QsciLexerJSONsetEolFillProc
  setFont*: QsciLexerJSONsetFontProc
  setPaper*: QsciLexerJSONsetPaperProc
  readProperties*: QsciLexerJSONreadPropertiesProc
  writeProperties*: QsciLexerJSONwritePropertiesProc
  event*: QsciLexerJSONeventProc
  eventFilter*: QsciLexerJSONeventFilterProc
  timerEvent*: QsciLexerJSONtimerEventProc
  childEvent*: QsciLexerJSONchildEventProc
  customEvent*: QsciLexerJSONcustomEventProc
  connectNotify*: QsciLexerJSONconnectNotifyProc
  disconnectNotify*: QsciLexerJSONdisconnectNotifyProc
proc QsciLexerJSONmetaObject*(self: gen_qscilexerjson_types.QsciLexerJSON, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJSON_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerJSON_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerJSONmetacast*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cstring): pointer =
  fcQsciLexerJSON_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerJSON_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerJSONmetacall*(self: gen_qscilexerjson_types.QsciLexerJSON, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJSON_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerJSON_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerJSON_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerJSONlexer*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerJSON_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerJSONlexerId*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerJSON_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerJSONautoCompletionFillups*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerJSON_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerJSONautoCompletionWordSeparators*(self: gen_qscilexerjson_types.QsciLexerJSON, ): seq[string] =
  var v_ma = fcQsciLexerJSON_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerJSON_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerJSONblockEnd*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fcQsciLexerJSON_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerJSONblockLookback*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerJSON_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerJSONblockStart*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fcQsciLexerJSON_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerJSONblockStartKeyword*(self: gen_qscilexerjson_types.QsciLexerJSON, style: ptr cint): cstring =
  (fcQsciLexerJSON_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerJSONbraceStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerJSON_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerJSONcaseSensitive*(self: gen_qscilexerjson_types.QsciLexerJSON, ): bool =
  fcQsciLexerJSON_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerJSON_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerJSONcolor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONeolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fcQsciLexerJSON_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerJSON_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerJSONfont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerJSON_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONindentationGuideView*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerJSON_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerJSONkeywords*(self: gen_qscilexerjson_types.QsciLexerJSON, set: cint): cstring =
  (fcQsciLexerJSON_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerJSON_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerJSONdefaultStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerJSON_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerJSON_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerJSONpaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONdefaultColor*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONdefaultEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): bool =
  fcQsciLexerJSON_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerJSON_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerJSONdefaultFont*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerJSON_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONdefaultPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJSON_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJSON_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerJSONsetEditor*(self: gen_qscilexerjson_types.QsciLexerJSON, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerJSON_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerJSON_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerJSONrefreshProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, ): void =
  fcQsciLexerJSON_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerJSON_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerJSONstyleBitsNeeded*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cint =
  fcQsciLexerJSON_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerJSON_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerJSONwordCharacters*(self: gen_qscilexerjson_types.QsciLexerJSON, ): cstring =
  (fcQsciLexerJSON_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerJSON_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerJSONsetAutoIndentStyle*(self: gen_qscilexerjson_types.QsciLexerJSON, autoindentstyle: cint): void =
  fcQsciLexerJSON_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerJSON_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerJSONsetColor*(self: gen_qscilexerjson_types.QsciLexerJSON, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerJSON_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerJSON_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerJSONsetEolFill*(self: gen_qscilexerjson_types.QsciLexerJSON, eoffill: bool, style: cint): void =
  fcQsciLexerJSON_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerJSON_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerJSONsetFont*(self: gen_qscilexerjson_types.QsciLexerJSON, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerJSON_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerJSON_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerJSONsetPaper*(self: gen_qscilexerjson_types.QsciLexerJSON, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerJSON_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerJSON_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerJSONreadProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJSON_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerJSON_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJSONwriteProperties*(self: gen_qscilexerjson_types.QsciLexerJSON, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJSON_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerJSON_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJSONevent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerJSON_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJSON_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerJSONeventFilter*(self: gen_qscilexerjson_types.QsciLexerJSON, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerJSON_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerJSON_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJSONtimerEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerJSON_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJSON_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerJSONchildEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerJSON_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJSON_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerJSONcustomEvent*(self: gen_qscilexerjson_types.QsciLexerJSON, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerJSON_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJSON_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerJSONconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerJSON_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerJSON_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerJSONdisconnectNotify*(self: gen_qscilexerjson_types.QsciLexerJSON, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerJSON_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerJSON_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJSONVTable](vtbl)
  let self = QsciLexerJSON(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerjson_types.QsciLexerJSON,
    vtbl: ref QsciLexerJSONVTable = nil): gen_qscilexerjson_types.QsciLexerJSON =
  let vtbl = if vtbl == nil: new QsciLexerJSONVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerJSONVTable, _: ptr cQsciLexerJSON) {.cdecl.} =
    let vtbl = cast[ref QsciLexerJSONVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerJSON_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerJSON_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerJSON_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerJSON_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerJSON_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerJSON_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerJSON_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerJSON_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerJSON_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerJSON_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerJSON_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerJSON_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerJSON_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerJSON_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerJSON_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerJSON_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerJSON_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerJSON_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerJSON_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerJSON_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerJSON_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerJSON_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerJSON_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerJSON_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerJSON_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerJSON_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerJSON_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerJSON_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerJSON_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerJSON_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerJSON_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerJSON_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerJSON_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerJSON_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerJSON_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerJSON_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerJSON_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerJSON_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerJSON_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerJSON_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerJSON_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerJSON_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerJSON_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerJSON_disconnectNotify
  gen_qscilexerjson_types.QsciLexerJSON(h: fcQsciLexerJSON_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerjson_types.QsciLexerJSON,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerJSONVTable = nil): gen_qscilexerjson_types.QsciLexerJSON =
  let vtbl = if vtbl == nil: new QsciLexerJSONVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerJSONVTable, _: ptr cQsciLexerJSON) {.cdecl.} =
    let vtbl = cast[ref QsciLexerJSONVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerJSON_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerJSON_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerJSON_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerJSON_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerJSON_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerJSON_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerJSON_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerJSON_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerJSON_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerJSON_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerJSON_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerJSON_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerJSON_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerJSON_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerJSON_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerJSON_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerJSON_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerJSON_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerJSON_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerJSON_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerJSON_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerJSON_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerJSON_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerJSON_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerJSON_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerJSON_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerJSON_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerJSON_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerJSON_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerJSON_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerJSON_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerJSON_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerJSON_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerJSON_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerJSON_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerJSON_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerJSON_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerJSON_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerJSON_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerJSON_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerJSON_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerJSON_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerJSON_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerJSON_disconnectNotify
  gen_qscilexerjson_types.QsciLexerJSON(h: fcQsciLexerJSON_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerjson_types.QsciLexerJSON): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJSON_staticMetaObject())
proc delete*(self: gen_qscilexerjson_types.QsciLexerJSON) =
  fcQsciLexerJSON_delete(self.h)
