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
{.compile("gen_qscilexerruby.cpp", cflags).}


type QsciLexerRubyEnumEnum* = distinct cint
template Default*(_: type QsciLexerRubyEnumEnum): untyped = 0
template Error*(_: type QsciLexerRubyEnumEnum): untyped = 1
template Comment*(_: type QsciLexerRubyEnumEnum): untyped = 2
template POD*(_: type QsciLexerRubyEnumEnum): untyped = 3
template Number*(_: type QsciLexerRubyEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerRubyEnumEnum): untyped = 5
template DoubleQuotedString*(_: type QsciLexerRubyEnumEnum): untyped = 6
template SingleQuotedString*(_: type QsciLexerRubyEnumEnum): untyped = 7
template ClassName*(_: type QsciLexerRubyEnumEnum): untyped = 8
template FunctionMethodName*(_: type QsciLexerRubyEnumEnum): untyped = 9
template Operator*(_: type QsciLexerRubyEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerRubyEnumEnum): untyped = 11
template Regex*(_: type QsciLexerRubyEnumEnum): untyped = 12
template Global*(_: type QsciLexerRubyEnumEnum): untyped = 13
template Symbol*(_: type QsciLexerRubyEnumEnum): untyped = 14
template ModuleName*(_: type QsciLexerRubyEnumEnum): untyped = 15
template InstanceVariable*(_: type QsciLexerRubyEnumEnum): untyped = 16
template ClassVariable*(_: type QsciLexerRubyEnumEnum): untyped = 17
template Backticks*(_: type QsciLexerRubyEnumEnum): untyped = 18
template DataSection*(_: type QsciLexerRubyEnumEnum): untyped = 19
template HereDocumentDelimiter*(_: type QsciLexerRubyEnumEnum): untyped = 20
template HereDocument*(_: type QsciLexerRubyEnumEnum): untyped = 21
template PercentStringq*(_: type QsciLexerRubyEnumEnum): untyped = 24
template PercentStringQ2*(_: type QsciLexerRubyEnumEnum): untyped = 25
template PercentStringx*(_: type QsciLexerRubyEnumEnum): untyped = 26
template PercentStringr*(_: type QsciLexerRubyEnumEnum): untyped = 27
template PercentStringw*(_: type QsciLexerRubyEnumEnum): untyped = 28
template DemotedKeyword*(_: type QsciLexerRubyEnumEnum): untyped = 29
template Stdin*(_: type QsciLexerRubyEnumEnum): untyped = 30
template Stdout*(_: type QsciLexerRubyEnumEnum): untyped = 31
template Stderr*(_: type QsciLexerRubyEnumEnum): untyped = 40

import gen_qscilexerruby_types
export gen_qscilexerruby_types

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

type cQsciLexerRuby*{.exportc: "QsciLexerRuby", incompleteStruct.} = object

proc fcQsciLexerRuby_metaObject(self: pointer, ): pointer {.importc: "QsciLexerRuby_metaObject".}
proc fcQsciLexerRuby_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerRuby_metacast".}
proc fcQsciLexerRuby_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerRuby_metacall".}
proc fcQsciLexerRuby_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerRuby_tr".}
proc fcQsciLexerRuby_language(self: pointer, ): cstring {.importc: "QsciLexerRuby_language".}
proc fcQsciLexerRuby_lexer(self: pointer, ): cstring {.importc: "QsciLexerRuby_lexer".}
proc fcQsciLexerRuby_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockEnd".}
proc fcQsciLexerRuby_blockStart(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockStart".}
proc fcQsciLexerRuby_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerRuby_blockStartKeyword".}
proc fcQsciLexerRuby_braceStyle(self: pointer, ): cint {.importc: "QsciLexerRuby_braceStyle".}
proc fcQsciLexerRuby_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultColor".}
proc fcQsciLexerRuby_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerRuby_defaultEolFill".}
proc fcQsciLexerRuby_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultFont".}
proc fcQsciLexerRuby_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_defaultPaper".}
proc fcQsciLexerRuby_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerRuby_keywords".}
proc fcQsciLexerRuby_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerRuby_description".}
proc fcQsciLexerRuby_refreshProperties(self: pointer, ): void {.importc: "QsciLexerRuby_refreshProperties".}
proc fcQsciLexerRuby_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerRuby_setFoldComments".}
proc fcQsciLexerRuby_foldComments(self: pointer, ): bool {.importc: "QsciLexerRuby_foldComments".}
proc fcQsciLexerRuby_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerRuby_setFoldCompact".}
proc fcQsciLexerRuby_foldCompact(self: pointer, ): bool {.importc: "QsciLexerRuby_foldCompact".}
proc fcQsciLexerRuby_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerRuby_tr2".}
proc fcQsciLexerRuby_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerRuby_tr3".}
proc fcQsciLexerRuby_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockEnd1".}
proc fcQsciLexerRuby_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockStart1".}
proc fcQsciLexerRuby_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_blockStartKeyword1".}
type cQsciLexerRubyVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerRubyVTable, self: ptr cQsciLexerRuby) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerRuby_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerRuby_virtualbase_metaObject".}
proc fcQsciLexerRuby_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerRuby_virtualbase_metacast".}
proc fcQsciLexerRuby_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerRuby_virtualbase_metacall".}
proc fcQsciLexerRuby_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerRuby_virtualbase_lexer".}
proc fcQsciLexerRuby_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_lexerId".}
proc fcQsciLexerRuby_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerRuby_virtualbase_autoCompletionFillups".}
proc fcQsciLexerRuby_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerRuby_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerRuby_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_virtualbase_blockEnd".}
proc fcQsciLexerRuby_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_blockLookback".}
proc fcQsciLexerRuby_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_virtualbase_blockStart".}
proc fcQsciLexerRuby_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerRuby_virtualbase_blockStartKeyword".}
proc fcQsciLexerRuby_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_braceStyle".}
proc fcQsciLexerRuby_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerRuby_virtualbase_caseSensitive".}
proc fcQsciLexerRuby_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_color".}
proc fcQsciLexerRuby_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerRuby_virtualbase_eolFill".}
proc fcQsciLexerRuby_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_font".}
proc fcQsciLexerRuby_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_indentationGuideView".}
proc fcQsciLexerRuby_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerRuby_virtualbase_keywords".}
proc fcQsciLexerRuby_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_defaultStyle".}
proc fcQsciLexerRuby_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_paper".}
proc fcQsciLexerRuby_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerRuby_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerRuby_virtualbase_defaultEolFill".}
proc fcQsciLexerRuby_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerRuby_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerRuby_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerRuby_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerRuby_virtualbase_setEditor".}
proc fcQsciLexerRuby_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerRuby_virtualbase_refreshProperties".}
proc fcQsciLexerRuby_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerRuby_virtualbase_styleBitsNeeded".}
proc fcQsciLexerRuby_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerRuby_virtualbase_wordCharacters".}
proc fcQsciLexerRuby_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerRuby_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerRuby_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerRuby_virtualbase_setColor".}
proc fcQsciLexerRuby_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerRuby_virtualbase_setEolFill".}
proc fcQsciLexerRuby_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerRuby_virtualbase_setFont".}
proc fcQsciLexerRuby_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerRuby_virtualbase_setPaper".}
proc fcQsciLexerRuby_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerRuby_virtualbase_readProperties".}
proc fcQsciLexerRuby_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerRuby_virtualbase_writeProperties".}
proc fcQsciLexerRuby_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerRuby_virtualbase_event".}
proc fcQsciLexerRuby_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerRuby_virtualbase_eventFilter".}
proc fcQsciLexerRuby_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerRuby_virtualbase_timerEvent".}
proc fcQsciLexerRuby_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerRuby_virtualbase_childEvent".}
proc fcQsciLexerRuby_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerRuby_virtualbase_customEvent".}
proc fcQsciLexerRuby_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerRuby_virtualbase_connectNotify".}
proc fcQsciLexerRuby_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerRuby_virtualbase_disconnectNotify".}
proc fcQsciLexerRuby_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerRuby_protectedbase_readProperties".}
proc fcQsciLexerRuby_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerRuby_protectedbase_writeProperties".}
proc fcQsciLexerRuby_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerRuby_protectedbase_sender".}
proc fcQsciLexerRuby_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerRuby_protectedbase_senderSignalIndex".}
proc fcQsciLexerRuby_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerRuby_protectedbase_receivers".}
proc fcQsciLexerRuby_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerRuby_protectedbase_isSignalConnected".}
proc fcQsciLexerRuby_new(vtbl: pointer, ): ptr cQsciLexerRuby {.importc: "QsciLexerRuby_new".}
proc fcQsciLexerRuby_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerRuby {.importc: "QsciLexerRuby_new2".}
proc fcQsciLexerRuby_staticMetaObject(): pointer {.importc: "QsciLexerRuby_staticMetaObject".}
proc fcQsciLexerRuby_delete(self: pointer) {.importc: "QsciLexerRuby_delete".}

proc metaObject*(self: gen_qscilexerruby_types.QsciLexerRuby, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerRuby_metaObject(self.h))

proc metacast*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cstring): pointer =
  fcQsciLexerRuby_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerRuby_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring): string =
  let v_ms = fcQsciLexerRuby_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_language(self.h))

proc lexer*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_lexer(self.h))

proc blockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =
  fcQsciLexerRuby_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerRuby_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerruby_types.QsciLexerRuby, set: cint): cstring =
  (fcQsciLexerRuby_keywords(self.h, set))

proc description*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): string =
  let v_ms = fcQsciLexerRuby_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, ): void =
  fcQsciLexerRuby_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexerruby_types.QsciLexerRuby, fold: bool): void =
  fcQsciLexerRuby_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =
  fcQsciLexerRuby_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexerruby_types.QsciLexerRuby, fold: bool): void =
  fcQsciLexerRuby_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =
  fcQsciLexerRuby_foldCompact(self.h)

proc tr*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerRuby_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerruby_types.QsciLexerRuby, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerRuby_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_blockStartKeyword1(self.h, style))

type QsciLexerRubymetaObjectProc* = proc(self: QsciLexerRuby): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerRubymetacastProc* = proc(self: QsciLexerRuby, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerRubymetacallProc* = proc(self: QsciLexerRuby, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerRubylanguageProc* = proc(self: QsciLexerRuby): cstring {.raises: [], gcsafe.}
type QsciLexerRubylexerProc* = proc(self: QsciLexerRuby): cstring {.raises: [], gcsafe.}
type QsciLexerRubylexerIdProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubyautoCompletionFillupsProc* = proc(self: QsciLexerRuby): cstring {.raises: [], gcsafe.}
type QsciLexerRubyautoCompletionWordSeparatorsProc* = proc(self: QsciLexerRuby): seq[string] {.raises: [], gcsafe.}
type QsciLexerRubyblockEndProc* = proc(self: QsciLexerRuby, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerRubyblockLookbackProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubyblockStartProc* = proc(self: QsciLexerRuby, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerRubyblockStartKeywordProc* = proc(self: QsciLexerRuby, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerRubybraceStyleProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubycaseSensitiveProc* = proc(self: QsciLexerRuby): bool {.raises: [], gcsafe.}
type QsciLexerRubycolorProc* = proc(self: QsciLexerRuby, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerRubyeolFillProc* = proc(self: QsciLexerRuby, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerRubyfontProc* = proc(self: QsciLexerRuby, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerRubyindentationGuideViewProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubykeywordsProc* = proc(self: QsciLexerRuby, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerRubydefaultStyleProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubydescriptionProc* = proc(self: QsciLexerRuby, style: cint): string {.raises: [], gcsafe.}
type QsciLexerRubypaperProc* = proc(self: QsciLexerRuby, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerRubydefaultColorProc* = proc(self: QsciLexerRuby, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerRubydefaultEolFillProc* = proc(self: QsciLexerRuby, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerRubydefaultFontProc* = proc(self: QsciLexerRuby, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerRubydefaultPaperProc* = proc(self: QsciLexerRuby, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerRubysetEditorProc* = proc(self: QsciLexerRuby, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerRubyrefreshPropertiesProc* = proc(self: QsciLexerRuby): void {.raises: [], gcsafe.}
type QsciLexerRubystyleBitsNeededProc* = proc(self: QsciLexerRuby): cint {.raises: [], gcsafe.}
type QsciLexerRubywordCharactersProc* = proc(self: QsciLexerRuby): cstring {.raises: [], gcsafe.}
type QsciLexerRubysetAutoIndentStyleProc* = proc(self: QsciLexerRuby, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerRubysetColorProc* = proc(self: QsciLexerRuby, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerRubysetEolFillProc* = proc(self: QsciLexerRuby, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerRubysetFontProc* = proc(self: QsciLexerRuby, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerRubysetPaperProc* = proc(self: QsciLexerRuby, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerRubyreadPropertiesProc* = proc(self: QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerRubywritePropertiesProc* = proc(self: QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerRubyeventProc* = proc(self: QsciLexerRuby, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerRubyeventFilterProc* = proc(self: QsciLexerRuby, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerRubytimerEventProc* = proc(self: QsciLexerRuby, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerRubychildEventProc* = proc(self: QsciLexerRuby, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerRubycustomEventProc* = proc(self: QsciLexerRuby, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerRubyconnectNotifyProc* = proc(self: QsciLexerRuby, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerRubydisconnectNotifyProc* = proc(self: QsciLexerRuby, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerRubyVTable* = object
  vtbl: cQsciLexerRubyVTable
  metaObject*: QsciLexerRubymetaObjectProc
  metacast*: QsciLexerRubymetacastProc
  metacall*: QsciLexerRubymetacallProc
  language*: QsciLexerRubylanguageProc
  lexer*: QsciLexerRubylexerProc
  lexerId*: QsciLexerRubylexerIdProc
  autoCompletionFillups*: QsciLexerRubyautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerRubyautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerRubyblockEndProc
  blockLookback*: QsciLexerRubyblockLookbackProc
  blockStart*: QsciLexerRubyblockStartProc
  blockStartKeyword*: QsciLexerRubyblockStartKeywordProc
  braceStyle*: QsciLexerRubybraceStyleProc
  caseSensitive*: QsciLexerRubycaseSensitiveProc
  color*: QsciLexerRubycolorProc
  eolFill*: QsciLexerRubyeolFillProc
  font*: QsciLexerRubyfontProc
  indentationGuideView*: QsciLexerRubyindentationGuideViewProc
  keywords*: QsciLexerRubykeywordsProc
  defaultStyle*: QsciLexerRubydefaultStyleProc
  description*: QsciLexerRubydescriptionProc
  paper*: QsciLexerRubypaperProc
  defaultColor*: QsciLexerRubydefaultColorProc
  defaultEolFill*: QsciLexerRubydefaultEolFillProc
  defaultFont*: QsciLexerRubydefaultFontProc
  defaultPaper*: QsciLexerRubydefaultPaperProc
  setEditor*: QsciLexerRubysetEditorProc
  refreshProperties*: QsciLexerRubyrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerRubystyleBitsNeededProc
  wordCharacters*: QsciLexerRubywordCharactersProc
  setAutoIndentStyle*: QsciLexerRubysetAutoIndentStyleProc
  setColor*: QsciLexerRubysetColorProc
  setEolFill*: QsciLexerRubysetEolFillProc
  setFont*: QsciLexerRubysetFontProc
  setPaper*: QsciLexerRubysetPaperProc
  readProperties*: QsciLexerRubyreadPropertiesProc
  writeProperties*: QsciLexerRubywritePropertiesProc
  event*: QsciLexerRubyeventProc
  eventFilter*: QsciLexerRubyeventFilterProc
  timerEvent*: QsciLexerRubytimerEventProc
  childEvent*: QsciLexerRubychildEventProc
  customEvent*: QsciLexerRubycustomEventProc
  connectNotify*: QsciLexerRubyconnectNotifyProc
  disconnectNotify*: QsciLexerRubydisconnectNotifyProc
proc QsciLexerRubymetaObject*(self: gen_qscilexerruby_types.QsciLexerRuby, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerRuby_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerRuby_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerRubymetacast*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cstring): pointer =
  fcQsciLexerRuby_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerRuby_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerRubymetacall*(self: gen_qscilexerruby_types.QsciLexerRuby, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerRuby_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerRuby_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerRuby_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerRubylexer*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerRuby_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerRubylexerId*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerRuby_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerRubyautoCompletionFillups*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerRuby_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerRubyautoCompletionWordSeparators*(self: gen_qscilexerruby_types.QsciLexerRuby, ): seq[string] =
  var v_ma = fcQsciLexerRuby_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerRuby_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerRubyblockEnd*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerRubyblockLookback*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerRuby_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerRubyblockStart*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerRubyblockStartKeyword*(self: gen_qscilexerruby_types.QsciLexerRuby, style: ptr cint): cstring =
  (fcQsciLexerRuby_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerRubybraceStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerRuby_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerRubycaseSensitive*(self: gen_qscilexerruby_types.QsciLexerRuby, ): bool =
  fcQsciLexerRuby_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerRuby_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerRubycolor*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerRubyeolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =
  fcQsciLexerRuby_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerRuby_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerRubyfont*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerRuby_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerRubyindentationGuideView*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerRuby_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerRubykeywords*(self: gen_qscilexerruby_types.QsciLexerRuby, set: cint): cstring =
  (fcQsciLexerRuby_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerRuby_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerRubydefaultStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerRuby_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerRuby_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerRubypaper*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerRubydefaultColor*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerRubydefaultEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): bool =
  fcQsciLexerRuby_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerRuby_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerRubydefaultFont*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerRuby_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerRubydefaultPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerRuby_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerRuby_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerRubysetEditor*(self: gen_qscilexerruby_types.QsciLexerRuby, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerRuby_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerRuby_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerRubyrefreshProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, ): void =
  fcQsciLexerRuby_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerRuby_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerRubystyleBitsNeeded*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerRuby_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerRubywordCharacters*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cstring =
  (fcQsciLexerRuby_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerRuby_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerRubysetAutoIndentStyle*(self: gen_qscilexerruby_types.QsciLexerRuby, autoindentstyle: cint): void =
  fcQsciLexerRuby_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerRuby_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerRubysetColor*(self: gen_qscilexerruby_types.QsciLexerRuby, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerRuby_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerRuby_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerRubysetEolFill*(self: gen_qscilexerruby_types.QsciLexerRuby, eoffill: bool, style: cint): void =
  fcQsciLexerRuby_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerRuby_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerRubysetFont*(self: gen_qscilexerruby_types.QsciLexerRuby, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerRuby_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerRuby_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerRubysetPaper*(self: gen_qscilexerruby_types.QsciLexerRuby, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerRuby_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerRuby_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerRubyreadProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerRuby_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerRuby_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerRubywriteProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerRuby_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerRuby_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerRubyevent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerRuby_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerRuby_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerRubyeventFilter*(self: gen_qscilexerruby_types.QsciLexerRuby, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerRuby_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerRuby_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerRubytimerEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerRuby_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerRuby_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerRubychildEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerRuby_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerRuby_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerRubycustomEvent*(self: gen_qscilexerruby_types.QsciLexerRuby, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerRuby_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerRuby_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerRubyconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerRuby_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerRuby_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerRubydisconnectNotify*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerRuby_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerRuby_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerRubyVTable](vtbl)
  let self = QsciLexerRuby(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerRuby_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerruby_types.QsciLexerRuby, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerRuby_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerruby_types.QsciLexerRuby, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerRuby_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerruby_types.QsciLexerRuby, ): cint =
  fcQsciLexerRuby_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: cstring): cint =
  fcQsciLexerRuby_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerruby_types.QsciLexerRuby, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerRuby_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerruby_types.QsciLexerRuby,
    vtbl: ref QsciLexerRubyVTable = nil): gen_qscilexerruby_types.QsciLexerRuby =
  let vtbl = if vtbl == nil: new QsciLexerRubyVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerRubyVTable, _: ptr cQsciLexerRuby) {.cdecl.} =
    let vtbl = cast[ref QsciLexerRubyVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerRuby_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerRuby_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerRuby_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerRuby_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerRuby_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerRuby_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerRuby_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerRuby_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerRuby_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerRuby_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerRuby_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerRuby_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerRuby_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerRuby_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerRuby_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerRuby_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerRuby_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerRuby_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerRuby_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerRuby_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerRuby_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerRuby_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerRuby_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerRuby_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerRuby_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerRuby_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerRuby_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerRuby_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerRuby_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerRuby_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerRuby_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerRuby_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerRuby_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerRuby_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerRuby_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerRuby_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerRuby_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerRuby_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerRuby_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerRuby_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerRuby_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerRuby_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerRuby_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerRuby_disconnectNotify
  gen_qscilexerruby_types.QsciLexerRuby(h: fcQsciLexerRuby_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerruby_types.QsciLexerRuby,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerRubyVTable = nil): gen_qscilexerruby_types.QsciLexerRuby =
  let vtbl = if vtbl == nil: new QsciLexerRubyVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerRubyVTable, _: ptr cQsciLexerRuby) {.cdecl.} =
    let vtbl = cast[ref QsciLexerRubyVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerRuby_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerRuby_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerRuby_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerRuby_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerRuby_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerRuby_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerRuby_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerRuby_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerRuby_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerRuby_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerRuby_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerRuby_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerRuby_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerRuby_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerRuby_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerRuby_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerRuby_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerRuby_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerRuby_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerRuby_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerRuby_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerRuby_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerRuby_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerRuby_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerRuby_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerRuby_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerRuby_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerRuby_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerRuby_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerRuby_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerRuby_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerRuby_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerRuby_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerRuby_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerRuby_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerRuby_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerRuby_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerRuby_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerRuby_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerRuby_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerRuby_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerRuby_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerRuby_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerRuby_disconnectNotify
  gen_qscilexerruby_types.QsciLexerRuby(h: fcQsciLexerRuby_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerruby_types.QsciLexerRuby): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerRuby_staticMetaObject())
proc delete*(self: gen_qscilexerruby_types.QsciLexerRuby) =
  fcQsciLexerRuby_delete(self.h)
