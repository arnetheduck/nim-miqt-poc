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
{.compile("gen_qscilexercmake.cpp", cflags).}


type QsciLexerCMakeEnumEnum* = distinct cint
template Default*(_: type QsciLexerCMakeEnumEnum): untyped = 0
template Comment*(_: type QsciLexerCMakeEnumEnum): untyped = 1
template String*(_: type QsciLexerCMakeEnumEnum): untyped = 2
template StringLeftQuote*(_: type QsciLexerCMakeEnumEnum): untyped = 3
template StringRightQuote*(_: type QsciLexerCMakeEnumEnum): untyped = 4
template Function*(_: type QsciLexerCMakeEnumEnum): untyped = 5
template Variable*(_: type QsciLexerCMakeEnumEnum): untyped = 6
template Label*(_: type QsciLexerCMakeEnumEnum): untyped = 7
template KeywordSet3*(_: type QsciLexerCMakeEnumEnum): untyped = 8
template BlockWhile*(_: type QsciLexerCMakeEnumEnum): untyped = 9
template BlockForeach*(_: type QsciLexerCMakeEnumEnum): untyped = 10
template BlockIf*(_: type QsciLexerCMakeEnumEnum): untyped = 11
template BlockMacro*(_: type QsciLexerCMakeEnumEnum): untyped = 12
template StringVariable*(_: type QsciLexerCMakeEnumEnum): untyped = 13
template Number*(_: type QsciLexerCMakeEnumEnum): untyped = 14

import gen_qscilexercmake_types
export gen_qscilexercmake_types

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

type cQsciLexerCMake*{.exportc: "QsciLexerCMake", incompleteStruct.} = object

proc fcQsciLexerCMake_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCMake_metaObject".}
proc fcQsciLexerCMake_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCMake_metacast".}
proc fcQsciLexerCMake_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCMake_metacall".}
proc fcQsciLexerCMake_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr".}
proc fcQsciLexerCMake_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf8".}
proc fcQsciLexerCMake_language(self: pointer, ): cstring {.importc: "QsciLexerCMake_language".}
proc fcQsciLexerCMake_lexer(self: pointer, ): cstring {.importc: "QsciLexerCMake_lexer".}
proc fcQsciLexerCMake_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultColor".}
proc fcQsciLexerCMake_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultFont".}
proc fcQsciLexerCMake_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_defaultPaper".}
proc fcQsciLexerCMake_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCMake_keywords".}
proc fcQsciLexerCMake_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCMake_description".}
proc fcQsciLexerCMake_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCMake_refreshProperties".}
proc fcQsciLexerCMake_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerCMake_foldAtElse".}
proc fcQsciLexerCMake_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCMake_setFoldAtElse".}
proc fcQsciLexerCMake_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_tr2".}
proc fcQsciLexerCMake_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_tr3".}
proc fcQsciLexerCMake_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCMake_trUtf82".}
proc fcQsciLexerCMake_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCMake_trUtf83".}
type cQsciLexerCMakeVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCMakeVTable, self: ptr cQsciLexerCMake) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerCMake_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCMake_virtualbase_metaObject".}
proc fcQsciLexerCMake_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCMake_virtualbase_metacast".}
proc fcQsciLexerCMake_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCMake_virtualbase_metacall".}
proc fcQsciLexerCMake_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCMake_virtualbase_setFoldAtElse".}
proc fcQsciLexerCMake_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCMake_virtualbase_lexer".}
proc fcQsciLexerCMake_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_lexerId".}
proc fcQsciLexerCMake_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCMake_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCMake_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCMake_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCMake_virtualbase_blockEnd".}
proc fcQsciLexerCMake_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_blockLookback".}
proc fcQsciLexerCMake_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCMake_virtualbase_blockStart".}
proc fcQsciLexerCMake_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCMake_virtualbase_blockStartKeyword".}
proc fcQsciLexerCMake_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_braceStyle".}
proc fcQsciLexerCMake_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCMake_virtualbase_caseSensitive".}
proc fcQsciLexerCMake_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_color".}
proc fcQsciLexerCMake_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCMake_virtualbase_eolFill".}
proc fcQsciLexerCMake_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_font".}
proc fcQsciLexerCMake_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_indentationGuideView".}
proc fcQsciLexerCMake_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCMake_virtualbase_keywords".}
proc fcQsciLexerCMake_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_defaultStyle".}
proc fcQsciLexerCMake_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_paper".}
proc fcQsciLexerCMake_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCMake_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCMake_virtualbase_defaultEolFill".}
proc fcQsciLexerCMake_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCMake_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCMake_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCMake_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCMake_virtualbase_setEditor".}
proc fcQsciLexerCMake_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCMake_virtualbase_refreshProperties".}
proc fcQsciLexerCMake_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCMake_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCMake_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCMake_virtualbase_wordCharacters".}
proc fcQsciLexerCMake_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCMake_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCMake_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCMake_virtualbase_setColor".}
proc fcQsciLexerCMake_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCMake_virtualbase_setEolFill".}
proc fcQsciLexerCMake_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCMake_virtualbase_setFont".}
proc fcQsciLexerCMake_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCMake_virtualbase_setPaper".}
proc fcQsciLexerCMake_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCMake_virtualbase_readProperties".}
proc fcQsciLexerCMake_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCMake_virtualbase_writeProperties".}
proc fcQsciLexerCMake_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCMake_virtualbase_event".}
proc fcQsciLexerCMake_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCMake_virtualbase_eventFilter".}
proc fcQsciLexerCMake_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCMake_virtualbase_timerEvent".}
proc fcQsciLexerCMake_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCMake_virtualbase_childEvent".}
proc fcQsciLexerCMake_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCMake_virtualbase_customEvent".}
proc fcQsciLexerCMake_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCMake_virtualbase_connectNotify".}
proc fcQsciLexerCMake_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCMake_virtualbase_disconnectNotify".}
proc fcQsciLexerCMake_new(vtbl: pointer, ): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new".}
proc fcQsciLexerCMake_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCMake {.importc: "QsciLexerCMake_new2".}
proc fcQsciLexerCMake_staticMetaObject(): pointer {.importc: "QsciLexerCMake_staticMetaObject".}
proc fcQsciLexerCMake_delete(self: pointer) {.importc: "QsciLexerCMake_delete".}

proc metaObject*(self: gen_qscilexercmake_types.QsciLexerCMake, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCMake_metaObject(self.h))

proc metacast*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cstring): pointer =
  fcQsciLexerCMake_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCMake_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring): string =
  let v_ms = fcQsciLexerCMake_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring): string =
  let v_ms = fcQsciLexerCMake_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_language(self.h))

proc lexer*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_lexer(self.h))

proc defaultColor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCMake_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercmake_types.QsciLexerCMake, set: cint): cstring =
  (fcQsciLexerCMake_keywords(self.h, set))

proc description*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): string =
  let v_ms = fcQsciLexerCMake_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, ): void =
  fcQsciLexerCMake_refreshProperties(self.h)

proc foldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, ): bool =
  fcQsciLexerCMake_foldAtElse(self.h)

proc setFoldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, fold: bool): void =
  fcQsciLexerCMake_setFoldAtElse(self.h, fold)

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCMake_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCMake_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCMake_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercmake_types.QsciLexerCMake, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCMake_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerCMakemetaObjectProc* = proc(self: QsciLexerCMake): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCMakemetacastProc* = proc(self: QsciLexerCMake, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCMakemetacallProc* = proc(self: QsciLexerCMake, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCMakesetFoldAtElseProc* = proc(self: QsciLexerCMake, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCMakelanguageProc* = proc(self: QsciLexerCMake): cstring {.raises: [], gcsafe.}
type QsciLexerCMakelexerProc* = proc(self: QsciLexerCMake): cstring {.raises: [], gcsafe.}
type QsciLexerCMakelexerIdProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakeautoCompletionFillupsProc* = proc(self: QsciLexerCMake): cstring {.raises: [], gcsafe.}
type QsciLexerCMakeautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCMake): seq[string] {.raises: [], gcsafe.}
type QsciLexerCMakeblockEndProc* = proc(self: QsciLexerCMake, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCMakeblockLookbackProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakeblockStartProc* = proc(self: QsciLexerCMake, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCMakeblockStartKeywordProc* = proc(self: QsciLexerCMake, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCMakebraceStyleProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakecaseSensitiveProc* = proc(self: QsciLexerCMake): bool {.raises: [], gcsafe.}
type QsciLexerCMakecolorProc* = proc(self: QsciLexerCMake, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCMakeeolFillProc* = proc(self: QsciLexerCMake, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCMakefontProc* = proc(self: QsciLexerCMake, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCMakeindentationGuideViewProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakekeywordsProc* = proc(self: QsciLexerCMake, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCMakedefaultStyleProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakedescriptionProc* = proc(self: QsciLexerCMake, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCMakepaperProc* = proc(self: QsciLexerCMake, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCMakedefaultColorProc* = proc(self: QsciLexerCMake, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCMakedefaultEolFillProc* = proc(self: QsciLexerCMake, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCMakedefaultFontProc* = proc(self: QsciLexerCMake, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCMakedefaultPaperProc* = proc(self: QsciLexerCMake, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCMakesetEditorProc* = proc(self: QsciLexerCMake, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCMakerefreshPropertiesProc* = proc(self: QsciLexerCMake): void {.raises: [], gcsafe.}
type QsciLexerCMakestyleBitsNeededProc* = proc(self: QsciLexerCMake): cint {.raises: [], gcsafe.}
type QsciLexerCMakewordCharactersProc* = proc(self: QsciLexerCMake): cstring {.raises: [], gcsafe.}
type QsciLexerCMakesetAutoIndentStyleProc* = proc(self: QsciLexerCMake, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCMakesetColorProc* = proc(self: QsciLexerCMake, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCMakesetEolFillProc* = proc(self: QsciLexerCMake, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCMakesetFontProc* = proc(self: QsciLexerCMake, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCMakesetPaperProc* = proc(self: QsciLexerCMake, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCMakereadPropertiesProc* = proc(self: QsciLexerCMake, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCMakewritePropertiesProc* = proc(self: QsciLexerCMake, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCMakeeventProc* = proc(self: QsciLexerCMake, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCMakeeventFilterProc* = proc(self: QsciLexerCMake, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCMaketimerEventProc* = proc(self: QsciLexerCMake, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCMakechildEventProc* = proc(self: QsciLexerCMake, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCMakecustomEventProc* = proc(self: QsciLexerCMake, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCMakeconnectNotifyProc* = proc(self: QsciLexerCMake, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCMakedisconnectNotifyProc* = proc(self: QsciLexerCMake, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCMakeVTable* = object
  vtbl: cQsciLexerCMakeVTable
  metaObject*: QsciLexerCMakemetaObjectProc
  metacast*: QsciLexerCMakemetacastProc
  metacall*: QsciLexerCMakemetacallProc
  setFoldAtElse*: QsciLexerCMakesetFoldAtElseProc
  language*: QsciLexerCMakelanguageProc
  lexer*: QsciLexerCMakelexerProc
  lexerId*: QsciLexerCMakelexerIdProc
  autoCompletionFillups*: QsciLexerCMakeautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCMakeautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCMakeblockEndProc
  blockLookback*: QsciLexerCMakeblockLookbackProc
  blockStart*: QsciLexerCMakeblockStartProc
  blockStartKeyword*: QsciLexerCMakeblockStartKeywordProc
  braceStyle*: QsciLexerCMakebraceStyleProc
  caseSensitive*: QsciLexerCMakecaseSensitiveProc
  color*: QsciLexerCMakecolorProc
  eolFill*: QsciLexerCMakeeolFillProc
  font*: QsciLexerCMakefontProc
  indentationGuideView*: QsciLexerCMakeindentationGuideViewProc
  keywords*: QsciLexerCMakekeywordsProc
  defaultStyle*: QsciLexerCMakedefaultStyleProc
  description*: QsciLexerCMakedescriptionProc
  paper*: QsciLexerCMakepaperProc
  defaultColor*: QsciLexerCMakedefaultColorProc
  defaultEolFill*: QsciLexerCMakedefaultEolFillProc
  defaultFont*: QsciLexerCMakedefaultFontProc
  defaultPaper*: QsciLexerCMakedefaultPaperProc
  setEditor*: QsciLexerCMakesetEditorProc
  refreshProperties*: QsciLexerCMakerefreshPropertiesProc
  styleBitsNeeded*: QsciLexerCMakestyleBitsNeededProc
  wordCharacters*: QsciLexerCMakewordCharactersProc
  setAutoIndentStyle*: QsciLexerCMakesetAutoIndentStyleProc
  setColor*: QsciLexerCMakesetColorProc
  setEolFill*: QsciLexerCMakesetEolFillProc
  setFont*: QsciLexerCMakesetFontProc
  setPaper*: QsciLexerCMakesetPaperProc
  readProperties*: QsciLexerCMakereadPropertiesProc
  writeProperties*: QsciLexerCMakewritePropertiesProc
  event*: QsciLexerCMakeeventProc
  eventFilter*: QsciLexerCMakeeventFilterProc
  timerEvent*: QsciLexerCMaketimerEventProc
  childEvent*: QsciLexerCMakechildEventProc
  customEvent*: QsciLexerCMakecustomEventProc
  connectNotify*: QsciLexerCMakeconnectNotifyProc
  disconnectNotify*: QsciLexerCMakedisconnectNotifyProc
proc QsciLexerCMakemetaObject*(self: gen_qscilexercmake_types.QsciLexerCMake, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCMake_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCMake_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCMakemetacast*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cstring): pointer =
  fcQsciLexerCMake_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCMake_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCMakemetacall*(self: gen_qscilexercmake_types.QsciLexerCMake, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCMake_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCMake_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerCMakesetFoldAtElse*(self: gen_qscilexercmake_types.QsciLexerCMake, fold: bool): void =
  fcQsciLexerCMake_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerCMake_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc miqt_exec_callback_cQsciLexerCMake_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCMakelexer*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCMake_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCMakelexerId*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCMake_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCMakeautoCompletionFillups*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCMake_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCMakeautoCompletionWordSeparators*(self: gen_qscilexercmake_types.QsciLexerCMake, ): seq[string] =
  var v_ma = fcQsciLexerCMake_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCMake_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCMakeblockEnd*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fcQsciLexerCMake_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCMakeblockLookback*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCMake_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCMakeblockStart*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fcQsciLexerCMake_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCMakeblockStartKeyword*(self: gen_qscilexercmake_types.QsciLexerCMake, style: ptr cint): cstring =
  (fcQsciLexerCMake_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCMakebraceStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCMake_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCMakecaseSensitive*(self: gen_qscilexercmake_types.QsciLexerCMake, ): bool =
  fcQsciLexerCMake_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCMake_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCMakecolor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakeeolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): bool =
  fcQsciLexerCMake_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCMake_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCMakefont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCMake_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakeindentationGuideView*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCMake_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCMakekeywords*(self: gen_qscilexercmake_types.QsciLexerCMake, set: cint): cstring =
  (fcQsciLexerCMake_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCMake_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCMakedefaultStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCMake_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCMake_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCMakepaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakedefaultColor*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakedefaultEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): bool =
  fcQsciLexerCMake_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCMake_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCMakedefaultFont*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCMake_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakedefaultPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCMake_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCMake_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCMakesetEditor*(self: gen_qscilexercmake_types.QsciLexerCMake, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCMake_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCMake_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCMakerefreshProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, ): void =
  fcQsciLexerCMake_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCMake_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCMakestyleBitsNeeded*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cint =
  fcQsciLexerCMake_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCMake_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerCMakewordCharacters*(self: gen_qscilexercmake_types.QsciLexerCMake, ): cstring =
  (fcQsciLexerCMake_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCMake_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCMakesetAutoIndentStyle*(self: gen_qscilexercmake_types.QsciLexerCMake, autoindentstyle: cint): void =
  fcQsciLexerCMake_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCMake_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCMakesetColor*(self: gen_qscilexercmake_types.QsciLexerCMake, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCMake_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCMake_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCMakesetEolFill*(self: gen_qscilexercmake_types.QsciLexerCMake, eoffill: bool, style: cint): void =
  fcQsciLexerCMake_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCMake_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCMakesetFont*(self: gen_qscilexercmake_types.QsciLexerCMake, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCMake_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCMake_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCMakesetPaper*(self: gen_qscilexercmake_types.QsciLexerCMake, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCMake_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCMake_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCMakereadProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCMake_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCMake_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCMakewriteProperties*(self: gen_qscilexercmake_types.QsciLexerCMake, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCMake_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCMake_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCMakeevent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCMake_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCMake_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCMakeeventFilter*(self: gen_qscilexercmake_types.QsciLexerCMake, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCMake_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCMake_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCMaketimerEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCMake_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCMake_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCMakechildEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCMake_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCMake_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCMakecustomEvent*(self: gen_qscilexercmake_types.QsciLexerCMake, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCMake_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCMake_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCMakeconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCMake_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCMake_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCMakedisconnectNotify*(self: gen_qscilexercmake_types.QsciLexerCMake, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCMake_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCMake_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCMakeVTable](vtbl)
  let self = QsciLexerCMake(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexercmake_types.QsciLexerCMake,
    vtbl: ref QsciLexerCMakeVTable = nil): gen_qscilexercmake_types.QsciLexerCMake =
  let vtbl = if vtbl == nil: new QsciLexerCMakeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCMakeVTable, _: ptr cQsciLexerCMake) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCMakeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCMake_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCMake_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCMake_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCMake_setFoldAtElse
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCMake_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCMake_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCMake_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCMake_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCMake_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCMake_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCMake_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCMake_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCMake_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCMake_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCMake_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCMake_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCMake_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCMake_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCMake_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCMake_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCMake_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCMake_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCMake_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCMake_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCMake_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCMake_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCMake_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCMake_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCMake_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCMake_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCMake_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCMake_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCMake_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCMake_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCMake_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCMake_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCMake_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCMake_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCMake_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCMake_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCMake_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCMake_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCMake_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCMake_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCMake_disconnectNotify
  gen_qscilexercmake_types.QsciLexerCMake(h: fcQsciLexerCMake_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercmake_types.QsciLexerCMake,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCMakeVTable = nil): gen_qscilexercmake_types.QsciLexerCMake =
  let vtbl = if vtbl == nil: new QsciLexerCMakeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCMakeVTable, _: ptr cQsciLexerCMake) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCMakeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCMake_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCMake_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCMake_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCMake_setFoldAtElse
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCMake_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCMake_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCMake_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCMake_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCMake_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCMake_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCMake_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCMake_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCMake_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCMake_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCMake_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCMake_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCMake_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCMake_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCMake_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCMake_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCMake_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCMake_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCMake_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCMake_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCMake_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCMake_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCMake_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCMake_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCMake_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCMake_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCMake_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCMake_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCMake_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCMake_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCMake_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCMake_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCMake_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCMake_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCMake_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCMake_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCMake_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCMake_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCMake_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCMake_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCMake_disconnectNotify
  gen_qscilexercmake_types.QsciLexerCMake(h: fcQsciLexerCMake_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexercmake_types.QsciLexerCMake): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCMake_staticMetaObject())
proc delete*(self: gen_qscilexercmake_types.QsciLexerCMake) =
  fcQsciLexerCMake_delete(self.h)
