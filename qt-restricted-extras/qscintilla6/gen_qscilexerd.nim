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
{.compile("gen_qscilexerd.cpp", cflags).}


type QsciLexerDEnumEnum* = distinct cint
template Default*(_: type QsciLexerDEnumEnum): untyped = 0
template Comment*(_: type QsciLexerDEnumEnum): untyped = 1
template CommentLine*(_: type QsciLexerDEnumEnum): untyped = 2
template CommentDoc*(_: type QsciLexerDEnumEnum): untyped = 3
template CommentNested*(_: type QsciLexerDEnumEnum): untyped = 4
template Number*(_: type QsciLexerDEnumEnum): untyped = 5
template Keyword*(_: type QsciLexerDEnumEnum): untyped = 6
template KeywordSecondary*(_: type QsciLexerDEnumEnum): untyped = 7
template KeywordDoc*(_: type QsciLexerDEnumEnum): untyped = 8
template Typedefs*(_: type QsciLexerDEnumEnum): untyped = 9
template String*(_: type QsciLexerDEnumEnum): untyped = 10
template UnclosedString*(_: type QsciLexerDEnumEnum): untyped = 11
template Character*(_: type QsciLexerDEnumEnum): untyped = 12
template Operator*(_: type QsciLexerDEnumEnum): untyped = 13
template Identifier*(_: type QsciLexerDEnumEnum): untyped = 14
template CommentLineDoc*(_: type QsciLexerDEnumEnum): untyped = 15
template CommentDocKeyword*(_: type QsciLexerDEnumEnum): untyped = 16
template CommentDocKeywordError*(_: type QsciLexerDEnumEnum): untyped = 17
template BackquoteString*(_: type QsciLexerDEnumEnum): untyped = 18
template RawString*(_: type QsciLexerDEnumEnum): untyped = 19
template KeywordSet5*(_: type QsciLexerDEnumEnum): untyped = 20
template KeywordSet6*(_: type QsciLexerDEnumEnum): untyped = 21
template KeywordSet7*(_: type QsciLexerDEnumEnum): untyped = 22

import gen_qscilexerd_types
export gen_qscilexerd_types

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

type cQsciLexerD*{.exportc: "QsciLexerD", incompleteStruct.} = object

proc fcQsciLexerD_metaObject(self: pointer, ): pointer {.importc: "QsciLexerD_metaObject".}
proc fcQsciLexerD_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerD_metacast".}
proc fcQsciLexerD_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerD_metacall".}
proc fcQsciLexerD_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerD_tr".}
proc fcQsciLexerD_language(self: pointer, ): cstring {.importc: "QsciLexerD_language".}
proc fcQsciLexerD_lexer(self: pointer, ): cstring {.importc: "QsciLexerD_lexer".}
proc fcQsciLexerD_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerD_autoCompletionWordSeparators".}
proc fcQsciLexerD_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerD_blockEnd".}
proc fcQsciLexerD_blockStart(self: pointer, ): cstring {.importc: "QsciLexerD_blockStart".}
proc fcQsciLexerD_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerD_blockStartKeyword".}
proc fcQsciLexerD_braceStyle(self: pointer, ): cint {.importc: "QsciLexerD_braceStyle".}
proc fcQsciLexerD_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerD_wordCharacters".}
proc fcQsciLexerD_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultColor".}
proc fcQsciLexerD_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerD_defaultEolFill".}
proc fcQsciLexerD_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultFont".}
proc fcQsciLexerD_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultPaper".}
proc fcQsciLexerD_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerD_keywords".}
proc fcQsciLexerD_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerD_description".}
proc fcQsciLexerD_refreshProperties(self: pointer, ): void {.importc: "QsciLexerD_refreshProperties".}
proc fcQsciLexerD_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerD_foldAtElse".}
proc fcQsciLexerD_foldComments(self: pointer, ): bool {.importc: "QsciLexerD_foldComments".}
proc fcQsciLexerD_foldCompact(self: pointer, ): bool {.importc: "QsciLexerD_foldCompact".}
proc fcQsciLexerD_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldAtElse".}
proc fcQsciLexerD_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldComments".}
proc fcQsciLexerD_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldCompact".}
proc fcQsciLexerD_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerD_tr2".}
proc fcQsciLexerD_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerD_tr3".}
proc fcQsciLexerD_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockEnd1".}
proc fcQsciLexerD_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStart1".}
proc fcQsciLexerD_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStartKeyword1".}
type cQsciLexerDVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerDVTable, self: ptr cQsciLexerD) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerD_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerD_virtualbase_metaObject".}
proc fcQsciLexerD_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerD_virtualbase_metacast".}
proc fcQsciLexerD_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerD_virtualbase_metacall".}
proc fcQsciLexerD_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerD_virtualbase_setFoldAtElse".}
proc fcQsciLexerD_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerD_virtualbase_setFoldComments".}
proc fcQsciLexerD_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerD_virtualbase_setFoldCompact".}
proc fcQsciLexerD_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerD_virtualbase_lexer".}
proc fcQsciLexerD_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_lexerId".}
proc fcQsciLexerD_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerD_virtualbase_autoCompletionFillups".}
proc fcQsciLexerD_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerD_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerD_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_virtualbase_blockEnd".}
proc fcQsciLexerD_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_blockLookback".}
proc fcQsciLexerD_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_virtualbase_blockStart".}
proc fcQsciLexerD_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_virtualbase_blockStartKeyword".}
proc fcQsciLexerD_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_braceStyle".}
proc fcQsciLexerD_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerD_virtualbase_caseSensitive".}
proc fcQsciLexerD_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_color".}
proc fcQsciLexerD_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerD_virtualbase_eolFill".}
proc fcQsciLexerD_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_font".}
proc fcQsciLexerD_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_indentationGuideView".}
proc fcQsciLexerD_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerD_virtualbase_keywords".}
proc fcQsciLexerD_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_defaultStyle".}
proc fcQsciLexerD_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_paper".}
proc fcQsciLexerD_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerD_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerD_virtualbase_defaultEolFill".}
proc fcQsciLexerD_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerD_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerD_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerD_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerD_virtualbase_setEditor".}
proc fcQsciLexerD_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerD_virtualbase_refreshProperties".}
proc fcQsciLexerD_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerD_virtualbase_styleBitsNeeded".}
proc fcQsciLexerD_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerD_virtualbase_wordCharacters".}
proc fcQsciLexerD_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerD_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerD_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerD_virtualbase_setColor".}
proc fcQsciLexerD_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerD_virtualbase_setEolFill".}
proc fcQsciLexerD_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerD_virtualbase_setFont".}
proc fcQsciLexerD_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerD_virtualbase_setPaper".}
proc fcQsciLexerD_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerD_virtualbase_readProperties".}
proc fcQsciLexerD_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerD_virtualbase_writeProperties".}
proc fcQsciLexerD_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerD_virtualbase_event".}
proc fcQsciLexerD_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerD_virtualbase_eventFilter".}
proc fcQsciLexerD_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerD_virtualbase_timerEvent".}
proc fcQsciLexerD_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerD_virtualbase_childEvent".}
proc fcQsciLexerD_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerD_virtualbase_customEvent".}
proc fcQsciLexerD_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerD_virtualbase_connectNotify".}
proc fcQsciLexerD_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerD_virtualbase_disconnectNotify".}
proc fcQsciLexerD_new(vtbl: pointer, ): ptr cQsciLexerD {.importc: "QsciLexerD_new".}
proc fcQsciLexerD_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerD {.importc: "QsciLexerD_new2".}
proc fcQsciLexerD_staticMetaObject(): pointer {.importc: "QsciLexerD_staticMetaObject".}
proc fcQsciLexerD_delete(self: pointer) {.importc: "QsciLexerD_delete".}

proc metaObject*(self: gen_qscilexerd_types.QsciLexerD, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerD_metaObject(self.h))

proc metacast*(self: gen_qscilexerd_types.QsciLexerD, param1: cstring): pointer =
  fcQsciLexerD_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerd_types.QsciLexerD, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerD_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring): string =
  let v_ms = fcQsciLexerD_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_language(self.h))

proc lexer*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerd_types.QsciLexerD, ): seq[string] =
  var v_ma = fcQsciLexerD_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_blockEnd(self.h))

proc blockStart*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_blockStart(self.h))

proc blockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_blockStartKeyword(self.h))

proc braceStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_braceStyle(self.h)

proc wordCharacters*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =
  fcQsciLexerD_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerD_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerd_types.QsciLexerD, set: cint): cstring =
  (fcQsciLexerD_keywords(self.h, set))

proc description*(self: gen_qscilexerd_types.QsciLexerD, style: cint): string =
  let v_ms = fcQsciLexerD_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerd_types.QsciLexerD, ): void =
  fcQsciLexerD_refreshProperties(self.h)

proc foldAtElse*(self: gen_qscilexerd_types.QsciLexerD, ): bool =
  fcQsciLexerD_foldAtElse(self.h)

proc foldComments*(self: gen_qscilexerd_types.QsciLexerD, ): bool =
  fcQsciLexerD_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerd_types.QsciLexerD, ): bool =
  fcQsciLexerD_foldCompact(self.h)

proc setFoldAtElse*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_setFoldAtElse(self.h, fold)

proc setFoldComments*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerD_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerd_types.QsciLexerD, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerD_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_blockEnd1(self.h, style))

proc blockStart*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_blockStart1(self.h, style))

proc blockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_blockStartKeyword1(self.h, style))

type QsciLexerDmetaObjectProc* = proc(self: QsciLexerD): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerDmetacastProc* = proc(self: QsciLexerD, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerDmetacallProc* = proc(self: QsciLexerD, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerDsetFoldAtElseProc* = proc(self: QsciLexerD, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerDsetFoldCommentsProc* = proc(self: QsciLexerD, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerDsetFoldCompactProc* = proc(self: QsciLexerD, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerDlanguageProc* = proc(self: QsciLexerD): cstring {.raises: [], gcsafe.}
type QsciLexerDlexerProc* = proc(self: QsciLexerD): cstring {.raises: [], gcsafe.}
type QsciLexerDlexerIdProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDautoCompletionFillupsProc* = proc(self: QsciLexerD): cstring {.raises: [], gcsafe.}
type QsciLexerDautoCompletionWordSeparatorsProc* = proc(self: QsciLexerD): seq[string] {.raises: [], gcsafe.}
type QsciLexerDblockEndProc* = proc(self: QsciLexerD, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDblockLookbackProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDblockStartProc* = proc(self: QsciLexerD, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDblockStartKeywordProc* = proc(self: QsciLexerD, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDbraceStyleProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDcaseSensitiveProc* = proc(self: QsciLexerD): bool {.raises: [], gcsafe.}
type QsciLexerDcolorProc* = proc(self: QsciLexerD, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDeolFillProc* = proc(self: QsciLexerD, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerDfontProc* = proc(self: QsciLexerD, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerDindentationGuideViewProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDkeywordsProc* = proc(self: QsciLexerD, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerDdefaultStyleProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDdescriptionProc* = proc(self: QsciLexerD, style: cint): string {.raises: [], gcsafe.}
type QsciLexerDpaperProc* = proc(self: QsciLexerD, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDdefaultColorProc* = proc(self: QsciLexerD, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDdefaultEolFillProc* = proc(self: QsciLexerD, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerDdefaultFontProc* = proc(self: QsciLexerD, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerDdefaultPaperProc* = proc(self: QsciLexerD, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDsetEditorProc* = proc(self: QsciLexerD, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerDrefreshPropertiesProc* = proc(self: QsciLexerD): void {.raises: [], gcsafe.}
type QsciLexerDstyleBitsNeededProc* = proc(self: QsciLexerD): cint {.raises: [], gcsafe.}
type QsciLexerDwordCharactersProc* = proc(self: QsciLexerD): cstring {.raises: [], gcsafe.}
type QsciLexerDsetAutoIndentStyleProc* = proc(self: QsciLexerD, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerDsetColorProc* = proc(self: QsciLexerD, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDsetEolFillProc* = proc(self: QsciLexerD, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDsetFontProc* = proc(self: QsciLexerD, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDsetPaperProc* = proc(self: QsciLexerD, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDreadPropertiesProc* = proc(self: QsciLexerD, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerDwritePropertiesProc* = proc(self: QsciLexerD, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerDeventProc* = proc(self: QsciLexerD, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerDeventFilterProc* = proc(self: QsciLexerD, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerDtimerEventProc* = proc(self: QsciLexerD, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerDchildEventProc* = proc(self: QsciLexerD, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerDcustomEventProc* = proc(self: QsciLexerD, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerDconnectNotifyProc* = proc(self: QsciLexerD, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerDdisconnectNotifyProc* = proc(self: QsciLexerD, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerDVTable* = object
  vtbl: cQsciLexerDVTable
  metaObject*: QsciLexerDmetaObjectProc
  metacast*: QsciLexerDmetacastProc
  metacall*: QsciLexerDmetacallProc
  setFoldAtElse*: QsciLexerDsetFoldAtElseProc
  setFoldComments*: QsciLexerDsetFoldCommentsProc
  setFoldCompact*: QsciLexerDsetFoldCompactProc
  language*: QsciLexerDlanguageProc
  lexer*: QsciLexerDlexerProc
  lexerId*: QsciLexerDlexerIdProc
  autoCompletionFillups*: QsciLexerDautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerDautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerDblockEndProc
  blockLookback*: QsciLexerDblockLookbackProc
  blockStart*: QsciLexerDblockStartProc
  blockStartKeyword*: QsciLexerDblockStartKeywordProc
  braceStyle*: QsciLexerDbraceStyleProc
  caseSensitive*: QsciLexerDcaseSensitiveProc
  color*: QsciLexerDcolorProc
  eolFill*: QsciLexerDeolFillProc
  font*: QsciLexerDfontProc
  indentationGuideView*: QsciLexerDindentationGuideViewProc
  keywords*: QsciLexerDkeywordsProc
  defaultStyle*: QsciLexerDdefaultStyleProc
  description*: QsciLexerDdescriptionProc
  paper*: QsciLexerDpaperProc
  defaultColor*: QsciLexerDdefaultColorProc
  defaultEolFill*: QsciLexerDdefaultEolFillProc
  defaultFont*: QsciLexerDdefaultFontProc
  defaultPaper*: QsciLexerDdefaultPaperProc
  setEditor*: QsciLexerDsetEditorProc
  refreshProperties*: QsciLexerDrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerDstyleBitsNeededProc
  wordCharacters*: QsciLexerDwordCharactersProc
  setAutoIndentStyle*: QsciLexerDsetAutoIndentStyleProc
  setColor*: QsciLexerDsetColorProc
  setEolFill*: QsciLexerDsetEolFillProc
  setFont*: QsciLexerDsetFontProc
  setPaper*: QsciLexerDsetPaperProc
  readProperties*: QsciLexerDreadPropertiesProc
  writeProperties*: QsciLexerDwritePropertiesProc
  event*: QsciLexerDeventProc
  eventFilter*: QsciLexerDeventFilterProc
  timerEvent*: QsciLexerDtimerEventProc
  childEvent*: QsciLexerDchildEventProc
  customEvent*: QsciLexerDcustomEventProc
  connectNotify*: QsciLexerDconnectNotifyProc
  disconnectNotify*: QsciLexerDdisconnectNotifyProc
proc QsciLexerDmetaObject*(self: gen_qscilexerd_types.QsciLexerD, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerD_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerD_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerDmetacast*(self: gen_qscilexerd_types.QsciLexerD, param1: cstring): pointer =
  fcQsciLexerD_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerD_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerDmetacall*(self: gen_qscilexerd_types.QsciLexerD, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerD_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerD_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerDsetFoldAtElse*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerD_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerDsetFoldComments*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerD_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerDsetFoldCompact*(self: gen_qscilexerd_types.QsciLexerD, fold: bool): void =
  fcQsciLexerD_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerD_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerD_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerDlexer*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerD_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerDlexerId*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerD_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerDautoCompletionFillups*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerD_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerDautoCompletionWordSeparators*(self: gen_qscilexerd_types.QsciLexerD, ): seq[string] =
  var v_ma = fcQsciLexerD_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerD_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerDblockEnd*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerD_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerDblockLookback*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerD_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerDblockStart*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerD_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerDblockStartKeyword*(self: gen_qscilexerd_types.QsciLexerD, style: ptr cint): cstring =
  (fcQsciLexerD_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerD_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerDbraceStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerD_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerDcaseSensitive*(self: gen_qscilexerd_types.QsciLexerD, ): bool =
  fcQsciLexerD_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerD_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerDcolor*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerD_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerDeolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =
  fcQsciLexerD_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerD_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerDfont*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerD_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerD_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerDindentationGuideView*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerD_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerDkeywords*(self: gen_qscilexerd_types.QsciLexerD, set: cint): cstring =
  (fcQsciLexerD_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerD_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerDdefaultStyle*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerD_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerD_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerDpaper*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerD_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerDdefaultColor*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerD_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerDdefaultEolFill*(self: gen_qscilexerd_types.QsciLexerD, style: cint): bool =
  fcQsciLexerD_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerD_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerDdefaultFont*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerD_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerD_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerDdefaultPaper*(self: gen_qscilexerd_types.QsciLexerD, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerD_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerD_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerDsetEditor*(self: gen_qscilexerd_types.QsciLexerD, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerD_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerD_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerDrefreshProperties*(self: gen_qscilexerd_types.QsciLexerD, ): void =
  fcQsciLexerD_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerD_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerDstyleBitsNeeded*(self: gen_qscilexerd_types.QsciLexerD, ): cint =
  fcQsciLexerD_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerD_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerDwordCharacters*(self: gen_qscilexerd_types.QsciLexerD, ): cstring =
  (fcQsciLexerD_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerD_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerDsetAutoIndentStyle*(self: gen_qscilexerd_types.QsciLexerD, autoindentstyle: cint): void =
  fcQsciLexerD_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerD_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerDsetColor*(self: gen_qscilexerd_types.QsciLexerD, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerD_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerD_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerDsetEolFill*(self: gen_qscilexerd_types.QsciLexerD, eoffill: bool, style: cint): void =
  fcQsciLexerD_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerD_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerDsetFont*(self: gen_qscilexerd_types.QsciLexerD, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerD_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerD_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerDsetPaper*(self: gen_qscilexerd_types.QsciLexerD, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerD_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerD_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerDreadProperties*(self: gen_qscilexerd_types.QsciLexerD, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerD_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerD_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDwriteProperties*(self: gen_qscilexerd_types.QsciLexerD, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerD_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerD_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDevent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerD_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerD_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerDeventFilter*(self: gen_qscilexerd_types.QsciLexerD, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerD_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerD_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDtimerEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerD_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerD_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerDchildEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerD_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerD_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerDcustomEvent*(self: gen_qscilexerd_types.QsciLexerD, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerD_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerD_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerDconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerD_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerD_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerDdisconnectNotify*(self: gen_qscilexerd_types.QsciLexerD, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerD_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerD_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDVTable](vtbl)
  let self = QsciLexerD(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerd_types.QsciLexerD,
    vtbl: ref QsciLexerDVTable = nil): gen_qscilexerd_types.QsciLexerD =
  let vtbl = if vtbl == nil: new QsciLexerDVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerDVTable, _: ptr cQsciLexerD) {.cdecl.} =
    let vtbl = cast[ref QsciLexerDVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerD_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerD_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerD_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerD_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerD_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerD_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerD_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerD_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerD_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerD_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerD_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerD_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerD_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerD_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerD_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerD_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerD_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerD_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerD_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerD_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerD_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerD_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerD_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerD_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerD_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerD_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerD_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerD_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerD_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerD_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerD_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerD_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerD_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerD_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerD_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerD_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerD_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerD_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerD_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerD_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerD_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerD_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerD_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerD_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerD_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerD_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerD_disconnectNotify
  gen_qscilexerd_types.QsciLexerD(h: fcQsciLexerD_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerd_types.QsciLexerD,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerDVTable = nil): gen_qscilexerd_types.QsciLexerD =
  let vtbl = if vtbl == nil: new QsciLexerDVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerDVTable, _: ptr cQsciLexerD) {.cdecl.} =
    let vtbl = cast[ref QsciLexerDVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerD_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerD_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerD_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerD_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerD_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerD_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerD_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerD_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerD_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerD_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerD_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerD_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerD_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerD_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerD_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerD_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerD_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerD_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerD_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerD_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerD_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerD_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerD_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerD_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerD_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerD_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerD_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerD_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerD_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerD_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerD_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerD_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerD_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerD_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerD_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerD_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerD_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerD_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerD_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerD_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerD_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerD_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerD_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerD_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerD_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerD_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerD_disconnectNotify
  gen_qscilexerd_types.QsciLexerD(h: fcQsciLexerD_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerd_types.QsciLexerD): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerD_staticMetaObject())
proc delete*(self: gen_qscilexerd_types.QsciLexerD) =
  fcQsciLexerD_delete(self.h)
