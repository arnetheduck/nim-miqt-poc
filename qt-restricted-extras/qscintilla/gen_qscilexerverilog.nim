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
{.compile("gen_qscilexerverilog.cpp", cflags).}


type QsciLexerVerilogEnumEnum* = distinct cint
template Default*(_: type QsciLexerVerilogEnumEnum): untyped = 0
template InactiveDefault*(_: type QsciLexerVerilogEnumEnum): untyped = 64
template Comment*(_: type QsciLexerVerilogEnumEnum): untyped = 1
template InactiveComment*(_: type QsciLexerVerilogEnumEnum): untyped = 65
template CommentLine*(_: type QsciLexerVerilogEnumEnum): untyped = 2
template InactiveCommentLine*(_: type QsciLexerVerilogEnumEnum): untyped = 66
template CommentBang*(_: type QsciLexerVerilogEnumEnum): untyped = 3
template InactiveCommentBang*(_: type QsciLexerVerilogEnumEnum): untyped = 67
template Number*(_: type QsciLexerVerilogEnumEnum): untyped = 4
template InactiveNumber*(_: type QsciLexerVerilogEnumEnum): untyped = 68
template Keyword*(_: type QsciLexerVerilogEnumEnum): untyped = 5
template InactiveKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 69
template String*(_: type QsciLexerVerilogEnumEnum): untyped = 6
template InactiveString*(_: type QsciLexerVerilogEnumEnum): untyped = 70
template KeywordSet2*(_: type QsciLexerVerilogEnumEnum): untyped = 7
template InactiveKeywordSet2*(_: type QsciLexerVerilogEnumEnum): untyped = 71
template SystemTask*(_: type QsciLexerVerilogEnumEnum): untyped = 8
template InactiveSystemTask*(_: type QsciLexerVerilogEnumEnum): untyped = 72
template Preprocessor*(_: type QsciLexerVerilogEnumEnum): untyped = 9
template InactivePreprocessor*(_: type QsciLexerVerilogEnumEnum): untyped = 73
template Operator*(_: type QsciLexerVerilogEnumEnum): untyped = 10
template InactiveOperator*(_: type QsciLexerVerilogEnumEnum): untyped = 74
template Identifier*(_: type QsciLexerVerilogEnumEnum): untyped = 11
template InactiveIdentifier*(_: type QsciLexerVerilogEnumEnum): untyped = 75
template UnclosedString*(_: type QsciLexerVerilogEnumEnum): untyped = 12
template InactiveUnclosedString*(_: type QsciLexerVerilogEnumEnum): untyped = 76
template UserKeywordSet*(_: type QsciLexerVerilogEnumEnum): untyped = 19
template InactiveUserKeywordSet*(_: type QsciLexerVerilogEnumEnum): untyped = 83
template CommentKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 20
template InactiveCommentKeyword*(_: type QsciLexerVerilogEnumEnum): untyped = 84
template DeclareInputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 21
template InactiveDeclareInputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 85
template DeclareOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 22
template InactiveDeclareOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 86
template DeclareInputOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 23
template InactiveDeclareInputOutputPort*(_: type QsciLexerVerilogEnumEnum): untyped = 87
template PortConnection*(_: type QsciLexerVerilogEnumEnum): untyped = 24
template InactivePortConnection*(_: type QsciLexerVerilogEnumEnum): untyped = 88

import gen_qscilexerverilog_types
export gen_qscilexerverilog_types

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

type cQsciLexerVerilog*{.exportc: "QsciLexerVerilog", incompleteStruct.} = object

proc fcQsciLexerVerilog_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVerilog_metaObject".}
proc fcQsciLexerVerilog_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVerilog_metacast".}
proc fcQsciLexerVerilog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVerilog_metacall".}
proc fcQsciLexerVerilog_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_tr".}
proc fcQsciLexerVerilog_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf8".}
proc fcQsciLexerVerilog_language(self: pointer, ): cstring {.importc: "QsciLexerVerilog_language".}
proc fcQsciLexerVerilog_lexer(self: pointer, ): cstring {.importc: "QsciLexerVerilog_lexer".}
proc fcQsciLexerVerilog_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVerilog_braceStyle".}
proc fcQsciLexerVerilog_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerVerilog_wordCharacters".}
proc fcQsciLexerVerilog_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultColor".}
proc fcQsciLexerVerilog_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVerilog_defaultEolFill".}
proc fcQsciLexerVerilog_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultFont".}
proc fcQsciLexerVerilog_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_defaultPaper".}
proc fcQsciLexerVerilog_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVerilog_keywords".}
proc fcQsciLexerVerilog_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerVerilog_description".}
proc fcQsciLexerVerilog_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVerilog_refreshProperties".}
proc fcQsciLexerVerilog_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldAtElse".}
proc fcQsciLexerVerilog_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldAtElse".}
proc fcQsciLexerVerilog_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldComments".}
proc fcQsciLexerVerilog_foldComments(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldComments".}
proc fcQsciLexerVerilog_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldCompact".}
proc fcQsciLexerVerilog_foldCompact(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldCompact".}
proc fcQsciLexerVerilog_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldPreprocessor".}
proc fcQsciLexerVerilog_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldPreprocessor".}
proc fcQsciLexerVerilog_setFoldAtModule(self: pointer, fold: bool): void {.importc: "QsciLexerVerilog_setFoldAtModule".}
proc fcQsciLexerVerilog_foldAtModule(self: pointer, ): bool {.importc: "QsciLexerVerilog_foldAtModule".}
proc fcQsciLexerVerilog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_tr2".}
proc fcQsciLexerVerilog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVerilog_tr3".}
proc fcQsciLexerVerilog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf82".}
proc fcQsciLexerVerilog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerVerilog_trUtf83".}
type cQsciLexerVerilogVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerVerilogVTable, self: ptr cQsciLexerVerilog) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerVerilog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerVerilog_virtualbase_metaObject".}
proc fcQsciLexerVerilog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerVerilog_virtualbase_metacast".}
proc fcQsciLexerVerilog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerVerilog_virtualbase_metacall".}
proc fcQsciLexerVerilog_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerVerilog_virtualbase_lexer".}
proc fcQsciLexerVerilog_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_lexerId".}
proc fcQsciLexerVerilog_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerVerilog_virtualbase_autoCompletionFillups".}
proc fcQsciLexerVerilog_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerVerilog_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerVerilog_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVerilog_virtualbase_blockEnd".}
proc fcQsciLexerVerilog_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_blockLookback".}
proc fcQsciLexerVerilog_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVerilog_virtualbase_blockStart".}
proc fcQsciLexerVerilog_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerVerilog_virtualbase_blockStartKeyword".}
proc fcQsciLexerVerilog_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_braceStyle".}
proc fcQsciLexerVerilog_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerVerilog_virtualbase_caseSensitive".}
proc fcQsciLexerVerilog_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_color".}
proc fcQsciLexerVerilog_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVerilog_virtualbase_eolFill".}
proc fcQsciLexerVerilog_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_font".}
proc fcQsciLexerVerilog_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_indentationGuideView".}
proc fcQsciLexerVerilog_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerVerilog_virtualbase_keywords".}
proc fcQsciLexerVerilog_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_defaultStyle".}
proc fcQsciLexerVerilog_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_paper".}
proc fcQsciLexerVerilog_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerVerilog_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerVerilog_virtualbase_defaultEolFill".}
proc fcQsciLexerVerilog_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerVerilog_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerVerilog_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerVerilog_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerVerilog_virtualbase_setEditor".}
proc fcQsciLexerVerilog_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerVerilog_virtualbase_refreshProperties".}
proc fcQsciLexerVerilog_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerVerilog_virtualbase_styleBitsNeeded".}
proc fcQsciLexerVerilog_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerVerilog_virtualbase_wordCharacters".}
proc fcQsciLexerVerilog_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerVerilog_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerVerilog_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerVerilog_virtualbase_setColor".}
proc fcQsciLexerVerilog_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerVerilog_virtualbase_setEolFill".}
proc fcQsciLexerVerilog_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerVerilog_virtualbase_setFont".}
proc fcQsciLexerVerilog_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerVerilog_virtualbase_setPaper".}
proc fcQsciLexerVerilog_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVerilog_virtualbase_readProperties".}
proc fcQsciLexerVerilog_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerVerilog_virtualbase_writeProperties".}
proc fcQsciLexerVerilog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerVerilog_virtualbase_event".}
proc fcQsciLexerVerilog_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerVerilog_virtualbase_eventFilter".}
proc fcQsciLexerVerilog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVerilog_virtualbase_timerEvent".}
proc fcQsciLexerVerilog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVerilog_virtualbase_childEvent".}
proc fcQsciLexerVerilog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerVerilog_virtualbase_customEvent".}
proc fcQsciLexerVerilog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerVerilog_virtualbase_connectNotify".}
proc fcQsciLexerVerilog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerVerilog_virtualbase_disconnectNotify".}
proc fcQsciLexerVerilog_new(vtbl: pointer, ): ptr cQsciLexerVerilog {.importc: "QsciLexerVerilog_new".}
proc fcQsciLexerVerilog_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerVerilog {.importc: "QsciLexerVerilog_new2".}
proc fcQsciLexerVerilog_staticMetaObject(): pointer {.importc: "QsciLexerVerilog_staticMetaObject".}
proc fcQsciLexerVerilog_delete(self: pointer) {.importc: "QsciLexerVerilog_delete".}

proc metaObject*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVerilog_metaObject(self.h))

proc metacast*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cstring): pointer =
  fcQsciLexerVerilog_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVerilog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring): string =
  let v_ms = fcQsciLexerVerilog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring): string =
  let v_ms = fcQsciLexerVerilog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_language(self.h))

proc lexer*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_lexer(self.h))

proc braceStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fcQsciLexerVerilog_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVerilog_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerverilog_types.QsciLexerVerilog, set: cint): cstring =
  (fcQsciLexerVerilog_keywords(self.h, set))

proc description*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): string =
  let v_ms = fcQsciLexerVerilog_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): void =
  fcQsciLexerVerilog_refreshProperties(self.h)

proc setFoldAtElse*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldAtElse(self.h, fold)

proc foldAtElse*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldAtElse(self.h)

proc setFoldComments*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldCompact(self.h)

proc setFoldPreprocessor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldPreprocessor(self.h, fold)

proc foldPreprocessor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldPreprocessor(self.h)

proc setFoldAtModule*(self: gen_qscilexerverilog_types.QsciLexerVerilog, fold: bool): void =
  fcQsciLexerVerilog_setFoldAtModule(self.h, fold)

proc foldAtModule*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_foldAtModule(self.h)

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVerilog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVerilog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerVerilog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerverilog_types.QsciLexerVerilog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerVerilog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerVerilogmetaObjectProc* = proc(self: QsciLexerVerilog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerVerilogmetacastProc* = proc(self: QsciLexerVerilog, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerVerilogmetacallProc* = proc(self: QsciLexerVerilog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerVeriloglanguageProc* = proc(self: QsciLexerVerilog): cstring {.raises: [], gcsafe.}
type QsciLexerVeriloglexerProc* = proc(self: QsciLexerVerilog): cstring {.raises: [], gcsafe.}
type QsciLexerVeriloglexerIdProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogautoCompletionFillupsProc* = proc(self: QsciLexerVerilog): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogautoCompletionWordSeparatorsProc* = proc(self: QsciLexerVerilog): seq[string] {.raises: [], gcsafe.}
type QsciLexerVerilogblockEndProc* = proc(self: QsciLexerVerilog, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogblockLookbackProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogblockStartProc* = proc(self: QsciLexerVerilog, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogblockStartKeywordProc* = proc(self: QsciLexerVerilog, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogbraceStyleProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogcaseSensitiveProc* = proc(self: QsciLexerVerilog): bool {.raises: [], gcsafe.}
type QsciLexerVerilogcolorProc* = proc(self: QsciLexerVerilog, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVerilogeolFillProc* = proc(self: QsciLexerVerilog, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerVerilogfontProc* = proc(self: QsciLexerVerilog, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerVerilogindentationGuideViewProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogkeywordsProc* = proc(self: QsciLexerVerilog, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogdefaultStyleProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogdescriptionProc* = proc(self: QsciLexerVerilog, style: cint): string {.raises: [], gcsafe.}
type QsciLexerVerilogpaperProc* = proc(self: QsciLexerVerilog, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVerilogdefaultColorProc* = proc(self: QsciLexerVerilog, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVerilogdefaultEolFillProc* = proc(self: QsciLexerVerilog, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerVerilogdefaultFontProc* = proc(self: QsciLexerVerilog, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerVerilogdefaultPaperProc* = proc(self: QsciLexerVerilog, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerVerilogsetEditorProc* = proc(self: QsciLexerVerilog, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerVerilogrefreshPropertiesProc* = proc(self: QsciLexerVerilog): void {.raises: [], gcsafe.}
type QsciLexerVerilogstyleBitsNeededProc* = proc(self: QsciLexerVerilog): cint {.raises: [], gcsafe.}
type QsciLexerVerilogwordCharactersProc* = proc(self: QsciLexerVerilog): cstring {.raises: [], gcsafe.}
type QsciLexerVerilogsetAutoIndentStyleProc* = proc(self: QsciLexerVerilog, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerVerilogsetColorProc* = proc(self: QsciLexerVerilog, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVerilogsetEolFillProc* = proc(self: QsciLexerVerilog, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVerilogsetFontProc* = proc(self: QsciLexerVerilog, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVerilogsetPaperProc* = proc(self: QsciLexerVerilog, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerVerilogreadPropertiesProc* = proc(self: QsciLexerVerilog, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerVerilogwritePropertiesProc* = proc(self: QsciLexerVerilog, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerVerilogeventProc* = proc(self: QsciLexerVerilog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerVerilogeventFilterProc* = proc(self: QsciLexerVerilog, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerVerilogtimerEventProc* = proc(self: QsciLexerVerilog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerVerilogchildEventProc* = proc(self: QsciLexerVerilog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerVerilogcustomEventProc* = proc(self: QsciLexerVerilog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerVerilogconnectNotifyProc* = proc(self: QsciLexerVerilog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerVerilogdisconnectNotifyProc* = proc(self: QsciLexerVerilog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerVerilogVTable* = object
  vtbl: cQsciLexerVerilogVTable
  metaObject*: QsciLexerVerilogmetaObjectProc
  metacast*: QsciLexerVerilogmetacastProc
  metacall*: QsciLexerVerilogmetacallProc
  language*: QsciLexerVeriloglanguageProc
  lexer*: QsciLexerVeriloglexerProc
  lexerId*: QsciLexerVeriloglexerIdProc
  autoCompletionFillups*: QsciLexerVerilogautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerVerilogautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerVerilogblockEndProc
  blockLookback*: QsciLexerVerilogblockLookbackProc
  blockStart*: QsciLexerVerilogblockStartProc
  blockStartKeyword*: QsciLexerVerilogblockStartKeywordProc
  braceStyle*: QsciLexerVerilogbraceStyleProc
  caseSensitive*: QsciLexerVerilogcaseSensitiveProc
  color*: QsciLexerVerilogcolorProc
  eolFill*: QsciLexerVerilogeolFillProc
  font*: QsciLexerVerilogfontProc
  indentationGuideView*: QsciLexerVerilogindentationGuideViewProc
  keywords*: QsciLexerVerilogkeywordsProc
  defaultStyle*: QsciLexerVerilogdefaultStyleProc
  description*: QsciLexerVerilogdescriptionProc
  paper*: QsciLexerVerilogpaperProc
  defaultColor*: QsciLexerVerilogdefaultColorProc
  defaultEolFill*: QsciLexerVerilogdefaultEolFillProc
  defaultFont*: QsciLexerVerilogdefaultFontProc
  defaultPaper*: QsciLexerVerilogdefaultPaperProc
  setEditor*: QsciLexerVerilogsetEditorProc
  refreshProperties*: QsciLexerVerilogrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerVerilogstyleBitsNeededProc
  wordCharacters*: QsciLexerVerilogwordCharactersProc
  setAutoIndentStyle*: QsciLexerVerilogsetAutoIndentStyleProc
  setColor*: QsciLexerVerilogsetColorProc
  setEolFill*: QsciLexerVerilogsetEolFillProc
  setFont*: QsciLexerVerilogsetFontProc
  setPaper*: QsciLexerVerilogsetPaperProc
  readProperties*: QsciLexerVerilogreadPropertiesProc
  writeProperties*: QsciLexerVerilogwritePropertiesProc
  event*: QsciLexerVerilogeventProc
  eventFilter*: QsciLexerVerilogeventFilterProc
  timerEvent*: QsciLexerVerilogtimerEventProc
  childEvent*: QsciLexerVerilogchildEventProc
  customEvent*: QsciLexerVerilogcustomEventProc
  connectNotify*: QsciLexerVerilogconnectNotifyProc
  disconnectNotify*: QsciLexerVerilogdisconnectNotifyProc
proc QsciLexerVerilogmetaObject*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVerilog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerVerilog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerVerilogmetacast*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cstring): pointer =
  fcQsciLexerVerilog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerVerilog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerVerilogmetacall*(self: gen_qscilexerverilog_types.QsciLexerVerilog, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerVerilog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerVerilog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerVerilog_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerVeriloglexer*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerVerilog_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerVeriloglexerId*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerVerilogautoCompletionFillups*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerVerilog_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerVerilogautoCompletionWordSeparators*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): seq[string] =
  var v_ma = fcQsciLexerVerilog_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerVerilog_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerVerilogblockEnd*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fcQsciLexerVerilog_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerVerilogblockLookback*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerVerilogblockStart*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fcQsciLexerVerilog_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerVerilogblockStartKeyword*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: ptr cint): cstring =
  (fcQsciLexerVerilog_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerVerilogbraceStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerVerilogcaseSensitive*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): bool =
  fcQsciLexerVerilog_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerVerilogcolor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogeolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fcQsciLexerVerilog_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerVerilog_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerVerilogfont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVerilog_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogindentationGuideView*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerVerilogkeywords*(self: gen_qscilexerverilog_types.QsciLexerVerilog, set: cint): cstring =
  (fcQsciLexerVerilog_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerVerilog_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerVerilogdefaultStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerVerilog_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerVerilogpaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogdefaultColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogdefaultEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): bool =
  fcQsciLexerVerilog_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerVerilog_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerVerilogdefaultFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerVerilog_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogdefaultPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerVerilog_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerVerilog_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerVerilogsetEditor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerVerilog_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerVerilog_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerVerilogrefreshProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): void =
  fcQsciLexerVerilog_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerVerilogstyleBitsNeeded*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cint =
  fcQsciLexerVerilog_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerVerilog_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerVerilogwordCharacters*(self: gen_qscilexerverilog_types.QsciLexerVerilog, ): cstring =
  (fcQsciLexerVerilog_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerVerilog_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerVerilogsetAutoIndentStyle*(self: gen_qscilexerverilog_types.QsciLexerVerilog, autoindentstyle: cint): void =
  fcQsciLexerVerilog_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerVerilog_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerVerilogsetColor*(self: gen_qscilexerverilog_types.QsciLexerVerilog, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerVerilog_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerVerilog_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerVerilogsetEolFill*(self: gen_qscilexerverilog_types.QsciLexerVerilog, eoffill: bool, style: cint): void =
  fcQsciLexerVerilog_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerVerilog_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerVerilogsetFont*(self: gen_qscilexerverilog_types.QsciLexerVerilog, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerVerilog_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerVerilog_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerVerilogsetPaper*(self: gen_qscilexerverilog_types.QsciLexerVerilog, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerVerilog_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerVerilog_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerVerilogreadProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVerilog_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerVerilog_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVerilogwriteProperties*(self: gen_qscilexerverilog_types.QsciLexerVerilog, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerVerilog_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerVerilog_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVerilogevent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerVerilog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVerilog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerVerilogeventFilter*(self: gen_qscilexerverilog_types.QsciLexerVerilog, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerVerilog_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerVerilog_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerVerilogtimerEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerVerilog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVerilog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerVerilogchildEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerVerilog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVerilog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerVerilogcustomEvent*(self: gen_qscilexerverilog_types.QsciLexerVerilog, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerVerilog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerVerilog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerVerilogconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerVerilog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerVerilog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerVerilogdisconnectNotify*(self: gen_qscilexerverilog_types.QsciLexerVerilog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerVerilog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerVerilog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVerilogVTable](vtbl)
  let self = QsciLexerVerilog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerverilog_types.QsciLexerVerilog,
    vtbl: ref QsciLexerVerilogVTable = nil): gen_qscilexerverilog_types.QsciLexerVerilog =
  let vtbl = if vtbl == nil: new QsciLexerVerilogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVerilogVTable, _: ptr cQsciLexerVerilog) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVerilogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerVerilog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerVerilog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerVerilog_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerVerilog_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerVerilog_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerVerilog_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerVerilog_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerVerilog_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerVerilog_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerVerilog_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerVerilog_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerVerilog_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerVerilog_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerVerilog_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerVerilog_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerVerilog_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerVerilog_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerVerilog_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerVerilog_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerVerilog_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerVerilog_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerVerilog_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerVerilog_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerVerilog_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerVerilog_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerVerilog_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerVerilog_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerVerilog_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerVerilog_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerVerilog_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerVerilog_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerVerilog_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerVerilog_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerVerilog_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerVerilog_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerVerilog_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerVerilog_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerVerilog_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerVerilog_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerVerilog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerVerilog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerVerilog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerVerilog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerVerilog_disconnectNotify
  gen_qscilexerverilog_types.QsciLexerVerilog(h: fcQsciLexerVerilog_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerverilog_types.QsciLexerVerilog,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerVerilogVTable = nil): gen_qscilexerverilog_types.QsciLexerVerilog =
  let vtbl = if vtbl == nil: new QsciLexerVerilogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVerilogVTable, _: ptr cQsciLexerVerilog) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVerilogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerVerilog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerVerilog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerVerilog_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerVerilog_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerVerilog_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerVerilog_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerVerilog_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerVerilog_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerVerilog_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerVerilog_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerVerilog_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerVerilog_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerVerilog_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerVerilog_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerVerilog_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerVerilog_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerVerilog_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerVerilog_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerVerilog_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerVerilog_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerVerilog_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerVerilog_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerVerilog_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerVerilog_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerVerilog_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerVerilog_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerVerilog_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerVerilog_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerVerilog_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerVerilog_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerVerilog_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerVerilog_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerVerilog_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerVerilog_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerVerilog_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerVerilog_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerVerilog_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerVerilog_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerVerilog_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerVerilog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerVerilog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerVerilog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerVerilog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerVerilog_disconnectNotify
  gen_qscilexerverilog_types.QsciLexerVerilog(h: fcQsciLexerVerilog_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerverilog_types.QsciLexerVerilog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerVerilog_staticMetaObject())
proc delete*(self: gen_qscilexerverilog_types.QsciLexerVerilog) =
  fcQsciLexerVerilog_delete(self.h)
