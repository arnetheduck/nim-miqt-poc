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
{.compile("gen_qscilexercustom.cpp", cflags).}

import gen_qscilexercustom_types
export gen_qscilexercustom_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qscistyle_types,
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
  gen_qscistyle_types,
  gen_qsettings_types

type cQsciLexerCustom*{.exportc: "QsciLexerCustom", incompleteStruct.} = object

proc fcQsciLexerCustom_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCustom_metaObject".}
proc fcQsciLexerCustom_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCustom_metacast".}
proc fcQsciLexerCustom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCustom_metacall".}
proc fcQsciLexerCustom_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr".}
proc fcQsciLexerCustom_setStyling(self: pointer, length: cint, style: cint): void {.importc: "QsciLexerCustom_setStyling".}
proc fcQsciLexerCustom_setStyling2(self: pointer, length: cint, style: pointer): void {.importc: "QsciLexerCustom_setStyling2".}
proc fcQsciLexerCustom_startStyling(self: pointer, pos: cint): void {.importc: "QsciLexerCustom_startStyling".}
proc fcQsciLexerCustom_styleText(self: pointer, start: cint, endVal: cint): void {.importc: "QsciLexerCustom_styleText".}
proc fcQsciLexerCustom_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCustom_setEditor".}
proc fcQsciLexerCustom_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCustom_styleBitsNeeded".}
proc fcQsciLexerCustom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr2".}
proc fcQsciLexerCustom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCustom_tr3".}
proc fcQsciLexerCustom_startStyling2(self: pointer, pos: cint, styleBits: cint): void {.importc: "QsciLexerCustom_startStyling2".}
type cQsciLexerCustomVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCustomVTable, self: ptr cQsciLexerCustom) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  styleText*: proc(vtbl, self: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  setEditor*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  styleBitsNeeded*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
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
  refreshProperties*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerCustom_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCustom_virtualbase_metaObject".}
proc fcQsciLexerCustom_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCustom_virtualbase_metacast".}
proc fcQsciLexerCustom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCustom_virtualbase_metacall".}
proc fcQsciLexerCustom_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCustom_virtualbase_setEditor".}
proc fcQsciLexerCustom_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCustom_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCustom_virtualbase_lexer".}
proc fcQsciLexerCustom_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_lexerId".}
proc fcQsciLexerCustom_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCustom_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCustom_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCustom_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCustom_virtualbase_blockEnd".}
proc fcQsciLexerCustom_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_blockLookback".}
proc fcQsciLexerCustom_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCustom_virtualbase_blockStart".}
proc fcQsciLexerCustom_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCustom_virtualbase_blockStartKeyword".}
proc fcQsciLexerCustom_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_braceStyle".}
proc fcQsciLexerCustom_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCustom_virtualbase_caseSensitive".}
proc fcQsciLexerCustom_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_color".}
proc fcQsciLexerCustom_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCustom_virtualbase_eolFill".}
proc fcQsciLexerCustom_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_font".}
proc fcQsciLexerCustom_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_indentationGuideView".}
proc fcQsciLexerCustom_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCustom_virtualbase_keywords".}
proc fcQsciLexerCustom_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCustom_virtualbase_defaultStyle".}
proc fcQsciLexerCustom_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_paper".}
proc fcQsciLexerCustom_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCustom_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCustom_virtualbase_defaultEolFill".}
proc fcQsciLexerCustom_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCustom_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCustom_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCustom_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCustom_virtualbase_refreshProperties".}
proc fcQsciLexerCustom_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCustom_virtualbase_wordCharacters".}
proc fcQsciLexerCustom_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCustom_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCustom_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCustom_virtualbase_setColor".}
proc fcQsciLexerCustom_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCustom_virtualbase_setEolFill".}
proc fcQsciLexerCustom_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCustom_virtualbase_setFont".}
proc fcQsciLexerCustom_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCustom_virtualbase_setPaper".}
proc fcQsciLexerCustom_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCustom_virtualbase_readProperties".}
proc fcQsciLexerCustom_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCustom_virtualbase_writeProperties".}
proc fcQsciLexerCustom_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCustom_virtualbase_event".}
proc fcQsciLexerCustom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCustom_virtualbase_eventFilter".}
proc fcQsciLexerCustom_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCustom_virtualbase_timerEvent".}
proc fcQsciLexerCustom_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCustom_virtualbase_childEvent".}
proc fcQsciLexerCustom_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCustom_virtualbase_customEvent".}
proc fcQsciLexerCustom_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCustom_virtualbase_connectNotify".}
proc fcQsciLexerCustom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCustom_virtualbase_disconnectNotify".}
proc fcQsciLexerCustom_new(vtbl: pointer, ): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new".}
proc fcQsciLexerCustom_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new2".}
proc fcQsciLexerCustom_staticMetaObject(): pointer {.importc: "QsciLexerCustom_staticMetaObject".}
proc fcQsciLexerCustom_delete(self: pointer) {.importc: "QsciLexerCustom_delete".}

proc metaObject*(self: gen_qscilexercustom_types.QsciLexerCustom, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCustom_metaObject(self.h))

proc metacast*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cstring): pointer =
  fcQsciLexerCustom_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCustom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring): string =
  let v_ms = fcQsciLexerCustom_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, length: cint, style: cint): void =
  fcQsciLexerCustom_setStyling(self.h, length, style)

proc setStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, length: cint, style: gen_qscistyle_types.QsciStyle): void =
  fcQsciLexerCustom_setStyling2(self.h, length, style.h)

proc startStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, pos: cint): void =
  fcQsciLexerCustom_startStyling(self.h, pos)

proc styleText*(self: gen_qscilexercustom_types.QsciLexerCustom, start: cint, endVal: cint): void =
  fcQsciLexerCustom_styleText(self.h, start, endVal)

proc setEditor*(self: gen_qscilexercustom_types.QsciLexerCustom, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCustom_setEditor(self.h, editor.h)

proc styleBitsNeeded*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_styleBitsNeeded(self.h)

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCustom_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCustom_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, pos: cint, styleBits: cint): void =
  fcQsciLexerCustom_startStyling2(self.h, pos, styleBits)

type QsciLexerCustommetaObjectProc* = proc(self: QsciLexerCustom): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCustommetacastProc* = proc(self: QsciLexerCustom, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCustommetacallProc* = proc(self: QsciLexerCustom, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCustomstyleTextProc* = proc(self: QsciLexerCustom, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomsetEditorProc* = proc(self: QsciLexerCustom, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCustomstyleBitsNeededProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomlanguageProc* = proc(self: QsciLexerCustom): cstring {.raises: [], gcsafe.}
type QsciLexerCustomlexerProc* = proc(self: QsciLexerCustom): cstring {.raises: [], gcsafe.}
type QsciLexerCustomlexerIdProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomautoCompletionFillupsProc* = proc(self: QsciLexerCustom): cstring {.raises: [], gcsafe.}
type QsciLexerCustomautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCustom): seq[string] {.raises: [], gcsafe.}
type QsciLexerCustomblockEndProc* = proc(self: QsciLexerCustom, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCustomblockLookbackProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomblockStartProc* = proc(self: QsciLexerCustom, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCustomblockStartKeywordProc* = proc(self: QsciLexerCustom, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCustombraceStyleProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomcaseSensitiveProc* = proc(self: QsciLexerCustom): bool {.raises: [], gcsafe.}
type QsciLexerCustomcolorProc* = proc(self: QsciLexerCustom, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCustomeolFillProc* = proc(self: QsciLexerCustom, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCustomfontProc* = proc(self: QsciLexerCustom, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCustomindentationGuideViewProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomkeywordsProc* = proc(self: QsciLexerCustom, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCustomdefaultStyleProc* = proc(self: QsciLexerCustom): cint {.raises: [], gcsafe.}
type QsciLexerCustomdescriptionProc* = proc(self: QsciLexerCustom, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCustompaperProc* = proc(self: QsciLexerCustom, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCustomdefaultColorProc* = proc(self: QsciLexerCustom, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCustomdefaultEolFillProc* = proc(self: QsciLexerCustom, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCustomdefaultFontProc* = proc(self: QsciLexerCustom, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCustomdefaultPaperProc* = proc(self: QsciLexerCustom, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCustomrefreshPropertiesProc* = proc(self: QsciLexerCustom): void {.raises: [], gcsafe.}
type QsciLexerCustomwordCharactersProc* = proc(self: QsciLexerCustom): cstring {.raises: [], gcsafe.}
type QsciLexerCustomsetAutoIndentStyleProc* = proc(self: QsciLexerCustom, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomsetColorProc* = proc(self: QsciLexerCustom, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomsetEolFillProc* = proc(self: QsciLexerCustom, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomsetFontProc* = proc(self: QsciLexerCustom, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomsetPaperProc* = proc(self: QsciLexerCustom, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCustomreadPropertiesProc* = proc(self: QsciLexerCustom, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCustomwritePropertiesProc* = proc(self: QsciLexerCustom, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCustomeventProc* = proc(self: QsciLexerCustom, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCustomeventFilterProc* = proc(self: QsciLexerCustom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCustomtimerEventProc* = proc(self: QsciLexerCustom, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCustomchildEventProc* = proc(self: QsciLexerCustom, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCustomcustomEventProc* = proc(self: QsciLexerCustom, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCustomconnectNotifyProc* = proc(self: QsciLexerCustom, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCustomdisconnectNotifyProc* = proc(self: QsciLexerCustom, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCustomVTable* = object
  vtbl: cQsciLexerCustomVTable
  metaObject*: QsciLexerCustommetaObjectProc
  metacast*: QsciLexerCustommetacastProc
  metacall*: QsciLexerCustommetacallProc
  styleText*: QsciLexerCustomstyleTextProc
  setEditor*: QsciLexerCustomsetEditorProc
  styleBitsNeeded*: QsciLexerCustomstyleBitsNeededProc
  language*: QsciLexerCustomlanguageProc
  lexer*: QsciLexerCustomlexerProc
  lexerId*: QsciLexerCustomlexerIdProc
  autoCompletionFillups*: QsciLexerCustomautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCustomautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCustomblockEndProc
  blockLookback*: QsciLexerCustomblockLookbackProc
  blockStart*: QsciLexerCustomblockStartProc
  blockStartKeyword*: QsciLexerCustomblockStartKeywordProc
  braceStyle*: QsciLexerCustombraceStyleProc
  caseSensitive*: QsciLexerCustomcaseSensitiveProc
  color*: QsciLexerCustomcolorProc
  eolFill*: QsciLexerCustomeolFillProc
  font*: QsciLexerCustomfontProc
  indentationGuideView*: QsciLexerCustomindentationGuideViewProc
  keywords*: QsciLexerCustomkeywordsProc
  defaultStyle*: QsciLexerCustomdefaultStyleProc
  description*: QsciLexerCustomdescriptionProc
  paper*: QsciLexerCustompaperProc
  defaultColor*: QsciLexerCustomdefaultColorProc
  defaultEolFill*: QsciLexerCustomdefaultEolFillProc
  defaultFont*: QsciLexerCustomdefaultFontProc
  defaultPaper*: QsciLexerCustomdefaultPaperProc
  refreshProperties*: QsciLexerCustomrefreshPropertiesProc
  wordCharacters*: QsciLexerCustomwordCharactersProc
  setAutoIndentStyle*: QsciLexerCustomsetAutoIndentStyleProc
  setColor*: QsciLexerCustomsetColorProc
  setEolFill*: QsciLexerCustomsetEolFillProc
  setFont*: QsciLexerCustomsetFontProc
  setPaper*: QsciLexerCustomsetPaperProc
  readProperties*: QsciLexerCustomreadPropertiesProc
  writeProperties*: QsciLexerCustomwritePropertiesProc
  event*: QsciLexerCustomeventProc
  eventFilter*: QsciLexerCustomeventFilterProc
  timerEvent*: QsciLexerCustomtimerEventProc
  childEvent*: QsciLexerCustomchildEventProc
  customEvent*: QsciLexerCustomcustomEventProc
  connectNotify*: QsciLexerCustomconnectNotifyProc
  disconnectNotify*: QsciLexerCustomdisconnectNotifyProc
proc QsciLexerCustommetaObject*(self: gen_qscilexercustom_types.QsciLexerCustom, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCustom_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCustom_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCustommetacast*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cstring): pointer =
  fcQsciLexerCustom_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCustom_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCustommetacall*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCustom_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCustom_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCustom_styleText(vtbl: pointer, self: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = start
  let slotval2 = endVal
  vtbl[].styleText(self, slotval1, slotval2)

proc QsciLexerCustomsetEditor*(self: gen_qscilexercustom_types.QsciLexerCustom, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCustom_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCustom_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCustomstyleBitsNeeded*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCustom_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCustom_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCustomlexer*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fcQsciLexerCustom_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCustom_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCustomlexerId*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCustom_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCustomautoCompletionFillups*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fcQsciLexerCustom_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCustom_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCustomautoCompletionWordSeparators*(self: gen_qscilexercustom_types.QsciLexerCustom, ): seq[string] =
  var v_ma = fcQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCustom_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCustomblockEnd*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fcQsciLexerCustom_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCustomblockLookback*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCustom_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCustomblockStart*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fcQsciLexerCustom_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCustomblockStartKeyword*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fcQsciLexerCustom_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCustombraceStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCustom_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCustomcaseSensitive*(self: gen_qscilexercustom_types.QsciLexerCustom, ): bool =
  fcQsciLexerCustom_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCustom_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCustomcolor*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCustom_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomeolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): bool =
  fcQsciLexerCustom_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCustom_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCustomfont*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCustom_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomindentationGuideView*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCustom_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCustomkeywords*(self: gen_qscilexercustom_types.QsciLexerCustom, set: cint): cstring =
  (fcQsciLexerCustom_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCustom_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCustomdefaultStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCustom_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCustom_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCustompaper*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCustom_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomdefaultColor*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCustom_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomdefaultEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): bool =
  fcQsciLexerCustom_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCustom_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCustomdefaultFont*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCustom_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomdefaultPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCustom_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCustom_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCustomrefreshProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, ): void =
  fcQsciLexerCustom_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCustom_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCustomwordCharacters*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fcQsciLexerCustom_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCustom_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCustomsetAutoIndentStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, autoindentstyle: cint): void =
  fcQsciLexerCustom_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCustom_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCustomsetColor*(self: gen_qscilexercustom_types.QsciLexerCustom, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCustom_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCustom_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCustomsetEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, eoffill: bool, style: cint): void =
  fcQsciLexerCustom_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCustom_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCustomsetFont*(self: gen_qscilexercustom_types.QsciLexerCustom, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCustom_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCustom_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCustomsetPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCustom_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCustom_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCustomreadProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCustom_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCustom_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCustomwriteProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCustom_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCustom_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCustomevent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCustom_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCustom_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCustomeventFilter*(self: gen_qscilexercustom_types.QsciLexerCustom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCustom_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCustom_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCustomtimerEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCustom_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCustom_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCustomchildEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCustom_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCustom_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCustomcustomEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCustom_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCustom_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCustomconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCustom_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCustom_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCustomdisconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCustom_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCustom_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCustomVTable](vtbl)
  let self = QsciLexerCustom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexercustom_types.QsciLexerCustom,
    vtbl: ref QsciLexerCustomVTable = nil): gen_qscilexercustom_types.QsciLexerCustom =
  let vtbl = if vtbl == nil: new QsciLexerCustomVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCustomVTable, _: ptr cQsciLexerCustom) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCustomVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCustom_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCustom_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCustom_metacall
  if not isNil(vtbl.styleText):
    vtbl[].vtbl.styleText = miqt_exec_callback_cQsciLexerCustom_styleText
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCustom_setEditor
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCustom_styleBitsNeeded
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCustom_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCustom_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCustom_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCustom_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCustom_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCustom_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCustom_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCustom_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCustom_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCustom_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCustom_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCustom_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCustom_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCustom_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCustom_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCustom_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCustom_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCustom_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCustom_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCustom_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCustom_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCustom_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCustom_defaultPaperWithStyle
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCustom_refreshProperties
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCustom_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCustom_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCustom_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCustom_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCustom_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCustom_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCustom_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCustom_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCustom_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCustom_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCustom_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCustom_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCustom_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCustom_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCustom_disconnectNotify
  gen_qscilexercustom_types.QsciLexerCustom(h: fcQsciLexerCustom_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercustom_types.QsciLexerCustom,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCustomVTable = nil): gen_qscilexercustom_types.QsciLexerCustom =
  let vtbl = if vtbl == nil: new QsciLexerCustomVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCustomVTable, _: ptr cQsciLexerCustom) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCustomVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCustom_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCustom_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCustom_metacall
  if not isNil(vtbl.styleText):
    vtbl[].vtbl.styleText = miqt_exec_callback_cQsciLexerCustom_styleText
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCustom_setEditor
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCustom_styleBitsNeeded
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCustom_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCustom_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCustom_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCustom_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCustom_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCustom_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCustom_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCustom_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCustom_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCustom_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCustom_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCustom_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCustom_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCustom_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCustom_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCustom_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCustom_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCustom_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCustom_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCustom_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCustom_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCustom_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCustom_defaultPaperWithStyle
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCustom_refreshProperties
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCustom_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCustom_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCustom_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCustom_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCustom_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCustom_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCustom_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCustom_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCustom_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCustom_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCustom_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCustom_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCustom_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCustom_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCustom_disconnectNotify
  gen_qscilexercustom_types.QsciLexerCustom(h: fcQsciLexerCustom_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexercustom_types.QsciLexerCustom): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCustom_staticMetaObject())
proc delete*(self: gen_qscilexercustom_types.QsciLexerCustom) =
  fcQsciLexerCustom_delete(self.h)
