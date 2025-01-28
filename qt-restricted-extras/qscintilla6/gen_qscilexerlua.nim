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
{.compile("gen_qscilexerlua.cpp", cflags).}


type QsciLexerLuaEnumEnum* = distinct cint
template Default*(_: type QsciLexerLuaEnumEnum): untyped = 0
template Comment*(_: type QsciLexerLuaEnumEnum): untyped = 1
template LineComment*(_: type QsciLexerLuaEnumEnum): untyped = 2
template Number*(_: type QsciLexerLuaEnumEnum): untyped = 4
template Keyword*(_: type QsciLexerLuaEnumEnum): untyped = 5
template String*(_: type QsciLexerLuaEnumEnum): untyped = 6
template Character*(_: type QsciLexerLuaEnumEnum): untyped = 7
template LiteralString*(_: type QsciLexerLuaEnumEnum): untyped = 8
template Preprocessor*(_: type QsciLexerLuaEnumEnum): untyped = 9
template Operator*(_: type QsciLexerLuaEnumEnum): untyped = 10
template Identifier*(_: type QsciLexerLuaEnumEnum): untyped = 11
template UnclosedString*(_: type QsciLexerLuaEnumEnum): untyped = 12
template BasicFunctions*(_: type QsciLexerLuaEnumEnum): untyped = 13
template StringTableMathsFunctions*(_: type QsciLexerLuaEnumEnum): untyped = 14
template CoroutinesIOSystemFacilities*(_: type QsciLexerLuaEnumEnum): untyped = 15
template KeywordSet5*(_: type QsciLexerLuaEnumEnum): untyped = 16
template KeywordSet6*(_: type QsciLexerLuaEnumEnum): untyped = 17
template KeywordSet7*(_: type QsciLexerLuaEnumEnum): untyped = 18
template KeywordSet8*(_: type QsciLexerLuaEnumEnum): untyped = 19
template Label*(_: type QsciLexerLuaEnumEnum): untyped = 20

import gen_qscilexerlua_types
export gen_qscilexerlua_types

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

type cQsciLexerLua*{.exportc: "QsciLexerLua", incompleteStruct.} = object

proc fcQsciLexerLua_metaObject(self: pointer, ): pointer {.importc: "QsciLexerLua_metaObject".}
proc fcQsciLexerLua_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerLua_metacast".}
proc fcQsciLexerLua_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerLua_metacall".}
proc fcQsciLexerLua_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerLua_tr".}
proc fcQsciLexerLua_language(self: pointer, ): cstring {.importc: "QsciLexerLua_language".}
proc fcQsciLexerLua_lexer(self: pointer, ): cstring {.importc: "QsciLexerLua_lexer".}
proc fcQsciLexerLua_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerLua_autoCompletionWordSeparators".}
proc fcQsciLexerLua_blockStart(self: pointer, ): cstring {.importc: "QsciLexerLua_blockStart".}
proc fcQsciLexerLua_braceStyle(self: pointer, ): cint {.importc: "QsciLexerLua_braceStyle".}
proc fcQsciLexerLua_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultColor".}
proc fcQsciLexerLua_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerLua_defaultEolFill".}
proc fcQsciLexerLua_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultFont".}
proc fcQsciLexerLua_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_defaultPaper".}
proc fcQsciLexerLua_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerLua_keywords".}
proc fcQsciLexerLua_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerLua_description".}
proc fcQsciLexerLua_refreshProperties(self: pointer, ): void {.importc: "QsciLexerLua_refreshProperties".}
proc fcQsciLexerLua_foldCompact(self: pointer, ): bool {.importc: "QsciLexerLua_foldCompact".}
proc fcQsciLexerLua_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerLua_setFoldCompact".}
proc fcQsciLexerLua_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerLua_tr2".}
proc fcQsciLexerLua_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerLua_tr3".}
proc fcQsciLexerLua_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_blockStart1".}
type cQsciLexerLuaVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerLuaVTable, self: ptr cQsciLexerLua) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerLua_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerLua_virtualbase_metaObject".}
proc fcQsciLexerLua_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerLua_virtualbase_metacast".}
proc fcQsciLexerLua_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerLua_virtualbase_metacall".}
proc fcQsciLexerLua_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerLua_virtualbase_setFoldCompact".}
proc fcQsciLexerLua_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerLua_virtualbase_lexer".}
proc fcQsciLexerLua_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_lexerId".}
proc fcQsciLexerLua_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerLua_virtualbase_autoCompletionFillups".}
proc fcQsciLexerLua_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerLua_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerLua_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_virtualbase_blockEnd".}
proc fcQsciLexerLua_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_blockLookback".}
proc fcQsciLexerLua_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_virtualbase_blockStart".}
proc fcQsciLexerLua_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerLua_virtualbase_blockStartKeyword".}
proc fcQsciLexerLua_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_braceStyle".}
proc fcQsciLexerLua_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerLua_virtualbase_caseSensitive".}
proc fcQsciLexerLua_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_color".}
proc fcQsciLexerLua_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerLua_virtualbase_eolFill".}
proc fcQsciLexerLua_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_font".}
proc fcQsciLexerLua_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_indentationGuideView".}
proc fcQsciLexerLua_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerLua_virtualbase_keywords".}
proc fcQsciLexerLua_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_defaultStyle".}
proc fcQsciLexerLua_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_paper".}
proc fcQsciLexerLua_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerLua_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerLua_virtualbase_defaultEolFill".}
proc fcQsciLexerLua_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerLua_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerLua_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerLua_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerLua_virtualbase_setEditor".}
proc fcQsciLexerLua_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerLua_virtualbase_refreshProperties".}
proc fcQsciLexerLua_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerLua_virtualbase_styleBitsNeeded".}
proc fcQsciLexerLua_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerLua_virtualbase_wordCharacters".}
proc fcQsciLexerLua_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerLua_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerLua_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerLua_virtualbase_setColor".}
proc fcQsciLexerLua_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerLua_virtualbase_setEolFill".}
proc fcQsciLexerLua_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerLua_virtualbase_setFont".}
proc fcQsciLexerLua_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerLua_virtualbase_setPaper".}
proc fcQsciLexerLua_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerLua_virtualbase_readProperties".}
proc fcQsciLexerLua_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerLua_virtualbase_writeProperties".}
proc fcQsciLexerLua_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerLua_virtualbase_event".}
proc fcQsciLexerLua_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerLua_virtualbase_eventFilter".}
proc fcQsciLexerLua_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerLua_virtualbase_timerEvent".}
proc fcQsciLexerLua_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerLua_virtualbase_childEvent".}
proc fcQsciLexerLua_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerLua_virtualbase_customEvent".}
proc fcQsciLexerLua_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerLua_virtualbase_connectNotify".}
proc fcQsciLexerLua_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerLua_virtualbase_disconnectNotify".}
proc fcQsciLexerLua_new(vtbl: pointer, ): ptr cQsciLexerLua {.importc: "QsciLexerLua_new".}
proc fcQsciLexerLua_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerLua {.importc: "QsciLexerLua_new2".}
proc fcQsciLexerLua_staticMetaObject(): pointer {.importc: "QsciLexerLua_staticMetaObject".}
proc fcQsciLexerLua_delete(self: pointer) {.importc: "QsciLexerLua_delete".}

proc metaObject*(self: gen_qscilexerlua_types.QsciLexerLua, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerLua_metaObject(self.h))

proc metacast*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cstring): pointer =
  fcQsciLexerLua_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerLua_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring): string =
  let v_ms = fcQsciLexerLua_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_language(self.h))

proc lexer*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_lexer(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexerlua_types.QsciLexerLua, ): seq[string] =
  var v_ma = fcQsciLexerLua_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockStart*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_blockStart(self.h))

proc braceStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fcQsciLexerLua_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerLua_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerlua_types.QsciLexerLua, set: cint): cstring =
  (fcQsciLexerLua_keywords(self.h, set))

proc description*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): string =
  let v_ms = fcQsciLexerLua_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerlua_types.QsciLexerLua, ): void =
  fcQsciLexerLua_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, ): bool =
  fcQsciLexerLua_foldCompact(self.h)

proc setFoldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, fold: bool): void =
  fcQsciLexerLua_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerLua_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerlua_types.QsciLexerLua, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerLua_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockStart*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fcQsciLexerLua_blockStart1(self.h, style))

type QsciLexerLuametaObjectProc* = proc(self: QsciLexerLua): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerLuametacastProc* = proc(self: QsciLexerLua, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerLuametacallProc* = proc(self: QsciLexerLua, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerLuasetFoldCompactProc* = proc(self: QsciLexerLua, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerLualanguageProc* = proc(self: QsciLexerLua): cstring {.raises: [], gcsafe.}
type QsciLexerLualexerProc* = proc(self: QsciLexerLua): cstring {.raises: [], gcsafe.}
type QsciLexerLualexerIdProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuaautoCompletionFillupsProc* = proc(self: QsciLexerLua): cstring {.raises: [], gcsafe.}
type QsciLexerLuaautoCompletionWordSeparatorsProc* = proc(self: QsciLexerLua): seq[string] {.raises: [], gcsafe.}
type QsciLexerLuablockEndProc* = proc(self: QsciLexerLua, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerLuablockLookbackProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuablockStartProc* = proc(self: QsciLexerLua, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerLuablockStartKeywordProc* = proc(self: QsciLexerLua, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerLuabraceStyleProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuacaseSensitiveProc* = proc(self: QsciLexerLua): bool {.raises: [], gcsafe.}
type QsciLexerLuacolorProc* = proc(self: QsciLexerLua, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerLuaeolFillProc* = proc(self: QsciLexerLua, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerLuafontProc* = proc(self: QsciLexerLua, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerLuaindentationGuideViewProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuakeywordsProc* = proc(self: QsciLexerLua, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerLuadefaultStyleProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuadescriptionProc* = proc(self: QsciLexerLua, style: cint): string {.raises: [], gcsafe.}
type QsciLexerLuapaperProc* = proc(self: QsciLexerLua, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerLuadefaultColorProc* = proc(self: QsciLexerLua, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerLuadefaultEolFillProc* = proc(self: QsciLexerLua, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerLuadefaultFontProc* = proc(self: QsciLexerLua, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerLuadefaultPaperProc* = proc(self: QsciLexerLua, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerLuasetEditorProc* = proc(self: QsciLexerLua, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerLuarefreshPropertiesProc* = proc(self: QsciLexerLua): void {.raises: [], gcsafe.}
type QsciLexerLuastyleBitsNeededProc* = proc(self: QsciLexerLua): cint {.raises: [], gcsafe.}
type QsciLexerLuawordCharactersProc* = proc(self: QsciLexerLua): cstring {.raises: [], gcsafe.}
type QsciLexerLuasetAutoIndentStyleProc* = proc(self: QsciLexerLua, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerLuasetColorProc* = proc(self: QsciLexerLua, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerLuasetEolFillProc* = proc(self: QsciLexerLua, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerLuasetFontProc* = proc(self: QsciLexerLua, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerLuasetPaperProc* = proc(self: QsciLexerLua, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerLuareadPropertiesProc* = proc(self: QsciLexerLua, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerLuawritePropertiesProc* = proc(self: QsciLexerLua, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerLuaeventProc* = proc(self: QsciLexerLua, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerLuaeventFilterProc* = proc(self: QsciLexerLua, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerLuatimerEventProc* = proc(self: QsciLexerLua, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerLuachildEventProc* = proc(self: QsciLexerLua, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerLuacustomEventProc* = proc(self: QsciLexerLua, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerLuaconnectNotifyProc* = proc(self: QsciLexerLua, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerLuadisconnectNotifyProc* = proc(self: QsciLexerLua, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerLuaVTable* = object
  vtbl: cQsciLexerLuaVTable
  metaObject*: QsciLexerLuametaObjectProc
  metacast*: QsciLexerLuametacastProc
  metacall*: QsciLexerLuametacallProc
  setFoldCompact*: QsciLexerLuasetFoldCompactProc
  language*: QsciLexerLualanguageProc
  lexer*: QsciLexerLualexerProc
  lexerId*: QsciLexerLualexerIdProc
  autoCompletionFillups*: QsciLexerLuaautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerLuaautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerLuablockEndProc
  blockLookback*: QsciLexerLuablockLookbackProc
  blockStart*: QsciLexerLuablockStartProc
  blockStartKeyword*: QsciLexerLuablockStartKeywordProc
  braceStyle*: QsciLexerLuabraceStyleProc
  caseSensitive*: QsciLexerLuacaseSensitiveProc
  color*: QsciLexerLuacolorProc
  eolFill*: QsciLexerLuaeolFillProc
  font*: QsciLexerLuafontProc
  indentationGuideView*: QsciLexerLuaindentationGuideViewProc
  keywords*: QsciLexerLuakeywordsProc
  defaultStyle*: QsciLexerLuadefaultStyleProc
  description*: QsciLexerLuadescriptionProc
  paper*: QsciLexerLuapaperProc
  defaultColor*: QsciLexerLuadefaultColorProc
  defaultEolFill*: QsciLexerLuadefaultEolFillProc
  defaultFont*: QsciLexerLuadefaultFontProc
  defaultPaper*: QsciLexerLuadefaultPaperProc
  setEditor*: QsciLexerLuasetEditorProc
  refreshProperties*: QsciLexerLuarefreshPropertiesProc
  styleBitsNeeded*: QsciLexerLuastyleBitsNeededProc
  wordCharacters*: QsciLexerLuawordCharactersProc
  setAutoIndentStyle*: QsciLexerLuasetAutoIndentStyleProc
  setColor*: QsciLexerLuasetColorProc
  setEolFill*: QsciLexerLuasetEolFillProc
  setFont*: QsciLexerLuasetFontProc
  setPaper*: QsciLexerLuasetPaperProc
  readProperties*: QsciLexerLuareadPropertiesProc
  writeProperties*: QsciLexerLuawritePropertiesProc
  event*: QsciLexerLuaeventProc
  eventFilter*: QsciLexerLuaeventFilterProc
  timerEvent*: QsciLexerLuatimerEventProc
  childEvent*: QsciLexerLuachildEventProc
  customEvent*: QsciLexerLuacustomEventProc
  connectNotify*: QsciLexerLuaconnectNotifyProc
  disconnectNotify*: QsciLexerLuadisconnectNotifyProc
proc QsciLexerLuametaObject*(self: gen_qscilexerlua_types.QsciLexerLua, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerLua_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerLua_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerLuametacast*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cstring): pointer =
  fcQsciLexerLua_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerLua_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerLuametacall*(self: gen_qscilexerlua_types.QsciLexerLua, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerLua_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerLua_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerLuasetFoldCompact*(self: gen_qscilexerlua_types.QsciLexerLua, fold: bool): void =
  fcQsciLexerLua_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerLua_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerLua_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerLualexer*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerLua_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerLualexerId*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerLua_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerLuaautoCompletionFillups*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerLua_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerLuaautoCompletionWordSeparators*(self: gen_qscilexerlua_types.QsciLexerLua, ): seq[string] =
  var v_ma = fcQsciLexerLua_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerLua_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerLuablockEnd*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fcQsciLexerLua_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerLuablockLookback*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerLua_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerLuablockStart*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fcQsciLexerLua_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerLuablockStartKeyword*(self: gen_qscilexerlua_types.QsciLexerLua, style: ptr cint): cstring =
  (fcQsciLexerLua_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerLuabraceStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerLua_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerLuacaseSensitive*(self: gen_qscilexerlua_types.QsciLexerLua, ): bool =
  fcQsciLexerLua_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerLua_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerLuacolor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerLuaeolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fcQsciLexerLua_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerLua_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerLuafont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerLua_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerLuaindentationGuideView*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerLua_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerLuakeywords*(self: gen_qscilexerlua_types.QsciLexerLua, set: cint): cstring =
  (fcQsciLexerLua_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerLua_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerLuadefaultStyle*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerLua_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerLua_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerLuapaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerLuadefaultColor*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerLuadefaultEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): bool =
  fcQsciLexerLua_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerLua_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerLuadefaultFont*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerLua_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerLuadefaultPaper*(self: gen_qscilexerlua_types.QsciLexerLua, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerLua_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerLua_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerLuasetEditor*(self: gen_qscilexerlua_types.QsciLexerLua, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerLua_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerLua_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerLuarefreshProperties*(self: gen_qscilexerlua_types.QsciLexerLua, ): void =
  fcQsciLexerLua_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerLua_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerLuastyleBitsNeeded*(self: gen_qscilexerlua_types.QsciLexerLua, ): cint =
  fcQsciLexerLua_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerLua_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerLuawordCharacters*(self: gen_qscilexerlua_types.QsciLexerLua, ): cstring =
  (fcQsciLexerLua_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerLua_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerLuasetAutoIndentStyle*(self: gen_qscilexerlua_types.QsciLexerLua, autoindentstyle: cint): void =
  fcQsciLexerLua_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerLua_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerLuasetColor*(self: gen_qscilexerlua_types.QsciLexerLua, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerLua_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerLua_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerLuasetEolFill*(self: gen_qscilexerlua_types.QsciLexerLua, eoffill: bool, style: cint): void =
  fcQsciLexerLua_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerLua_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerLuasetFont*(self: gen_qscilexerlua_types.QsciLexerLua, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerLua_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerLua_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerLuasetPaper*(self: gen_qscilexerlua_types.QsciLexerLua, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerLua_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerLua_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerLuareadProperties*(self: gen_qscilexerlua_types.QsciLexerLua, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerLua_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerLua_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerLuawriteProperties*(self: gen_qscilexerlua_types.QsciLexerLua, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerLua_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerLua_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerLuaevent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerLua_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerLua_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerLuaeventFilter*(self: gen_qscilexerlua_types.QsciLexerLua, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerLua_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerLua_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerLuatimerEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerLua_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerLua_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerLuachildEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerLua_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerLua_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerLuacustomEvent*(self: gen_qscilexerlua_types.QsciLexerLua, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerLua_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerLua_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerLuaconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerLua_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerLua_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerLuadisconnectNotify*(self: gen_qscilexerlua_types.QsciLexerLua, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerLua_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerLua_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerLuaVTable](vtbl)
  let self = QsciLexerLua(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerlua_types.QsciLexerLua,
    vtbl: ref QsciLexerLuaVTable = nil): gen_qscilexerlua_types.QsciLexerLua =
  let vtbl = if vtbl == nil: new QsciLexerLuaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerLuaVTable, _: ptr cQsciLexerLua) {.cdecl.} =
    let vtbl = cast[ref QsciLexerLuaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerLua_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerLua_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerLua_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerLua_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerLua_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerLua_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerLua_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerLua_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerLua_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerLua_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerLua_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerLua_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerLua_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerLua_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerLua_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerLua_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerLua_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerLua_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerLua_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerLua_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerLua_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerLua_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerLua_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerLua_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerLua_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerLua_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerLua_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerLua_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerLua_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerLua_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerLua_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerLua_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerLua_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerLua_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerLua_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerLua_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerLua_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerLua_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerLua_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerLua_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerLua_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerLua_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerLua_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerLua_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerLua_disconnectNotify
  gen_qscilexerlua_types.QsciLexerLua(h: fcQsciLexerLua_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerlua_types.QsciLexerLua,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerLuaVTable = nil): gen_qscilexerlua_types.QsciLexerLua =
  let vtbl = if vtbl == nil: new QsciLexerLuaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerLuaVTable, _: ptr cQsciLexerLua) {.cdecl.} =
    let vtbl = cast[ref QsciLexerLuaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerLua_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerLua_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerLua_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerLua_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerLua_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerLua_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerLua_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerLua_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerLua_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerLua_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerLua_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerLua_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerLua_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerLua_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerLua_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerLua_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerLua_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerLua_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerLua_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerLua_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerLua_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerLua_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerLua_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerLua_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerLua_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerLua_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerLua_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerLua_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerLua_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerLua_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerLua_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerLua_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerLua_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerLua_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerLua_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerLua_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerLua_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerLua_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerLua_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerLua_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerLua_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerLua_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerLua_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerLua_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerLua_disconnectNotify
  gen_qscilexerlua_types.QsciLexerLua(h: fcQsciLexerLua_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerlua_types.QsciLexerLua): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerLua_staticMetaObject())
proc delete*(self: gen_qscilexerlua_types.QsciLexerLua) =
  fcQsciLexerLua_delete(self.h)
