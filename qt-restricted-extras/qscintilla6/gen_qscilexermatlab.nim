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
{.compile("gen_qscilexermatlab.cpp", cflags).}


type QsciLexerMatlabEnumEnum* = distinct cint
template Default*(_: type QsciLexerMatlabEnumEnum): untyped = 0
template Comment*(_: type QsciLexerMatlabEnumEnum): untyped = 1
template Command*(_: type QsciLexerMatlabEnumEnum): untyped = 2
template Number*(_: type QsciLexerMatlabEnumEnum): untyped = 3
template Keyword*(_: type QsciLexerMatlabEnumEnum): untyped = 4
template SingleQuotedString*(_: type QsciLexerMatlabEnumEnum): untyped = 5
template Operator*(_: type QsciLexerMatlabEnumEnum): untyped = 6
template Identifier*(_: type QsciLexerMatlabEnumEnum): untyped = 7
template DoubleQuotedString*(_: type QsciLexerMatlabEnumEnum): untyped = 8

import gen_qscilexermatlab_types
export gen_qscilexermatlab_types

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

type cQsciLexerMatlab*{.exportc: "QsciLexerMatlab", incompleteStruct.} = object

proc fcQsciLexerMatlab_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMatlab_metaObject".}
proc fcQsciLexerMatlab_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMatlab_metacast".}
proc fcQsciLexerMatlab_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMatlab_metacall".}
proc fcQsciLexerMatlab_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_tr".}
proc fcQsciLexerMatlab_language(self: pointer, ): cstring {.importc: "QsciLexerMatlab_language".}
proc fcQsciLexerMatlab_lexer(self: pointer, ): cstring {.importc: "QsciLexerMatlab_lexer".}
proc fcQsciLexerMatlab_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultColor".}
proc fcQsciLexerMatlab_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultFont".}
proc fcQsciLexerMatlab_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMatlab_keywords".}
proc fcQsciLexerMatlab_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMatlab_description".}
proc fcQsciLexerMatlab_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_tr2".}
proc fcQsciLexerMatlab_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMatlab_tr3".}
type cQsciLexerMatlabVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerMatlabVTable, self: ptr cQsciLexerMatlab) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerMatlab_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMatlab_virtualbase_metaObject".}
proc fcQsciLexerMatlab_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMatlab_virtualbase_metacast".}
proc fcQsciLexerMatlab_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMatlab_virtualbase_metacall".}
proc fcQsciLexerMatlab_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerMatlab_virtualbase_lexer".}
proc fcQsciLexerMatlab_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_lexerId".}
proc fcQsciLexerMatlab_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerMatlab_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMatlab_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerMatlab_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMatlab_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMatlab_virtualbase_blockEnd".}
proc fcQsciLexerMatlab_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_blockLookback".}
proc fcQsciLexerMatlab_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMatlab_virtualbase_blockStart".}
proc fcQsciLexerMatlab_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMatlab_virtualbase_blockStartKeyword".}
proc fcQsciLexerMatlab_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_braceStyle".}
proc fcQsciLexerMatlab_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerMatlab_virtualbase_caseSensitive".}
proc fcQsciLexerMatlab_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_color".}
proc fcQsciLexerMatlab_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMatlab_virtualbase_eolFill".}
proc fcQsciLexerMatlab_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_font".}
proc fcQsciLexerMatlab_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_indentationGuideView".}
proc fcQsciLexerMatlab_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMatlab_virtualbase_keywords".}
proc fcQsciLexerMatlab_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_defaultStyle".}
proc fcQsciLexerMatlab_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_paper".}
proc fcQsciLexerMatlab_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMatlab_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMatlab_virtualbase_defaultEolFill".}
proc fcQsciLexerMatlab_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMatlab_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMatlab_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerMatlab_virtualbase_setEditor".}
proc fcQsciLexerMatlab_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerMatlab_virtualbase_refreshProperties".}
proc fcQsciLexerMatlab_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerMatlab_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMatlab_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerMatlab_virtualbase_wordCharacters".}
proc fcQsciLexerMatlab_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerMatlab_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMatlab_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMatlab_virtualbase_setColor".}
proc fcQsciLexerMatlab_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerMatlab_virtualbase_setEolFill".}
proc fcQsciLexerMatlab_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerMatlab_virtualbase_setFont".}
proc fcQsciLexerMatlab_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMatlab_virtualbase_setPaper".}
proc fcQsciLexerMatlab_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMatlab_virtualbase_readProperties".}
proc fcQsciLexerMatlab_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMatlab_virtualbase_writeProperties".}
proc fcQsciLexerMatlab_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerMatlab_virtualbase_event".}
proc fcQsciLexerMatlab_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerMatlab_virtualbase_eventFilter".}
proc fcQsciLexerMatlab_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMatlab_virtualbase_timerEvent".}
proc fcQsciLexerMatlab_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMatlab_virtualbase_childEvent".}
proc fcQsciLexerMatlab_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMatlab_virtualbase_customEvent".}
proc fcQsciLexerMatlab_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMatlab_virtualbase_connectNotify".}
proc fcQsciLexerMatlab_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMatlab_virtualbase_disconnectNotify".}
proc fcQsciLexerMatlab_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerMatlab_protectedbase_sender".}
proc fcQsciLexerMatlab_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerMatlab_protectedbase_senderSignalIndex".}
proc fcQsciLexerMatlab_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerMatlab_protectedbase_receivers".}
proc fcQsciLexerMatlab_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerMatlab_protectedbase_isSignalConnected".}
proc fcQsciLexerMatlab_new(vtbl: pointer, ): ptr cQsciLexerMatlab {.importc: "QsciLexerMatlab_new".}
proc fcQsciLexerMatlab_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerMatlab {.importc: "QsciLexerMatlab_new2".}
proc fcQsciLexerMatlab_staticMetaObject(): pointer {.importc: "QsciLexerMatlab_staticMetaObject".}
proc fcQsciLexerMatlab_delete(self: pointer) {.importc: "QsciLexerMatlab_delete".}

proc metaObject*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMatlab_metaObject(self.h))

proc metacast*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cstring): pointer =
  fcQsciLexerMatlab_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMatlab_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring): string =
  let v_ms = fcQsciLexerMatlab_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_language(self.h))

proc lexer*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_lexer(self.h))

proc defaultColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMatlab_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMatlab_defaultFont(self.h, style))

proc keywords*(self: gen_qscilexermatlab_types.QsciLexerMatlab, set: cint): cstring =
  (fcQsciLexerMatlab_keywords(self.h, set))

proc description*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): string =
  let v_ms = fcQsciLexerMatlab_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMatlab_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMatlab_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerMatlabmetaObjectProc* = proc(self: QsciLexerMatlab): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerMatlabmetacastProc* = proc(self: QsciLexerMatlab, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerMatlabmetacallProc* = proc(self: QsciLexerMatlab, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerMatlablanguageProc* = proc(self: QsciLexerMatlab): cstring {.raises: [], gcsafe.}
type QsciLexerMatlablexerProc* = proc(self: QsciLexerMatlab): cstring {.raises: [], gcsafe.}
type QsciLexerMatlablexerIdProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabautoCompletionFillupsProc* = proc(self: QsciLexerMatlab): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabautoCompletionWordSeparatorsProc* = proc(self: QsciLexerMatlab): seq[string] {.raises: [], gcsafe.}
type QsciLexerMatlabblockEndProc* = proc(self: QsciLexerMatlab, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabblockLookbackProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabblockStartProc* = proc(self: QsciLexerMatlab, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabblockStartKeywordProc* = proc(self: QsciLexerMatlab, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabbraceStyleProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabcaseSensitiveProc* = proc(self: QsciLexerMatlab): bool {.raises: [], gcsafe.}
type QsciLexerMatlabcolorProc* = proc(self: QsciLexerMatlab, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMatlabeolFillProc* = proc(self: QsciLexerMatlab, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMatlabfontProc* = proc(self: QsciLexerMatlab, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMatlabindentationGuideViewProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabkeywordsProc* = proc(self: QsciLexerMatlab, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabdefaultStyleProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabdescriptionProc* = proc(self: QsciLexerMatlab, style: cint): string {.raises: [], gcsafe.}
type QsciLexerMatlabpaperProc* = proc(self: QsciLexerMatlab, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMatlabdefaultColorProc* = proc(self: QsciLexerMatlab, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMatlabdefaultEolFillProc* = proc(self: QsciLexerMatlab, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMatlabdefaultFontProc* = proc(self: QsciLexerMatlab, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMatlabdefaultPaperProc* = proc(self: QsciLexerMatlab, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMatlabsetEditorProc* = proc(self: QsciLexerMatlab, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerMatlabrefreshPropertiesProc* = proc(self: QsciLexerMatlab): void {.raises: [], gcsafe.}
type QsciLexerMatlabstyleBitsNeededProc* = proc(self: QsciLexerMatlab): cint {.raises: [], gcsafe.}
type QsciLexerMatlabwordCharactersProc* = proc(self: QsciLexerMatlab): cstring {.raises: [], gcsafe.}
type QsciLexerMatlabsetAutoIndentStyleProc* = proc(self: QsciLexerMatlab, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerMatlabsetColorProc* = proc(self: QsciLexerMatlab, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMatlabsetEolFillProc* = proc(self: QsciLexerMatlab, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMatlabsetFontProc* = proc(self: QsciLexerMatlab, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMatlabsetPaperProc* = proc(self: QsciLexerMatlab, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMatlabreadPropertiesProc* = proc(self: QsciLexerMatlab, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMatlabwritePropertiesProc* = proc(self: QsciLexerMatlab, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMatlabeventProc* = proc(self: QsciLexerMatlab, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMatlabeventFilterProc* = proc(self: QsciLexerMatlab, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMatlabtimerEventProc* = proc(self: QsciLexerMatlab, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerMatlabchildEventProc* = proc(self: QsciLexerMatlab, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerMatlabcustomEventProc* = proc(self: QsciLexerMatlab, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerMatlabconnectNotifyProc* = proc(self: QsciLexerMatlab, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMatlabdisconnectNotifyProc* = proc(self: QsciLexerMatlab, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMatlabVTable* = object
  vtbl: cQsciLexerMatlabVTable
  metaObject*: QsciLexerMatlabmetaObjectProc
  metacast*: QsciLexerMatlabmetacastProc
  metacall*: QsciLexerMatlabmetacallProc
  language*: QsciLexerMatlablanguageProc
  lexer*: QsciLexerMatlablexerProc
  lexerId*: QsciLexerMatlablexerIdProc
  autoCompletionFillups*: QsciLexerMatlabautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerMatlabautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerMatlabblockEndProc
  blockLookback*: QsciLexerMatlabblockLookbackProc
  blockStart*: QsciLexerMatlabblockStartProc
  blockStartKeyword*: QsciLexerMatlabblockStartKeywordProc
  braceStyle*: QsciLexerMatlabbraceStyleProc
  caseSensitive*: QsciLexerMatlabcaseSensitiveProc
  color*: QsciLexerMatlabcolorProc
  eolFill*: QsciLexerMatlabeolFillProc
  font*: QsciLexerMatlabfontProc
  indentationGuideView*: QsciLexerMatlabindentationGuideViewProc
  keywords*: QsciLexerMatlabkeywordsProc
  defaultStyle*: QsciLexerMatlabdefaultStyleProc
  description*: QsciLexerMatlabdescriptionProc
  paper*: QsciLexerMatlabpaperProc
  defaultColor*: QsciLexerMatlabdefaultColorProc
  defaultEolFill*: QsciLexerMatlabdefaultEolFillProc
  defaultFont*: QsciLexerMatlabdefaultFontProc
  defaultPaper*: QsciLexerMatlabdefaultPaperProc
  setEditor*: QsciLexerMatlabsetEditorProc
  refreshProperties*: QsciLexerMatlabrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerMatlabstyleBitsNeededProc
  wordCharacters*: QsciLexerMatlabwordCharactersProc
  setAutoIndentStyle*: QsciLexerMatlabsetAutoIndentStyleProc
  setColor*: QsciLexerMatlabsetColorProc
  setEolFill*: QsciLexerMatlabsetEolFillProc
  setFont*: QsciLexerMatlabsetFontProc
  setPaper*: QsciLexerMatlabsetPaperProc
  readProperties*: QsciLexerMatlabreadPropertiesProc
  writeProperties*: QsciLexerMatlabwritePropertiesProc
  event*: QsciLexerMatlabeventProc
  eventFilter*: QsciLexerMatlabeventFilterProc
  timerEvent*: QsciLexerMatlabtimerEventProc
  childEvent*: QsciLexerMatlabchildEventProc
  customEvent*: QsciLexerMatlabcustomEventProc
  connectNotify*: QsciLexerMatlabconnectNotifyProc
  disconnectNotify*: QsciLexerMatlabdisconnectNotifyProc
proc QsciLexerMatlabmetaObject*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMatlab_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerMatlab_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerMatlabmetacast*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cstring): pointer =
  fcQsciLexerMatlab_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerMatlab_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerMatlabmetacall*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMatlab_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerMatlab_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMatlab_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerMatlablexer*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerMatlab_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerMatlablexerId*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerMatlabautoCompletionFillups*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerMatlab_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerMatlabautoCompletionWordSeparators*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): seq[string] =
  var v_ma = fcQsciLexerMatlab_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerMatlab_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerMatlabblockEnd*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fcQsciLexerMatlab_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerMatlabblockLookback*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerMatlabblockStart*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fcQsciLexerMatlab_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerMatlabblockStartKeyword*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fcQsciLexerMatlab_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerMatlabbraceStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerMatlabcaseSensitive*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): bool =
  fcQsciLexerMatlab_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerMatlabcolor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMatlab_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabeolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): bool =
  fcQsciLexerMatlab_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMatlab_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerMatlabfont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMatlab_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabindentationGuideView*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerMatlabkeywords*(self: gen_qscilexermatlab_types.QsciLexerMatlab, set: cint): cstring =
  (fcQsciLexerMatlab_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerMatlab_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerMatlabdefaultStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMatlab_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerMatlabpaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMatlab_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabdefaultColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMatlab_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabdefaultEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): bool =
  fcQsciLexerMatlab_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMatlab_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerMatlabdefaultFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMatlab_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabdefaultPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMatlab_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMatlab_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerMatlabsetEditor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerMatlab_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerMatlab_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerMatlabrefreshProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): void =
  fcQsciLexerMatlab_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerMatlabstyleBitsNeeded*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerMatlab_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerMatlabwordCharacters*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerMatlab_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerMatlabsetAutoIndentStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, autoindentstyle: cint): void =
  fcQsciLexerMatlab_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerMatlab_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerMatlabsetColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMatlab_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMatlab_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerMatlabsetEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, eoffill: bool, style: cint): void =
  fcQsciLexerMatlab_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerMatlab_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerMatlabsetFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerMatlab_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerMatlab_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerMatlabsetPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMatlab_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMatlab_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerMatlabreadProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMatlab_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMatlab_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMatlabwriteProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMatlab_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMatlab_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMatlabevent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMatlab_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMatlab_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerMatlabeventFilter*(self: gen_qscilexermatlab_types.QsciLexerMatlab, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMatlab_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerMatlab_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMatlabtimerEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerMatlab_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMatlab_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerMatlabchildEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerMatlab_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMatlab_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerMatlabcustomEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerMatlab_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMatlab_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerMatlabconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMatlab_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMatlab_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerMatlabdisconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMatlab_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMatlab_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMatlabVTable](vtbl)
  let self = QsciLexerMatlab(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerMatlab_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fcQsciLexerMatlab_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: cstring): cint =
  fcQsciLexerMatlab_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerMatlab_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexermatlab_types.QsciLexerMatlab,
    vtbl: ref QsciLexerMatlabVTable = nil): gen_qscilexermatlab_types.QsciLexerMatlab =
  let vtbl = if vtbl == nil: new QsciLexerMatlabVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMatlabVTable, _: ptr cQsciLexerMatlab) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMatlabVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMatlab_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMatlab_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMatlab_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMatlab_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMatlab_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMatlab_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMatlab_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMatlab_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMatlab_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMatlab_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMatlab_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMatlab_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMatlab_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMatlab_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMatlab_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMatlab_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMatlab_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMatlab_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMatlab_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMatlab_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMatlab_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMatlab_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMatlab_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMatlab_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMatlab_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMatlab_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMatlab_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMatlab_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMatlab_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMatlab_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMatlab_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMatlab_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMatlab_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMatlab_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMatlab_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMatlab_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMatlab_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMatlab_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMatlab_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMatlab_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMatlab_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMatlab_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMatlab_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMatlab_disconnectNotify
  gen_qscilexermatlab_types.QsciLexerMatlab(h: fcQsciLexerMatlab_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexermatlab_types.QsciLexerMatlab,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerMatlabVTable = nil): gen_qscilexermatlab_types.QsciLexerMatlab =
  let vtbl = if vtbl == nil: new QsciLexerMatlabVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMatlabVTable, _: ptr cQsciLexerMatlab) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMatlabVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMatlab_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMatlab_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMatlab_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMatlab_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMatlab_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMatlab_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMatlab_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMatlab_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMatlab_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMatlab_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMatlab_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMatlab_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMatlab_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMatlab_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMatlab_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMatlab_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMatlab_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMatlab_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMatlab_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMatlab_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMatlab_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMatlab_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMatlab_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMatlab_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMatlab_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMatlab_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMatlab_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMatlab_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMatlab_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMatlab_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMatlab_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMatlab_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMatlab_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMatlab_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMatlab_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMatlab_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMatlab_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMatlab_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMatlab_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMatlab_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMatlab_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMatlab_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMatlab_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMatlab_disconnectNotify
  gen_qscilexermatlab_types.QsciLexerMatlab(h: fcQsciLexerMatlab_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexermatlab_types.QsciLexerMatlab): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMatlab_staticMetaObject())
proc delete*(self: gen_qscilexermatlab_types.QsciLexerMatlab) =
  fcQsciLexerMatlab_delete(self.h)
