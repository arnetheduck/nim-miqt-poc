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
{.compile("gen_qscilexerbash.cpp", cflags).}


type QsciLexerBashEnumEnum* = distinct cint
template Default*(_: type QsciLexerBashEnumEnum): untyped = 0
template Error*(_: type QsciLexerBashEnumEnum): untyped = 1
template Comment*(_: type QsciLexerBashEnumEnum): untyped = 2
template Number*(_: type QsciLexerBashEnumEnum): untyped = 3
template Keyword*(_: type QsciLexerBashEnumEnum): untyped = 4
template DoubleQuotedString*(_: type QsciLexerBashEnumEnum): untyped = 5
template SingleQuotedString*(_: type QsciLexerBashEnumEnum): untyped = 6
template Operator*(_: type QsciLexerBashEnumEnum): untyped = 7
template Identifier*(_: type QsciLexerBashEnumEnum): untyped = 8
template Scalar*(_: type QsciLexerBashEnumEnum): untyped = 9
template ParameterExpansion*(_: type QsciLexerBashEnumEnum): untyped = 10
template Backticks*(_: type QsciLexerBashEnumEnum): untyped = 11
template HereDocumentDelimiter*(_: type QsciLexerBashEnumEnum): untyped = 12
template SingleQuotedHereDocument*(_: type QsciLexerBashEnumEnum): untyped = 13

import gen_qscilexerbash_types
export gen_qscilexerbash_types

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

type cQsciLexerBash*{.exportc: "QsciLexerBash", incompleteStruct.} = object

proc fcQsciLexerBash_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBash_metaObject".}
proc fcQsciLexerBash_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBash_metacast".}
proc fcQsciLexerBash_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBash_metacall".}
proc fcQsciLexerBash_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr".}
proc fcQsciLexerBash_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerBash_trUtf8".}
proc fcQsciLexerBash_language(self: pointer, ): cstring {.importc: "QsciLexerBash_language".}
proc fcQsciLexerBash_lexer(self: pointer, ): cstring {.importc: "QsciLexerBash_lexer".}
proc fcQsciLexerBash_braceStyle(self: pointer, ): cint {.importc: "QsciLexerBash_braceStyle".}
proc fcQsciLexerBash_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBash_wordCharacters".}
proc fcQsciLexerBash_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultColor".}
proc fcQsciLexerBash_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBash_defaultEolFill".}
proc fcQsciLexerBash_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultFont".}
proc fcQsciLexerBash_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_defaultPaper".}
proc fcQsciLexerBash_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBash_keywords".}
proc fcQsciLexerBash_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBash_description".}
proc fcQsciLexerBash_refreshProperties(self: pointer, ): void {.importc: "QsciLexerBash_refreshProperties".}
proc fcQsciLexerBash_foldComments(self: pointer, ): bool {.importc: "QsciLexerBash_foldComments".}
proc fcQsciLexerBash_foldCompact(self: pointer, ): bool {.importc: "QsciLexerBash_foldCompact".}
proc fcQsciLexerBash_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldComments".}
proc fcQsciLexerBash_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerBash_setFoldCompact".}
proc fcQsciLexerBash_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBash_tr2".}
proc fcQsciLexerBash_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBash_tr3".}
proc fcQsciLexerBash_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBash_trUtf82".}
proc fcQsciLexerBash_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBash_trUtf83".}
type cQsciLexerBashVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerBashVTable, self: ptr cQsciLexerBash) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerBash_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBash_virtualbase_metaObject".}
proc fcQsciLexerBash_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBash_virtualbase_metacast".}
proc fcQsciLexerBash_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBash_virtualbase_metacall".}
proc fcQsciLexerBash_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerBash_virtualbase_setFoldComments".}
proc fcQsciLexerBash_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerBash_virtualbase_setFoldCompact".}
proc fcQsciLexerBash_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerBash_virtualbase_lexer".}
proc fcQsciLexerBash_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_lexerId".}
proc fcQsciLexerBash_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerBash_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBash_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerBash_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBash_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBash_virtualbase_blockEnd".}
proc fcQsciLexerBash_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_blockLookback".}
proc fcQsciLexerBash_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBash_virtualbase_blockStart".}
proc fcQsciLexerBash_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBash_virtualbase_blockStartKeyword".}
proc fcQsciLexerBash_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_braceStyle".}
proc fcQsciLexerBash_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerBash_virtualbase_caseSensitive".}
proc fcQsciLexerBash_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_color".}
proc fcQsciLexerBash_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBash_virtualbase_eolFill".}
proc fcQsciLexerBash_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_font".}
proc fcQsciLexerBash_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_indentationGuideView".}
proc fcQsciLexerBash_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBash_virtualbase_keywords".}
proc fcQsciLexerBash_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_defaultStyle".}
proc fcQsciLexerBash_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_paper".}
proc fcQsciLexerBash_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBash_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBash_virtualbase_defaultEolFill".}
proc fcQsciLexerBash_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBash_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBash_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBash_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerBash_virtualbase_setEditor".}
proc fcQsciLexerBash_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerBash_virtualbase_refreshProperties".}
proc fcQsciLexerBash_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerBash_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBash_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBash_virtualbase_wordCharacters".}
proc fcQsciLexerBash_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerBash_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBash_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerBash_virtualbase_setColor".}
proc fcQsciLexerBash_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerBash_virtualbase_setEolFill".}
proc fcQsciLexerBash_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerBash_virtualbase_setFont".}
proc fcQsciLexerBash_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerBash_virtualbase_setPaper".}
proc fcQsciLexerBash_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBash_virtualbase_readProperties".}
proc fcQsciLexerBash_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBash_virtualbase_writeProperties".}
proc fcQsciLexerBash_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerBash_virtualbase_event".}
proc fcQsciLexerBash_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerBash_virtualbase_eventFilter".}
proc fcQsciLexerBash_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBash_virtualbase_timerEvent".}
proc fcQsciLexerBash_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBash_virtualbase_childEvent".}
proc fcQsciLexerBash_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBash_virtualbase_customEvent".}
proc fcQsciLexerBash_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerBash_virtualbase_connectNotify".}
proc fcQsciLexerBash_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerBash_virtualbase_disconnectNotify".}
proc fcQsciLexerBash_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBash_protectedbase_readProperties".}
proc fcQsciLexerBash_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBash_protectedbase_writeProperties".}
proc fcQsciLexerBash_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerBash_protectedbase_sender".}
proc fcQsciLexerBash_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerBash_protectedbase_senderSignalIndex".}
proc fcQsciLexerBash_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerBash_protectedbase_receivers".}
proc fcQsciLexerBash_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerBash_protectedbase_isSignalConnected".}
proc fcQsciLexerBash_new(vtbl: pointer, ): ptr cQsciLexerBash {.importc: "QsciLexerBash_new".}
proc fcQsciLexerBash_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerBash {.importc: "QsciLexerBash_new2".}
proc fcQsciLexerBash_staticMetaObject(): pointer {.importc: "QsciLexerBash_staticMetaObject".}
proc fcQsciLexerBash_delete(self: pointer) {.importc: "QsciLexerBash_delete".}

proc metaObject*(self: gen_qscilexerbash_types.QsciLexerBash, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBash_metaObject(self.h))

proc metacast*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cstring): pointer =
  fcQsciLexerBash_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerBash_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring): string =
  let v_ms = fcQsciLexerBash_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring): string =
  let v_ms = fcQsciLexerBash_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_language(self.h))

proc lexer*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_lexer(self.h))

proc braceStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fcQsciLexerBash_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBash_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerbash_types.QsciLexerBash, set: cint): cstring =
  (fcQsciLexerBash_keywords(self.h, set))

proc description*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): string =
  let v_ms = fcQsciLexerBash_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerbash_types.QsciLexerBash, ): void =
  fcQsciLexerBash_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fcQsciLexerBash_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fcQsciLexerBash_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerBash_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerBash_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerBash_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbash_types.QsciLexerBash, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerBash_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerBashmetaObjectProc* = proc(self: QsciLexerBash): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerBashmetacastProc* = proc(self: QsciLexerBash, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerBashmetacallProc* = proc(self: QsciLexerBash, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerBashsetFoldCommentsProc* = proc(self: QsciLexerBash, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerBashsetFoldCompactProc* = proc(self: QsciLexerBash, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerBashlanguageProc* = proc(self: QsciLexerBash): cstring {.raises: [], gcsafe.}
type QsciLexerBashlexerProc* = proc(self: QsciLexerBash): cstring {.raises: [], gcsafe.}
type QsciLexerBashlexerIdProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashautoCompletionFillupsProc* = proc(self: QsciLexerBash): cstring {.raises: [], gcsafe.}
type QsciLexerBashautoCompletionWordSeparatorsProc* = proc(self: QsciLexerBash): seq[string] {.raises: [], gcsafe.}
type QsciLexerBashblockEndProc* = proc(self: QsciLexerBash, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBashblockLookbackProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashblockStartProc* = proc(self: QsciLexerBash, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBashblockStartKeywordProc* = proc(self: QsciLexerBash, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBashbraceStyleProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashcaseSensitiveProc* = proc(self: QsciLexerBash): bool {.raises: [], gcsafe.}
type QsciLexerBashcolorProc* = proc(self: QsciLexerBash, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBasheolFillProc* = proc(self: QsciLexerBash, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerBashfontProc* = proc(self: QsciLexerBash, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerBashindentationGuideViewProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashkeywordsProc* = proc(self: QsciLexerBash, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerBashdefaultStyleProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashdescriptionProc* = proc(self: QsciLexerBash, style: cint): string {.raises: [], gcsafe.}
type QsciLexerBashpaperProc* = proc(self: QsciLexerBash, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBashdefaultColorProc* = proc(self: QsciLexerBash, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBashdefaultEolFillProc* = proc(self: QsciLexerBash, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerBashdefaultFontProc* = proc(self: QsciLexerBash, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerBashdefaultPaperProc* = proc(self: QsciLexerBash, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBashsetEditorProc* = proc(self: QsciLexerBash, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerBashrefreshPropertiesProc* = proc(self: QsciLexerBash): void {.raises: [], gcsafe.}
type QsciLexerBashstyleBitsNeededProc* = proc(self: QsciLexerBash): cint {.raises: [], gcsafe.}
type QsciLexerBashwordCharactersProc* = proc(self: QsciLexerBash): cstring {.raises: [], gcsafe.}
type QsciLexerBashsetAutoIndentStyleProc* = proc(self: QsciLexerBash, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerBashsetColorProc* = proc(self: QsciLexerBash, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBashsetEolFillProc* = proc(self: QsciLexerBash, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBashsetFontProc* = proc(self: QsciLexerBash, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBashsetPaperProc* = proc(self: QsciLexerBash, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBashreadPropertiesProc* = proc(self: QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerBashwritePropertiesProc* = proc(self: QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerBasheventProc* = proc(self: QsciLexerBash, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerBasheventFilterProc* = proc(self: QsciLexerBash, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerBashtimerEventProc* = proc(self: QsciLexerBash, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerBashchildEventProc* = proc(self: QsciLexerBash, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerBashcustomEventProc* = proc(self: QsciLexerBash, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerBashconnectNotifyProc* = proc(self: QsciLexerBash, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerBashdisconnectNotifyProc* = proc(self: QsciLexerBash, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerBashVTable* = object
  vtbl: cQsciLexerBashVTable
  metaObject*: QsciLexerBashmetaObjectProc
  metacast*: QsciLexerBashmetacastProc
  metacall*: QsciLexerBashmetacallProc
  setFoldComments*: QsciLexerBashsetFoldCommentsProc
  setFoldCompact*: QsciLexerBashsetFoldCompactProc
  language*: QsciLexerBashlanguageProc
  lexer*: QsciLexerBashlexerProc
  lexerId*: QsciLexerBashlexerIdProc
  autoCompletionFillups*: QsciLexerBashautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerBashautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerBashblockEndProc
  blockLookback*: QsciLexerBashblockLookbackProc
  blockStart*: QsciLexerBashblockStartProc
  blockStartKeyword*: QsciLexerBashblockStartKeywordProc
  braceStyle*: QsciLexerBashbraceStyleProc
  caseSensitive*: QsciLexerBashcaseSensitiveProc
  color*: QsciLexerBashcolorProc
  eolFill*: QsciLexerBasheolFillProc
  font*: QsciLexerBashfontProc
  indentationGuideView*: QsciLexerBashindentationGuideViewProc
  keywords*: QsciLexerBashkeywordsProc
  defaultStyle*: QsciLexerBashdefaultStyleProc
  description*: QsciLexerBashdescriptionProc
  paper*: QsciLexerBashpaperProc
  defaultColor*: QsciLexerBashdefaultColorProc
  defaultEolFill*: QsciLexerBashdefaultEolFillProc
  defaultFont*: QsciLexerBashdefaultFontProc
  defaultPaper*: QsciLexerBashdefaultPaperProc
  setEditor*: QsciLexerBashsetEditorProc
  refreshProperties*: QsciLexerBashrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerBashstyleBitsNeededProc
  wordCharacters*: QsciLexerBashwordCharactersProc
  setAutoIndentStyle*: QsciLexerBashsetAutoIndentStyleProc
  setColor*: QsciLexerBashsetColorProc
  setEolFill*: QsciLexerBashsetEolFillProc
  setFont*: QsciLexerBashsetFontProc
  setPaper*: QsciLexerBashsetPaperProc
  readProperties*: QsciLexerBashreadPropertiesProc
  writeProperties*: QsciLexerBashwritePropertiesProc
  event*: QsciLexerBasheventProc
  eventFilter*: QsciLexerBasheventFilterProc
  timerEvent*: QsciLexerBashtimerEventProc
  childEvent*: QsciLexerBashchildEventProc
  customEvent*: QsciLexerBashcustomEventProc
  connectNotify*: QsciLexerBashconnectNotifyProc
  disconnectNotify*: QsciLexerBashdisconnectNotifyProc
proc QsciLexerBashmetaObject*(self: gen_qscilexerbash_types.QsciLexerBash, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBash_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerBash_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerBashmetacast*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cstring): pointer =
  fcQsciLexerBash_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerBash_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerBashmetacall*(self: gen_qscilexerbash_types.QsciLexerBash, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerBash_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerBash_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerBashsetFoldComments*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerBash_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerBashsetFoldCompact*(self: gen_qscilexerbash_types.QsciLexerBash, fold: bool): void =
  fcQsciLexerBash_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerBash_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerBash_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerBashlexer*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerBash_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerBashlexerId*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerBash_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerBashautoCompletionFillups*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerBash_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerBashautoCompletionWordSeparators*(self: gen_qscilexerbash_types.QsciLexerBash, ): seq[string] =
  var v_ma = fcQsciLexerBash_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerBash_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerBashblockEnd*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fcQsciLexerBash_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerBashblockLookback*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerBash_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerBashblockStart*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fcQsciLexerBash_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerBashblockStartKeyword*(self: gen_qscilexerbash_types.QsciLexerBash, style: ptr cint): cstring =
  (fcQsciLexerBash_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerBashbraceStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerBash_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerBashcaseSensitive*(self: gen_qscilexerbash_types.QsciLexerBash, ): bool =
  fcQsciLexerBash_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerBash_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerBashcolor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerBasheolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fcQsciLexerBash_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerBash_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerBashfont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBash_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerBashindentationGuideView*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerBash_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerBashkeywords*(self: gen_qscilexerbash_types.QsciLexerBash, set: cint): cstring =
  (fcQsciLexerBash_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerBash_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerBashdefaultStyle*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerBash_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerBash_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerBashpaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerBashdefaultColor*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerBashdefaultEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): bool =
  fcQsciLexerBash_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerBash_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerBashdefaultFont*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBash_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerBashdefaultPaper*(self: gen_qscilexerbash_types.QsciLexerBash, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBash_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBash_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerBashsetEditor*(self: gen_qscilexerbash_types.QsciLexerBash, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerBash_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerBash_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerBashrefreshProperties*(self: gen_qscilexerbash_types.QsciLexerBash, ): void =
  fcQsciLexerBash_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerBash_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerBashstyleBitsNeeded*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerBash_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerBashwordCharacters*(self: gen_qscilexerbash_types.QsciLexerBash, ): cstring =
  (fcQsciLexerBash_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerBash_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerBashsetAutoIndentStyle*(self: gen_qscilexerbash_types.QsciLexerBash, autoindentstyle: cint): void =
  fcQsciLexerBash_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerBash_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerBashsetColor*(self: gen_qscilexerbash_types.QsciLexerBash, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerBash_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerBash_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerBashsetEolFill*(self: gen_qscilexerbash_types.QsciLexerBash, eoffill: bool, style: cint): void =
  fcQsciLexerBash_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerBash_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerBashsetFont*(self: gen_qscilexerbash_types.QsciLexerBash, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerBash_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerBash_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerBashsetPaper*(self: gen_qscilexerbash_types.QsciLexerBash, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerBash_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerBash_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerBashreadProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBash_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerBash_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBashwriteProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBash_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerBash_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBashevent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerBash_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBash_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerBasheventFilter*(self: gen_qscilexerbash_types.QsciLexerBash, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerBash_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerBash_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBashtimerEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerBash_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBash_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerBashchildEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerBash_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBash_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerBashcustomEvent*(self: gen_qscilexerbash_types.QsciLexerBash, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerBash_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBash_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerBashconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerBash_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerBash_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerBashdisconnectNotify*(self: gen_qscilexerbash_types.QsciLexerBash, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerBash_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerBash_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBashVTable](vtbl)
  let self = QsciLexerBash(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBash_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerbash_types.QsciLexerBash, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBash_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerbash_types.QsciLexerBash, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerBash_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerbash_types.QsciLexerBash, ): cint =
  fcQsciLexerBash_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerbash_types.QsciLexerBash, signal: cstring): cint =
  fcQsciLexerBash_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerbash_types.QsciLexerBash, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerBash_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerbash_types.QsciLexerBash,
    vtbl: ref QsciLexerBashVTable = nil): gen_qscilexerbash_types.QsciLexerBash =
  let vtbl = if vtbl == nil: new QsciLexerBashVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerBashVTable, _: ptr cQsciLexerBash) {.cdecl.} =
    let vtbl = cast[ref QsciLexerBashVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerBash_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerBash_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerBash_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerBash_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerBash_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerBash_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerBash_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerBash_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerBash_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerBash_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerBash_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerBash_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerBash_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerBash_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerBash_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerBash_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerBash_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerBash_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerBash_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerBash_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerBash_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerBash_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerBash_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerBash_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerBash_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerBash_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerBash_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerBash_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerBash_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerBash_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerBash_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerBash_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerBash_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerBash_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerBash_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerBash_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerBash_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerBash_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerBash_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerBash_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerBash_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerBash_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerBash_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerBash_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerBash_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerBash_disconnectNotify
  gen_qscilexerbash_types.QsciLexerBash(h: fcQsciLexerBash_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerbash_types.QsciLexerBash,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerBashVTable = nil): gen_qscilexerbash_types.QsciLexerBash =
  let vtbl = if vtbl == nil: new QsciLexerBashVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerBashVTable, _: ptr cQsciLexerBash) {.cdecl.} =
    let vtbl = cast[ref QsciLexerBashVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerBash_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerBash_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerBash_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerBash_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerBash_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerBash_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerBash_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerBash_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerBash_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerBash_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerBash_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerBash_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerBash_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerBash_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerBash_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerBash_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerBash_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerBash_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerBash_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerBash_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerBash_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerBash_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerBash_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerBash_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerBash_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerBash_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerBash_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerBash_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerBash_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerBash_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerBash_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerBash_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerBash_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerBash_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerBash_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerBash_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerBash_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerBash_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerBash_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerBash_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerBash_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerBash_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerBash_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerBash_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerBash_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerBash_disconnectNotify
  gen_qscilexerbash_types.QsciLexerBash(h: fcQsciLexerBash_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerbash_types.QsciLexerBash): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBash_staticMetaObject())
proc delete*(self: gen_qscilexerbash_types.QsciLexerBash) =
  fcQsciLexerBash_delete(self.h)
