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
{.compile("gen_qscilexeroctave.cpp", cflags).}

import gen_qscilexeroctave_types
export gen_qscilexeroctave_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexermatlab,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexermatlab,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerOctave*{.exportc: "QsciLexerOctave", incompleteStruct.} = object

proc fcQsciLexerOctave_metaObject(self: pointer, ): pointer {.importc: "QsciLexerOctave_metaObject".}
proc fcQsciLexerOctave_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerOctave_metacast".}
proc fcQsciLexerOctave_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerOctave_metacall".}
proc fcQsciLexerOctave_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerOctave_tr".}
proc fcQsciLexerOctave_language(self: pointer, ): cstring {.importc: "QsciLexerOctave_language".}
proc fcQsciLexerOctave_lexer(self: pointer, ): cstring {.importc: "QsciLexerOctave_lexer".}
proc fcQsciLexerOctave_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerOctave_keywords".}
proc fcQsciLexerOctave_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerOctave_tr2".}
proc fcQsciLexerOctave_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerOctave_tr3".}
type cQsciLexerOctaveVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerOctaveVTable, self: ptr cQsciLexerOctave) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerOctave_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerOctave_virtualbase_metaObject".}
proc fcQsciLexerOctave_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerOctave_virtualbase_metacast".}
proc fcQsciLexerOctave_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerOctave_virtualbase_metacall".}
proc fcQsciLexerOctave_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerOctave_virtualbase_lexer".}
proc fcQsciLexerOctave_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_lexerId".}
proc fcQsciLexerOctave_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerOctave_virtualbase_autoCompletionFillups".}
proc fcQsciLexerOctave_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerOctave_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerOctave_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerOctave_virtualbase_blockEnd".}
proc fcQsciLexerOctave_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_blockLookback".}
proc fcQsciLexerOctave_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerOctave_virtualbase_blockStart".}
proc fcQsciLexerOctave_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerOctave_virtualbase_blockStartKeyword".}
proc fcQsciLexerOctave_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_braceStyle".}
proc fcQsciLexerOctave_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerOctave_virtualbase_caseSensitive".}
proc fcQsciLexerOctave_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_color".}
proc fcQsciLexerOctave_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerOctave_virtualbase_eolFill".}
proc fcQsciLexerOctave_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_font".}
proc fcQsciLexerOctave_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_indentationGuideView".}
proc fcQsciLexerOctave_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerOctave_virtualbase_keywords".}
proc fcQsciLexerOctave_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_defaultStyle".}
proc fcQsciLexerOctave_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_paper".}
proc fcQsciLexerOctave_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerOctave_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerOctave_virtualbase_defaultEolFill".}
proc fcQsciLexerOctave_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerOctave_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerOctave_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerOctave_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerOctave_virtualbase_setEditor".}
proc fcQsciLexerOctave_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerOctave_virtualbase_refreshProperties".}
proc fcQsciLexerOctave_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerOctave_virtualbase_styleBitsNeeded".}
proc fcQsciLexerOctave_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerOctave_virtualbase_wordCharacters".}
proc fcQsciLexerOctave_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerOctave_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerOctave_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerOctave_virtualbase_setColor".}
proc fcQsciLexerOctave_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerOctave_virtualbase_setEolFill".}
proc fcQsciLexerOctave_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerOctave_virtualbase_setFont".}
proc fcQsciLexerOctave_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerOctave_virtualbase_setPaper".}
proc fcQsciLexerOctave_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerOctave_virtualbase_readProperties".}
proc fcQsciLexerOctave_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerOctave_virtualbase_writeProperties".}
proc fcQsciLexerOctave_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerOctave_virtualbase_event".}
proc fcQsciLexerOctave_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerOctave_virtualbase_eventFilter".}
proc fcQsciLexerOctave_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerOctave_virtualbase_timerEvent".}
proc fcQsciLexerOctave_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerOctave_virtualbase_childEvent".}
proc fcQsciLexerOctave_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerOctave_virtualbase_customEvent".}
proc fcQsciLexerOctave_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerOctave_virtualbase_connectNotify".}
proc fcQsciLexerOctave_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerOctave_virtualbase_disconnectNotify".}
proc fcQsciLexerOctave_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerOctave_protectedbase_sender".}
proc fcQsciLexerOctave_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerOctave_protectedbase_senderSignalIndex".}
proc fcQsciLexerOctave_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerOctave_protectedbase_receivers".}
proc fcQsciLexerOctave_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerOctave_protectedbase_isSignalConnected".}
proc fcQsciLexerOctave_new(vtbl: pointer, ): ptr cQsciLexerOctave {.importc: "QsciLexerOctave_new".}
proc fcQsciLexerOctave_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerOctave {.importc: "QsciLexerOctave_new2".}
proc fcQsciLexerOctave_staticMetaObject(): pointer {.importc: "QsciLexerOctave_staticMetaObject".}
proc fcQsciLexerOctave_delete(self: pointer) {.importc: "QsciLexerOctave_delete".}

proc metaObject*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerOctave_metaObject(self.h))

proc metacast*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cstring): pointer =
  fcQsciLexerOctave_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerOctave_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring): string =
  let v_ms = fcQsciLexerOctave_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =
  (fcQsciLexerOctave_language(self.h))

proc lexer*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =
  (fcQsciLexerOctave_lexer(self.h))

proc keywords*(self: gen_qscilexeroctave_types.QsciLexerOctave, set: cint): cstring =
  (fcQsciLexerOctave_keywords(self.h, set))

proc tr*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerOctave_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerOctave_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerOctavemetaObjectProc* = proc(self: QsciLexerOctave): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerOctavemetacastProc* = proc(self: QsciLexerOctave, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerOctavemetacallProc* = proc(self: QsciLexerOctave, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerOctavelanguageProc* = proc(self: QsciLexerOctave): cstring {.raises: [], gcsafe.}
type QsciLexerOctavelexerProc* = proc(self: QsciLexerOctave): cstring {.raises: [], gcsafe.}
type QsciLexerOctavelexerIdProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctaveautoCompletionFillupsProc* = proc(self: QsciLexerOctave): cstring {.raises: [], gcsafe.}
type QsciLexerOctaveautoCompletionWordSeparatorsProc* = proc(self: QsciLexerOctave): seq[string] {.raises: [], gcsafe.}
type QsciLexerOctaveblockEndProc* = proc(self: QsciLexerOctave, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerOctaveblockLookbackProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctaveblockStartProc* = proc(self: QsciLexerOctave, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerOctaveblockStartKeywordProc* = proc(self: QsciLexerOctave, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerOctavebraceStyleProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctavecaseSensitiveProc* = proc(self: QsciLexerOctave): bool {.raises: [], gcsafe.}
type QsciLexerOctavecolorProc* = proc(self: QsciLexerOctave, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerOctaveeolFillProc* = proc(self: QsciLexerOctave, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerOctavefontProc* = proc(self: QsciLexerOctave, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerOctaveindentationGuideViewProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctavekeywordsProc* = proc(self: QsciLexerOctave, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerOctavedefaultStyleProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctavedescriptionProc* = proc(self: QsciLexerOctave, style: cint): string {.raises: [], gcsafe.}
type QsciLexerOctavepaperProc* = proc(self: QsciLexerOctave, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerOctavedefaultColorProc* = proc(self: QsciLexerOctave, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerOctavedefaultEolFillProc* = proc(self: QsciLexerOctave, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerOctavedefaultFontProc* = proc(self: QsciLexerOctave, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerOctavedefaultPaperProc* = proc(self: QsciLexerOctave, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerOctavesetEditorProc* = proc(self: QsciLexerOctave, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerOctaverefreshPropertiesProc* = proc(self: QsciLexerOctave): void {.raises: [], gcsafe.}
type QsciLexerOctavestyleBitsNeededProc* = proc(self: QsciLexerOctave): cint {.raises: [], gcsafe.}
type QsciLexerOctavewordCharactersProc* = proc(self: QsciLexerOctave): cstring {.raises: [], gcsafe.}
type QsciLexerOctavesetAutoIndentStyleProc* = proc(self: QsciLexerOctave, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerOctavesetColorProc* = proc(self: QsciLexerOctave, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerOctavesetEolFillProc* = proc(self: QsciLexerOctave, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerOctavesetFontProc* = proc(self: QsciLexerOctave, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerOctavesetPaperProc* = proc(self: QsciLexerOctave, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerOctavereadPropertiesProc* = proc(self: QsciLexerOctave, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerOctavewritePropertiesProc* = proc(self: QsciLexerOctave, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerOctaveeventProc* = proc(self: QsciLexerOctave, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerOctaveeventFilterProc* = proc(self: QsciLexerOctave, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerOctavetimerEventProc* = proc(self: QsciLexerOctave, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerOctavechildEventProc* = proc(self: QsciLexerOctave, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerOctavecustomEventProc* = proc(self: QsciLexerOctave, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerOctaveconnectNotifyProc* = proc(self: QsciLexerOctave, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerOctavedisconnectNotifyProc* = proc(self: QsciLexerOctave, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerOctaveVTable* = object
  vtbl: cQsciLexerOctaveVTable
  metaObject*: QsciLexerOctavemetaObjectProc
  metacast*: QsciLexerOctavemetacastProc
  metacall*: QsciLexerOctavemetacallProc
  language*: QsciLexerOctavelanguageProc
  lexer*: QsciLexerOctavelexerProc
  lexerId*: QsciLexerOctavelexerIdProc
  autoCompletionFillups*: QsciLexerOctaveautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerOctaveautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerOctaveblockEndProc
  blockLookback*: QsciLexerOctaveblockLookbackProc
  blockStart*: QsciLexerOctaveblockStartProc
  blockStartKeyword*: QsciLexerOctaveblockStartKeywordProc
  braceStyle*: QsciLexerOctavebraceStyleProc
  caseSensitive*: QsciLexerOctavecaseSensitiveProc
  color*: QsciLexerOctavecolorProc
  eolFill*: QsciLexerOctaveeolFillProc
  font*: QsciLexerOctavefontProc
  indentationGuideView*: QsciLexerOctaveindentationGuideViewProc
  keywords*: QsciLexerOctavekeywordsProc
  defaultStyle*: QsciLexerOctavedefaultStyleProc
  description*: QsciLexerOctavedescriptionProc
  paper*: QsciLexerOctavepaperProc
  defaultColor*: QsciLexerOctavedefaultColorProc
  defaultEolFill*: QsciLexerOctavedefaultEolFillProc
  defaultFont*: QsciLexerOctavedefaultFontProc
  defaultPaper*: QsciLexerOctavedefaultPaperProc
  setEditor*: QsciLexerOctavesetEditorProc
  refreshProperties*: QsciLexerOctaverefreshPropertiesProc
  styleBitsNeeded*: QsciLexerOctavestyleBitsNeededProc
  wordCharacters*: QsciLexerOctavewordCharactersProc
  setAutoIndentStyle*: QsciLexerOctavesetAutoIndentStyleProc
  setColor*: QsciLexerOctavesetColorProc
  setEolFill*: QsciLexerOctavesetEolFillProc
  setFont*: QsciLexerOctavesetFontProc
  setPaper*: QsciLexerOctavesetPaperProc
  readProperties*: QsciLexerOctavereadPropertiesProc
  writeProperties*: QsciLexerOctavewritePropertiesProc
  event*: QsciLexerOctaveeventProc
  eventFilter*: QsciLexerOctaveeventFilterProc
  timerEvent*: QsciLexerOctavetimerEventProc
  childEvent*: QsciLexerOctavechildEventProc
  customEvent*: QsciLexerOctavecustomEventProc
  connectNotify*: QsciLexerOctaveconnectNotifyProc
  disconnectNotify*: QsciLexerOctavedisconnectNotifyProc
proc QsciLexerOctavemetaObject*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerOctave_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerOctave_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerOctavemetacast*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cstring): pointer =
  fcQsciLexerOctave_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerOctave_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerOctavemetacall*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerOctave_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerOctave_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerOctave_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerOctavelexer*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =
  (fcQsciLexerOctave_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerOctave_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerOctavelexerId*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerOctave_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerOctaveautoCompletionFillups*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =
  (fcQsciLexerOctave_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerOctave_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerOctaveautoCompletionWordSeparators*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): seq[string] =
  var v_ma = fcQsciLexerOctave_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerOctave_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerOctaveblockEnd*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =
  (fcQsciLexerOctave_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerOctaveblockLookback*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerOctave_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerOctaveblockStart*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =
  (fcQsciLexerOctave_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerOctaveblockStartKeyword*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =
  (fcQsciLexerOctave_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerOctavebraceStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerOctave_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerOctavecaseSensitive*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): bool =
  fcQsciLexerOctave_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerOctave_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerOctavecolor*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerOctave_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerOctaveeolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): bool =
  fcQsciLexerOctave_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerOctave_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerOctavefont*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerOctave_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerOctaveindentationGuideView*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerOctave_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerOctavekeywords*(self: gen_qscilexeroctave_types.QsciLexerOctave, set: cint): cstring =
  (fcQsciLexerOctave_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerOctave_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerOctavedefaultStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerOctave_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerOctave_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerOctavepaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerOctave_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerOctavedefaultColor*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerOctave_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerOctavedefaultEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): bool =
  fcQsciLexerOctave_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerOctave_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerOctavedefaultFont*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerOctave_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerOctavedefaultPaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerOctave_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerOctave_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerOctavesetEditor*(self: gen_qscilexeroctave_types.QsciLexerOctave, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerOctave_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerOctave_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerOctaverefreshProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): void =
  fcQsciLexerOctave_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerOctave_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerOctavestyleBitsNeeded*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerOctave_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerOctavewordCharacters*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =
  (fcQsciLexerOctave_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerOctave_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerOctavesetAutoIndentStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, autoindentstyle: cint): void =
  fcQsciLexerOctave_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerOctave_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerOctavesetColor*(self: gen_qscilexeroctave_types.QsciLexerOctave, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerOctave_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerOctave_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerOctavesetEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, eoffill: bool, style: cint): void =
  fcQsciLexerOctave_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerOctave_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerOctavesetFont*(self: gen_qscilexeroctave_types.QsciLexerOctave, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerOctave_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerOctave_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerOctavesetPaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerOctave_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerOctave_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerOctavereadProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerOctave_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerOctave_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerOctavewriteProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerOctave_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerOctave_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerOctaveevent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerOctave_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerOctave_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerOctaveeventFilter*(self: gen_qscilexeroctave_types.QsciLexerOctave, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerOctave_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerOctave_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerOctavetimerEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerOctave_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerOctave_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerOctavechildEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerOctave_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerOctave_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerOctavecustomEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerOctave_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerOctave_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerOctaveconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerOctave_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerOctave_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerOctavedisconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerOctave_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerOctave_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerOctaveVTable](vtbl)
  let self = QsciLexerOctave(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerOctave_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =
  fcQsciLexerOctave_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: cstring): cint =
  fcQsciLexerOctave_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerOctave_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexeroctave_types.QsciLexerOctave,
    vtbl: ref QsciLexerOctaveVTable = nil): gen_qscilexeroctave_types.QsciLexerOctave =
  let vtbl = if vtbl == nil: new QsciLexerOctaveVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerOctaveVTable, _: ptr cQsciLexerOctave) {.cdecl.} =
    let vtbl = cast[ref QsciLexerOctaveVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerOctave_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerOctave_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerOctave_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerOctave_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerOctave_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerOctave_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerOctave_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerOctave_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerOctave_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerOctave_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerOctave_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerOctave_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerOctave_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerOctave_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerOctave_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerOctave_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerOctave_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerOctave_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerOctave_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerOctave_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerOctave_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerOctave_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerOctave_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerOctave_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerOctave_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerOctave_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerOctave_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerOctave_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerOctave_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerOctave_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerOctave_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerOctave_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerOctave_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerOctave_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerOctave_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerOctave_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerOctave_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerOctave_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerOctave_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerOctave_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerOctave_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerOctave_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerOctave_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerOctave_disconnectNotify
  gen_qscilexeroctave_types.QsciLexerOctave(h: fcQsciLexerOctave_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexeroctave_types.QsciLexerOctave,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerOctaveVTable = nil): gen_qscilexeroctave_types.QsciLexerOctave =
  let vtbl = if vtbl == nil: new QsciLexerOctaveVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerOctaveVTable, _: ptr cQsciLexerOctave) {.cdecl.} =
    let vtbl = cast[ref QsciLexerOctaveVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerOctave_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerOctave_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerOctave_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerOctave_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerOctave_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerOctave_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerOctave_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerOctave_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerOctave_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerOctave_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerOctave_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerOctave_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerOctave_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerOctave_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerOctave_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerOctave_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerOctave_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerOctave_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerOctave_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerOctave_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerOctave_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerOctave_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerOctave_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerOctave_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerOctave_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerOctave_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerOctave_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerOctave_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerOctave_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerOctave_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerOctave_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerOctave_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerOctave_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerOctave_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerOctave_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerOctave_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerOctave_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerOctave_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerOctave_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerOctave_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerOctave_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerOctave_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerOctave_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerOctave_disconnectNotify
  gen_qscilexeroctave_types.QsciLexerOctave(h: fcQsciLexerOctave_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexeroctave_types.QsciLexerOctave): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerOctave_staticMetaObject())
proc delete*(self: gen_qscilexeroctave_types.QsciLexerOctave) =
  fcQsciLexerOctave_delete(self.h)
