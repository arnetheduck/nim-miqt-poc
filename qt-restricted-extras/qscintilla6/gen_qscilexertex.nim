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
{.compile("gen_qscilexertex.cpp", cflags).}


type QsciLexerTeXEnumEnum* = distinct cint
template Default*(_: type QsciLexerTeXEnumEnum): untyped = 0
template Special*(_: type QsciLexerTeXEnumEnum): untyped = 1
template Group*(_: type QsciLexerTeXEnumEnum): untyped = 2
template Symbol*(_: type QsciLexerTeXEnumEnum): untyped = 3
template Command*(_: type QsciLexerTeXEnumEnum): untyped = 4
template Text*(_: type QsciLexerTeXEnumEnum): untyped = 5

import gen_qscilexertex_types
export gen_qscilexertex_types

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

type cQsciLexerTeX*{.exportc: "QsciLexerTeX", incompleteStruct.} = object

proc fcQsciLexerTeX_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTeX_metaObject".}
proc fcQsciLexerTeX_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTeX_metacast".}
proc fcQsciLexerTeX_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTeX_metacall".}
proc fcQsciLexerTeX_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr".}
proc fcQsciLexerTeX_language(self: pointer, ): cstring {.importc: "QsciLexerTeX_language".}
proc fcQsciLexerTeX_lexer(self: pointer, ): cstring {.importc: "QsciLexerTeX_lexer".}
proc fcQsciLexerTeX_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerTeX_wordCharacters".}
proc fcQsciLexerTeX_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_defaultColor".}
proc fcQsciLexerTeX_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTeX_keywords".}
proc fcQsciLexerTeX_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTeX_description".}
proc fcQsciLexerTeX_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTeX_refreshProperties".}
proc fcQsciLexerTeX_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldComments".}
proc fcQsciLexerTeX_foldComments(self: pointer, ): bool {.importc: "QsciLexerTeX_foldComments".}
proc fcQsciLexerTeX_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldCompact".}
proc fcQsciLexerTeX_foldCompact(self: pointer, ): bool {.importc: "QsciLexerTeX_foldCompact".}
proc fcQsciLexerTeX_setProcessComments(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessComments".}
proc fcQsciLexerTeX_processComments(self: pointer, ): bool {.importc: "QsciLexerTeX_processComments".}
proc fcQsciLexerTeX_setProcessIf(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessIf".}
proc fcQsciLexerTeX_processIf(self: pointer, ): bool {.importc: "QsciLexerTeX_processIf".}
proc fcQsciLexerTeX_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr2".}
proc fcQsciLexerTeX_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTeX_tr3".}
type cQsciLexerTeXVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerTeXVTable, self: ptr cQsciLexerTeX) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerTeX_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTeX_virtualbase_metaObject".}
proc fcQsciLexerTeX_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTeX_virtualbase_metacast".}
proc fcQsciLexerTeX_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTeX_virtualbase_metacall".}
proc fcQsciLexerTeX_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerTeX_virtualbase_lexer".}
proc fcQsciLexerTeX_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_lexerId".}
proc fcQsciLexerTeX_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerTeX_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerTeX_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTeX_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTeX_virtualbase_blockEnd".}
proc fcQsciLexerTeX_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_blockLookback".}
proc fcQsciLexerTeX_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTeX_virtualbase_blockStart".}
proc fcQsciLexerTeX_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerTeX_virtualbase_blockStartKeyword".}
proc fcQsciLexerTeX_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_braceStyle".}
proc fcQsciLexerTeX_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerTeX_virtualbase_caseSensitive".}
proc fcQsciLexerTeX_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_color".}
proc fcQsciLexerTeX_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTeX_virtualbase_eolFill".}
proc fcQsciLexerTeX_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_font".}
proc fcQsciLexerTeX_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_indentationGuideView".}
proc fcQsciLexerTeX_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTeX_virtualbase_keywords".}
proc fcQsciLexerTeX_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_defaultStyle".}
proc fcQsciLexerTeX_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_paper".}
proc fcQsciLexerTeX_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTeX_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerTeX_virtualbase_defaultEolFill".}
proc fcQsciLexerTeX_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTeX_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTeX_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerTeX_virtualbase_setEditor".}
proc fcQsciLexerTeX_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTeX_virtualbase_refreshProperties".}
proc fcQsciLexerTeX_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerTeX_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTeX_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerTeX_virtualbase_wordCharacters".}
proc fcQsciLexerTeX_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerTeX_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTeX_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerTeX_virtualbase_setColor".}
proc fcQsciLexerTeX_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerTeX_virtualbase_setEolFill".}
proc fcQsciLexerTeX_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerTeX_virtualbase_setFont".}
proc fcQsciLexerTeX_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerTeX_virtualbase_setPaper".}
proc fcQsciLexerTeX_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTeX_virtualbase_readProperties".}
proc fcQsciLexerTeX_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTeX_virtualbase_writeProperties".}
proc fcQsciLexerTeX_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerTeX_virtualbase_event".}
proc fcQsciLexerTeX_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerTeX_virtualbase_eventFilter".}
proc fcQsciLexerTeX_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTeX_virtualbase_timerEvent".}
proc fcQsciLexerTeX_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTeX_virtualbase_childEvent".}
proc fcQsciLexerTeX_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerTeX_virtualbase_customEvent".}
proc fcQsciLexerTeX_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerTeX_virtualbase_connectNotify".}
proc fcQsciLexerTeX_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerTeX_virtualbase_disconnectNotify".}
proc fcQsciLexerTeX_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTeX_protectedbase_readProperties".}
proc fcQsciLexerTeX_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerTeX_protectedbase_writeProperties".}
proc fcQsciLexerTeX_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerTeX_protectedbase_sender".}
proc fcQsciLexerTeX_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerTeX_protectedbase_senderSignalIndex".}
proc fcQsciLexerTeX_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerTeX_protectedbase_receivers".}
proc fcQsciLexerTeX_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerTeX_protectedbase_isSignalConnected".}
proc fcQsciLexerTeX_new(vtbl: pointer, ): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new".}
proc fcQsciLexerTeX_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new2".}
proc fcQsciLexerTeX_staticMetaObject(): pointer {.importc: "QsciLexerTeX_staticMetaObject".}
proc fcQsciLexerTeX_delete(self: pointer) {.importc: "QsciLexerTeX_delete".}

proc metaObject*(self: gen_qscilexertex_types.QsciLexerTeX, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTeX_metaObject(self.h))

proc metacast*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cstring): pointer =
  fcQsciLexerTeX_metacast(self.h, param1)

proc metacall*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerTeX_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring): string =
  let v_ms = fcQsciLexerTeX_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_language(self.h))

proc lexer*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_lexer(self.h))

proc wordCharacters*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTeX_defaultColor(self.h, style))

proc keywords*(self: gen_qscilexertex_types.QsciLexerTeX, set: cint): cstring =
  (fcQsciLexerTeX_keywords(self.h, set))

proc description*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): string =
  let v_ms = fcQsciLexerTeX_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexertex_types.QsciLexerTeX, ): void =
  fcQsciLexerTeX_refreshProperties(self.h)

proc setFoldComments*(self: gen_qscilexertex_types.QsciLexerTeX, fold: bool): void =
  fcQsciLexerTeX_setFoldComments(self.h, fold)

proc foldComments*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_foldComments(self.h)

proc setFoldCompact*(self: gen_qscilexertex_types.QsciLexerTeX, fold: bool): void =
  fcQsciLexerTeX_setFoldCompact(self.h, fold)

proc foldCompact*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_foldCompact(self.h)

proc setProcessComments*(self: gen_qscilexertex_types.QsciLexerTeX, enable: bool): void =
  fcQsciLexerTeX_setProcessComments(self.h, enable)

proc processComments*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_processComments(self.h)

proc setProcessIf*(self: gen_qscilexertex_types.QsciLexerTeX, enable: bool): void =
  fcQsciLexerTeX_setProcessIf(self.h, enable)

proc processIf*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_processIf(self.h)

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerTeX_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexertex_types.QsciLexerTeX, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerTeX_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerTeXmetaObjectProc* = proc(self: QsciLexerTeX): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerTeXmetacastProc* = proc(self: QsciLexerTeX, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerTeXmetacallProc* = proc(self: QsciLexerTeX, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerTeXlanguageProc* = proc(self: QsciLexerTeX): cstring {.raises: [], gcsafe.}
type QsciLexerTeXlexerProc* = proc(self: QsciLexerTeX): cstring {.raises: [], gcsafe.}
type QsciLexerTeXlexerIdProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXautoCompletionFillupsProc* = proc(self: QsciLexerTeX): cstring {.raises: [], gcsafe.}
type QsciLexerTeXautoCompletionWordSeparatorsProc* = proc(self: QsciLexerTeX): seq[string] {.raises: [], gcsafe.}
type QsciLexerTeXblockEndProc* = proc(self: QsciLexerTeX, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTeXblockLookbackProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXblockStartProc* = proc(self: QsciLexerTeX, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTeXblockStartKeywordProc* = proc(self: QsciLexerTeX, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerTeXbraceStyleProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXcaseSensitiveProc* = proc(self: QsciLexerTeX): bool {.raises: [], gcsafe.}
type QsciLexerTeXcolorProc* = proc(self: QsciLexerTeX, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTeXeolFillProc* = proc(self: QsciLexerTeX, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerTeXfontProc* = proc(self: QsciLexerTeX, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerTeXindentationGuideViewProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXkeywordsProc* = proc(self: QsciLexerTeX, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerTeXdefaultStyleProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXdescriptionProc* = proc(self: QsciLexerTeX, style: cint): string {.raises: [], gcsafe.}
type QsciLexerTeXpaperProc* = proc(self: QsciLexerTeX, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTeXdefaultColorProc* = proc(self: QsciLexerTeX, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTeXdefaultEolFillProc* = proc(self: QsciLexerTeX, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerTeXdefaultFontProc* = proc(self: QsciLexerTeX, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerTeXdefaultPaperProc* = proc(self: QsciLexerTeX, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerTeXsetEditorProc* = proc(self: QsciLexerTeX, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerTeXrefreshPropertiesProc* = proc(self: QsciLexerTeX): void {.raises: [], gcsafe.}
type QsciLexerTeXstyleBitsNeededProc* = proc(self: QsciLexerTeX): cint {.raises: [], gcsafe.}
type QsciLexerTeXwordCharactersProc* = proc(self: QsciLexerTeX): cstring {.raises: [], gcsafe.}
type QsciLexerTeXsetAutoIndentStyleProc* = proc(self: QsciLexerTeX, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerTeXsetColorProc* = proc(self: QsciLexerTeX, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTeXsetEolFillProc* = proc(self: QsciLexerTeX, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTeXsetFontProc* = proc(self: QsciLexerTeX, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTeXsetPaperProc* = proc(self: QsciLexerTeX, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerTeXreadPropertiesProc* = proc(self: QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerTeXwritePropertiesProc* = proc(self: QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerTeXeventProc* = proc(self: QsciLexerTeX, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerTeXeventFilterProc* = proc(self: QsciLexerTeX, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerTeXtimerEventProc* = proc(self: QsciLexerTeX, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerTeXchildEventProc* = proc(self: QsciLexerTeX, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerTeXcustomEventProc* = proc(self: QsciLexerTeX, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerTeXconnectNotifyProc* = proc(self: QsciLexerTeX, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerTeXdisconnectNotifyProc* = proc(self: QsciLexerTeX, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerTeXVTable* = object
  vtbl: cQsciLexerTeXVTable
  metaObject*: QsciLexerTeXmetaObjectProc
  metacast*: QsciLexerTeXmetacastProc
  metacall*: QsciLexerTeXmetacallProc
  language*: QsciLexerTeXlanguageProc
  lexer*: QsciLexerTeXlexerProc
  lexerId*: QsciLexerTeXlexerIdProc
  autoCompletionFillups*: QsciLexerTeXautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerTeXautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerTeXblockEndProc
  blockLookback*: QsciLexerTeXblockLookbackProc
  blockStart*: QsciLexerTeXblockStartProc
  blockStartKeyword*: QsciLexerTeXblockStartKeywordProc
  braceStyle*: QsciLexerTeXbraceStyleProc
  caseSensitive*: QsciLexerTeXcaseSensitiveProc
  color*: QsciLexerTeXcolorProc
  eolFill*: QsciLexerTeXeolFillProc
  font*: QsciLexerTeXfontProc
  indentationGuideView*: QsciLexerTeXindentationGuideViewProc
  keywords*: QsciLexerTeXkeywordsProc
  defaultStyle*: QsciLexerTeXdefaultStyleProc
  description*: QsciLexerTeXdescriptionProc
  paper*: QsciLexerTeXpaperProc
  defaultColor*: QsciLexerTeXdefaultColorProc
  defaultEolFill*: QsciLexerTeXdefaultEolFillProc
  defaultFont*: QsciLexerTeXdefaultFontProc
  defaultPaper*: QsciLexerTeXdefaultPaperProc
  setEditor*: QsciLexerTeXsetEditorProc
  refreshProperties*: QsciLexerTeXrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerTeXstyleBitsNeededProc
  wordCharacters*: QsciLexerTeXwordCharactersProc
  setAutoIndentStyle*: QsciLexerTeXsetAutoIndentStyleProc
  setColor*: QsciLexerTeXsetColorProc
  setEolFill*: QsciLexerTeXsetEolFillProc
  setFont*: QsciLexerTeXsetFontProc
  setPaper*: QsciLexerTeXsetPaperProc
  readProperties*: QsciLexerTeXreadPropertiesProc
  writeProperties*: QsciLexerTeXwritePropertiesProc
  event*: QsciLexerTeXeventProc
  eventFilter*: QsciLexerTeXeventFilterProc
  timerEvent*: QsciLexerTeXtimerEventProc
  childEvent*: QsciLexerTeXchildEventProc
  customEvent*: QsciLexerTeXcustomEventProc
  connectNotify*: QsciLexerTeXconnectNotifyProc
  disconnectNotify*: QsciLexerTeXdisconnectNotifyProc
proc QsciLexerTeXmetaObject*(self: gen_qscilexertex_types.QsciLexerTeX, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTeX_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerTeX_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerTeXmetacast*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cstring): pointer =
  fcQsciLexerTeX_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerTeX_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerTeXmetacall*(self: gen_qscilexertex_types.QsciLexerTeX, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerTeX_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerTeX_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerTeX_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerTeXlexer*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerTeX_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerTeXlexerId*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerTeX_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerTeXautoCompletionFillups*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerTeX_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerTeXautoCompletionWordSeparators*(self: gen_qscilexertex_types.QsciLexerTeX, ): seq[string] =
  var v_ma = fcQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerTeX_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerTeXblockEnd*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fcQsciLexerTeX_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerTeXblockLookback*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerTeX_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerTeXblockStart*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fcQsciLexerTeX_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerTeXblockStartKeyword*(self: gen_qscilexertex_types.QsciLexerTeX, style: ptr cint): cstring =
  (fcQsciLexerTeX_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerTeXbraceStyle*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerTeX_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerTeXcaseSensitive*(self: gen_qscilexertex_types.QsciLexerTeX, ): bool =
  fcQsciLexerTeX_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerTeX_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerTeXcolor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTeX_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXeolFill*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): bool =
  fcQsciLexerTeX_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerTeX_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerTeXfont*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerTeX_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXindentationGuideView*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerTeX_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerTeXkeywords*(self: gen_qscilexertex_types.QsciLexerTeX, set: cint): cstring =
  (fcQsciLexerTeX_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerTeX_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerTeXdefaultStyle*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerTeX_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerTeX_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerTeXpaper*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTeX_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXdefaultColor*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTeX_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXdefaultEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): bool =
  fcQsciLexerTeX_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerTeX_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerTeXdefaultFont*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerTeX_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXdefaultPaper*(self: gen_qscilexertex_types.QsciLexerTeX, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerTeX_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerTeX_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerTeXsetEditor*(self: gen_qscilexertex_types.QsciLexerTeX, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerTeX_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerTeX_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerTeXrefreshProperties*(self: gen_qscilexertex_types.QsciLexerTeX, ): void =
  fcQsciLexerTeX_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerTeX_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerTeXstyleBitsNeeded*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerTeX_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerTeXwordCharacters*(self: gen_qscilexertex_types.QsciLexerTeX, ): cstring =
  (fcQsciLexerTeX_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerTeX_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerTeXsetAutoIndentStyle*(self: gen_qscilexertex_types.QsciLexerTeX, autoindentstyle: cint): void =
  fcQsciLexerTeX_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerTeX_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerTeXsetColor*(self: gen_qscilexertex_types.QsciLexerTeX, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerTeX_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerTeX_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerTeXsetEolFill*(self: gen_qscilexertex_types.QsciLexerTeX, eoffill: bool, style: cint): void =
  fcQsciLexerTeX_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerTeX_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerTeXsetFont*(self: gen_qscilexertex_types.QsciLexerTeX, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerTeX_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerTeX_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerTeXsetPaper*(self: gen_qscilexertex_types.QsciLexerTeX, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerTeX_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerTeX_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerTeXreadProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTeX_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerTeX_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTeXwriteProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTeX_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerTeX_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTeXevent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerTeX_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTeX_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerTeXeventFilter*(self: gen_qscilexertex_types.QsciLexerTeX, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerTeX_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerTeX_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerTeXtimerEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerTeX_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTeX_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerTeXchildEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerTeX_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTeX_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerTeXcustomEvent*(self: gen_qscilexertex_types.QsciLexerTeX, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerTeX_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerTeX_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerTeXconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerTeX_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerTeX_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerTeXdisconnectNotify*(self: gen_qscilexertex_types.QsciLexerTeX, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerTeX_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerTeX_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerTeXVTable](vtbl)
  let self = QsciLexerTeX(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTeX_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexertex_types.QsciLexerTeX, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerTeX_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexertex_types.QsciLexerTeX, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerTeX_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexertex_types.QsciLexerTeX, ): cint =
  fcQsciLexerTeX_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexertex_types.QsciLexerTeX, signal: cstring): cint =
  fcQsciLexerTeX_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexertex_types.QsciLexerTeX, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerTeX_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexertex_types.QsciLexerTeX,
    vtbl: ref QsciLexerTeXVTable = nil): gen_qscilexertex_types.QsciLexerTeX =
  let vtbl = if vtbl == nil: new QsciLexerTeXVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerTeXVTable, _: ptr cQsciLexerTeX) {.cdecl.} =
    let vtbl = cast[ref QsciLexerTeXVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerTeX_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerTeX_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerTeX_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerTeX_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerTeX_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerTeX_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerTeX_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerTeX_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerTeX_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerTeX_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerTeX_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerTeX_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerTeX_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerTeX_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerTeX_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerTeX_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerTeX_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerTeX_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerTeX_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerTeX_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerTeX_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerTeX_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerTeX_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerTeX_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerTeX_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerTeX_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerTeX_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerTeX_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerTeX_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerTeX_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerTeX_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerTeX_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerTeX_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerTeX_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerTeX_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerTeX_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerTeX_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerTeX_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerTeX_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerTeX_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerTeX_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerTeX_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerTeX_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerTeX_disconnectNotify
  gen_qscilexertex_types.QsciLexerTeX(h: fcQsciLexerTeX_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexertex_types.QsciLexerTeX,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerTeXVTable = nil): gen_qscilexertex_types.QsciLexerTeX =
  let vtbl = if vtbl == nil: new QsciLexerTeXVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerTeXVTable, _: ptr cQsciLexerTeX) {.cdecl.} =
    let vtbl = cast[ref QsciLexerTeXVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerTeX_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerTeX_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerTeX_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerTeX_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerTeX_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerTeX_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerTeX_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerTeX_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerTeX_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerTeX_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerTeX_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerTeX_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerTeX_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerTeX_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerTeX_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerTeX_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerTeX_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerTeX_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerTeX_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerTeX_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerTeX_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerTeX_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerTeX_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerTeX_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerTeX_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerTeX_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerTeX_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerTeX_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerTeX_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerTeX_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerTeX_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerTeX_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerTeX_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerTeX_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerTeX_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerTeX_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerTeX_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerTeX_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerTeX_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerTeX_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerTeX_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerTeX_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerTeX_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerTeX_disconnectNotify
  gen_qscilexertex_types.QsciLexerTeX(h: fcQsciLexerTeX_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexertex_types.QsciLexerTeX): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerTeX_staticMetaObject())
proc delete*(self: gen_qscilexertex_types.QsciLexerTeX) =
  fcQsciLexerTeX_delete(self.h)
