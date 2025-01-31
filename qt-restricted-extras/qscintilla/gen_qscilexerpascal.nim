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
{.compile("gen_qscilexerpascal.cpp", cflags).}


type QsciLexerPascalEnumEnum* = distinct cint
template Default*(_: type QsciLexerPascalEnumEnum): untyped = 0
template Identifier*(_: type QsciLexerPascalEnumEnum): untyped = 1
template Comment*(_: type QsciLexerPascalEnumEnum): untyped = 2
template CommentParenthesis*(_: type QsciLexerPascalEnumEnum): untyped = 3
template CommentLine*(_: type QsciLexerPascalEnumEnum): untyped = 4
template PreProcessor*(_: type QsciLexerPascalEnumEnum): untyped = 5
template PreProcessorParenthesis*(_: type QsciLexerPascalEnumEnum): untyped = 6
template Number*(_: type QsciLexerPascalEnumEnum): untyped = 7
template HexNumber*(_: type QsciLexerPascalEnumEnum): untyped = 8
template Keyword*(_: type QsciLexerPascalEnumEnum): untyped = 9
template SingleQuotedString*(_: type QsciLexerPascalEnumEnum): untyped = 10
template UnclosedString*(_: type QsciLexerPascalEnumEnum): untyped = 11
template Character*(_: type QsciLexerPascalEnumEnum): untyped = 12
template Operator*(_: type QsciLexerPascalEnumEnum): untyped = 13
template Asm*(_: type QsciLexerPascalEnumEnum): untyped = 14

import gen_qscilexerpascal_types
export gen_qscilexerpascal_types

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

type cQsciLexerPascal*{.exportc: "QsciLexerPascal", incompleteStruct.} = object

proc fcQsciLexerPascal_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPascal_metaObject".}
proc fcQsciLexerPascal_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPascal_metacast".}
proc fcQsciLexerPascal_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPascal_metacall".}
proc fcQsciLexerPascal_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr".}
proc fcQsciLexerPascal_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf8".}
proc fcQsciLexerPascal_language(self: pointer, ): cstring {.importc: "QsciLexerPascal_language".}
proc fcQsciLexerPascal_lexer(self: pointer, ): cstring {.importc: "QsciLexerPascal_lexer".}
proc fcQsciLexerPascal_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPascal_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockEnd".}
proc fcQsciLexerPascal_blockStart(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStart".}
proc fcQsciLexerPascal_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerPascal_blockStartKeyword".}
proc fcQsciLexerPascal_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPascal_braceStyle".}
proc fcQsciLexerPascal_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultColor".}
proc fcQsciLexerPascal_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPascal_defaultEolFill".}
proc fcQsciLexerPascal_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultFont".}
proc fcQsciLexerPascal_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_defaultPaper".}
proc fcQsciLexerPascal_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPascal_keywords".}
proc fcQsciLexerPascal_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPascal_description".}
proc fcQsciLexerPascal_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPascal_refreshProperties".}
proc fcQsciLexerPascal_foldComments(self: pointer, ): bool {.importc: "QsciLexerPascal_foldComments".}
proc fcQsciLexerPascal_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPascal_foldCompact".}
proc fcQsciLexerPascal_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerPascal_foldPreprocessor".}
proc fcQsciLexerPascal_setSmartHighlighting(self: pointer, enabled: bool): void {.importc: "QsciLexerPascal_setSmartHighlighting".}
proc fcQsciLexerPascal_smartHighlighting(self: pointer, ): bool {.importc: "QsciLexerPascal_smartHighlighting".}
proc fcQsciLexerPascal_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldComments".}
proc fcQsciLexerPascal_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldCompact".}
proc fcQsciLexerPascal_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_setFoldPreprocessor".}
proc fcQsciLexerPascal_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_tr2".}
proc fcQsciLexerPascal_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_tr3".}
proc fcQsciLexerPascal_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPascal_trUtf82".}
proc fcQsciLexerPascal_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPascal_trUtf83".}
proc fcQsciLexerPascal_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockEnd1".}
proc fcQsciLexerPascal_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStart1".}
proc fcQsciLexerPascal_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_blockStartKeyword1".}
type cQsciLexerPascalVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPascalVTable, self: ptr cQsciLexerPascal) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldPreprocessor*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerPascal_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPascal_virtualbase_metaObject".}
proc fcQsciLexerPascal_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPascal_virtualbase_metacast".}
proc fcQsciLexerPascal_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPascal_virtualbase_metacall".}
proc fcQsciLexerPascal_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_virtualbase_setFoldComments".}
proc fcQsciLexerPascal_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_virtualbase_setFoldCompact".}
proc fcQsciLexerPascal_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerPascal_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerPascal_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPascal_virtualbase_lexer".}
proc fcQsciLexerPascal_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_lexerId".}
proc fcQsciLexerPascal_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPascal_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPascal_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPascal_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_virtualbase_blockEnd".}
proc fcQsciLexerPascal_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_blockLookback".}
proc fcQsciLexerPascal_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_virtualbase_blockStart".}
proc fcQsciLexerPascal_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPascal_virtualbase_blockStartKeyword".}
proc fcQsciLexerPascal_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_braceStyle".}
proc fcQsciLexerPascal_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPascal_virtualbase_caseSensitive".}
proc fcQsciLexerPascal_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_color".}
proc fcQsciLexerPascal_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPascal_virtualbase_eolFill".}
proc fcQsciLexerPascal_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_font".}
proc fcQsciLexerPascal_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_indentationGuideView".}
proc fcQsciLexerPascal_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPascal_virtualbase_keywords".}
proc fcQsciLexerPascal_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_defaultStyle".}
proc fcQsciLexerPascal_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_paper".}
proc fcQsciLexerPascal_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPascal_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPascal_virtualbase_defaultEolFill".}
proc fcQsciLexerPascal_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPascal_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPascal_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPascal_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPascal_virtualbase_setEditor".}
proc fcQsciLexerPascal_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPascal_virtualbase_refreshProperties".}
proc fcQsciLexerPascal_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPascal_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPascal_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPascal_virtualbase_wordCharacters".}
proc fcQsciLexerPascal_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPascal_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPascal_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPascal_virtualbase_setColor".}
proc fcQsciLexerPascal_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPascal_virtualbase_setEolFill".}
proc fcQsciLexerPascal_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPascal_virtualbase_setFont".}
proc fcQsciLexerPascal_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPascal_virtualbase_setPaper".}
proc fcQsciLexerPascal_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPascal_virtualbase_readProperties".}
proc fcQsciLexerPascal_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPascal_virtualbase_writeProperties".}
proc fcQsciLexerPascal_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPascal_virtualbase_event".}
proc fcQsciLexerPascal_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPascal_virtualbase_eventFilter".}
proc fcQsciLexerPascal_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPascal_virtualbase_timerEvent".}
proc fcQsciLexerPascal_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPascal_virtualbase_childEvent".}
proc fcQsciLexerPascal_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPascal_virtualbase_customEvent".}
proc fcQsciLexerPascal_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPascal_virtualbase_connectNotify".}
proc fcQsciLexerPascal_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPascal_virtualbase_disconnectNotify".}
proc fcQsciLexerPascal_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPascal_protectedbase_readProperties".}
proc fcQsciLexerPascal_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPascal_protectedbase_writeProperties".}
proc fcQsciLexerPascal_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPascal_protectedbase_sender".}
proc fcQsciLexerPascal_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPascal_protectedbase_senderSignalIndex".}
proc fcQsciLexerPascal_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPascal_protectedbase_receivers".}
proc fcQsciLexerPascal_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPascal_protectedbase_isSignalConnected".}
proc fcQsciLexerPascal_new(vtbl: pointer, ): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new".}
proc fcQsciLexerPascal_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPascal {.importc: "QsciLexerPascal_new2".}
proc fcQsciLexerPascal_staticMetaObject(): pointer {.importc: "QsciLexerPascal_staticMetaObject".}
proc fcQsciLexerPascal_delete(self: pointer) {.importc: "QsciLexerPascal_delete".}

proc metaObject*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPascal_metaObject(self.h))

proc metacast*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cstring): pointer =
  fcQsciLexerPascal_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPascal_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring): string =
  let v_ms = fcQsciLexerPascal_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring): string =
  let v_ms = fcQsciLexerPascal_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_language(self.h))

proc lexer*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): seq[string] =
  var v_ma = fcQsciLexerPascal_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =
  fcQsciLexerPascal_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPascal_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerpascal_types.QsciLexerPascal, set: cint): cstring =
  (fcQsciLexerPascal_keywords(self.h, set))

proc description*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): string =
  let v_ms = fcQsciLexerPascal_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): void =
  fcQsciLexerPascal_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =
  fcQsciLexerPascal_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =
  fcQsciLexerPascal_foldCompact(self.h)

proc foldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =
  fcQsciLexerPascal_foldPreprocessor(self.h)

proc setSmartHighlighting*(self: gen_qscilexerpascal_types.QsciLexerPascal, enabled: bool): void =
  fcQsciLexerPascal_setSmartHighlighting(self.h, enabled)

proc smartHighlighting*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =
  fcQsciLexerPascal_smartHighlighting(self.h)

proc setFoldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_setFoldPreprocessor(self.h, fold)

proc tr*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPascal_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPascal_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPascal_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpascal_types.QsciLexerPascal, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPascal_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_blockStartKeyword1(self.h, style))

type QsciLexerPascalmetaObjectProc* = proc(self: QsciLexerPascal): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPascalmetacastProc* = proc(self: QsciLexerPascal, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPascalmetacallProc* = proc(self: QsciLexerPascal, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPascalsetFoldCommentsProc* = proc(self: QsciLexerPascal, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPascalsetFoldCompactProc* = proc(self: QsciLexerPascal, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPascalsetFoldPreprocessorProc* = proc(self: QsciLexerPascal, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPascallanguageProc* = proc(self: QsciLexerPascal): cstring {.raises: [], gcsafe.}
type QsciLexerPascallexerProc* = proc(self: QsciLexerPascal): cstring {.raises: [], gcsafe.}
type QsciLexerPascallexerIdProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascalautoCompletionFillupsProc* = proc(self: QsciLexerPascal): cstring {.raises: [], gcsafe.}
type QsciLexerPascalautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPascal): seq[string] {.raises: [], gcsafe.}
type QsciLexerPascalblockEndProc* = proc(self: QsciLexerPascal, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPascalblockLookbackProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascalblockStartProc* = proc(self: QsciLexerPascal, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPascalblockStartKeywordProc* = proc(self: QsciLexerPascal, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPascalbraceStyleProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascalcaseSensitiveProc* = proc(self: QsciLexerPascal): bool {.raises: [], gcsafe.}
type QsciLexerPascalcolorProc* = proc(self: QsciLexerPascal, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPascaleolFillProc* = proc(self: QsciLexerPascal, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPascalfontProc* = proc(self: QsciLexerPascal, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPascalindentationGuideViewProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascalkeywordsProc* = proc(self: QsciLexerPascal, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPascaldefaultStyleProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascaldescriptionProc* = proc(self: QsciLexerPascal, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPascalpaperProc* = proc(self: QsciLexerPascal, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPascaldefaultColorProc* = proc(self: QsciLexerPascal, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPascaldefaultEolFillProc* = proc(self: QsciLexerPascal, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPascaldefaultFontProc* = proc(self: QsciLexerPascal, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPascaldefaultPaperProc* = proc(self: QsciLexerPascal, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPascalsetEditorProc* = proc(self: QsciLexerPascal, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPascalrefreshPropertiesProc* = proc(self: QsciLexerPascal): void {.raises: [], gcsafe.}
type QsciLexerPascalstyleBitsNeededProc* = proc(self: QsciLexerPascal): cint {.raises: [], gcsafe.}
type QsciLexerPascalwordCharactersProc* = proc(self: QsciLexerPascal): cstring {.raises: [], gcsafe.}
type QsciLexerPascalsetAutoIndentStyleProc* = proc(self: QsciLexerPascal, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPascalsetColorProc* = proc(self: QsciLexerPascal, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPascalsetEolFillProc* = proc(self: QsciLexerPascal, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPascalsetFontProc* = proc(self: QsciLexerPascal, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPascalsetPaperProc* = proc(self: QsciLexerPascal, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPascalreadPropertiesProc* = proc(self: QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPascalwritePropertiesProc* = proc(self: QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPascaleventProc* = proc(self: QsciLexerPascal, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPascaleventFilterProc* = proc(self: QsciLexerPascal, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPascaltimerEventProc* = proc(self: QsciLexerPascal, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPascalchildEventProc* = proc(self: QsciLexerPascal, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPascalcustomEventProc* = proc(self: QsciLexerPascal, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPascalconnectNotifyProc* = proc(self: QsciLexerPascal, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPascaldisconnectNotifyProc* = proc(self: QsciLexerPascal, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPascalVTable* = object
  vtbl: cQsciLexerPascalVTable
  metaObject*: QsciLexerPascalmetaObjectProc
  metacast*: QsciLexerPascalmetacastProc
  metacall*: QsciLexerPascalmetacallProc
  setFoldComments*: QsciLexerPascalsetFoldCommentsProc
  setFoldCompact*: QsciLexerPascalsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerPascalsetFoldPreprocessorProc
  language*: QsciLexerPascallanguageProc
  lexer*: QsciLexerPascallexerProc
  lexerId*: QsciLexerPascallexerIdProc
  autoCompletionFillups*: QsciLexerPascalautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPascalautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPascalblockEndProc
  blockLookback*: QsciLexerPascalblockLookbackProc
  blockStart*: QsciLexerPascalblockStartProc
  blockStartKeyword*: QsciLexerPascalblockStartKeywordProc
  braceStyle*: QsciLexerPascalbraceStyleProc
  caseSensitive*: QsciLexerPascalcaseSensitiveProc
  color*: QsciLexerPascalcolorProc
  eolFill*: QsciLexerPascaleolFillProc
  font*: QsciLexerPascalfontProc
  indentationGuideView*: QsciLexerPascalindentationGuideViewProc
  keywords*: QsciLexerPascalkeywordsProc
  defaultStyle*: QsciLexerPascaldefaultStyleProc
  description*: QsciLexerPascaldescriptionProc
  paper*: QsciLexerPascalpaperProc
  defaultColor*: QsciLexerPascaldefaultColorProc
  defaultEolFill*: QsciLexerPascaldefaultEolFillProc
  defaultFont*: QsciLexerPascaldefaultFontProc
  defaultPaper*: QsciLexerPascaldefaultPaperProc
  setEditor*: QsciLexerPascalsetEditorProc
  refreshProperties*: QsciLexerPascalrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPascalstyleBitsNeededProc
  wordCharacters*: QsciLexerPascalwordCharactersProc
  setAutoIndentStyle*: QsciLexerPascalsetAutoIndentStyleProc
  setColor*: QsciLexerPascalsetColorProc
  setEolFill*: QsciLexerPascalsetEolFillProc
  setFont*: QsciLexerPascalsetFontProc
  setPaper*: QsciLexerPascalsetPaperProc
  readProperties*: QsciLexerPascalreadPropertiesProc
  writeProperties*: QsciLexerPascalwritePropertiesProc
  event*: QsciLexerPascaleventProc
  eventFilter*: QsciLexerPascaleventFilterProc
  timerEvent*: QsciLexerPascaltimerEventProc
  childEvent*: QsciLexerPascalchildEventProc
  customEvent*: QsciLexerPascalcustomEventProc
  connectNotify*: QsciLexerPascalconnectNotifyProc
  disconnectNotify*: QsciLexerPascaldisconnectNotifyProc
proc QsciLexerPascalmetaObject*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPascal_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPascal_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPascalmetacast*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cstring): pointer =
  fcQsciLexerPascal_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPascal_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPascalmetacall*(self: gen_qscilexerpascal_types.QsciLexerPascal, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPascal_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPascal_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPascalsetFoldComments*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerPascal_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerPascalsetFoldCompact*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerPascal_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerPascalsetFoldPreprocessor*(self: gen_qscilexerpascal_types.QsciLexerPascal, fold: bool): void =
  fcQsciLexerPascal_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerPascal_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc miqt_exec_callback_cQsciLexerPascal_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPascallexer*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPascal_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPascallexerId*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPascal_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPascalautoCompletionFillups*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPascal_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPascalautoCompletionWordSeparators*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): seq[string] =
  var v_ma = fcQsciLexerPascal_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPascal_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPascalblockEnd*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPascalblockLookback*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPascal_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPascalblockStart*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPascalblockStartKeyword*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: ptr cint): cstring =
  (fcQsciLexerPascal_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPascalbraceStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPascal_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPascalcaseSensitive*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): bool =
  fcQsciLexerPascal_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPascal_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPascalcolor*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPascaleolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =
  fcQsciLexerPascal_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPascal_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPascalfont*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPascal_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPascalindentationGuideView*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPascal_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPascalkeywords*(self: gen_qscilexerpascal_types.QsciLexerPascal, set: cint): cstring =
  (fcQsciLexerPascal_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPascal_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPascaldefaultStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPascal_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPascal_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPascalpaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPascaldefaultColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPascaldefaultEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): bool =
  fcQsciLexerPascal_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPascal_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPascaldefaultFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPascal_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPascaldefaultPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPascal_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPascal_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPascalsetEditor*(self: gen_qscilexerpascal_types.QsciLexerPascal, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPascal_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPascal_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPascalrefreshProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): void =
  fcQsciLexerPascal_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPascal_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPascalstyleBitsNeeded*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPascal_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPascalwordCharacters*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cstring =
  (fcQsciLexerPascal_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPascal_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPascalsetAutoIndentStyle*(self: gen_qscilexerpascal_types.QsciLexerPascal, autoindentstyle: cint): void =
  fcQsciLexerPascal_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPascal_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPascalsetColor*(self: gen_qscilexerpascal_types.QsciLexerPascal, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPascal_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPascal_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPascalsetEolFill*(self: gen_qscilexerpascal_types.QsciLexerPascal, eoffill: bool, style: cint): void =
  fcQsciLexerPascal_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPascal_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPascalsetFont*(self: gen_qscilexerpascal_types.QsciLexerPascal, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPascal_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPascal_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPascalsetPaper*(self: gen_qscilexerpascal_types.QsciLexerPascal, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPascal_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPascal_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPascalreadProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPascal_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPascal_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPascalwriteProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPascal_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPascal_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPascalevent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPascal_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPascal_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPascaleventFilter*(self: gen_qscilexerpascal_types.QsciLexerPascal, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPascal_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPascal_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPascaltimerEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPascal_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPascal_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPascalchildEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPascal_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPascal_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPascalcustomEvent*(self: gen_qscilexerpascal_types.QsciLexerPascal, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPascal_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPascal_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPascalconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPascal_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPascal_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPascaldisconnectNotify*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPascal_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPascal_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPascalVTable](vtbl)
  let self = QsciLexerPascal(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPascal_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerpascal_types.QsciLexerPascal, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPascal_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPascal_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerpascal_types.QsciLexerPascal, ): cint =
  fcQsciLexerPascal_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: cstring): cint =
  fcQsciLexerPascal_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerpascal_types.QsciLexerPascal, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPascal_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerpascal_types.QsciLexerPascal,
    vtbl: ref QsciLexerPascalVTable = nil): gen_qscilexerpascal_types.QsciLexerPascal =
  let vtbl = if vtbl == nil: new QsciLexerPascalVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPascalVTable, _: ptr cQsciLexerPascal) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPascalVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPascal_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPascal_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPascal_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPascal_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPascal_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerPascal_setFoldPreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPascal_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPascal_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPascal_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPascal_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPascal_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPascal_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPascal_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPascal_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPascal_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPascal_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPascal_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPascal_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPascal_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPascal_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPascal_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPascal_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPascal_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPascal_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPascal_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPascal_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPascal_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPascal_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPascal_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPascal_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPascal_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPascal_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPascal_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPascal_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPascal_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPascal_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPascal_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPascal_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPascal_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPascal_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPascal_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPascal_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPascal_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPascal_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPascal_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPascal_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPascal_disconnectNotify
  gen_qscilexerpascal_types.QsciLexerPascal(h: fcQsciLexerPascal_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerpascal_types.QsciLexerPascal,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPascalVTable = nil): gen_qscilexerpascal_types.QsciLexerPascal =
  let vtbl = if vtbl == nil: new QsciLexerPascalVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPascalVTable, _: ptr cQsciLexerPascal) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPascalVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPascal_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPascal_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPascal_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPascal_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPascal_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerPascal_setFoldPreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPascal_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPascal_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPascal_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPascal_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPascal_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPascal_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPascal_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPascal_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPascal_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPascal_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPascal_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPascal_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPascal_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPascal_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPascal_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPascal_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPascal_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPascal_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPascal_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPascal_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPascal_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPascal_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPascal_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPascal_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPascal_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPascal_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPascal_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPascal_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPascal_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPascal_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPascal_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPascal_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPascal_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPascal_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPascal_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPascal_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPascal_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPascal_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPascal_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPascal_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPascal_disconnectNotify
  gen_qscilexerpascal_types.QsciLexerPascal(h: fcQsciLexerPascal_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerpascal_types.QsciLexerPascal): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPascal_staticMetaObject())
proc delete*(self: gen_qscilexerpascal_types.QsciLexerPascal) =
  fcQsciLexerPascal_delete(self.h)
