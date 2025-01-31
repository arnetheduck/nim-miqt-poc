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
{.compile("gen_qscilexerspice.cpp", cflags).}


type QsciLexerSpiceEnumEnum* = distinct cint
template Default*(_: type QsciLexerSpiceEnumEnum): untyped = 0
template Identifier*(_: type QsciLexerSpiceEnumEnum): untyped = 1
template Command*(_: type QsciLexerSpiceEnumEnum): untyped = 2
template Function*(_: type QsciLexerSpiceEnumEnum): untyped = 3
template Parameter*(_: type QsciLexerSpiceEnumEnum): untyped = 4
template Number*(_: type QsciLexerSpiceEnumEnum): untyped = 5
template Delimiter*(_: type QsciLexerSpiceEnumEnum): untyped = 6
template Value*(_: type QsciLexerSpiceEnumEnum): untyped = 7
template Comment*(_: type QsciLexerSpiceEnumEnum): untyped = 8

import gen_qscilexerspice_types
export gen_qscilexerspice_types

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

type cQsciLexerSpice*{.exportc: "QsciLexerSpice", incompleteStruct.} = object

proc fcQsciLexerSpice_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSpice_metaObject".}
proc fcQsciLexerSpice_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSpice_metacast".}
proc fcQsciLexerSpice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSpice_metacall".}
proc fcQsciLexerSpice_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerSpice_tr".}
proc fcQsciLexerSpice_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerSpice_trUtf8".}
proc fcQsciLexerSpice_language(self: pointer, ): cstring {.importc: "QsciLexerSpice_language".}
proc fcQsciLexerSpice_lexer(self: pointer, ): cstring {.importc: "QsciLexerSpice_lexer".}
proc fcQsciLexerSpice_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSpice_braceStyle".}
proc fcQsciLexerSpice_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSpice_keywords".}
proc fcQsciLexerSpice_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultColor".}
proc fcQsciLexerSpice_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultFont".}
proc fcQsciLexerSpice_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerSpice_description".}
proc fcQsciLexerSpice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSpice_tr2".}
proc fcQsciLexerSpice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSpice_tr3".}
proc fcQsciLexerSpice_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSpice_trUtf82".}
proc fcQsciLexerSpice_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSpice_trUtf83".}
type cQsciLexerSpiceVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerSpiceVTable, self: ptr cQsciLexerSpice) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerSpice_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSpice_virtualbase_metaObject".}
proc fcQsciLexerSpice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSpice_virtualbase_metacast".}
proc fcQsciLexerSpice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSpice_virtualbase_metacall".}
proc fcQsciLexerSpice_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerSpice_virtualbase_lexer".}
proc fcQsciLexerSpice_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_lexerId".}
proc fcQsciLexerSpice_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerSpice_virtualbase_autoCompletionFillups".}
proc fcQsciLexerSpice_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerSpice_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerSpice_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSpice_virtualbase_blockEnd".}
proc fcQsciLexerSpice_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_blockLookback".}
proc fcQsciLexerSpice_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSpice_virtualbase_blockStart".}
proc fcQsciLexerSpice_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerSpice_virtualbase_blockStartKeyword".}
proc fcQsciLexerSpice_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_braceStyle".}
proc fcQsciLexerSpice_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerSpice_virtualbase_caseSensitive".}
proc fcQsciLexerSpice_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_color".}
proc fcQsciLexerSpice_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerSpice_virtualbase_eolFill".}
proc fcQsciLexerSpice_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_font".}
proc fcQsciLexerSpice_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_indentationGuideView".}
proc fcQsciLexerSpice_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSpice_virtualbase_keywords".}
proc fcQsciLexerSpice_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_defaultStyle".}
proc fcQsciLexerSpice_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_paper".}
proc fcQsciLexerSpice_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerSpice_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerSpice_virtualbase_defaultEolFill".}
proc fcQsciLexerSpice_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerSpice_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerSpice_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerSpice_virtualbase_setEditor".}
proc fcQsciLexerSpice_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerSpice_virtualbase_refreshProperties".}
proc fcQsciLexerSpice_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerSpice_virtualbase_styleBitsNeeded".}
proc fcQsciLexerSpice_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerSpice_virtualbase_wordCharacters".}
proc fcQsciLexerSpice_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerSpice_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerSpice_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerSpice_virtualbase_setColor".}
proc fcQsciLexerSpice_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerSpice_virtualbase_setEolFill".}
proc fcQsciLexerSpice_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerSpice_virtualbase_setFont".}
proc fcQsciLexerSpice_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerSpice_virtualbase_setPaper".}
proc fcQsciLexerSpice_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerSpice_virtualbase_readProperties".}
proc fcQsciLexerSpice_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerSpice_virtualbase_writeProperties".}
proc fcQsciLexerSpice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerSpice_virtualbase_event".}
proc fcQsciLexerSpice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerSpice_virtualbase_eventFilter".}
proc fcQsciLexerSpice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSpice_virtualbase_timerEvent".}
proc fcQsciLexerSpice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSpice_virtualbase_childEvent".}
proc fcQsciLexerSpice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerSpice_virtualbase_customEvent".}
proc fcQsciLexerSpice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerSpice_virtualbase_connectNotify".}
proc fcQsciLexerSpice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerSpice_virtualbase_disconnectNotify".}
proc fcQsciLexerSpice_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerSpice_protectedbase_sender".}
proc fcQsciLexerSpice_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerSpice_protectedbase_senderSignalIndex".}
proc fcQsciLexerSpice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerSpice_protectedbase_receivers".}
proc fcQsciLexerSpice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerSpice_protectedbase_isSignalConnected".}
proc fcQsciLexerSpice_new(vtbl: pointer, ): ptr cQsciLexerSpice {.importc: "QsciLexerSpice_new".}
proc fcQsciLexerSpice_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerSpice {.importc: "QsciLexerSpice_new2".}
proc fcQsciLexerSpice_staticMetaObject(): pointer {.importc: "QsciLexerSpice_staticMetaObject".}
proc fcQsciLexerSpice_delete(self: pointer) {.importc: "QsciLexerSpice_delete".}

proc metaObject*(self: gen_qscilexerspice_types.QsciLexerSpice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSpice_metaObject(self.h))

proc metacast*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cstring): pointer =
  fcQsciLexerSpice_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSpice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring): string =
  let v_ms = fcQsciLexerSpice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring): string =
  let v_ms = fcQsciLexerSpice_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_language(self.h))

proc lexer*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_lexer(self.h))

proc braceStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_braceStyle(self.h)

proc keywords*(self: gen_qscilexerspice_types.QsciLexerSpice, set: cint): cstring =
  (fcQsciLexerSpice_keywords(self.h, set))

proc defaultColor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSpice_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSpice_defaultFont(self.h, style))

proc description*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): string =
  let v_ms = fcQsciLexerSpice_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSpice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSpice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSpice_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSpice_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerSpicemetaObjectProc* = proc(self: QsciLexerSpice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerSpicemetacastProc* = proc(self: QsciLexerSpice, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerSpicemetacallProc* = proc(self: QsciLexerSpice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerSpicelanguageProc* = proc(self: QsciLexerSpice): cstring {.raises: [], gcsafe.}
type QsciLexerSpicelexerProc* = proc(self: QsciLexerSpice): cstring {.raises: [], gcsafe.}
type QsciLexerSpicelexerIdProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpiceautoCompletionFillupsProc* = proc(self: QsciLexerSpice): cstring {.raises: [], gcsafe.}
type QsciLexerSpiceautoCompletionWordSeparatorsProc* = proc(self: QsciLexerSpice): seq[string] {.raises: [], gcsafe.}
type QsciLexerSpiceblockEndProc* = proc(self: QsciLexerSpice, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSpiceblockLookbackProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpiceblockStartProc* = proc(self: QsciLexerSpice, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSpiceblockStartKeywordProc* = proc(self: QsciLexerSpice, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerSpicebraceStyleProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpicecaseSensitiveProc* = proc(self: QsciLexerSpice): bool {.raises: [], gcsafe.}
type QsciLexerSpicecolorProc* = proc(self: QsciLexerSpice, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSpiceeolFillProc* = proc(self: QsciLexerSpice, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerSpicefontProc* = proc(self: QsciLexerSpice, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerSpiceindentationGuideViewProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpicekeywordsProc* = proc(self: QsciLexerSpice, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerSpicedefaultStyleProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpicedescriptionProc* = proc(self: QsciLexerSpice, style: cint): string {.raises: [], gcsafe.}
type QsciLexerSpicepaperProc* = proc(self: QsciLexerSpice, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSpicedefaultColorProc* = proc(self: QsciLexerSpice, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSpicedefaultEolFillProc* = proc(self: QsciLexerSpice, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerSpicedefaultFontProc* = proc(self: QsciLexerSpice, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerSpicedefaultPaperProc* = proc(self: QsciLexerSpice, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerSpicesetEditorProc* = proc(self: QsciLexerSpice, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerSpicerefreshPropertiesProc* = proc(self: QsciLexerSpice): void {.raises: [], gcsafe.}
type QsciLexerSpicestyleBitsNeededProc* = proc(self: QsciLexerSpice): cint {.raises: [], gcsafe.}
type QsciLexerSpicewordCharactersProc* = proc(self: QsciLexerSpice): cstring {.raises: [], gcsafe.}
type QsciLexerSpicesetAutoIndentStyleProc* = proc(self: QsciLexerSpice, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerSpicesetColorProc* = proc(self: QsciLexerSpice, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSpicesetEolFillProc* = proc(self: QsciLexerSpice, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSpicesetFontProc* = proc(self: QsciLexerSpice, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSpicesetPaperProc* = proc(self: QsciLexerSpice, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerSpicereadPropertiesProc* = proc(self: QsciLexerSpice, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerSpicewritePropertiesProc* = proc(self: QsciLexerSpice, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerSpiceeventProc* = proc(self: QsciLexerSpice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerSpiceeventFilterProc* = proc(self: QsciLexerSpice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerSpicetimerEventProc* = proc(self: QsciLexerSpice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerSpicechildEventProc* = proc(self: QsciLexerSpice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerSpicecustomEventProc* = proc(self: QsciLexerSpice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerSpiceconnectNotifyProc* = proc(self: QsciLexerSpice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerSpicedisconnectNotifyProc* = proc(self: QsciLexerSpice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerSpiceVTable* = object
  vtbl: cQsciLexerSpiceVTable
  metaObject*: QsciLexerSpicemetaObjectProc
  metacast*: QsciLexerSpicemetacastProc
  metacall*: QsciLexerSpicemetacallProc
  language*: QsciLexerSpicelanguageProc
  lexer*: QsciLexerSpicelexerProc
  lexerId*: QsciLexerSpicelexerIdProc
  autoCompletionFillups*: QsciLexerSpiceautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerSpiceautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerSpiceblockEndProc
  blockLookback*: QsciLexerSpiceblockLookbackProc
  blockStart*: QsciLexerSpiceblockStartProc
  blockStartKeyword*: QsciLexerSpiceblockStartKeywordProc
  braceStyle*: QsciLexerSpicebraceStyleProc
  caseSensitive*: QsciLexerSpicecaseSensitiveProc
  color*: QsciLexerSpicecolorProc
  eolFill*: QsciLexerSpiceeolFillProc
  font*: QsciLexerSpicefontProc
  indentationGuideView*: QsciLexerSpiceindentationGuideViewProc
  keywords*: QsciLexerSpicekeywordsProc
  defaultStyle*: QsciLexerSpicedefaultStyleProc
  description*: QsciLexerSpicedescriptionProc
  paper*: QsciLexerSpicepaperProc
  defaultColor*: QsciLexerSpicedefaultColorProc
  defaultEolFill*: QsciLexerSpicedefaultEolFillProc
  defaultFont*: QsciLexerSpicedefaultFontProc
  defaultPaper*: QsciLexerSpicedefaultPaperProc
  setEditor*: QsciLexerSpicesetEditorProc
  refreshProperties*: QsciLexerSpicerefreshPropertiesProc
  styleBitsNeeded*: QsciLexerSpicestyleBitsNeededProc
  wordCharacters*: QsciLexerSpicewordCharactersProc
  setAutoIndentStyle*: QsciLexerSpicesetAutoIndentStyleProc
  setColor*: QsciLexerSpicesetColorProc
  setEolFill*: QsciLexerSpicesetEolFillProc
  setFont*: QsciLexerSpicesetFontProc
  setPaper*: QsciLexerSpicesetPaperProc
  readProperties*: QsciLexerSpicereadPropertiesProc
  writeProperties*: QsciLexerSpicewritePropertiesProc
  event*: QsciLexerSpiceeventProc
  eventFilter*: QsciLexerSpiceeventFilterProc
  timerEvent*: QsciLexerSpicetimerEventProc
  childEvent*: QsciLexerSpicechildEventProc
  customEvent*: QsciLexerSpicecustomEventProc
  connectNotify*: QsciLexerSpiceconnectNotifyProc
  disconnectNotify*: QsciLexerSpicedisconnectNotifyProc
proc QsciLexerSpicemetaObject*(self: gen_qscilexerspice_types.QsciLexerSpice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSpice_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerSpice_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerSpicemetacast*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cstring): pointer =
  fcQsciLexerSpice_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerSpice_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerSpicemetacall*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSpice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerSpice_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerSpice_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerSpicelexer*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerSpice_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerSpicelexerId*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerSpice_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerSpiceautoCompletionFillups*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerSpice_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerSpiceautoCompletionWordSeparators*(self: gen_qscilexerspice_types.QsciLexerSpice, ): seq[string] =
  var v_ma = fcQsciLexerSpice_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerSpice_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerSpiceblockEnd*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fcQsciLexerSpice_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerSpiceblockLookback*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerSpice_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerSpiceblockStart*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fcQsciLexerSpice_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerSpiceblockStartKeyword*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fcQsciLexerSpice_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerSpicebraceStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerSpice_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerSpicecaseSensitive*(self: gen_qscilexerspice_types.QsciLexerSpice, ): bool =
  fcQsciLexerSpice_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerSpice_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerSpicecolor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSpice_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerSpiceeolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): bool =
  fcQsciLexerSpice_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerSpice_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerSpicefont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSpice_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerSpiceindentationGuideView*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerSpice_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerSpicekeywords*(self: gen_qscilexerspice_types.QsciLexerSpice, set: cint): cstring =
  (fcQsciLexerSpice_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerSpice_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerSpicedefaultStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerSpice_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerSpice_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerSpicepaper*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSpice_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerSpicedefaultColor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSpice_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerSpicedefaultEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): bool =
  fcQsciLexerSpice_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerSpice_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerSpicedefaultFont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerSpice_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerSpicedefaultPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerSpice_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerSpice_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerSpicesetEditor*(self: gen_qscilexerspice_types.QsciLexerSpice, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerSpice_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerSpice_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerSpicerefreshProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, ): void =
  fcQsciLexerSpice_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerSpice_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerSpicestyleBitsNeeded*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerSpice_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerSpicewordCharacters*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerSpice_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerSpicesetAutoIndentStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, autoindentstyle: cint): void =
  fcQsciLexerSpice_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerSpice_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerSpicesetColor*(self: gen_qscilexerspice_types.QsciLexerSpice, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerSpice_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerSpice_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerSpicesetEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, eoffill: bool, style: cint): void =
  fcQsciLexerSpice_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerSpice_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerSpicesetFont*(self: gen_qscilexerspice_types.QsciLexerSpice, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerSpice_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerSpice_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerSpicesetPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerSpice_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerSpice_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerSpicereadProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerSpice_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerSpice_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSpicewriteProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerSpice_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerSpice_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSpiceevent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerSpice_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSpice_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerSpiceeventFilter*(self: gen_qscilexerspice_types.QsciLexerSpice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerSpice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerSpice_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerSpicetimerEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerSpice_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSpice_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerSpicechildEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerSpice_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSpice_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerSpicecustomEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerSpice_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerSpice_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerSpiceconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerSpice_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerSpice_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerSpicedisconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerSpice_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerSpice_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerSpiceVTable](vtbl)
  let self = QsciLexerSpice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexerspice_types.QsciLexerSpice, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerSpice_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: cstring): cint =
  fcQsciLexerSpice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerSpice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerspice_types.QsciLexerSpice,
    vtbl: ref QsciLexerSpiceVTable = nil): gen_qscilexerspice_types.QsciLexerSpice =
  let vtbl = if vtbl == nil: new QsciLexerSpiceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerSpiceVTable, _: ptr cQsciLexerSpice) {.cdecl.} =
    let vtbl = cast[ref QsciLexerSpiceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerSpice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerSpice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerSpice_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerSpice_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerSpice_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerSpice_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerSpice_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerSpice_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerSpice_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerSpice_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerSpice_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerSpice_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerSpice_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerSpice_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerSpice_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerSpice_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerSpice_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerSpice_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerSpice_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerSpice_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerSpice_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerSpice_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerSpice_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerSpice_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerSpice_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerSpice_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerSpice_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerSpice_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerSpice_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerSpice_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerSpice_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerSpice_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerSpice_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerSpice_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerSpice_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerSpice_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerSpice_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerSpice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerSpice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerSpice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerSpice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerSpice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerSpice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerSpice_disconnectNotify
  gen_qscilexerspice_types.QsciLexerSpice(h: fcQsciLexerSpice_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerspice_types.QsciLexerSpice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerSpiceVTable = nil): gen_qscilexerspice_types.QsciLexerSpice =
  let vtbl = if vtbl == nil: new QsciLexerSpiceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerSpiceVTable, _: ptr cQsciLexerSpice) {.cdecl.} =
    let vtbl = cast[ref QsciLexerSpiceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerSpice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerSpice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerSpice_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerSpice_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerSpice_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerSpice_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerSpice_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerSpice_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerSpice_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerSpice_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerSpice_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerSpice_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerSpice_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerSpice_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerSpice_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerSpice_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerSpice_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerSpice_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerSpice_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerSpice_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerSpice_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerSpice_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerSpice_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerSpice_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerSpice_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerSpice_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerSpice_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerSpice_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerSpice_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerSpice_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerSpice_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerSpice_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerSpice_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerSpice_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerSpice_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerSpice_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerSpice_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerSpice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerSpice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerSpice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerSpice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerSpice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerSpice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerSpice_disconnectNotify
  gen_qscilexerspice_types.QsciLexerSpice(h: fcQsciLexerSpice_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerspice_types.QsciLexerSpice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerSpice_staticMetaObject())
proc delete*(self: gen_qscilexerspice_types.QsciLexerSpice) =
  fcQsciLexerSpice_delete(self.h)
