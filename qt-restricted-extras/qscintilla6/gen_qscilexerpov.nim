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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")
{.compile("gen_qscilexerpov.cpp", cflags).}


type QsciLexerPOVEnumEnum* = distinct cint
template Default*(_: type QsciLexerPOVEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPOVEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerPOVEnumEnum): untyped = 2
template Number*(_: type QsciLexerPOVEnumEnum): untyped = 3
template Operator*(_: type QsciLexerPOVEnumEnum): untyped = 4
template Identifier*(_: type QsciLexerPOVEnumEnum): untyped = 5
template String*(_: type QsciLexerPOVEnumEnum): untyped = 6
template UnclosedString*(_: type QsciLexerPOVEnumEnum): untyped = 7
template Directive*(_: type QsciLexerPOVEnumEnum): untyped = 8
template BadDirective*(_: type QsciLexerPOVEnumEnum): untyped = 9
template ObjectsCSGAppearance*(_: type QsciLexerPOVEnumEnum): untyped = 10
template TypesModifiersItems*(_: type QsciLexerPOVEnumEnum): untyped = 11
template PredefinedIdentifiers*(_: type QsciLexerPOVEnumEnum): untyped = 12
template PredefinedFunctions*(_: type QsciLexerPOVEnumEnum): untyped = 13
template KeywordSet6*(_: type QsciLexerPOVEnumEnum): untyped = 14
template KeywordSet7*(_: type QsciLexerPOVEnumEnum): untyped = 15
template KeywordSet8*(_: type QsciLexerPOVEnumEnum): untyped = 16

import gen_qscilexerpov_types
export gen_qscilexerpov_types

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

type cQsciLexerPOV*{.exportc: "QsciLexerPOV", incompleteStruct.} = object

proc fcQsciLexerPOV_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPOV_metaObject".}
proc fcQsciLexerPOV_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPOV_metacast".}
proc fcQsciLexerPOV_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPOV_metacall".}
proc fcQsciLexerPOV_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr".}
proc fcQsciLexerPOV_language(self: pointer, ): cstring {.importc: "QsciLexerPOV_language".}
proc fcQsciLexerPOV_lexer(self: pointer, ): cstring {.importc: "QsciLexerPOV_lexer".}
proc fcQsciLexerPOV_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPOV_braceStyle".}
proc fcQsciLexerPOV_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPOV_wordCharacters".}
proc fcQsciLexerPOV_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultColor".}
proc fcQsciLexerPOV_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPOV_defaultEolFill".}
proc fcQsciLexerPOV_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultFont".}
proc fcQsciLexerPOV_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_defaultPaper".}
proc fcQsciLexerPOV_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPOV_keywords".}
proc fcQsciLexerPOV_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPOV_description".}
proc fcQsciLexerPOV_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPOV_refreshProperties".}
proc fcQsciLexerPOV_foldComments(self: pointer, ): bool {.importc: "QsciLexerPOV_foldComments".}
proc fcQsciLexerPOV_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPOV_foldCompact".}
proc fcQsciLexerPOV_foldDirectives(self: pointer, ): bool {.importc: "QsciLexerPOV_foldDirectives".}
proc fcQsciLexerPOV_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldComments".}
proc fcQsciLexerPOV_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldCompact".}
proc fcQsciLexerPOV_setFoldDirectives(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_setFoldDirectives".}
proc fcQsciLexerPOV_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPOV_tr2".}
proc fcQsciLexerPOV_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPOV_tr3".}
type cQsciLexerPOVVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPOVVTable, self: ptr cQsciLexerPOV) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldDirectives*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerPOV_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPOV_virtualbase_metaObject".}
proc fcQsciLexerPOV_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPOV_virtualbase_metacast".}
proc fcQsciLexerPOV_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPOV_virtualbase_metacall".}
proc fcQsciLexerPOV_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_virtualbase_setFoldComments".}
proc fcQsciLexerPOV_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_virtualbase_setFoldCompact".}
proc fcQsciLexerPOV_virtualbase_setFoldDirectives(self: pointer, fold: bool): void {.importc: "QsciLexerPOV_virtualbase_setFoldDirectives".}
proc fcQsciLexerPOV_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPOV_virtualbase_lexer".}
proc fcQsciLexerPOV_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_lexerId".}
proc fcQsciLexerPOV_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPOV_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPOV_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPOV_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPOV_virtualbase_blockEnd".}
proc fcQsciLexerPOV_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_blockLookback".}
proc fcQsciLexerPOV_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPOV_virtualbase_blockStart".}
proc fcQsciLexerPOV_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPOV_virtualbase_blockStartKeyword".}
proc fcQsciLexerPOV_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_braceStyle".}
proc fcQsciLexerPOV_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPOV_virtualbase_caseSensitive".}
proc fcQsciLexerPOV_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_color".}
proc fcQsciLexerPOV_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPOV_virtualbase_eolFill".}
proc fcQsciLexerPOV_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_font".}
proc fcQsciLexerPOV_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_indentationGuideView".}
proc fcQsciLexerPOV_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPOV_virtualbase_keywords".}
proc fcQsciLexerPOV_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_defaultStyle".}
proc fcQsciLexerPOV_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_paper".}
proc fcQsciLexerPOV_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPOV_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPOV_virtualbase_defaultEolFill".}
proc fcQsciLexerPOV_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPOV_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPOV_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPOV_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPOV_virtualbase_setEditor".}
proc fcQsciLexerPOV_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPOV_virtualbase_refreshProperties".}
proc fcQsciLexerPOV_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPOV_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPOV_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPOV_virtualbase_wordCharacters".}
proc fcQsciLexerPOV_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPOV_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPOV_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPOV_virtualbase_setColor".}
proc fcQsciLexerPOV_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPOV_virtualbase_setEolFill".}
proc fcQsciLexerPOV_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPOV_virtualbase_setFont".}
proc fcQsciLexerPOV_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPOV_virtualbase_setPaper".}
proc fcQsciLexerPOV_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPOV_virtualbase_readProperties".}
proc fcQsciLexerPOV_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPOV_virtualbase_writeProperties".}
proc fcQsciLexerPOV_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPOV_virtualbase_event".}
proc fcQsciLexerPOV_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPOV_virtualbase_eventFilter".}
proc fcQsciLexerPOV_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPOV_virtualbase_timerEvent".}
proc fcQsciLexerPOV_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPOV_virtualbase_childEvent".}
proc fcQsciLexerPOV_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPOV_virtualbase_customEvent".}
proc fcQsciLexerPOV_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPOV_virtualbase_connectNotify".}
proc fcQsciLexerPOV_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPOV_virtualbase_disconnectNotify".}
proc fcQsciLexerPOV_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPOV_protectedbase_readProperties".}
proc fcQsciLexerPOV_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPOV_protectedbase_writeProperties".}
proc fcQsciLexerPOV_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPOV_protectedbase_sender".}
proc fcQsciLexerPOV_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPOV_protectedbase_senderSignalIndex".}
proc fcQsciLexerPOV_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPOV_protectedbase_receivers".}
proc fcQsciLexerPOV_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPOV_protectedbase_isSignalConnected".}
proc fcQsciLexerPOV_new(vtbl: pointer, ): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new".}
proc fcQsciLexerPOV_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPOV {.importc: "QsciLexerPOV_new2".}
proc fcQsciLexerPOV_staticMetaObject(): pointer {.importc: "QsciLexerPOV_staticMetaObject".}
proc fcQsciLexerPOV_delete(self: pointer) {.importc: "QsciLexerPOV_delete".}

proc metaObject*(self: gen_qscilexerpov_types.QsciLexerPOV, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPOV_metaObject(self.h))

proc metacast*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cstring): pointer =
  fcQsciLexerPOV_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPOV_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring): string =
  let v_ms = fcQsciLexerPOV_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_language(self.h))

proc lexer*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_lexer(self.h))

proc braceStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fcQsciLexerPOV_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPOV_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerpov_types.QsciLexerPOV, set: cint): cstring =
  (fcQsciLexerPOV_keywords(self.h, set))

proc description*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): string =
  let v_ms = fcQsciLexerPOV_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, ): void =
  fcQsciLexerPOV_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldCompact(self.h)

proc foldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_foldDirectives(self.h)

proc setFoldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldCompact(self.h, fold)

proc setFoldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_setFoldDirectives(self.h, fold)

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPOV_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpov_types.QsciLexerPOV, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPOV_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerPOVmetaObjectProc* = proc(self: QsciLexerPOV): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPOVmetacastProc* = proc(self: QsciLexerPOV, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPOVmetacallProc* = proc(self: QsciLexerPOV, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPOVsetFoldCommentsProc* = proc(self: QsciLexerPOV, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPOVsetFoldCompactProc* = proc(self: QsciLexerPOV, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPOVsetFoldDirectivesProc* = proc(self: QsciLexerPOV, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPOVlanguageProc* = proc(self: QsciLexerPOV): cstring {.raises: [], gcsafe.}
type QsciLexerPOVlexerProc* = proc(self: QsciLexerPOV): cstring {.raises: [], gcsafe.}
type QsciLexerPOVlexerIdProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVautoCompletionFillupsProc* = proc(self: QsciLexerPOV): cstring {.raises: [], gcsafe.}
type QsciLexerPOVautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPOV): seq[string] {.raises: [], gcsafe.}
type QsciLexerPOVblockEndProc* = proc(self: QsciLexerPOV, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOVblockLookbackProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVblockStartProc* = proc(self: QsciLexerPOV, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOVblockStartKeywordProc* = proc(self: QsciLexerPOV, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOVbraceStyleProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVcaseSensitiveProc* = proc(self: QsciLexerPOV): bool {.raises: [], gcsafe.}
type QsciLexerPOVcolorProc* = proc(self: QsciLexerPOV, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOVeolFillProc* = proc(self: QsciLexerPOV, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPOVfontProc* = proc(self: QsciLexerPOV, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPOVindentationGuideViewProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVkeywordsProc* = proc(self: QsciLexerPOV, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOVdefaultStyleProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVdescriptionProc* = proc(self: QsciLexerPOV, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPOVpaperProc* = proc(self: QsciLexerPOV, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOVdefaultColorProc* = proc(self: QsciLexerPOV, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOVdefaultEolFillProc* = proc(self: QsciLexerPOV, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPOVdefaultFontProc* = proc(self: QsciLexerPOV, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPOVdefaultPaperProc* = proc(self: QsciLexerPOV, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOVsetEditorProc* = proc(self: QsciLexerPOV, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPOVrefreshPropertiesProc* = proc(self: QsciLexerPOV): void {.raises: [], gcsafe.}
type QsciLexerPOVstyleBitsNeededProc* = proc(self: QsciLexerPOV): cint {.raises: [], gcsafe.}
type QsciLexerPOVwordCharactersProc* = proc(self: QsciLexerPOV): cstring {.raises: [], gcsafe.}
type QsciLexerPOVsetAutoIndentStyleProc* = proc(self: QsciLexerPOV, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPOVsetColorProc* = proc(self: QsciLexerPOV, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOVsetEolFillProc* = proc(self: QsciLexerPOV, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOVsetFontProc* = proc(self: QsciLexerPOV, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOVsetPaperProc* = proc(self: QsciLexerPOV, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOVreadPropertiesProc* = proc(self: QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPOVwritePropertiesProc* = proc(self: QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPOVeventProc* = proc(self: QsciLexerPOV, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPOVeventFilterProc* = proc(self: QsciLexerPOV, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPOVtimerEventProc* = proc(self: QsciLexerPOV, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPOVchildEventProc* = proc(self: QsciLexerPOV, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPOVcustomEventProc* = proc(self: QsciLexerPOV, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPOVconnectNotifyProc* = proc(self: QsciLexerPOV, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPOVdisconnectNotifyProc* = proc(self: QsciLexerPOV, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPOVVTable* = object
  vtbl: cQsciLexerPOVVTable
  metaObject*: QsciLexerPOVmetaObjectProc
  metacast*: QsciLexerPOVmetacastProc
  metacall*: QsciLexerPOVmetacallProc
  setFoldComments*: QsciLexerPOVsetFoldCommentsProc
  setFoldCompact*: QsciLexerPOVsetFoldCompactProc
  setFoldDirectives*: QsciLexerPOVsetFoldDirectivesProc
  language*: QsciLexerPOVlanguageProc
  lexer*: QsciLexerPOVlexerProc
  lexerId*: QsciLexerPOVlexerIdProc
  autoCompletionFillups*: QsciLexerPOVautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPOVautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPOVblockEndProc
  blockLookback*: QsciLexerPOVblockLookbackProc
  blockStart*: QsciLexerPOVblockStartProc
  blockStartKeyword*: QsciLexerPOVblockStartKeywordProc
  braceStyle*: QsciLexerPOVbraceStyleProc
  caseSensitive*: QsciLexerPOVcaseSensitiveProc
  color*: QsciLexerPOVcolorProc
  eolFill*: QsciLexerPOVeolFillProc
  font*: QsciLexerPOVfontProc
  indentationGuideView*: QsciLexerPOVindentationGuideViewProc
  keywords*: QsciLexerPOVkeywordsProc
  defaultStyle*: QsciLexerPOVdefaultStyleProc
  description*: QsciLexerPOVdescriptionProc
  paper*: QsciLexerPOVpaperProc
  defaultColor*: QsciLexerPOVdefaultColorProc
  defaultEolFill*: QsciLexerPOVdefaultEolFillProc
  defaultFont*: QsciLexerPOVdefaultFontProc
  defaultPaper*: QsciLexerPOVdefaultPaperProc
  setEditor*: QsciLexerPOVsetEditorProc
  refreshProperties*: QsciLexerPOVrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPOVstyleBitsNeededProc
  wordCharacters*: QsciLexerPOVwordCharactersProc
  setAutoIndentStyle*: QsciLexerPOVsetAutoIndentStyleProc
  setColor*: QsciLexerPOVsetColorProc
  setEolFill*: QsciLexerPOVsetEolFillProc
  setFont*: QsciLexerPOVsetFontProc
  setPaper*: QsciLexerPOVsetPaperProc
  readProperties*: QsciLexerPOVreadPropertiesProc
  writeProperties*: QsciLexerPOVwritePropertiesProc
  event*: QsciLexerPOVeventProc
  eventFilter*: QsciLexerPOVeventFilterProc
  timerEvent*: QsciLexerPOVtimerEventProc
  childEvent*: QsciLexerPOVchildEventProc
  customEvent*: QsciLexerPOVcustomEventProc
  connectNotify*: QsciLexerPOVconnectNotifyProc
  disconnectNotify*: QsciLexerPOVdisconnectNotifyProc
proc QsciLexerPOVmetaObject*(self: gen_qscilexerpov_types.QsciLexerPOV, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPOV_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPOV_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPOVmetacast*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cstring): pointer =
  fcQsciLexerPOV_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPOV_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPOVmetacall*(self: gen_qscilexerpov_types.QsciLexerPOV, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPOV_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPOV_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPOVsetFoldComments*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerPOV_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerPOVsetFoldCompact*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerPOV_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerPOVsetFoldDirectives*(self: gen_qscilexerpov_types.QsciLexerPOV, fold: bool): void =
  fcQsciLexerPOV_virtualbase_setFoldDirectives(self.h, fold)

proc miqt_exec_callback_cQsciLexerPOV_setFoldDirectives(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = fold
  vtbl[].setFoldDirectives(self, slotval1)

proc miqt_exec_callback_cQsciLexerPOV_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPOVlexer*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPOV_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPOVlexerId*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPOV_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPOVautoCompletionFillups*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPOV_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPOVautoCompletionWordSeparators*(self: gen_qscilexerpov_types.QsciLexerPOV, ): seq[string] =
  var v_ma = fcQsciLexerPOV_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPOV_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPOVblockEnd*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fcQsciLexerPOV_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPOVblockLookback*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPOV_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPOVblockStart*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fcQsciLexerPOV_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPOVblockStartKeyword*(self: gen_qscilexerpov_types.QsciLexerPOV, style: ptr cint): cstring =
  (fcQsciLexerPOV_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPOVbraceStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPOV_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPOVcaseSensitive*(self: gen_qscilexerpov_types.QsciLexerPOV, ): bool =
  fcQsciLexerPOV_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPOV_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPOVcolor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVeolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fcQsciLexerPOV_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPOV_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPOVfont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPOV_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVindentationGuideView*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPOV_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPOVkeywords*(self: gen_qscilexerpov_types.QsciLexerPOV, set: cint): cstring =
  (fcQsciLexerPOV_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPOV_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPOVdefaultStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPOV_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPOV_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPOVpaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVdefaultColor*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVdefaultEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): bool =
  fcQsciLexerPOV_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPOV_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPOVdefaultFont*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPOV_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVdefaultPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPOV_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPOV_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPOVsetEditor*(self: gen_qscilexerpov_types.QsciLexerPOV, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPOV_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPOV_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPOVrefreshProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, ): void =
  fcQsciLexerPOV_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPOV_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPOVstyleBitsNeeded*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPOV_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPOVwordCharacters*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cstring =
  (fcQsciLexerPOV_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPOV_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPOVsetAutoIndentStyle*(self: gen_qscilexerpov_types.QsciLexerPOV, autoindentstyle: cint): void =
  fcQsciLexerPOV_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPOV_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPOVsetColor*(self: gen_qscilexerpov_types.QsciLexerPOV, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPOV_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPOV_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPOVsetEolFill*(self: gen_qscilexerpov_types.QsciLexerPOV, eoffill: bool, style: cint): void =
  fcQsciLexerPOV_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPOV_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPOVsetFont*(self: gen_qscilexerpov_types.QsciLexerPOV, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPOV_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPOV_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPOVsetPaper*(self: gen_qscilexerpov_types.QsciLexerPOV, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPOV_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPOV_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPOVreadProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPOV_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPOV_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOVwriteProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPOV_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPOV_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOVevent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPOV_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPOV_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPOVeventFilter*(self: gen_qscilexerpov_types.QsciLexerPOV, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPOV_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPOV_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOVtimerEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPOV_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPOV_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPOVchildEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPOV_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPOV_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPOVcustomEvent*(self: gen_qscilexerpov_types.QsciLexerPOV, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPOV_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPOV_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPOVconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPOV_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPOV_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPOVdisconnectNotify*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPOV_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPOV_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVVTable](vtbl)
  let self = QsciLexerPOV(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPOV_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerpov_types.QsciLexerPOV, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPOV_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerpov_types.QsciLexerPOV, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPOV_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerpov_types.QsciLexerPOV, ): cint =
  fcQsciLexerPOV_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: cstring): cint =
  fcQsciLexerPOV_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerpov_types.QsciLexerPOV, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPOV_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerpov_types.QsciLexerPOV,
    vtbl: ref QsciLexerPOVVTable = nil): gen_qscilexerpov_types.QsciLexerPOV =
  let vtbl = if vtbl == nil: new QsciLexerPOVVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPOVVTable, _: ptr cQsciLexerPOV) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPOVVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPOV_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPOV_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPOV_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPOV_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPOV_setFoldCompact
  if not isNil(vtbl.setFoldDirectives):
    vtbl[].vtbl.setFoldDirectives = miqt_exec_callback_cQsciLexerPOV_setFoldDirectives
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPOV_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPOV_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPOV_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPOV_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPOV_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPOV_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPOV_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPOV_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPOV_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPOV_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPOV_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPOV_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPOV_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPOV_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPOV_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPOV_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPOV_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPOV_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPOV_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPOV_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPOV_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPOV_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPOV_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPOV_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPOV_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPOV_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPOV_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPOV_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPOV_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPOV_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPOV_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPOV_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPOV_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPOV_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPOV_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPOV_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPOV_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPOV_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPOV_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPOV_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPOV_disconnectNotify
  gen_qscilexerpov_types.QsciLexerPOV(h: fcQsciLexerPOV_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerpov_types.QsciLexerPOV,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPOVVTable = nil): gen_qscilexerpov_types.QsciLexerPOV =
  let vtbl = if vtbl == nil: new QsciLexerPOVVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPOVVTable, _: ptr cQsciLexerPOV) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPOVVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPOV_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPOV_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPOV_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPOV_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPOV_setFoldCompact
  if not isNil(vtbl.setFoldDirectives):
    vtbl[].vtbl.setFoldDirectives = miqt_exec_callback_cQsciLexerPOV_setFoldDirectives
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPOV_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPOV_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPOV_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPOV_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPOV_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPOV_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPOV_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPOV_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPOV_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPOV_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPOV_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPOV_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPOV_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPOV_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPOV_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPOV_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPOV_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPOV_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPOV_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPOV_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPOV_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPOV_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPOV_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPOV_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPOV_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPOV_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPOV_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPOV_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPOV_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPOV_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPOV_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPOV_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPOV_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPOV_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPOV_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPOV_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPOV_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPOV_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPOV_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPOV_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPOV_disconnectNotify
  gen_qscilexerpov_types.QsciLexerPOV(h: fcQsciLexerPOV_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerpov_types.QsciLexerPOV): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPOV_staticMetaObject())
proc delete*(self: gen_qscilexerpov_types.QsciLexerPOV) =
  fcQsciLexerPOV_delete(self.h)
