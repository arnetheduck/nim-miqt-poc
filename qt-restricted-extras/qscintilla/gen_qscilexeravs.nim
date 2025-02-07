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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")
{.compile("gen_qscilexeravs.cpp", cflags).}


type QsciLexerAVSEnumEnum* = distinct cint
template Default*(_: type QsciLexerAVSEnumEnum): untyped = 0
template BlockComment*(_: type QsciLexerAVSEnumEnum): untyped = 1
template NestedBlockComment*(_: type QsciLexerAVSEnumEnum): untyped = 2
template LineComment*(_: type QsciLexerAVSEnumEnum): untyped = 3
template Number*(_: type QsciLexerAVSEnumEnum): untyped = 4
template Operator*(_: type QsciLexerAVSEnumEnum): untyped = 5
template Identifier*(_: type QsciLexerAVSEnumEnum): untyped = 6
template String*(_: type QsciLexerAVSEnumEnum): untyped = 7
template TripleString*(_: type QsciLexerAVSEnumEnum): untyped = 8
template Keyword*(_: type QsciLexerAVSEnumEnum): untyped = 9
template Filter*(_: type QsciLexerAVSEnumEnum): untyped = 10
template Plugin*(_: type QsciLexerAVSEnumEnum): untyped = 11
template Function*(_: type QsciLexerAVSEnumEnum): untyped = 12
template ClipProperty*(_: type QsciLexerAVSEnumEnum): untyped = 13
template KeywordSet6*(_: type QsciLexerAVSEnumEnum): untyped = 14

import gen_qscilexeravs_types
export gen_qscilexeravs_types

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

type cQsciLexerAVS*{.exportc: "QsciLexerAVS", incompleteStruct.} = object

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
type cQsciLexerAVSVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerAVSVTable, self: ptr cQsciLexerAVS) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerAVS_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerAVS_virtualbase_metaObject".}
proc fcQsciLexerAVS_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerAVS_virtualbase_metacast".}
proc fcQsciLexerAVS_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerAVS_virtualbase_metacall".}
proc fcQsciLexerAVS_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_virtualbase_setFoldComments".}
proc fcQsciLexerAVS_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerAVS_virtualbase_setFoldCompact".}
proc fcQsciLexerAVS_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerAVS_virtualbase_lexer".}
proc fcQsciLexerAVS_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_lexerId".}
proc fcQsciLexerAVS_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerAVS_virtualbase_autoCompletionFillups".}
proc fcQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerAVS_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerAVS_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerAVS_virtualbase_blockEnd".}
proc fcQsciLexerAVS_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_blockLookback".}
proc fcQsciLexerAVS_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerAVS_virtualbase_blockStart".}
proc fcQsciLexerAVS_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerAVS_virtualbase_blockStartKeyword".}
proc fcQsciLexerAVS_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_braceStyle".}
proc fcQsciLexerAVS_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerAVS_virtualbase_caseSensitive".}
proc fcQsciLexerAVS_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_color".}
proc fcQsciLexerAVS_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerAVS_virtualbase_eolFill".}
proc fcQsciLexerAVS_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_font".}
proc fcQsciLexerAVS_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_indentationGuideView".}
proc fcQsciLexerAVS_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerAVS_virtualbase_keywords".}
proc fcQsciLexerAVS_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_defaultStyle".}
proc fcQsciLexerAVS_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_paper".}
proc fcQsciLexerAVS_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerAVS_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerAVS_virtualbase_defaultEolFill".}
proc fcQsciLexerAVS_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerAVS_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerAVS_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerAVS_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerAVS_virtualbase_setEditor".}
proc fcQsciLexerAVS_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerAVS_virtualbase_refreshProperties".}
proc fcQsciLexerAVS_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerAVS_virtualbase_styleBitsNeeded".}
proc fcQsciLexerAVS_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerAVS_virtualbase_wordCharacters".}
proc fcQsciLexerAVS_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerAVS_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerAVS_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerAVS_virtualbase_setColor".}
proc fcQsciLexerAVS_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerAVS_virtualbase_setEolFill".}
proc fcQsciLexerAVS_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerAVS_virtualbase_setFont".}
proc fcQsciLexerAVS_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerAVS_virtualbase_setPaper".}
proc fcQsciLexerAVS_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerAVS_virtualbase_readProperties".}
proc fcQsciLexerAVS_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerAVS_virtualbase_writeProperties".}
proc fcQsciLexerAVS_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerAVS_virtualbase_event".}
proc fcQsciLexerAVS_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerAVS_virtualbase_eventFilter".}
proc fcQsciLexerAVS_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerAVS_virtualbase_timerEvent".}
proc fcQsciLexerAVS_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerAVS_virtualbase_childEvent".}
proc fcQsciLexerAVS_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerAVS_virtualbase_customEvent".}
proc fcQsciLexerAVS_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerAVS_virtualbase_connectNotify".}
proc fcQsciLexerAVS_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerAVS_virtualbase_disconnectNotify".}
proc fcQsciLexerAVS_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerAVS_protectedbase_readProperties".}
proc fcQsciLexerAVS_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerAVS_protectedbase_writeProperties".}
proc fcQsciLexerAVS_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerAVS_protectedbase_sender".}
proc fcQsciLexerAVS_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerAVS_protectedbase_senderSignalIndex".}
proc fcQsciLexerAVS_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerAVS_protectedbase_receivers".}
proc fcQsciLexerAVS_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerAVS_protectedbase_isSignalConnected".}
proc fcQsciLexerAVS_new(vtbl: pointer, ): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new".}
proc fcQsciLexerAVS_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerAVS {.importc: "QsciLexerAVS_new2".}
proc fcQsciLexerAVS_staticMetaObject(): pointer {.importc: "QsciLexerAVS_staticMetaObject".}
proc fcQsciLexerAVS_delete(self: pointer) {.importc: "QsciLexerAVS_delete".}

proc metaObject*(self: gen_qscilexeravs_types.QsciLexerAVS, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerAVS_metaObject(self.h))

proc metacast*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cstring): pointer =
  fcQsciLexerAVS_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerAVS_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring): string =
  let v_ms = fcQsciLexerAVS_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring): string =
  let v_ms = fcQsciLexerAVS_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_language(self.h))

proc lexer*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_lexer(self.h))

proc braceStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerAVS_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerAVS_defaultFont(self.h, style))

proc keywords*(self: gen_qscilexeravs_types.QsciLexerAVS, set: cint): cstring =
  (fcQsciLexerAVS_keywords(self.h, set))

proc description*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): string =
  let v_ms = fcQsciLexerAVS_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, ): void =
  fcQsciLexerAVS_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fcQsciLexerAVS_foldComments(self.h)

proc foldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fcQsciLexerAVS_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerAVS_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerAVS_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerAVS_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeravs_types.QsciLexerAVS, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerAVS_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerAVSmetaObjectProc* = proc(self: QsciLexerAVS): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerAVSmetacastProc* = proc(self: QsciLexerAVS, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerAVSmetacallProc* = proc(self: QsciLexerAVS, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerAVSsetFoldCommentsProc* = proc(self: QsciLexerAVS, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerAVSsetFoldCompactProc* = proc(self: QsciLexerAVS, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerAVSlanguageProc* = proc(self: QsciLexerAVS): cstring {.raises: [], gcsafe.}
type QsciLexerAVSlexerProc* = proc(self: QsciLexerAVS): cstring {.raises: [], gcsafe.}
type QsciLexerAVSlexerIdProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVSautoCompletionFillupsProc* = proc(self: QsciLexerAVS): cstring {.raises: [], gcsafe.}
type QsciLexerAVSautoCompletionWordSeparatorsProc* = proc(self: QsciLexerAVS): seq[string] {.raises: [], gcsafe.}
type QsciLexerAVSblockEndProc* = proc(self: QsciLexerAVS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerAVSblockLookbackProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVSblockStartProc* = proc(self: QsciLexerAVS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerAVSblockStartKeywordProc* = proc(self: QsciLexerAVS, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerAVSbraceStyleProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVScaseSensitiveProc* = proc(self: QsciLexerAVS): bool {.raises: [], gcsafe.}
type QsciLexerAVScolorProc* = proc(self: QsciLexerAVS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerAVSeolFillProc* = proc(self: QsciLexerAVS, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerAVSfontProc* = proc(self: QsciLexerAVS, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerAVSindentationGuideViewProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVSkeywordsProc* = proc(self: QsciLexerAVS, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerAVSdefaultStyleProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVSdescriptionProc* = proc(self: QsciLexerAVS, style: cint): string {.raises: [], gcsafe.}
type QsciLexerAVSpaperProc* = proc(self: QsciLexerAVS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerAVSdefaultColorProc* = proc(self: QsciLexerAVS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerAVSdefaultEolFillProc* = proc(self: QsciLexerAVS, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerAVSdefaultFontProc* = proc(self: QsciLexerAVS, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerAVSdefaultPaperProc* = proc(self: QsciLexerAVS, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerAVSsetEditorProc* = proc(self: QsciLexerAVS, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerAVSrefreshPropertiesProc* = proc(self: QsciLexerAVS): void {.raises: [], gcsafe.}
type QsciLexerAVSstyleBitsNeededProc* = proc(self: QsciLexerAVS): cint {.raises: [], gcsafe.}
type QsciLexerAVSwordCharactersProc* = proc(self: QsciLexerAVS): cstring {.raises: [], gcsafe.}
type QsciLexerAVSsetAutoIndentStyleProc* = proc(self: QsciLexerAVS, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerAVSsetColorProc* = proc(self: QsciLexerAVS, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerAVSsetEolFillProc* = proc(self: QsciLexerAVS, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerAVSsetFontProc* = proc(self: QsciLexerAVS, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerAVSsetPaperProc* = proc(self: QsciLexerAVS, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerAVSreadPropertiesProc* = proc(self: QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerAVSwritePropertiesProc* = proc(self: QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerAVSeventProc* = proc(self: QsciLexerAVS, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerAVSeventFilterProc* = proc(self: QsciLexerAVS, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerAVStimerEventProc* = proc(self: QsciLexerAVS, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerAVSchildEventProc* = proc(self: QsciLexerAVS, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerAVScustomEventProc* = proc(self: QsciLexerAVS, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerAVSconnectNotifyProc* = proc(self: QsciLexerAVS, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerAVSdisconnectNotifyProc* = proc(self: QsciLexerAVS, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerAVSVTable* = object
  vtbl: cQsciLexerAVSVTable
  metaObject*: QsciLexerAVSmetaObjectProc
  metacast*: QsciLexerAVSmetacastProc
  metacall*: QsciLexerAVSmetacallProc
  setFoldComments*: QsciLexerAVSsetFoldCommentsProc
  setFoldCompact*: QsciLexerAVSsetFoldCompactProc
  language*: QsciLexerAVSlanguageProc
  lexer*: QsciLexerAVSlexerProc
  lexerId*: QsciLexerAVSlexerIdProc
  autoCompletionFillups*: QsciLexerAVSautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerAVSautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerAVSblockEndProc
  blockLookback*: QsciLexerAVSblockLookbackProc
  blockStart*: QsciLexerAVSblockStartProc
  blockStartKeyword*: QsciLexerAVSblockStartKeywordProc
  braceStyle*: QsciLexerAVSbraceStyleProc
  caseSensitive*: QsciLexerAVScaseSensitiveProc
  color*: QsciLexerAVScolorProc
  eolFill*: QsciLexerAVSeolFillProc
  font*: QsciLexerAVSfontProc
  indentationGuideView*: QsciLexerAVSindentationGuideViewProc
  keywords*: QsciLexerAVSkeywordsProc
  defaultStyle*: QsciLexerAVSdefaultStyleProc
  description*: QsciLexerAVSdescriptionProc
  paper*: QsciLexerAVSpaperProc
  defaultColor*: QsciLexerAVSdefaultColorProc
  defaultEolFill*: QsciLexerAVSdefaultEolFillProc
  defaultFont*: QsciLexerAVSdefaultFontProc
  defaultPaper*: QsciLexerAVSdefaultPaperProc
  setEditor*: QsciLexerAVSsetEditorProc
  refreshProperties*: QsciLexerAVSrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerAVSstyleBitsNeededProc
  wordCharacters*: QsciLexerAVSwordCharactersProc
  setAutoIndentStyle*: QsciLexerAVSsetAutoIndentStyleProc
  setColor*: QsciLexerAVSsetColorProc
  setEolFill*: QsciLexerAVSsetEolFillProc
  setFont*: QsciLexerAVSsetFontProc
  setPaper*: QsciLexerAVSsetPaperProc
  readProperties*: QsciLexerAVSreadPropertiesProc
  writeProperties*: QsciLexerAVSwritePropertiesProc
  event*: QsciLexerAVSeventProc
  eventFilter*: QsciLexerAVSeventFilterProc
  timerEvent*: QsciLexerAVStimerEventProc
  childEvent*: QsciLexerAVSchildEventProc
  customEvent*: QsciLexerAVScustomEventProc
  connectNotify*: QsciLexerAVSconnectNotifyProc
  disconnectNotify*: QsciLexerAVSdisconnectNotifyProc
proc QsciLexerAVSmetaObject*(self: gen_qscilexeravs_types.QsciLexerAVS, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerAVS_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerAVS_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerAVSmetacast*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cstring): pointer =
  fcQsciLexerAVS_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerAVS_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerAVSmetacall*(self: gen_qscilexeravs_types.QsciLexerAVS, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerAVS_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerAVS_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerAVSsetFoldComments*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerAVS_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerAVSsetFoldCompact*(self: gen_qscilexeravs_types.QsciLexerAVS, fold: bool): void =
  fcQsciLexerAVS_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerAVS_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerAVS_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerAVSlexer*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerAVS_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerAVSlexerId*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerAVS_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerAVSautoCompletionFillups*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerAVS_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerAVSautoCompletionWordSeparators*(self: gen_qscilexeravs_types.QsciLexerAVS, ): seq[string] =
  var v_ma = fcQsciLexerAVS_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerAVS_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerAVSblockEnd*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fcQsciLexerAVS_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerAVSblockLookback*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerAVS_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerAVSblockStart*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fcQsciLexerAVS_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerAVSblockStartKeyword*(self: gen_qscilexeravs_types.QsciLexerAVS, style: ptr cint): cstring =
  (fcQsciLexerAVS_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerAVSbraceStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerAVS_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerAVScaseSensitive*(self: gen_qscilexeravs_types.QsciLexerAVS, ): bool =
  fcQsciLexerAVS_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerAVS_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerAVScolor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerAVS_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSeolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): bool =
  fcQsciLexerAVS_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerAVS_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerAVSfont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerAVS_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSindentationGuideView*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerAVS_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerAVSkeywords*(self: gen_qscilexeravs_types.QsciLexerAVS, set: cint): cstring =
  (fcQsciLexerAVS_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerAVS_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerAVSdefaultStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerAVS_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerAVS_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerAVSpaper*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerAVS_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSdefaultColor*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerAVS_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSdefaultEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): bool =
  fcQsciLexerAVS_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerAVS_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerAVSdefaultFont*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerAVS_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSdefaultPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerAVS_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerAVS_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerAVSsetEditor*(self: gen_qscilexeravs_types.QsciLexerAVS, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerAVS_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerAVS_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerAVSrefreshProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, ): void =
  fcQsciLexerAVS_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerAVS_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerAVSstyleBitsNeeded*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerAVS_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerAVSwordCharacters*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cstring =
  (fcQsciLexerAVS_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerAVS_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerAVSsetAutoIndentStyle*(self: gen_qscilexeravs_types.QsciLexerAVS, autoindentstyle: cint): void =
  fcQsciLexerAVS_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerAVS_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerAVSsetColor*(self: gen_qscilexeravs_types.QsciLexerAVS, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerAVS_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerAVS_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerAVSsetEolFill*(self: gen_qscilexeravs_types.QsciLexerAVS, eoffill: bool, style: cint): void =
  fcQsciLexerAVS_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerAVS_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerAVSsetFont*(self: gen_qscilexeravs_types.QsciLexerAVS, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerAVS_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerAVS_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerAVSsetPaper*(self: gen_qscilexeravs_types.QsciLexerAVS, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerAVS_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerAVS_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerAVSreadProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerAVS_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerAVS_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerAVSwriteProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerAVS_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerAVS_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerAVSevent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerAVS_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerAVS_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerAVSeventFilter*(self: gen_qscilexeravs_types.QsciLexerAVS, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerAVS_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerAVS_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerAVStimerEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerAVS_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerAVS_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerAVSchildEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerAVS_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerAVS_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerAVScustomEvent*(self: gen_qscilexeravs_types.QsciLexerAVS, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerAVS_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerAVS_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerAVSconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerAVS_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerAVS_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerAVSdisconnectNotify*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerAVS_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerAVS_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerAVSVTable](vtbl)
  let self = QsciLexerAVS(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerAVS_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexeravs_types.QsciLexerAVS, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerAVS_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexeravs_types.QsciLexerAVS, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerAVS_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexeravs_types.QsciLexerAVS, ): cint =
  fcQsciLexerAVS_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: cstring): cint =
  fcQsciLexerAVS_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexeravs_types.QsciLexerAVS, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerAVS_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexeravs_types.QsciLexerAVS,
    vtbl: ref QsciLexerAVSVTable = nil): gen_qscilexeravs_types.QsciLexerAVS =
  let vtbl = if vtbl == nil: new QsciLexerAVSVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerAVSVTable, _: ptr cQsciLexerAVS) {.cdecl.} =
    let vtbl = cast[ref QsciLexerAVSVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerAVS_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerAVS_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerAVS_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerAVS_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerAVS_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerAVS_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerAVS_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerAVS_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerAVS_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerAVS_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerAVS_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerAVS_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerAVS_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerAVS_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerAVS_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerAVS_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerAVS_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerAVS_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerAVS_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerAVS_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerAVS_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerAVS_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerAVS_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerAVS_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerAVS_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerAVS_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerAVS_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerAVS_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerAVS_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerAVS_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerAVS_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerAVS_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerAVS_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerAVS_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerAVS_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerAVS_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerAVS_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerAVS_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerAVS_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerAVS_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerAVS_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerAVS_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerAVS_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerAVS_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerAVS_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerAVS_disconnectNotify
  gen_qscilexeravs_types.QsciLexerAVS(h: fcQsciLexerAVS_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexeravs_types.QsciLexerAVS,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerAVSVTable = nil): gen_qscilexeravs_types.QsciLexerAVS =
  let vtbl = if vtbl == nil: new QsciLexerAVSVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerAVSVTable, _: ptr cQsciLexerAVS) {.cdecl.} =
    let vtbl = cast[ref QsciLexerAVSVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerAVS_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerAVS_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerAVS_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerAVS_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerAVS_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerAVS_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerAVS_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerAVS_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerAVS_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerAVS_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerAVS_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerAVS_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerAVS_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerAVS_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerAVS_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerAVS_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerAVS_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerAVS_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerAVS_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerAVS_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerAVS_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerAVS_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerAVS_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerAVS_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerAVS_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerAVS_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerAVS_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerAVS_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerAVS_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerAVS_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerAVS_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerAVS_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerAVS_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerAVS_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerAVS_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerAVS_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerAVS_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerAVS_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerAVS_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerAVS_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerAVS_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerAVS_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerAVS_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerAVS_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerAVS_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerAVS_disconnectNotify
  gen_qscilexeravs_types.QsciLexerAVS(h: fcQsciLexerAVS_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexeravs_types.QsciLexerAVS): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerAVS_staticMetaObject())
proc delete*(self: gen_qscilexeravs_types.QsciLexerAVS) =
  fcQsciLexerAVS_delete(self.h)
