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
{.compile("gen_qscilexerfortran77.cpp", cflags).}


type QsciLexerFortran77EnumEnum* = distinct cint
template Default*(_: type QsciLexerFortran77EnumEnum): untyped = 0
template Comment*(_: type QsciLexerFortran77EnumEnum): untyped = 1
template Number*(_: type QsciLexerFortran77EnumEnum): untyped = 2
template SingleQuotedString*(_: type QsciLexerFortran77EnumEnum): untyped = 3
template DoubleQuotedString*(_: type QsciLexerFortran77EnumEnum): untyped = 4
template UnclosedString*(_: type QsciLexerFortran77EnumEnum): untyped = 5
template Operator*(_: type QsciLexerFortran77EnumEnum): untyped = 6
template Identifier*(_: type QsciLexerFortran77EnumEnum): untyped = 7
template Keyword*(_: type QsciLexerFortran77EnumEnum): untyped = 8
template IntrinsicFunction*(_: type QsciLexerFortran77EnumEnum): untyped = 9
template ExtendedFunction*(_: type QsciLexerFortran77EnumEnum): untyped = 10
template PreProcessor*(_: type QsciLexerFortran77EnumEnum): untyped = 11
template DottedOperator*(_: type QsciLexerFortran77EnumEnum): untyped = 12
template Label*(_: type QsciLexerFortran77EnumEnum): untyped = 13
template Continuation*(_: type QsciLexerFortran77EnumEnum): untyped = 14

import gen_qscilexerfortran77_types
export gen_qscilexerfortran77_types

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

type cQsciLexerFortran77*{.exportc: "QsciLexerFortran77", incompleteStruct.} = object

proc fcQsciLexerFortran77_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran77_metaObject".}
proc fcQsciLexerFortran77_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran77_metacast".}
proc fcQsciLexerFortran77_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran77_metacall".}
proc fcQsciLexerFortran77_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr".}
proc fcQsciLexerFortran77_language(self: pointer, ): cstring {.importc: "QsciLexerFortran77_language".}
proc fcQsciLexerFortran77_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran77_lexer".}
proc fcQsciLexerFortran77_braceStyle(self: pointer, ): cint {.importc: "QsciLexerFortran77_braceStyle".}
proc fcQsciLexerFortran77_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultColor".}
proc fcQsciLexerFortran77_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran77_defaultEolFill".}
proc fcQsciLexerFortran77_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultFont".}
proc fcQsciLexerFortran77_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultPaper".}
proc fcQsciLexerFortran77_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran77_keywords".}
proc fcQsciLexerFortran77_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerFortran77_description".}
proc fcQsciLexerFortran77_refreshProperties(self: pointer, ): void {.importc: "QsciLexerFortran77_refreshProperties".}
proc fcQsciLexerFortran77_foldCompact(self: pointer, ): bool {.importc: "QsciLexerFortran77_foldCompact".}
proc fcQsciLexerFortran77_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerFortran77_setFoldCompact".}
proc fcQsciLexerFortran77_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr2".}
proc fcQsciLexerFortran77_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerFortran77_tr3".}
type cQsciLexerFortran77VTable = object
  destructor*: proc(vtbl: ptr cQsciLexerFortran77VTable, self: ptr cQsciLexerFortran77) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerFortran77_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran77_virtualbase_metaObject".}
proc fcQsciLexerFortran77_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran77_virtualbase_metacast".}
proc fcQsciLexerFortran77_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran77_virtualbase_metacall".}
proc fcQsciLexerFortran77_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerFortran77_virtualbase_setFoldCompact".}
proc fcQsciLexerFortran77_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran77_virtualbase_lexer".}
proc fcQsciLexerFortran77_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_lexerId".}
proc fcQsciLexerFortran77_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerFortran77_virtualbase_autoCompletionFillups".}
proc fcQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerFortran77_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerFortran77_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran77_virtualbase_blockEnd".}
proc fcQsciLexerFortran77_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_blockLookback".}
proc fcQsciLexerFortran77_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran77_virtualbase_blockStart".}
proc fcQsciLexerFortran77_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran77_virtualbase_blockStartKeyword".}
proc fcQsciLexerFortran77_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_braceStyle".}
proc fcQsciLexerFortran77_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerFortran77_virtualbase_caseSensitive".}
proc fcQsciLexerFortran77_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_color".}
proc fcQsciLexerFortran77_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran77_virtualbase_eolFill".}
proc fcQsciLexerFortran77_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_font".}
proc fcQsciLexerFortran77_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_indentationGuideView".}
proc fcQsciLexerFortran77_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran77_virtualbase_keywords".}
proc fcQsciLexerFortran77_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_defaultStyle".}
proc fcQsciLexerFortran77_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_paper".}
proc fcQsciLexerFortran77_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerFortran77_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran77_virtualbase_defaultEolFill".}
proc fcQsciLexerFortran77_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerFortran77_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerFortran77_virtualbase_setEditor".}
proc fcQsciLexerFortran77_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerFortran77_virtualbase_refreshProperties".}
proc fcQsciLexerFortran77_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerFortran77_virtualbase_styleBitsNeeded".}
proc fcQsciLexerFortran77_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerFortran77_virtualbase_wordCharacters".}
proc fcQsciLexerFortran77_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerFortran77_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerFortran77_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerFortran77_virtualbase_setColor".}
proc fcQsciLexerFortran77_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerFortran77_virtualbase_setEolFill".}
proc fcQsciLexerFortran77_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerFortran77_virtualbase_setFont".}
proc fcQsciLexerFortran77_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerFortran77_virtualbase_setPaper".}
proc fcQsciLexerFortran77_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran77_virtualbase_readProperties".}
proc fcQsciLexerFortran77_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran77_virtualbase_writeProperties".}
proc fcQsciLexerFortran77_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerFortran77_virtualbase_event".}
proc fcQsciLexerFortran77_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerFortran77_virtualbase_eventFilter".}
proc fcQsciLexerFortran77_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran77_virtualbase_timerEvent".}
proc fcQsciLexerFortran77_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran77_virtualbase_childEvent".}
proc fcQsciLexerFortran77_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran77_virtualbase_customEvent".}
proc fcQsciLexerFortran77_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerFortran77_virtualbase_connectNotify".}
proc fcQsciLexerFortran77_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerFortran77_virtualbase_disconnectNotify".}
proc fcQsciLexerFortran77_new(vtbl: pointer, ): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new".}
proc fcQsciLexerFortran77_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new2".}
proc fcQsciLexerFortran77_staticMetaObject(): pointer {.importc: "QsciLexerFortran77_staticMetaObject".}
proc fcQsciLexerFortran77_delete(self: pointer) {.importc: "QsciLexerFortran77_delete".}

proc metaObject*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran77_metaObject(self.h))

proc metacast*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cstring): pointer =
  fcQsciLexerFortran77_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerFortran77_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring): string =
  let v_ms = fcQsciLexerFortran77_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =
  (fcQsciLexerFortran77_language(self.h))

proc lexer*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =
  (fcQsciLexerFortran77_lexer(self.h))

proc braceStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_braceStyle(self.h)

proc defaultColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =
  fcQsciLexerFortran77_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerFortran77_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, set: cint): cstring =
  (fcQsciLexerFortran77_keywords(self.h, set))

proc description*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): string =
  let v_ms = fcQsciLexerFortran77_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): void =
  fcQsciLexerFortran77_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): bool =
  fcQsciLexerFortran77_foldCompact(self.h)

proc setFoldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, fold: bool): void =
  fcQsciLexerFortran77_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerFortran77_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerFortran77_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerFortran77metaObjectProc* = proc(self: QsciLexerFortran77): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerFortran77metacastProc* = proc(self: QsciLexerFortran77, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerFortran77metacallProc* = proc(self: QsciLexerFortran77, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerFortran77setFoldCompactProc* = proc(self: QsciLexerFortran77, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerFortran77languageProc* = proc(self: QsciLexerFortran77): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77lexerProc* = proc(self: QsciLexerFortran77): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77lexerIdProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77autoCompletionFillupsProc* = proc(self: QsciLexerFortran77): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77autoCompletionWordSeparatorsProc* = proc(self: QsciLexerFortran77): seq[string] {.raises: [], gcsafe.}
type QsciLexerFortran77blockEndProc* = proc(self: QsciLexerFortran77, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77blockLookbackProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77blockStartProc* = proc(self: QsciLexerFortran77, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77blockStartKeywordProc* = proc(self: QsciLexerFortran77, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77braceStyleProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77caseSensitiveProc* = proc(self: QsciLexerFortran77): bool {.raises: [], gcsafe.}
type QsciLexerFortran77colorProc* = proc(self: QsciLexerFortran77, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortran77eolFillProc* = proc(self: QsciLexerFortran77, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerFortran77fontProc* = proc(self: QsciLexerFortran77, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerFortran77indentationGuideViewProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77keywordsProc* = proc(self: QsciLexerFortran77, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77defaultStyleProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77descriptionProc* = proc(self: QsciLexerFortran77, style: cint): string {.raises: [], gcsafe.}
type QsciLexerFortran77paperProc* = proc(self: QsciLexerFortran77, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortran77defaultColorProc* = proc(self: QsciLexerFortran77, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortran77defaultEolFillProc* = proc(self: QsciLexerFortran77, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerFortran77defaultFontProc* = proc(self: QsciLexerFortran77, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerFortran77defaultPaperProc* = proc(self: QsciLexerFortran77, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortran77setEditorProc* = proc(self: QsciLexerFortran77, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerFortran77refreshPropertiesProc* = proc(self: QsciLexerFortran77): void {.raises: [], gcsafe.}
type QsciLexerFortran77styleBitsNeededProc* = proc(self: QsciLexerFortran77): cint {.raises: [], gcsafe.}
type QsciLexerFortran77wordCharactersProc* = proc(self: QsciLexerFortran77): cstring {.raises: [], gcsafe.}
type QsciLexerFortran77setAutoIndentStyleProc* = proc(self: QsciLexerFortran77, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerFortran77setColorProc* = proc(self: QsciLexerFortran77, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortran77setEolFillProc* = proc(self: QsciLexerFortran77, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortran77setFontProc* = proc(self: QsciLexerFortran77, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortran77setPaperProc* = proc(self: QsciLexerFortran77, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortran77readPropertiesProc* = proc(self: QsciLexerFortran77, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerFortran77writePropertiesProc* = proc(self: QsciLexerFortran77, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerFortran77eventProc* = proc(self: QsciLexerFortran77, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerFortran77eventFilterProc* = proc(self: QsciLexerFortran77, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerFortran77timerEventProc* = proc(self: QsciLexerFortran77, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerFortran77childEventProc* = proc(self: QsciLexerFortran77, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerFortran77customEventProc* = proc(self: QsciLexerFortran77, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerFortran77connectNotifyProc* = proc(self: QsciLexerFortran77, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerFortran77disconnectNotifyProc* = proc(self: QsciLexerFortran77, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerFortran77VTable* = object
  vtbl: cQsciLexerFortran77VTable
  metaObject*: QsciLexerFortran77metaObjectProc
  metacast*: QsciLexerFortran77metacastProc
  metacall*: QsciLexerFortran77metacallProc
  setFoldCompact*: QsciLexerFortran77setFoldCompactProc
  language*: QsciLexerFortran77languageProc
  lexer*: QsciLexerFortran77lexerProc
  lexerId*: QsciLexerFortran77lexerIdProc
  autoCompletionFillups*: QsciLexerFortran77autoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerFortran77autoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerFortran77blockEndProc
  blockLookback*: QsciLexerFortran77blockLookbackProc
  blockStart*: QsciLexerFortran77blockStartProc
  blockStartKeyword*: QsciLexerFortran77blockStartKeywordProc
  braceStyle*: QsciLexerFortran77braceStyleProc
  caseSensitive*: QsciLexerFortran77caseSensitiveProc
  color*: QsciLexerFortran77colorProc
  eolFill*: QsciLexerFortran77eolFillProc
  font*: QsciLexerFortran77fontProc
  indentationGuideView*: QsciLexerFortran77indentationGuideViewProc
  keywords*: QsciLexerFortran77keywordsProc
  defaultStyle*: QsciLexerFortran77defaultStyleProc
  description*: QsciLexerFortran77descriptionProc
  paper*: QsciLexerFortran77paperProc
  defaultColor*: QsciLexerFortran77defaultColorProc
  defaultEolFill*: QsciLexerFortran77defaultEolFillProc
  defaultFont*: QsciLexerFortran77defaultFontProc
  defaultPaper*: QsciLexerFortran77defaultPaperProc
  setEditor*: QsciLexerFortran77setEditorProc
  refreshProperties*: QsciLexerFortran77refreshPropertiesProc
  styleBitsNeeded*: QsciLexerFortran77styleBitsNeededProc
  wordCharacters*: QsciLexerFortran77wordCharactersProc
  setAutoIndentStyle*: QsciLexerFortran77setAutoIndentStyleProc
  setColor*: QsciLexerFortran77setColorProc
  setEolFill*: QsciLexerFortran77setEolFillProc
  setFont*: QsciLexerFortran77setFontProc
  setPaper*: QsciLexerFortran77setPaperProc
  readProperties*: QsciLexerFortran77readPropertiesProc
  writeProperties*: QsciLexerFortran77writePropertiesProc
  event*: QsciLexerFortran77eventProc
  eventFilter*: QsciLexerFortran77eventFilterProc
  timerEvent*: QsciLexerFortran77timerEventProc
  childEvent*: QsciLexerFortran77childEventProc
  customEvent*: QsciLexerFortran77customEventProc
  connectNotify*: QsciLexerFortran77connectNotifyProc
  disconnectNotify*: QsciLexerFortran77disconnectNotifyProc
proc QsciLexerFortran77metaObject*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran77_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerFortran77_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerFortran77metacast*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cstring): pointer =
  fcQsciLexerFortran77_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerFortran77_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerFortran77metacall*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerFortran77_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerFortran77_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerFortran77setFoldCompact*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, fold: bool): void =
  fcQsciLexerFortran77_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerFortran77_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerFortran77_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerFortran77lexer*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =
  (fcQsciLexerFortran77_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerFortran77_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerFortran77lexerId*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerFortran77autoCompletionFillups*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =
  (fcQsciLexerFortran77_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerFortran77_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerFortran77autoCompletionWordSeparators*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): seq[string] =
  var v_ma = fcQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerFortran77_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerFortran77blockEnd*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =
  (fcQsciLexerFortran77_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerFortran77blockLookback*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerFortran77blockStart*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =
  (fcQsciLexerFortran77_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerFortran77blockStartKeyword*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: ptr cint): cstring =
  (fcQsciLexerFortran77_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerFortran77braceStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerFortran77caseSensitive*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): bool =
  fcQsciLexerFortran77_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerFortran77color*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77eolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =
  fcQsciLexerFortran77_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerFortran77_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerFortran77font*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerFortran77_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77indentationGuideView*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerFortran77keywords*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, set: cint): cstring =
  (fcQsciLexerFortran77_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerFortran77_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerFortran77defaultStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerFortran77_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerFortran77paper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77defaultColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77defaultEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): bool =
  fcQsciLexerFortran77_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerFortran77_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerFortran77defaultFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerFortran77_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77defaultPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran77_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerFortran77setEditor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerFortran77_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerFortran77_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerFortran77refreshProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): void =
  fcQsciLexerFortran77_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerFortran77styleBitsNeeded*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cint =
  fcQsciLexerFortran77_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerFortran77_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerFortran77wordCharacters*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, ): cstring =
  (fcQsciLexerFortran77_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerFortran77_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerFortran77setAutoIndentStyle*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, autoindentstyle: cint): void =
  fcQsciLexerFortran77_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerFortran77_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerFortran77setColor*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerFortran77_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerFortran77_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerFortran77setEolFill*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, eoffill: bool, style: cint): void =
  fcQsciLexerFortran77_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerFortran77_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerFortran77setFont*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerFortran77_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerFortran77_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerFortran77setPaper*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerFortran77_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerFortran77_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerFortran77readProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran77_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerFortran77_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortran77writeProperties*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran77_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerFortran77_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortran77event*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerFortran77_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran77_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerFortran77eventFilter*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerFortran77_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran77_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortran77timerEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerFortran77_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran77_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerFortran77childEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerFortran77_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran77_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerFortran77customEvent*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerFortran77_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran77_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerFortran77connectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerFortran77_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerFortran77_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerFortran77disconnectNotify*(self: gen_qscilexerfortran77_types.QsciLexerFortran77, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerFortran77_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerFortran77_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortran77VTable](vtbl)
  let self = QsciLexerFortran77(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerfortran77_types.QsciLexerFortran77,
    vtbl: ref QsciLexerFortran77VTable = nil): gen_qscilexerfortran77_types.QsciLexerFortran77 =
  let vtbl = if vtbl == nil: new QsciLexerFortran77VTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerFortran77VTable, _: ptr cQsciLexerFortran77) {.cdecl.} =
    let vtbl = cast[ref QsciLexerFortran77VTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerFortran77_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerFortran77_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerFortran77_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerFortran77_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerFortran77_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerFortran77_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerFortran77_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerFortran77_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerFortran77_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerFortran77_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerFortran77_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerFortran77_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerFortran77_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerFortran77_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerFortran77_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerFortran77_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerFortran77_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerFortran77_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerFortran77_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerFortran77_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerFortran77_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerFortran77_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerFortran77_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerFortran77_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerFortran77_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerFortran77_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerFortran77_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerFortran77_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerFortran77_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerFortran77_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerFortran77_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerFortran77_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerFortran77_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerFortran77_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerFortran77_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerFortran77_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerFortran77_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerFortran77_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerFortran77_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerFortran77_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerFortran77_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerFortran77_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerFortran77_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerFortran77_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerFortran77_disconnectNotify
  gen_qscilexerfortran77_types.QsciLexerFortran77(h: fcQsciLexerFortran77_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerfortran77_types.QsciLexerFortran77,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerFortran77VTable = nil): gen_qscilexerfortran77_types.QsciLexerFortran77 =
  let vtbl = if vtbl == nil: new QsciLexerFortran77VTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerFortran77VTable, _: ptr cQsciLexerFortran77) {.cdecl.} =
    let vtbl = cast[ref QsciLexerFortran77VTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerFortran77_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerFortran77_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerFortran77_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerFortran77_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerFortran77_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerFortran77_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerFortran77_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerFortran77_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerFortran77_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerFortran77_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerFortran77_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerFortran77_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerFortran77_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerFortran77_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerFortran77_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerFortran77_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerFortran77_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerFortran77_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerFortran77_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerFortran77_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerFortran77_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerFortran77_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerFortran77_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerFortran77_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerFortran77_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerFortran77_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerFortran77_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerFortran77_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerFortran77_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerFortran77_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerFortran77_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerFortran77_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerFortran77_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerFortran77_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerFortran77_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerFortran77_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerFortran77_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerFortran77_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerFortran77_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerFortran77_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerFortran77_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerFortran77_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerFortran77_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerFortran77_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerFortran77_disconnectNotify
  gen_qscilexerfortran77_types.QsciLexerFortran77(h: fcQsciLexerFortran77_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerfortran77_types.QsciLexerFortran77): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran77_staticMetaObject())
proc delete*(self: gen_qscilexerfortran77_types.QsciLexerFortran77) =
  fcQsciLexerFortran77_delete(self.h)
