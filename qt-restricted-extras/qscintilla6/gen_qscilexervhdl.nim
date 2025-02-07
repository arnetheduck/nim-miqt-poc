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
{.compile("gen_qscilexervhdl.cpp", cflags).}


type QsciLexerVHDLEnumEnum* = distinct cint
template Default*(_: type QsciLexerVHDLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerVHDLEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerVHDLEnumEnum): untyped = 2
template Number*(_: type QsciLexerVHDLEnumEnum): untyped = 3
template String*(_: type QsciLexerVHDLEnumEnum): untyped = 4
template Operator*(_: type QsciLexerVHDLEnumEnum): untyped = 5
template Identifier*(_: type QsciLexerVHDLEnumEnum): untyped = 6
template UnclosedString*(_: type QsciLexerVHDLEnumEnum): untyped = 7
template Keyword*(_: type QsciLexerVHDLEnumEnum): untyped = 8
template StandardOperator*(_: type QsciLexerVHDLEnumEnum): untyped = 9
template Attribute*(_: type QsciLexerVHDLEnumEnum): untyped = 10
template StandardFunction*(_: type QsciLexerVHDLEnumEnum): untyped = 11
template StandardPackage*(_: type QsciLexerVHDLEnumEnum): untyped = 12
template StandardType*(_: type QsciLexerVHDLEnumEnum): untyped = 13
template KeywordSet7*(_: type QsciLexerVHDLEnumEnum): untyped = 14
template CommentBlock*(_: type QsciLexerVHDLEnumEnum): untyped = 15

import gen_qscilexervhdl_types
export gen_qscilexervhdl_types

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

type cQsciLexerVHDL*{.exportc: "QsciLexerVHDL", incompleteStruct.} = object

proc fcQsciLexerVHDL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVHDL_metaObject".}
proc fcQsciLexerVHDL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVHDL_metacast".}
proc fcQsciLexerVHDL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVHDL_metacall".}
proc fcQsciLexerVHDL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerVHDL_tr".}
proc fcQsciLexerVHDL_language(self: pointer, ): cstring {.importc: "QsciLexerVHDL_language".}
proc fcQsciLexerVHDL_lexer(self: pointer, ): cstring {.importc: "QsciLexerVHDL_lexer".}
proc fcQsciLexerVHDL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVHDL_braceStyle".}
proc fcQsciLexerVHDL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultColor".}
proc fcQsciLexerVHDL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVHDL_defaultEolFill".}
proc fcQsciLexerVHDL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultFont".}
proc fcQsciLexerVHDL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_defaultPaper".}
proc fcQsciLexerVHDL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVHDL_keywords".}
proc fcQsciLexerVHDL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerVHDL_description".}
proc fcQsciLexerVHDL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVHDL_refreshProperties".}
proc fcQsciLexerVHDL_foldComments(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldComments".}
proc fcQsciLexerVHDL_foldCompact(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldCompact".}
proc fcQsciLexerVHDL_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtElse".}
proc fcQsciLexerVHDL_foldAtBegin(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtBegin".}
proc fcQsciLexerVHDL_foldAtParenthesis(self: pointer, ): bool {.importc: "QsciLexerVHDL_foldAtParenthesis".}
proc fcQsciLexerVHDL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldComments".}
proc fcQsciLexerVHDL_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldCompact".}
proc fcQsciLexerVHDL_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtElse".}
proc fcQsciLexerVHDL_setFoldAtBegin(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtBegin".}
proc fcQsciLexerVHDL_setFoldAtParenthesis(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_setFoldAtParenthesis".}
proc fcQsciLexerVHDL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVHDL_tr2".}
proc fcQsciLexerVHDL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVHDL_tr3".}
type cQsciLexerVHDLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerVHDLVTable, self: ptr cQsciLexerVHDL) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldAtBegin*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldAtParenthesis*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerVHDL_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVHDL_virtualbase_metaObject".}
proc fcQsciLexerVHDL_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVHDL_virtualbase_metacast".}
proc fcQsciLexerVHDL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVHDL_virtualbase_metacall".}
proc fcQsciLexerVHDL_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_virtualbase_setFoldComments".}
proc fcQsciLexerVHDL_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_virtualbase_setFoldCompact".}
proc fcQsciLexerVHDL_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_virtualbase_setFoldAtElse".}
proc fcQsciLexerVHDL_virtualbase_setFoldAtBegin(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_virtualbase_setFoldAtBegin".}
proc fcQsciLexerVHDL_virtualbase_setFoldAtParenthesis(self: pointer, fold: bool): void {.importc: "QsciLexerVHDL_virtualbase_setFoldAtParenthesis".}
proc fcQsciLexerVHDL_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerVHDL_virtualbase_lexer".}
proc fcQsciLexerVHDL_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_lexerId".}
proc fcQsciLexerVHDL_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerVHDL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerVHDL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerVHDL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerVHDL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVHDL_virtualbase_blockEnd".}
proc fcQsciLexerVHDL_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_blockLookback".}
proc fcQsciLexerVHDL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVHDL_virtualbase_blockStart".}
proc fcQsciLexerVHDL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVHDL_virtualbase_blockStartKeyword".}
proc fcQsciLexerVHDL_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_braceStyle".}
proc fcQsciLexerVHDL_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerVHDL_virtualbase_caseSensitive".}
proc fcQsciLexerVHDL_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_color".}
proc fcQsciLexerVHDL_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVHDL_virtualbase_eolFill".}
proc fcQsciLexerVHDL_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_font".}
proc fcQsciLexerVHDL_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_indentationGuideView".}
proc fcQsciLexerVHDL_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVHDL_virtualbase_keywords".}
proc fcQsciLexerVHDL_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_defaultStyle".}
proc fcQsciLexerVHDL_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_paper".}
proc fcQsciLexerVHDL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerVHDL_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVHDL_virtualbase_defaultEolFill".}
proc fcQsciLexerVHDL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerVHDL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVHDL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerVHDL_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerVHDL_virtualbase_setEditor".}
proc fcQsciLexerVHDL_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVHDL_virtualbase_refreshProperties".}
proc fcQsciLexerVHDL_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerVHDL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerVHDL_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerVHDL_virtualbase_wordCharacters".}
proc fcQsciLexerVHDL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerVHDL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerVHDL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerVHDL_virtualbase_setColor".}
proc fcQsciLexerVHDL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerVHDL_virtualbase_setEolFill".}
proc fcQsciLexerVHDL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerVHDL_virtualbase_setFont".}
proc fcQsciLexerVHDL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerVHDL_virtualbase_setPaper".}
proc fcQsciLexerVHDL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVHDL_virtualbase_readProperties".}
proc fcQsciLexerVHDL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVHDL_virtualbase_writeProperties".}
proc fcQsciLexerVHDL_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerVHDL_virtualbase_event".}
proc fcQsciLexerVHDL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerVHDL_virtualbase_eventFilter".}
proc fcQsciLexerVHDL_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVHDL_virtualbase_timerEvent".}
proc fcQsciLexerVHDL_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVHDL_virtualbase_childEvent".}
proc fcQsciLexerVHDL_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVHDL_virtualbase_customEvent".}
proc fcQsciLexerVHDL_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerVHDL_virtualbase_connectNotify".}
proc fcQsciLexerVHDL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerVHDL_virtualbase_disconnectNotify".}
proc fcQsciLexerVHDL_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVHDL_protectedbase_readProperties".}
proc fcQsciLexerVHDL_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVHDL_protectedbase_writeProperties".}
proc fcQsciLexerVHDL_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerVHDL_protectedbase_sender".}
proc fcQsciLexerVHDL_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerVHDL_protectedbase_senderSignalIndex".}
proc fcQsciLexerVHDL_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerVHDL_protectedbase_receivers".}
proc fcQsciLexerVHDL_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerVHDL_protectedbase_isSignalConnected".}
proc fcQsciLexerVHDL_new(vtbl: pointer, ): ptr cQsciLexerVHDL {.importc: "QsciLexerVHDL_new".}
proc fcQsciLexerVHDL_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerVHDL {.importc: "QsciLexerVHDL_new2".}
proc fcQsciLexerVHDL_staticMetaObject(): pointer {.importc: "QsciLexerVHDL_staticMetaObject".}
proc fcQsciLexerVHDL_delete(self: pointer) {.importc: "QsciLexerVHDL_delete".}

proc metaObject*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVHDL_metaObject(self.h))

proc metacast*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cstring): pointer =
  fcQsciLexerVHDL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVHDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring): string =
  let v_ms = fcQsciLexerVHDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_language(self.h))

proc lexer*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_lexer(self.h))

proc braceStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fcQsciLexerVHDL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVHDL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexervhdl_types.QsciLexerVHDL, set: cint): cstring =
  (fcQsciLexerVHDL_keywords(self.h, set))

proc description*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): string =
  let v_ms = fcQsciLexerVHDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): void =
  fcQsciLexerVHDL_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldComments(self.h)

proc foldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldCompact(self.h)

proc foldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtElse(self.h)

proc foldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtBegin(self.h)

proc foldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_foldAtParenthesis(self.h)

proc setFoldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldCompact(self.h, fold)

proc setFoldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtElse(self.h, fold)

proc setFoldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtBegin(self.h, fold)

proc setFoldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_setFoldAtParenthesis(self.h, fold)

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVHDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexervhdl_types.QsciLexerVHDL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVHDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerVHDLmetaObjectProc* = proc(self: QsciLexerVHDL): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerVHDLmetacastProc* = proc(self: QsciLexerVHDL, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerVHDLmetacallProc* = proc(self: QsciLexerVHDL, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerVHDLsetFoldCommentsProc* = proc(self: QsciLexerVHDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetFoldCompactProc* = proc(self: QsciLexerVHDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetFoldAtElseProc* = proc(self: QsciLexerVHDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetFoldAtBeginProc* = proc(self: QsciLexerVHDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetFoldAtParenthesisProc* = proc(self: QsciLexerVHDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerVHDLlanguageProc* = proc(self: QsciLexerVHDL): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLlexerProc* = proc(self: QsciLexerVHDL): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLlexerIdProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLautoCompletionFillupsProc* = proc(self: QsciLexerVHDL): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerVHDL): seq[string] {.raises: [], gcsafe.}
type QsciLexerVHDLblockEndProc* = proc(self: QsciLexerVHDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLblockLookbackProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLblockStartProc* = proc(self: QsciLexerVHDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLblockStartKeywordProc* = proc(self: QsciLexerVHDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLbraceStyleProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLcaseSensitiveProc* = proc(self: QsciLexerVHDL): bool {.raises: [], gcsafe.}
type QsciLexerVHDLcolorProc* = proc(self: QsciLexerVHDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVHDLeolFillProc* = proc(self: QsciLexerVHDL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerVHDLfontProc* = proc(self: QsciLexerVHDL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerVHDLindentationGuideViewProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLkeywordsProc* = proc(self: QsciLexerVHDL, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLdefaultStyleProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLdescriptionProc* = proc(self: QsciLexerVHDL, style: cint): string {.raises: [], gcsafe.}
type QsciLexerVHDLpaperProc* = proc(self: QsciLexerVHDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVHDLdefaultColorProc* = proc(self: QsciLexerVHDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVHDLdefaultEolFillProc* = proc(self: QsciLexerVHDL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerVHDLdefaultFontProc* = proc(self: QsciLexerVHDL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerVHDLdefaultPaperProc* = proc(self: QsciLexerVHDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVHDLsetEditorProc* = proc(self: QsciLexerVHDL, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerVHDLrefreshPropertiesProc* = proc(self: QsciLexerVHDL): void {.raises: [], gcsafe.}
type QsciLexerVHDLstyleBitsNeededProc* = proc(self: QsciLexerVHDL): cint {.raises: [], gcsafe.}
type QsciLexerVHDLwordCharactersProc* = proc(self: QsciLexerVHDL): cstring {.raises: [], gcsafe.}
type QsciLexerVHDLsetAutoIndentStyleProc* = proc(self: QsciLexerVHDL, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetColorProc* = proc(self: QsciLexerVHDL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetEolFillProc* = proc(self: QsciLexerVHDL, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetFontProc* = proc(self: QsciLexerVHDL, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVHDLsetPaperProc* = proc(self: QsciLexerVHDL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVHDLreadPropertiesProc* = proc(self: QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerVHDLwritePropertiesProc* = proc(self: QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerVHDLeventProc* = proc(self: QsciLexerVHDL, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerVHDLeventFilterProc* = proc(self: QsciLexerVHDL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerVHDLtimerEventProc* = proc(self: QsciLexerVHDL, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerVHDLchildEventProc* = proc(self: QsciLexerVHDL, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerVHDLcustomEventProc* = proc(self: QsciLexerVHDL, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerVHDLconnectNotifyProc* = proc(self: QsciLexerVHDL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerVHDLdisconnectNotifyProc* = proc(self: QsciLexerVHDL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerVHDLVTable* = object
  vtbl: cQsciLexerVHDLVTable
  metaObject*: QsciLexerVHDLmetaObjectProc
  metacast*: QsciLexerVHDLmetacastProc
  metacall*: QsciLexerVHDLmetacallProc
  setFoldComments*: QsciLexerVHDLsetFoldCommentsProc
  setFoldCompact*: QsciLexerVHDLsetFoldCompactProc
  setFoldAtElse*: QsciLexerVHDLsetFoldAtElseProc
  setFoldAtBegin*: QsciLexerVHDLsetFoldAtBeginProc
  setFoldAtParenthesis*: QsciLexerVHDLsetFoldAtParenthesisProc
  language*: QsciLexerVHDLlanguageProc
  lexer*: QsciLexerVHDLlexerProc
  lexerId*: QsciLexerVHDLlexerIdProc
  autoCompletionFillups*: QsciLexerVHDLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerVHDLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerVHDLblockEndProc
  blockLookback*: QsciLexerVHDLblockLookbackProc
  blockStart*: QsciLexerVHDLblockStartProc
  blockStartKeyword*: QsciLexerVHDLblockStartKeywordProc
  braceStyle*: QsciLexerVHDLbraceStyleProc
  caseSensitive*: QsciLexerVHDLcaseSensitiveProc
  color*: QsciLexerVHDLcolorProc
  eolFill*: QsciLexerVHDLeolFillProc
  font*: QsciLexerVHDLfontProc
  indentationGuideView*: QsciLexerVHDLindentationGuideViewProc
  keywords*: QsciLexerVHDLkeywordsProc
  defaultStyle*: QsciLexerVHDLdefaultStyleProc
  description*: QsciLexerVHDLdescriptionProc
  paper*: QsciLexerVHDLpaperProc
  defaultColor*: QsciLexerVHDLdefaultColorProc
  defaultEolFill*: QsciLexerVHDLdefaultEolFillProc
  defaultFont*: QsciLexerVHDLdefaultFontProc
  defaultPaper*: QsciLexerVHDLdefaultPaperProc
  setEditor*: QsciLexerVHDLsetEditorProc
  refreshProperties*: QsciLexerVHDLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerVHDLstyleBitsNeededProc
  wordCharacters*: QsciLexerVHDLwordCharactersProc
  setAutoIndentStyle*: QsciLexerVHDLsetAutoIndentStyleProc
  setColor*: QsciLexerVHDLsetColorProc
  setEolFill*: QsciLexerVHDLsetEolFillProc
  setFont*: QsciLexerVHDLsetFontProc
  setPaper*: QsciLexerVHDLsetPaperProc
  readProperties*: QsciLexerVHDLreadPropertiesProc
  writeProperties*: QsciLexerVHDLwritePropertiesProc
  event*: QsciLexerVHDLeventProc
  eventFilter*: QsciLexerVHDLeventFilterProc
  timerEvent*: QsciLexerVHDLtimerEventProc
  childEvent*: QsciLexerVHDLchildEventProc
  customEvent*: QsciLexerVHDLcustomEventProc
  connectNotify*: QsciLexerVHDLconnectNotifyProc
  disconnectNotify*: QsciLexerVHDLdisconnectNotifyProc
proc QsciLexerVHDLmetaObject*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVHDL_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerVHDL_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerVHDLmetacast*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cstring): pointer =
  fcQsciLexerVHDL_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerVHDL_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerVHDLmetacall*(self: gen_qscilexervhdl_types.QsciLexerVHDL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVHDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerVHDL_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerVHDLsetFoldComments*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerVHDL_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerVHDLsetFoldCompact*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerVHDL_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerVHDLsetFoldAtElse*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerVHDL_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerVHDLsetFoldAtBegin*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_virtualbase_setFoldAtBegin(self.h, fold)

proc miqt_exec_callback_cQsciLexerVHDL_setFoldAtBegin(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtBegin(self, slotval1)

proc QsciLexerVHDLsetFoldAtParenthesis*(self: gen_qscilexervhdl_types.QsciLexerVHDL, fold: bool): void =
  fcQsciLexerVHDL_virtualbase_setFoldAtParenthesis(self.h, fold)

proc miqt_exec_callback_cQsciLexerVHDL_setFoldAtParenthesis(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtParenthesis(self, slotval1)

proc miqt_exec_callback_cQsciLexerVHDL_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerVHDLlexer*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerVHDL_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerVHDLlexerId*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerVHDLautoCompletionFillups*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerVHDL_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerVHDLautoCompletionWordSeparators*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): seq[string] =
  var v_ma = fcQsciLexerVHDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerVHDL_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerVHDLblockEnd*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fcQsciLexerVHDL_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerVHDLblockLookback*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerVHDLblockStart*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fcQsciLexerVHDL_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerVHDLblockStartKeyword*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: ptr cint): cstring =
  (fcQsciLexerVHDL_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerVHDLbraceStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerVHDLcaseSensitive*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): bool =
  fcQsciLexerVHDL_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerVHDLcolor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLeolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fcQsciLexerVHDL_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerVHDL_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerVHDLfont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVHDL_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLindentationGuideView*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerVHDLkeywords*(self: gen_qscilexervhdl_types.QsciLexerVHDL, set: cint): cstring =
  (fcQsciLexerVHDL_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerVHDL_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerVHDLdefaultStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerVHDL_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerVHDLpaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLdefaultColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLdefaultEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): bool =
  fcQsciLexerVHDL_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerVHDL_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerVHDLdefaultFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVHDL_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLdefaultPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVHDL_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVHDL_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerVHDLsetEditor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerVHDL_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerVHDL_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerVHDLrefreshProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): void =
  fcQsciLexerVHDL_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerVHDLstyleBitsNeeded*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerVHDL_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerVHDLwordCharacters*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cstring =
  (fcQsciLexerVHDL_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerVHDL_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerVHDLsetAutoIndentStyle*(self: gen_qscilexervhdl_types.QsciLexerVHDL, autoindentstyle: cint): void =
  fcQsciLexerVHDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerVHDL_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerVHDLsetColor*(self: gen_qscilexervhdl_types.QsciLexerVHDL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerVHDL_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerVHDL_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerVHDLsetEolFill*(self: gen_qscilexervhdl_types.QsciLexerVHDL, eoffill: bool, style: cint): void =
  fcQsciLexerVHDL_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerVHDL_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerVHDLsetFont*(self: gen_qscilexervhdl_types.QsciLexerVHDL, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerVHDL_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerVHDL_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerVHDLsetPaper*(self: gen_qscilexervhdl_types.QsciLexerVHDL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerVHDL_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerVHDL_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerVHDLreadProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVHDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerVHDL_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVHDLwriteProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVHDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerVHDL_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVHDLevent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerVHDL_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVHDL_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerVHDLeventFilter*(self: gen_qscilexervhdl_types.QsciLexerVHDL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerVHDL_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerVHDL_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVHDLtimerEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerVHDL_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVHDL_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerVHDLchildEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerVHDL_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVHDL_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerVHDLcustomEvent*(self: gen_qscilexervhdl_types.QsciLexerVHDL, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerVHDL_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVHDL_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerVHDLconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerVHDL_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerVHDL_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerVHDLdisconnectNotify*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerVHDL_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerVHDL_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVHDLVTable](vtbl)
  let self = QsciLexerVHDL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVHDL_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexervhdl_types.QsciLexerVHDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVHDL_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerVHDL_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexervhdl_types.QsciLexerVHDL, ): cint =
  fcQsciLexerVHDL_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: cstring): cint =
  fcQsciLexerVHDL_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexervhdl_types.QsciLexerVHDL, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerVHDL_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexervhdl_types.QsciLexerVHDL,
    vtbl: ref QsciLexerVHDLVTable = nil): gen_qscilexervhdl_types.QsciLexerVHDL =
  let vtbl = if vtbl == nil: new QsciLexerVHDLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVHDLVTable, _: ptr cQsciLexerVHDL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVHDLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerVHDL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerVHDL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerVHDL_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerVHDL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerVHDL_setFoldCompact
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerVHDL_setFoldAtElse
  if not isNil(vtbl.setFoldAtBegin):
    vtbl[].vtbl.setFoldAtBegin = miqt_exec_callback_cQsciLexerVHDL_setFoldAtBegin
  if not isNil(vtbl.setFoldAtParenthesis):
    vtbl[].vtbl.setFoldAtParenthesis = miqt_exec_callback_cQsciLexerVHDL_setFoldAtParenthesis
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerVHDL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerVHDL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerVHDL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerVHDL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerVHDL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerVHDL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerVHDL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerVHDL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerVHDL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerVHDL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerVHDL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerVHDL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerVHDL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerVHDL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerVHDL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerVHDL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerVHDL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerVHDL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerVHDL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerVHDL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerVHDL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerVHDL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerVHDL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerVHDL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerVHDL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerVHDL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerVHDL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerVHDL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerVHDL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerVHDL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerVHDL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerVHDL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerVHDL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerVHDL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerVHDL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerVHDL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerVHDL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerVHDL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerVHDL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerVHDL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerVHDL_disconnectNotify
  gen_qscilexervhdl_types.QsciLexerVHDL(h: fcQsciLexerVHDL_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexervhdl_types.QsciLexerVHDL,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerVHDLVTable = nil): gen_qscilexervhdl_types.QsciLexerVHDL =
  let vtbl = if vtbl == nil: new QsciLexerVHDLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVHDLVTable, _: ptr cQsciLexerVHDL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVHDLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerVHDL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerVHDL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerVHDL_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerVHDL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerVHDL_setFoldCompact
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerVHDL_setFoldAtElse
  if not isNil(vtbl.setFoldAtBegin):
    vtbl[].vtbl.setFoldAtBegin = miqt_exec_callback_cQsciLexerVHDL_setFoldAtBegin
  if not isNil(vtbl.setFoldAtParenthesis):
    vtbl[].vtbl.setFoldAtParenthesis = miqt_exec_callback_cQsciLexerVHDL_setFoldAtParenthesis
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerVHDL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerVHDL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerVHDL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerVHDL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerVHDL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerVHDL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerVHDL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerVHDL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerVHDL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerVHDL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerVHDL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerVHDL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerVHDL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerVHDL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerVHDL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerVHDL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerVHDL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerVHDL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerVHDL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerVHDL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerVHDL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerVHDL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerVHDL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerVHDL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerVHDL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerVHDL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerVHDL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerVHDL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerVHDL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerVHDL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerVHDL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerVHDL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerVHDL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerVHDL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerVHDL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerVHDL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerVHDL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerVHDL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerVHDL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerVHDL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerVHDL_disconnectNotify
  gen_qscilexervhdl_types.QsciLexerVHDL(h: fcQsciLexerVHDL_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexervhdl_types.QsciLexerVHDL): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVHDL_staticMetaObject())
proc delete*(self: gen_qscilexervhdl_types.QsciLexerVHDL) =
  fcQsciLexerVHDL_delete(self.h)
