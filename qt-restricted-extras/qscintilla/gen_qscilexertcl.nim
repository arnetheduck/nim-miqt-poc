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
{.compile("gen_qscilexertcl.cpp", cflags).}


type QsciLexerTCLEnumEnum* = distinct cint
template Default*(_: type QsciLexerTCLEnumEnum): untyped = 0
template Comment*(_: type QsciLexerTCLEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerTCLEnumEnum): untyped = 2
template Number*(_: type QsciLexerTCLEnumEnum): untyped = 3
template QuotedKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 4
template QuotedString*(_: type QsciLexerTCLEnumEnum): untyped = 5
template Operator*(_: type QsciLexerTCLEnumEnum): untyped = 6
template Identifier*(_: type QsciLexerTCLEnumEnum): untyped = 7
template Substitution*(_: type QsciLexerTCLEnumEnum): untyped = 8
template SubstitutionBrace*(_: type QsciLexerTCLEnumEnum): untyped = 9
template Modifier*(_: type QsciLexerTCLEnumEnum): untyped = 10
template ExpandKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 11
template TCLKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 12
template TkKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 13
template ITCLKeyword*(_: type QsciLexerTCLEnumEnum): untyped = 14
template TkCommand*(_: type QsciLexerTCLEnumEnum): untyped = 15
template KeywordSet6*(_: type QsciLexerTCLEnumEnum): untyped = 16
template KeywordSet7*(_: type QsciLexerTCLEnumEnum): untyped = 17
template KeywordSet8*(_: type QsciLexerTCLEnumEnum): untyped = 18
template KeywordSet9*(_: type QsciLexerTCLEnumEnum): untyped = 19
template CommentBox*(_: type QsciLexerTCLEnumEnum): untyped = 20
template CommentBlock*(_: type QsciLexerTCLEnumEnum): untyped = 21

import gen_qscilexertcl_types
export gen_qscilexertcl_types

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

type cQsciLexerTCL*{.exportc: "QsciLexerTCL", incompleteStruct.} = object

proc fcQsciLexerTCL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTCL_metaObject".}
proc fcQsciLexerTCL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTCL_metacast".}
proc fcQsciLexerTCL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTCL_metacall".}
proc fcQsciLexerTCL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr".}
proc fcQsciLexerTCL_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerTCL_trUtf8".}
proc fcQsciLexerTCL_language(self: pointer, ): cstring {.importc: "QsciLexerTCL_language".}
proc fcQsciLexerTCL_lexer(self: pointer, ): cstring {.importc: "QsciLexerTCL_lexer".}
proc fcQsciLexerTCL_braceStyle(self: pointer, ): cint {.importc: "QsciLexerTCL_braceStyle".}
proc fcQsciLexerTCL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultColor".}
proc fcQsciLexerTCL_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTCL_defaultEolFill".}
proc fcQsciLexerTCL_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultFont".}
proc fcQsciLexerTCL_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_defaultPaper".}
proc fcQsciLexerTCL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTCL_keywords".}
proc fcQsciLexerTCL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTCL_description".}
proc fcQsciLexerTCL_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTCL_refreshProperties".}
proc fcQsciLexerTCL_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTCL_setFoldComments".}
proc fcQsciLexerTCL_foldComments(self: pointer, ): bool {.importc: "QsciLexerTCL_foldComments".}
proc fcQsciLexerTCL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTCL_tr2".}
proc fcQsciLexerTCL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTCL_tr3".}
proc fcQsciLexerTCL_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTCL_trUtf82".}
proc fcQsciLexerTCL_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTCL_trUtf83".}
type cQsciLexerTCLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerTCLVTable, self: ptr cQsciLexerTCL) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerTCL_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTCL_virtualbase_metaObject".}
proc fcQsciLexerTCL_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTCL_virtualbase_metacast".}
proc fcQsciLexerTCL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTCL_virtualbase_metacall".}
proc fcQsciLexerTCL_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerTCL_virtualbase_lexer".}
proc fcQsciLexerTCL_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_lexerId".}
proc fcQsciLexerTCL_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerTCL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerTCL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTCL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTCL_virtualbase_blockEnd".}
proc fcQsciLexerTCL_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_blockLookback".}
proc fcQsciLexerTCL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTCL_virtualbase_blockStart".}
proc fcQsciLexerTCL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTCL_virtualbase_blockStartKeyword".}
proc fcQsciLexerTCL_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_braceStyle".}
proc fcQsciLexerTCL_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerTCL_virtualbase_caseSensitive".}
proc fcQsciLexerTCL_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_color".}
proc fcQsciLexerTCL_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTCL_virtualbase_eolFill".}
proc fcQsciLexerTCL_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_font".}
proc fcQsciLexerTCL_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_indentationGuideView".}
proc fcQsciLexerTCL_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTCL_virtualbase_keywords".}
proc fcQsciLexerTCL_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_defaultStyle".}
proc fcQsciLexerTCL_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_paper".}
proc fcQsciLexerTCL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTCL_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTCL_virtualbase_defaultEolFill".}
proc fcQsciLexerTCL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTCL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTCL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTCL_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerTCL_virtualbase_setEditor".}
proc fcQsciLexerTCL_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTCL_virtualbase_refreshProperties".}
proc fcQsciLexerTCL_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerTCL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTCL_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerTCL_virtualbase_wordCharacters".}
proc fcQsciLexerTCL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerTCL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTCL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerTCL_virtualbase_setColor".}
proc fcQsciLexerTCL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerTCL_virtualbase_setEolFill".}
proc fcQsciLexerTCL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerTCL_virtualbase_setFont".}
proc fcQsciLexerTCL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerTCL_virtualbase_setPaper".}
proc fcQsciLexerTCL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTCL_virtualbase_readProperties".}
proc fcQsciLexerTCL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTCL_virtualbase_writeProperties".}
proc fcQsciLexerTCL_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerTCL_virtualbase_event".}
proc fcQsciLexerTCL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerTCL_virtualbase_eventFilter".}
proc fcQsciLexerTCL_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTCL_virtualbase_timerEvent".}
proc fcQsciLexerTCL_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTCL_virtualbase_childEvent".}
proc fcQsciLexerTCL_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTCL_virtualbase_customEvent".}
proc fcQsciLexerTCL_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerTCL_virtualbase_connectNotify".}
proc fcQsciLexerTCL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerTCL_virtualbase_disconnectNotify".}
proc fcQsciLexerTCL_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTCL_protectedbase_readProperties".}
proc fcQsciLexerTCL_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTCL_protectedbase_writeProperties".}
proc fcQsciLexerTCL_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerTCL_protectedbase_sender".}
proc fcQsciLexerTCL_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerTCL_protectedbase_senderSignalIndex".}
proc fcQsciLexerTCL_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerTCL_protectedbase_receivers".}
proc fcQsciLexerTCL_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerTCL_protectedbase_isSignalConnected".}
proc fcQsciLexerTCL_new(vtbl: pointer, ): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new".}
proc fcQsciLexerTCL_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerTCL {.importc: "QsciLexerTCL_new2".}
proc fcQsciLexerTCL_staticMetaObject(): pointer {.importc: "QsciLexerTCL_staticMetaObject".}
proc fcQsciLexerTCL_delete(self: pointer) {.importc: "QsciLexerTCL_delete".}

proc metaObject*(self: gen_qscilexertcl_types.QsciLexerTCL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTCL_metaObject(self.h))

proc metacast*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cstring): pointer =
  fcQsciLexerTCL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerTCL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring): string =
  let v_ms = fcQsciLexerTCL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring): string =
  let v_ms = fcQsciLexerTCL_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =
  (fcQsciLexerTCL_language(self.h))

proc lexer*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =
  (fcQsciLexerTCL_lexer(self.h))

proc braceStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =
  fcQsciLexerTCL_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerTCL_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexertcl_types.QsciLexerTCL, set: cint): cstring =
  (fcQsciLexerTCL_keywords(self.h, set))

proc description*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): string =
  let v_ms = fcQsciLexerTCL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, ): void =
  fcQsciLexerTCL_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexertcl_types.QsciLexerTCL, fold: bool): void =
  fcQsciLexerTCL_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexertcl_types.QsciLexerTCL, ): bool =
  fcQsciLexerTCL_foldComments(self.h)

proc tr*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerTCL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerTCL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerTCL_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexertcl_types.QsciLexerTCL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerTCL_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerTCLmetaObjectProc* = proc(self: QsciLexerTCL): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerTCLmetacastProc* = proc(self: QsciLexerTCL, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerTCLmetacallProc* = proc(self: QsciLexerTCL, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerTCLlanguageProc* = proc(self: QsciLexerTCL): cstring {.raises: [], gcsafe.}
type QsciLexerTCLlexerProc* = proc(self: QsciLexerTCL): cstring {.raises: [], gcsafe.}
type QsciLexerTCLlexerIdProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLautoCompletionFillupsProc* = proc(self: QsciLexerTCL): cstring {.raises: [], gcsafe.}
type QsciLexerTCLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerTCL): seq[string] {.raises: [], gcsafe.}
type QsciLexerTCLblockEndProc* = proc(self: QsciLexerTCL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTCLblockLookbackProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLblockStartProc* = proc(self: QsciLexerTCL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTCLblockStartKeywordProc* = proc(self: QsciLexerTCL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTCLbraceStyleProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLcaseSensitiveProc* = proc(self: QsciLexerTCL): bool {.raises: [], gcsafe.}
type QsciLexerTCLcolorProc* = proc(self: QsciLexerTCL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTCLeolFillProc* = proc(self: QsciLexerTCL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerTCLfontProc* = proc(self: QsciLexerTCL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerTCLindentationGuideViewProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLkeywordsProc* = proc(self: QsciLexerTCL, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerTCLdefaultStyleProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLdescriptionProc* = proc(self: QsciLexerTCL, style: cint): string {.raises: [], gcsafe.}
type QsciLexerTCLpaperProc* = proc(self: QsciLexerTCL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTCLdefaultColorProc* = proc(self: QsciLexerTCL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTCLdefaultEolFillProc* = proc(self: QsciLexerTCL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerTCLdefaultFontProc* = proc(self: QsciLexerTCL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerTCLdefaultPaperProc* = proc(self: QsciLexerTCL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTCLsetEditorProc* = proc(self: QsciLexerTCL, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerTCLrefreshPropertiesProc* = proc(self: QsciLexerTCL): void {.raises: [], gcsafe.}
type QsciLexerTCLstyleBitsNeededProc* = proc(self: QsciLexerTCL): cint {.raises: [], gcsafe.}
type QsciLexerTCLwordCharactersProc* = proc(self: QsciLexerTCL): cstring {.raises: [], gcsafe.}
type QsciLexerTCLsetAutoIndentStyleProc* = proc(self: QsciLexerTCL, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerTCLsetColorProc* = proc(self: QsciLexerTCL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTCLsetEolFillProc* = proc(self: QsciLexerTCL, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTCLsetFontProc* = proc(self: QsciLexerTCL, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTCLsetPaperProc* = proc(self: QsciLexerTCL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTCLreadPropertiesProc* = proc(self: QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerTCLwritePropertiesProc* = proc(self: QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerTCLeventProc* = proc(self: QsciLexerTCL, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerTCLeventFilterProc* = proc(self: QsciLexerTCL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerTCLtimerEventProc* = proc(self: QsciLexerTCL, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerTCLchildEventProc* = proc(self: QsciLexerTCL, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerTCLcustomEventProc* = proc(self: QsciLexerTCL, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerTCLconnectNotifyProc* = proc(self: QsciLexerTCL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerTCLdisconnectNotifyProc* = proc(self: QsciLexerTCL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerTCLVTable* = object
  vtbl: cQsciLexerTCLVTable
  metaObject*: QsciLexerTCLmetaObjectProc
  metacast*: QsciLexerTCLmetacastProc
  metacall*: QsciLexerTCLmetacallProc
  language*: QsciLexerTCLlanguageProc
  lexer*: QsciLexerTCLlexerProc
  lexerId*: QsciLexerTCLlexerIdProc
  autoCompletionFillups*: QsciLexerTCLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerTCLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerTCLblockEndProc
  blockLookback*: QsciLexerTCLblockLookbackProc
  blockStart*: QsciLexerTCLblockStartProc
  blockStartKeyword*: QsciLexerTCLblockStartKeywordProc
  braceStyle*: QsciLexerTCLbraceStyleProc
  caseSensitive*: QsciLexerTCLcaseSensitiveProc
  color*: QsciLexerTCLcolorProc
  eolFill*: QsciLexerTCLeolFillProc
  font*: QsciLexerTCLfontProc
  indentationGuideView*: QsciLexerTCLindentationGuideViewProc
  keywords*: QsciLexerTCLkeywordsProc
  defaultStyle*: QsciLexerTCLdefaultStyleProc
  description*: QsciLexerTCLdescriptionProc
  paper*: QsciLexerTCLpaperProc
  defaultColor*: QsciLexerTCLdefaultColorProc
  defaultEolFill*: QsciLexerTCLdefaultEolFillProc
  defaultFont*: QsciLexerTCLdefaultFontProc
  defaultPaper*: QsciLexerTCLdefaultPaperProc
  setEditor*: QsciLexerTCLsetEditorProc
  refreshProperties*: QsciLexerTCLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerTCLstyleBitsNeededProc
  wordCharacters*: QsciLexerTCLwordCharactersProc
  setAutoIndentStyle*: QsciLexerTCLsetAutoIndentStyleProc
  setColor*: QsciLexerTCLsetColorProc
  setEolFill*: QsciLexerTCLsetEolFillProc
  setFont*: QsciLexerTCLsetFontProc
  setPaper*: QsciLexerTCLsetPaperProc
  readProperties*: QsciLexerTCLreadPropertiesProc
  writeProperties*: QsciLexerTCLwritePropertiesProc
  event*: QsciLexerTCLeventProc
  eventFilter*: QsciLexerTCLeventFilterProc
  timerEvent*: QsciLexerTCLtimerEventProc
  childEvent*: QsciLexerTCLchildEventProc
  customEvent*: QsciLexerTCLcustomEventProc
  connectNotify*: QsciLexerTCLconnectNotifyProc
  disconnectNotify*: QsciLexerTCLdisconnectNotifyProc
proc QsciLexerTCLmetaObject*(self: gen_qscilexertcl_types.QsciLexerTCL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTCL_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerTCL_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerTCLmetacast*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cstring): pointer =
  fcQsciLexerTCL_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerTCL_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerTCLmetacall*(self: gen_qscilexertcl_types.QsciLexerTCL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerTCL_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerTCL_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerTCL_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerTCLlexer*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =
  (fcQsciLexerTCL_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerTCL_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerTCLlexerId*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerTCL_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerTCLautoCompletionFillups*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =
  (fcQsciLexerTCL_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerTCL_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerTCLautoCompletionWordSeparators*(self: gen_qscilexertcl_types.QsciLexerTCL, ): seq[string] =
  var v_ma = fcQsciLexerTCL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerTCL_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerTCLblockEnd*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =
  (fcQsciLexerTCL_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerTCLblockLookback*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerTCL_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerTCLblockStart*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =
  (fcQsciLexerTCL_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerTCLblockStartKeyword*(self: gen_qscilexertcl_types.QsciLexerTCL, style: ptr cint): cstring =
  (fcQsciLexerTCL_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerTCLbraceStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerTCL_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerTCLcaseSensitive*(self: gen_qscilexertcl_types.QsciLexerTCL, ): bool =
  fcQsciLexerTCL_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerTCL_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerTCLcolor*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLeolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =
  fcQsciLexerTCL_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerTCL_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerTCLfont*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerTCL_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLindentationGuideView*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerTCL_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerTCLkeywords*(self: gen_qscilexertcl_types.QsciLexerTCL, set: cint): cstring =
  (fcQsciLexerTCL_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerTCL_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerTCLdefaultStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerTCL_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerTCL_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerTCLpaper*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLdefaultColor*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLdefaultEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): bool =
  fcQsciLexerTCL_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerTCL_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerTCLdefaultFont*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerTCL_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLdefaultPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTCL_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTCL_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerTCLsetEditor*(self: gen_qscilexertcl_types.QsciLexerTCL, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerTCL_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerTCL_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerTCLrefreshProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, ): void =
  fcQsciLexerTCL_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerTCL_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerTCLstyleBitsNeeded*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerTCL_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerTCLwordCharacters*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cstring =
  (fcQsciLexerTCL_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerTCL_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerTCLsetAutoIndentStyle*(self: gen_qscilexertcl_types.QsciLexerTCL, autoindentstyle: cint): void =
  fcQsciLexerTCL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerTCL_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerTCLsetColor*(self: gen_qscilexertcl_types.QsciLexerTCL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerTCL_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerTCL_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerTCLsetEolFill*(self: gen_qscilexertcl_types.QsciLexerTCL, eoffill: bool, style: cint): void =
  fcQsciLexerTCL_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerTCL_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerTCLsetFont*(self: gen_qscilexertcl_types.QsciLexerTCL, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerTCL_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerTCL_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerTCLsetPaper*(self: gen_qscilexertcl_types.QsciLexerTCL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerTCL_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerTCL_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerTCLreadProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTCL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerTCL_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTCLwriteProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTCL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerTCL_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTCLevent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerTCL_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTCL_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerTCLeventFilter*(self: gen_qscilexertcl_types.QsciLexerTCL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerTCL_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerTCL_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTCLtimerEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerTCL_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTCL_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerTCLchildEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerTCL_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTCL_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerTCLcustomEvent*(self: gen_qscilexertcl_types.QsciLexerTCL, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerTCL_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTCL_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerTCLconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerTCL_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerTCL_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerTCLdisconnectNotify*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerTCL_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerTCL_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTCLVTable](vtbl)
  let self = QsciLexerTCL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTCL_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexertcl_types.QsciLexerTCL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTCL_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexertcl_types.QsciLexerTCL, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerTCL_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexertcl_types.QsciLexerTCL, ): cint =
  fcQsciLexerTCL_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: cstring): cint =
  fcQsciLexerTCL_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexertcl_types.QsciLexerTCL, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerTCL_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexertcl_types.QsciLexerTCL,
    vtbl: ref QsciLexerTCLVTable = nil): gen_qscilexertcl_types.QsciLexerTCL =
  let vtbl = if vtbl == nil: new QsciLexerTCLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerTCLVTable, _: ptr cQsciLexerTCL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerTCLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerTCL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerTCL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerTCL_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerTCL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerTCL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerTCL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerTCL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerTCL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerTCL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerTCL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerTCL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerTCL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerTCL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerTCL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerTCL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerTCL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerTCL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerTCL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerTCL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerTCL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerTCL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerTCL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerTCL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerTCL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerTCL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerTCL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerTCL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerTCL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerTCL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerTCL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerTCL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerTCL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerTCL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerTCL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerTCL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerTCL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerTCL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerTCL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerTCL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerTCL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerTCL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerTCL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerTCL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerTCL_disconnectNotify
  gen_qscilexertcl_types.QsciLexerTCL(h: fcQsciLexerTCL_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexertcl_types.QsciLexerTCL,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerTCLVTable = nil): gen_qscilexertcl_types.QsciLexerTCL =
  let vtbl = if vtbl == nil: new QsciLexerTCLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerTCLVTable, _: ptr cQsciLexerTCL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerTCLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerTCL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerTCL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerTCL_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerTCL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerTCL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerTCL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerTCL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerTCL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerTCL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerTCL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerTCL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerTCL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerTCL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerTCL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerTCL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerTCL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerTCL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerTCL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerTCL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerTCL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerTCL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerTCL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerTCL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerTCL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerTCL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerTCL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerTCL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerTCL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerTCL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerTCL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerTCL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerTCL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerTCL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerTCL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerTCL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerTCL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerTCL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerTCL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerTCL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerTCL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerTCL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerTCL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerTCL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerTCL_disconnectNotify
  gen_qscilexertcl_types.QsciLexerTCL(h: fcQsciLexerTCL_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexertcl_types.QsciLexerTCL): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTCL_staticMetaObject())
proc delete*(self: gen_qscilexertcl_types.QsciLexerTCL) =
  fcQsciLexerTCL_delete(self.h)
