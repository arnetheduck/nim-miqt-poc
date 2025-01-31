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
{.compile("gen_qscilexerdiff.cpp", cflags).}


type QsciLexerDiffEnumEnum* = distinct cint
template Default*(_: type QsciLexerDiffEnumEnum): untyped = 0
template Comment*(_: type QsciLexerDiffEnumEnum): untyped = 1
template Command*(_: type QsciLexerDiffEnumEnum): untyped = 2
template Header*(_: type QsciLexerDiffEnumEnum): untyped = 3
template Position*(_: type QsciLexerDiffEnumEnum): untyped = 4
template LineRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 5
template LineAdded*(_: type QsciLexerDiffEnumEnum): untyped = 6
template LineChanged*(_: type QsciLexerDiffEnumEnum): untyped = 7
template AddingPatchAdded*(_: type QsciLexerDiffEnumEnum): untyped = 8
template RemovingPatchAdded*(_: type QsciLexerDiffEnumEnum): untyped = 9
template AddingPatchRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 10
template RemovingPatchRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 11

import gen_qscilexerdiff_types
export gen_qscilexerdiff_types

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

type cQsciLexerDiff*{.exportc: "QsciLexerDiff", incompleteStruct.} = object

proc fcQsciLexerDiff_metaObject(self: pointer, ): pointer {.importc: "QsciLexerDiff_metaObject".}
proc fcQsciLexerDiff_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerDiff_metacast".}
proc fcQsciLexerDiff_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerDiff_metacall".}
proc fcQsciLexerDiff_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr".}
proc fcQsciLexerDiff_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerDiff_trUtf8".}
proc fcQsciLexerDiff_language(self: pointer, ): cstring {.importc: "QsciLexerDiff_language".}
proc fcQsciLexerDiff_lexer(self: pointer, ): cstring {.importc: "QsciLexerDiff_lexer".}
proc fcQsciLexerDiff_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerDiff_wordCharacters".}
proc fcQsciLexerDiff_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_defaultColor".}
proc fcQsciLexerDiff_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerDiff_description".}
proc fcQsciLexerDiff_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr2".}
proc fcQsciLexerDiff_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerDiff_tr3".}
proc fcQsciLexerDiff_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerDiff_trUtf82".}
proc fcQsciLexerDiff_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerDiff_trUtf83".}
type cQsciLexerDiffVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerDiffVTable, self: ptr cQsciLexerDiff) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerDiff_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerDiff_virtualbase_metaObject".}
proc fcQsciLexerDiff_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerDiff_virtualbase_metacast".}
proc fcQsciLexerDiff_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerDiff_virtualbase_metacall".}
proc fcQsciLexerDiff_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerDiff_virtualbase_lexer".}
proc fcQsciLexerDiff_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_lexerId".}
proc fcQsciLexerDiff_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerDiff_virtualbase_autoCompletionFillups".}
proc fcQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerDiff_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerDiff_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerDiff_virtualbase_blockEnd".}
proc fcQsciLexerDiff_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_blockLookback".}
proc fcQsciLexerDiff_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerDiff_virtualbase_blockStart".}
proc fcQsciLexerDiff_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerDiff_virtualbase_blockStartKeyword".}
proc fcQsciLexerDiff_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_braceStyle".}
proc fcQsciLexerDiff_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerDiff_virtualbase_caseSensitive".}
proc fcQsciLexerDiff_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_color".}
proc fcQsciLexerDiff_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerDiff_virtualbase_eolFill".}
proc fcQsciLexerDiff_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_font".}
proc fcQsciLexerDiff_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_indentationGuideView".}
proc fcQsciLexerDiff_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerDiff_virtualbase_keywords".}
proc fcQsciLexerDiff_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_defaultStyle".}
proc fcQsciLexerDiff_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_paper".}
proc fcQsciLexerDiff_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerDiff_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerDiff_virtualbase_defaultEolFill".}
proc fcQsciLexerDiff_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerDiff_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerDiff_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerDiff_virtualbase_setEditor".}
proc fcQsciLexerDiff_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerDiff_virtualbase_refreshProperties".}
proc fcQsciLexerDiff_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerDiff_virtualbase_styleBitsNeeded".}
proc fcQsciLexerDiff_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerDiff_virtualbase_wordCharacters".}
proc fcQsciLexerDiff_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerDiff_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerDiff_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerDiff_virtualbase_setColor".}
proc fcQsciLexerDiff_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerDiff_virtualbase_setEolFill".}
proc fcQsciLexerDiff_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerDiff_virtualbase_setFont".}
proc fcQsciLexerDiff_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerDiff_virtualbase_setPaper".}
proc fcQsciLexerDiff_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerDiff_virtualbase_readProperties".}
proc fcQsciLexerDiff_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerDiff_virtualbase_writeProperties".}
proc fcQsciLexerDiff_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerDiff_virtualbase_event".}
proc fcQsciLexerDiff_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerDiff_virtualbase_eventFilter".}
proc fcQsciLexerDiff_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerDiff_virtualbase_timerEvent".}
proc fcQsciLexerDiff_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerDiff_virtualbase_childEvent".}
proc fcQsciLexerDiff_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerDiff_virtualbase_customEvent".}
proc fcQsciLexerDiff_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerDiff_virtualbase_connectNotify".}
proc fcQsciLexerDiff_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerDiff_virtualbase_disconnectNotify".}
proc fcQsciLexerDiff_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerDiff_protectedbase_sender".}
proc fcQsciLexerDiff_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerDiff_protectedbase_senderSignalIndex".}
proc fcQsciLexerDiff_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerDiff_protectedbase_receivers".}
proc fcQsciLexerDiff_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerDiff_protectedbase_isSignalConnected".}
proc fcQsciLexerDiff_new(vtbl: pointer, ): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new".}
proc fcQsciLexerDiff_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new2".}
proc fcQsciLexerDiff_staticMetaObject(): pointer {.importc: "QsciLexerDiff_staticMetaObject".}
proc fcQsciLexerDiff_delete(self: pointer) {.importc: "QsciLexerDiff_delete".}

proc metaObject*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerDiff_metaObject(self.h))

proc metacast*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cstring): pointer =
  fcQsciLexerDiff_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerDiff_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring): string =
  let v_ms = fcQsciLexerDiff_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring): string =
  let v_ms = fcQsciLexerDiff_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_language(self.h))

proc lexer*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerDiff_defaultColor(self.h, style))

proc description*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): string =
  let v_ms = fcQsciLexerDiff_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerDiff_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerDiff_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerDiff_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerDiff_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerDiffmetaObjectProc* = proc(self: QsciLexerDiff): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerDiffmetacastProc* = proc(self: QsciLexerDiff, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerDiffmetacallProc* = proc(self: QsciLexerDiff, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerDifflanguageProc* = proc(self: QsciLexerDiff): cstring {.raises: [], gcsafe.}
type QsciLexerDifflexerProc* = proc(self: QsciLexerDiff): cstring {.raises: [], gcsafe.}
type QsciLexerDifflexerIdProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffautoCompletionFillupsProc* = proc(self: QsciLexerDiff): cstring {.raises: [], gcsafe.}
type QsciLexerDiffautoCompletionWordSeparatorsProc* = proc(self: QsciLexerDiff): seq[string] {.raises: [], gcsafe.}
type QsciLexerDiffblockEndProc* = proc(self: QsciLexerDiff, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDiffblockLookbackProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffblockStartProc* = proc(self: QsciLexerDiff, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDiffblockStartKeywordProc* = proc(self: QsciLexerDiff, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerDiffbraceStyleProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffcaseSensitiveProc* = proc(self: QsciLexerDiff): bool {.raises: [], gcsafe.}
type QsciLexerDiffcolorProc* = proc(self: QsciLexerDiff, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDiffeolFillProc* = proc(self: QsciLexerDiff, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerDifffontProc* = proc(self: QsciLexerDiff, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerDiffindentationGuideViewProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffkeywordsProc* = proc(self: QsciLexerDiff, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerDiffdefaultStyleProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffdescriptionProc* = proc(self: QsciLexerDiff, style: cint): string {.raises: [], gcsafe.}
type QsciLexerDiffpaperProc* = proc(self: QsciLexerDiff, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDiffdefaultColorProc* = proc(self: QsciLexerDiff, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDiffdefaultEolFillProc* = proc(self: QsciLexerDiff, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerDiffdefaultFontProc* = proc(self: QsciLexerDiff, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerDiffdefaultPaperProc* = proc(self: QsciLexerDiff, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerDiffsetEditorProc* = proc(self: QsciLexerDiff, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerDiffrefreshPropertiesProc* = proc(self: QsciLexerDiff): void {.raises: [], gcsafe.}
type QsciLexerDiffstyleBitsNeededProc* = proc(self: QsciLexerDiff): cint {.raises: [], gcsafe.}
type QsciLexerDiffwordCharactersProc* = proc(self: QsciLexerDiff): cstring {.raises: [], gcsafe.}
type QsciLexerDiffsetAutoIndentStyleProc* = proc(self: QsciLexerDiff, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerDiffsetColorProc* = proc(self: QsciLexerDiff, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDiffsetEolFillProc* = proc(self: QsciLexerDiff, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDiffsetFontProc* = proc(self: QsciLexerDiff, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDiffsetPaperProc* = proc(self: QsciLexerDiff, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerDiffreadPropertiesProc* = proc(self: QsciLexerDiff, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerDiffwritePropertiesProc* = proc(self: QsciLexerDiff, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerDiffeventProc* = proc(self: QsciLexerDiff, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerDiffeventFilterProc* = proc(self: QsciLexerDiff, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerDifftimerEventProc* = proc(self: QsciLexerDiff, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerDiffchildEventProc* = proc(self: QsciLexerDiff, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerDiffcustomEventProc* = proc(self: QsciLexerDiff, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerDiffconnectNotifyProc* = proc(self: QsciLexerDiff, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerDiffdisconnectNotifyProc* = proc(self: QsciLexerDiff, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerDiffVTable* = object
  vtbl: cQsciLexerDiffVTable
  metaObject*: QsciLexerDiffmetaObjectProc
  metacast*: QsciLexerDiffmetacastProc
  metacall*: QsciLexerDiffmetacallProc
  language*: QsciLexerDifflanguageProc
  lexer*: QsciLexerDifflexerProc
  lexerId*: QsciLexerDifflexerIdProc
  autoCompletionFillups*: QsciLexerDiffautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerDiffautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerDiffblockEndProc
  blockLookback*: QsciLexerDiffblockLookbackProc
  blockStart*: QsciLexerDiffblockStartProc
  blockStartKeyword*: QsciLexerDiffblockStartKeywordProc
  braceStyle*: QsciLexerDiffbraceStyleProc
  caseSensitive*: QsciLexerDiffcaseSensitiveProc
  color*: QsciLexerDiffcolorProc
  eolFill*: QsciLexerDiffeolFillProc
  font*: QsciLexerDifffontProc
  indentationGuideView*: QsciLexerDiffindentationGuideViewProc
  keywords*: QsciLexerDiffkeywordsProc
  defaultStyle*: QsciLexerDiffdefaultStyleProc
  description*: QsciLexerDiffdescriptionProc
  paper*: QsciLexerDiffpaperProc
  defaultColor*: QsciLexerDiffdefaultColorProc
  defaultEolFill*: QsciLexerDiffdefaultEolFillProc
  defaultFont*: QsciLexerDiffdefaultFontProc
  defaultPaper*: QsciLexerDiffdefaultPaperProc
  setEditor*: QsciLexerDiffsetEditorProc
  refreshProperties*: QsciLexerDiffrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerDiffstyleBitsNeededProc
  wordCharacters*: QsciLexerDiffwordCharactersProc
  setAutoIndentStyle*: QsciLexerDiffsetAutoIndentStyleProc
  setColor*: QsciLexerDiffsetColorProc
  setEolFill*: QsciLexerDiffsetEolFillProc
  setFont*: QsciLexerDiffsetFontProc
  setPaper*: QsciLexerDiffsetPaperProc
  readProperties*: QsciLexerDiffreadPropertiesProc
  writeProperties*: QsciLexerDiffwritePropertiesProc
  event*: QsciLexerDiffeventProc
  eventFilter*: QsciLexerDiffeventFilterProc
  timerEvent*: QsciLexerDifftimerEventProc
  childEvent*: QsciLexerDiffchildEventProc
  customEvent*: QsciLexerDiffcustomEventProc
  connectNotify*: QsciLexerDiffconnectNotifyProc
  disconnectNotify*: QsciLexerDiffdisconnectNotifyProc
proc QsciLexerDiffmetaObject*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerDiff_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerDiff_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerDiffmetacast*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cstring): pointer =
  fcQsciLexerDiff_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerDiff_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerDiffmetacall*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerDiff_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerDiff_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerDiff_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerDifflexer*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerDiff_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerDifflexerId*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerDiff_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerDiffautoCompletionFillups*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerDiff_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerDiffautoCompletionWordSeparators*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): seq[string] =
  var v_ma = fcQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerDiff_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerDiffblockEnd*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fcQsciLexerDiff_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerDiffblockLookback*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerDiff_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerDiffblockStart*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fcQsciLexerDiff_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerDiffblockStartKeyword*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fcQsciLexerDiff_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerDiffbraceStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerDiff_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerDiffcaseSensitive*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): bool =
  fcQsciLexerDiff_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerDiff_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerDiffcolor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerDiff_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffeolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): bool =
  fcQsciLexerDiff_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerDiff_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerDifffont*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerDiff_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffindentationGuideView*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerDiff_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerDiffkeywords*(self: gen_qscilexerdiff_types.QsciLexerDiff, set: cint): cstring =
  (fcQsciLexerDiff_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerDiff_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerDiffdefaultStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerDiff_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerDiff_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerDiffpaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerDiff_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffdefaultColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerDiff_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffdefaultEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): bool =
  fcQsciLexerDiff_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerDiff_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerDiffdefaultFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerDiff_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffdefaultPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerDiff_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerDiff_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerDiffsetEditor*(self: gen_qscilexerdiff_types.QsciLexerDiff, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerDiff_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerDiff_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerDiffrefreshProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): void =
  fcQsciLexerDiff_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerDiff_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerDiffstyleBitsNeeded*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerDiff_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerDiffwordCharacters*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerDiff_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerDiffsetAutoIndentStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, autoindentstyle: cint): void =
  fcQsciLexerDiff_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerDiff_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerDiffsetColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerDiff_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerDiff_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerDiffsetEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, eoffill: bool, style: cint): void =
  fcQsciLexerDiff_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerDiff_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerDiffsetFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerDiff_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerDiff_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerDiffsetPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerDiff_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerDiff_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerDiffreadProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerDiff_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerDiff_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDiffwriteProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerDiff_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerDiff_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDiffevent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerDiff_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerDiff_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerDiffeventFilter*(self: gen_qscilexerdiff_types.QsciLexerDiff, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerDiff_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerDiff_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerDifftimerEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerDiff_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerDiff_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerDiffchildEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerDiff_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerDiff_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerDiffcustomEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerDiff_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerDiff_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerDiffconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerDiff_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerDiff_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerDiffdisconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerDiff_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerDiff_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerDiffVTable](vtbl)
  let self = QsciLexerDiff(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerDiff_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fcQsciLexerDiff_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: cstring): cint =
  fcQsciLexerDiff_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerDiff_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerdiff_types.QsciLexerDiff,
    vtbl: ref QsciLexerDiffVTable = nil): gen_qscilexerdiff_types.QsciLexerDiff =
  let vtbl = if vtbl == nil: new QsciLexerDiffVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerDiffVTable, _: ptr cQsciLexerDiff) {.cdecl.} =
    let vtbl = cast[ref QsciLexerDiffVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerDiff_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerDiff_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerDiff_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerDiff_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerDiff_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerDiff_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerDiff_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerDiff_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerDiff_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerDiff_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerDiff_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerDiff_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerDiff_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerDiff_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerDiff_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerDiff_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerDiff_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerDiff_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerDiff_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerDiff_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerDiff_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerDiff_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerDiff_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerDiff_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerDiff_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerDiff_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerDiff_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerDiff_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerDiff_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerDiff_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerDiff_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerDiff_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerDiff_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerDiff_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerDiff_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerDiff_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerDiff_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerDiff_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerDiff_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerDiff_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerDiff_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerDiff_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerDiff_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerDiff_disconnectNotify
  gen_qscilexerdiff_types.QsciLexerDiff(h: fcQsciLexerDiff_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerdiff_types.QsciLexerDiff,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerDiffVTable = nil): gen_qscilexerdiff_types.QsciLexerDiff =
  let vtbl = if vtbl == nil: new QsciLexerDiffVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerDiffVTable, _: ptr cQsciLexerDiff) {.cdecl.} =
    let vtbl = cast[ref QsciLexerDiffVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerDiff_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerDiff_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerDiff_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerDiff_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerDiff_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerDiff_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerDiff_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerDiff_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerDiff_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerDiff_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerDiff_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerDiff_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerDiff_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerDiff_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerDiff_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerDiff_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerDiff_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerDiff_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerDiff_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerDiff_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerDiff_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerDiff_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerDiff_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerDiff_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerDiff_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerDiff_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerDiff_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerDiff_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerDiff_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerDiff_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerDiff_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerDiff_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerDiff_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerDiff_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerDiff_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerDiff_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerDiff_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerDiff_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerDiff_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerDiff_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerDiff_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerDiff_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerDiff_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerDiff_disconnectNotify
  gen_qscilexerdiff_types.QsciLexerDiff(h: fcQsciLexerDiff_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerdiff_types.QsciLexerDiff): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerDiff_staticMetaObject())
proc delete*(self: gen_qscilexerdiff_types.QsciLexerDiff) =
  fcQsciLexerDiff_delete(self.h)
