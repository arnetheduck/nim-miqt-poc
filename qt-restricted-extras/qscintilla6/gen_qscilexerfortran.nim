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
{.compile("gen_qscilexerfortran.cpp", cflags).}

import gen_qscilexerfortran_types
export gen_qscilexerfortran_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexerfortran77,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexerfortran77,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerFortran*{.exportc: "QsciLexerFortran", incompleteStruct.} = object

proc fcQsciLexerFortran_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran_metaObject".}
proc fcQsciLexerFortran_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran_metacast".}
proc fcQsciLexerFortran_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran_metacall".}
proc fcQsciLexerFortran_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerFortran_tr".}
proc fcQsciLexerFortran_language(self: pointer, ): cstring {.importc: "QsciLexerFortran_language".}
proc fcQsciLexerFortran_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran_lexer".}
proc fcQsciLexerFortran_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran_keywords".}
proc fcQsciLexerFortran_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerFortran_tr2".}
proc fcQsciLexerFortran_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerFortran_tr3".}
type cQsciLexerFortranVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerFortranVTable, self: ptr cQsciLexerFortran) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerFortran_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran_virtualbase_metaObject".}
proc fcQsciLexerFortran_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran_virtualbase_metacast".}
proc fcQsciLexerFortran_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran_virtualbase_metacall".}
proc fcQsciLexerFortran_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerFortran_virtualbase_setFoldCompact".}
proc fcQsciLexerFortran_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran_virtualbase_lexer".}
proc fcQsciLexerFortran_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_lexerId".}
proc fcQsciLexerFortran_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerFortran_virtualbase_autoCompletionFillups".}
proc fcQsciLexerFortran_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerFortran_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerFortran_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran_virtualbase_blockEnd".}
proc fcQsciLexerFortran_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_blockLookback".}
proc fcQsciLexerFortran_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran_virtualbase_blockStart".}
proc fcQsciLexerFortran_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerFortran_virtualbase_blockStartKeyword".}
proc fcQsciLexerFortran_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_braceStyle".}
proc fcQsciLexerFortran_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerFortran_virtualbase_caseSensitive".}
proc fcQsciLexerFortran_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_color".}
proc fcQsciLexerFortran_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran_virtualbase_eolFill".}
proc fcQsciLexerFortran_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_font".}
proc fcQsciLexerFortran_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_indentationGuideView".}
proc fcQsciLexerFortran_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran_virtualbase_keywords".}
proc fcQsciLexerFortran_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_defaultStyle".}
proc fcQsciLexerFortran_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_paper".}
proc fcQsciLexerFortran_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerFortran_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran_virtualbase_defaultEolFill".}
proc fcQsciLexerFortran_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerFortran_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerFortran_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerFortran_virtualbase_setEditor".}
proc fcQsciLexerFortran_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerFortran_virtualbase_refreshProperties".}
proc fcQsciLexerFortran_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerFortran_virtualbase_styleBitsNeeded".}
proc fcQsciLexerFortran_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerFortran_virtualbase_wordCharacters".}
proc fcQsciLexerFortran_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerFortran_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerFortran_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerFortran_virtualbase_setColor".}
proc fcQsciLexerFortran_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerFortran_virtualbase_setEolFill".}
proc fcQsciLexerFortran_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerFortran_virtualbase_setFont".}
proc fcQsciLexerFortran_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerFortran_virtualbase_setPaper".}
proc fcQsciLexerFortran_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran_virtualbase_readProperties".}
proc fcQsciLexerFortran_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran_virtualbase_writeProperties".}
proc fcQsciLexerFortran_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerFortran_virtualbase_event".}
proc fcQsciLexerFortran_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerFortran_virtualbase_eventFilter".}
proc fcQsciLexerFortran_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran_virtualbase_timerEvent".}
proc fcQsciLexerFortran_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran_virtualbase_childEvent".}
proc fcQsciLexerFortran_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerFortran_virtualbase_customEvent".}
proc fcQsciLexerFortran_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerFortran_virtualbase_connectNotify".}
proc fcQsciLexerFortran_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerFortran_virtualbase_disconnectNotify".}
proc fcQsciLexerFortran_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran_protectedbase_readProperties".}
proc fcQsciLexerFortran_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerFortran_protectedbase_writeProperties".}
proc fcQsciLexerFortran_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerFortran_protectedbase_sender".}
proc fcQsciLexerFortran_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerFortran_protectedbase_senderSignalIndex".}
proc fcQsciLexerFortran_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerFortran_protectedbase_receivers".}
proc fcQsciLexerFortran_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerFortran_protectedbase_isSignalConnected".}
proc fcQsciLexerFortran_new(vtbl: pointer, ): ptr cQsciLexerFortran {.importc: "QsciLexerFortran_new".}
proc fcQsciLexerFortran_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerFortran {.importc: "QsciLexerFortran_new2".}
proc fcQsciLexerFortran_staticMetaObject(): pointer {.importc: "QsciLexerFortran_staticMetaObject".}
proc fcQsciLexerFortran_delete(self: pointer) {.importc: "QsciLexerFortran_delete".}

proc metaObject*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran_metaObject(self.h))

proc metacast*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cstring): pointer =
  fcQsciLexerFortran_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerFortran_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring): string =
  let v_ms = fcQsciLexerFortran_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_language(self.h))

proc lexer*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_lexer(self.h))

proc keywords*(self: gen_qscilexerfortran_types.QsciLexerFortran, set: cint): cstring =
  (fcQsciLexerFortran_keywords(self.h, set))

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerFortran_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerFortran_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerFortranmetaObjectProc* = proc(self: QsciLexerFortran): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerFortranmetacastProc* = proc(self: QsciLexerFortran, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerFortranmetacallProc* = proc(self: QsciLexerFortran, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerFortransetFoldCompactProc* = proc(self: QsciLexerFortran, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerFortranlanguageProc* = proc(self: QsciLexerFortran): cstring {.raises: [], gcsafe.}
type QsciLexerFortranlexerProc* = proc(self: QsciLexerFortran): cstring {.raises: [], gcsafe.}
type QsciLexerFortranlexerIdProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortranautoCompletionFillupsProc* = proc(self: QsciLexerFortran): cstring {.raises: [], gcsafe.}
type QsciLexerFortranautoCompletionWordSeparatorsProc* = proc(self: QsciLexerFortran): seq[string] {.raises: [], gcsafe.}
type QsciLexerFortranblockEndProc* = proc(self: QsciLexerFortran, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortranblockLookbackProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortranblockStartProc* = proc(self: QsciLexerFortran, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortranblockStartKeywordProc* = proc(self: QsciLexerFortran, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortranbraceStyleProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortrancaseSensitiveProc* = proc(self: QsciLexerFortran): bool {.raises: [], gcsafe.}
type QsciLexerFortrancolorProc* = proc(self: QsciLexerFortran, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortraneolFillProc* = proc(self: QsciLexerFortran, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerFortranfontProc* = proc(self: QsciLexerFortran, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerFortranindentationGuideViewProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortrankeywordsProc* = proc(self: QsciLexerFortran, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerFortrandefaultStyleProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortrandescriptionProc* = proc(self: QsciLexerFortran, style: cint): string {.raises: [], gcsafe.}
type QsciLexerFortranpaperProc* = proc(self: QsciLexerFortran, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortrandefaultColorProc* = proc(self: QsciLexerFortran, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortrandefaultEolFillProc* = proc(self: QsciLexerFortran, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerFortrandefaultFontProc* = proc(self: QsciLexerFortran, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerFortrandefaultPaperProc* = proc(self: QsciLexerFortran, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerFortransetEditorProc* = proc(self: QsciLexerFortran, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerFortranrefreshPropertiesProc* = proc(self: QsciLexerFortran): void {.raises: [], gcsafe.}
type QsciLexerFortranstyleBitsNeededProc* = proc(self: QsciLexerFortran): cint {.raises: [], gcsafe.}
type QsciLexerFortranwordCharactersProc* = proc(self: QsciLexerFortran): cstring {.raises: [], gcsafe.}
type QsciLexerFortransetAutoIndentStyleProc* = proc(self: QsciLexerFortran, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerFortransetColorProc* = proc(self: QsciLexerFortran, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortransetEolFillProc* = proc(self: QsciLexerFortran, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortransetFontProc* = proc(self: QsciLexerFortran, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortransetPaperProc* = proc(self: QsciLexerFortran, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerFortranreadPropertiesProc* = proc(self: QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerFortranwritePropertiesProc* = proc(self: QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerFortraneventProc* = proc(self: QsciLexerFortran, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerFortraneventFilterProc* = proc(self: QsciLexerFortran, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerFortrantimerEventProc* = proc(self: QsciLexerFortran, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerFortranchildEventProc* = proc(self: QsciLexerFortran, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerFortrancustomEventProc* = proc(self: QsciLexerFortran, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerFortranconnectNotifyProc* = proc(self: QsciLexerFortran, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerFortrandisconnectNotifyProc* = proc(self: QsciLexerFortran, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerFortranVTable* = object
  vtbl: cQsciLexerFortranVTable
  metaObject*: QsciLexerFortranmetaObjectProc
  metacast*: QsciLexerFortranmetacastProc
  metacall*: QsciLexerFortranmetacallProc
  setFoldCompact*: QsciLexerFortransetFoldCompactProc
  language*: QsciLexerFortranlanguageProc
  lexer*: QsciLexerFortranlexerProc
  lexerId*: QsciLexerFortranlexerIdProc
  autoCompletionFillups*: QsciLexerFortranautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerFortranautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerFortranblockEndProc
  blockLookback*: QsciLexerFortranblockLookbackProc
  blockStart*: QsciLexerFortranblockStartProc
  blockStartKeyword*: QsciLexerFortranblockStartKeywordProc
  braceStyle*: QsciLexerFortranbraceStyleProc
  caseSensitive*: QsciLexerFortrancaseSensitiveProc
  color*: QsciLexerFortrancolorProc
  eolFill*: QsciLexerFortraneolFillProc
  font*: QsciLexerFortranfontProc
  indentationGuideView*: QsciLexerFortranindentationGuideViewProc
  keywords*: QsciLexerFortrankeywordsProc
  defaultStyle*: QsciLexerFortrandefaultStyleProc
  description*: QsciLexerFortrandescriptionProc
  paper*: QsciLexerFortranpaperProc
  defaultColor*: QsciLexerFortrandefaultColorProc
  defaultEolFill*: QsciLexerFortrandefaultEolFillProc
  defaultFont*: QsciLexerFortrandefaultFontProc
  defaultPaper*: QsciLexerFortrandefaultPaperProc
  setEditor*: QsciLexerFortransetEditorProc
  refreshProperties*: QsciLexerFortranrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerFortranstyleBitsNeededProc
  wordCharacters*: QsciLexerFortranwordCharactersProc
  setAutoIndentStyle*: QsciLexerFortransetAutoIndentStyleProc
  setColor*: QsciLexerFortransetColorProc
  setEolFill*: QsciLexerFortransetEolFillProc
  setFont*: QsciLexerFortransetFontProc
  setPaper*: QsciLexerFortransetPaperProc
  readProperties*: QsciLexerFortranreadPropertiesProc
  writeProperties*: QsciLexerFortranwritePropertiesProc
  event*: QsciLexerFortraneventProc
  eventFilter*: QsciLexerFortraneventFilterProc
  timerEvent*: QsciLexerFortrantimerEventProc
  childEvent*: QsciLexerFortranchildEventProc
  customEvent*: QsciLexerFortrancustomEventProc
  connectNotify*: QsciLexerFortranconnectNotifyProc
  disconnectNotify*: QsciLexerFortrandisconnectNotifyProc
proc QsciLexerFortranmetaObject*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerFortran_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerFortranmetacast*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cstring): pointer =
  fcQsciLexerFortran_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerFortran_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerFortranmetacall*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerFortran_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerFortran_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerFortransetFoldCompact*(self: gen_qscilexerfortran_types.QsciLexerFortran, fold: bool): void =
  fcQsciLexerFortran_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerFortran_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerFortran_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerFortranlexer*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerFortran_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerFortranlexerId*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerFortran_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerFortranautoCompletionFillups*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerFortran_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerFortranautoCompletionWordSeparators*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): seq[string] =
  var v_ma = fcQsciLexerFortran_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerFortran_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerFortranblockEnd*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fcQsciLexerFortran_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerFortranblockLookback*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerFortran_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerFortranblockStart*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fcQsciLexerFortran_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerFortranblockStartKeyword*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fcQsciLexerFortran_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerFortranbraceStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerFortran_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerFortrancaseSensitive*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): bool =
  fcQsciLexerFortran_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerFortran_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerFortrancolor*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerFortraneolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): bool =
  fcQsciLexerFortran_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerFortran_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerFortranfont*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerFortran_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerFortranindentationGuideView*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerFortran_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerFortrankeywords*(self: gen_qscilexerfortran_types.QsciLexerFortran, set: cint): cstring =
  (fcQsciLexerFortran_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerFortran_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerFortrandefaultStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerFortran_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerFortran_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerFortranpaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerFortrandefaultColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerFortrandefaultEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): bool =
  fcQsciLexerFortran_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerFortran_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerFortrandefaultFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerFortran_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerFortrandefaultPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerFortran_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerFortran_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerFortransetEditor*(self: gen_qscilexerfortran_types.QsciLexerFortran, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerFortran_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerFortran_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerFortranrefreshProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): void =
  fcQsciLexerFortran_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerFortran_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerFortranstyleBitsNeeded*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerFortran_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerFortranwordCharacters*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerFortran_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerFortransetAutoIndentStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, autoindentstyle: cint): void =
  fcQsciLexerFortran_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerFortran_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerFortransetColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerFortran_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerFortran_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerFortransetEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, eoffill: bool, style: cint): void =
  fcQsciLexerFortran_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerFortran_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerFortransetFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerFortran_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerFortran_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerFortransetPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerFortran_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerFortran_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerFortranreadProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerFortran_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortranwriteProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerFortran_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortranevent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerFortran_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerFortraneventFilter*(self: gen_qscilexerfortran_types.QsciLexerFortran, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerFortran_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerFortrantimerEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerFortran_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerFortranchildEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerFortran_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerFortrancustomEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerFortran_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerFortran_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerFortranconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerFortran_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerFortran_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerFortrandisconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerFortran_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerFortran_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerFortranVTable](vtbl)
  let self = QsciLexerFortran(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerFortran_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerFortran_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fcQsciLexerFortran_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: cstring): cint =
  fcQsciLexerFortran_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerFortran_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerfortran_types.QsciLexerFortran,
    vtbl: ref QsciLexerFortranVTable = nil): gen_qscilexerfortran_types.QsciLexerFortran =
  let vtbl = if vtbl == nil: new QsciLexerFortranVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerFortranVTable, _: ptr cQsciLexerFortran) {.cdecl.} =
    let vtbl = cast[ref QsciLexerFortranVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerFortran_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerFortran_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerFortran_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerFortran_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerFortran_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerFortran_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerFortran_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerFortran_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerFortran_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerFortran_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerFortran_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerFortran_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerFortran_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerFortran_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerFortran_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerFortran_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerFortran_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerFortran_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerFortran_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerFortran_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerFortran_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerFortran_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerFortran_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerFortran_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerFortran_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerFortran_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerFortran_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerFortran_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerFortran_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerFortran_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerFortran_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerFortran_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerFortran_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerFortran_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerFortran_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerFortran_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerFortran_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerFortran_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerFortran_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerFortran_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerFortran_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerFortran_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerFortran_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerFortran_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerFortran_disconnectNotify
  gen_qscilexerfortran_types.QsciLexerFortran(h: fcQsciLexerFortran_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerfortran_types.QsciLexerFortran,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerFortranVTable = nil): gen_qscilexerfortran_types.QsciLexerFortran =
  let vtbl = if vtbl == nil: new QsciLexerFortranVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerFortranVTable, _: ptr cQsciLexerFortran) {.cdecl.} =
    let vtbl = cast[ref QsciLexerFortranVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerFortran_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerFortran_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerFortran_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerFortran_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerFortran_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerFortran_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerFortran_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerFortran_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerFortran_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerFortran_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerFortran_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerFortran_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerFortran_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerFortran_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerFortran_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerFortran_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerFortran_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerFortran_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerFortran_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerFortran_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerFortran_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerFortran_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerFortran_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerFortran_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerFortran_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerFortran_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerFortran_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerFortran_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerFortran_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerFortran_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerFortran_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerFortran_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerFortran_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerFortran_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerFortran_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerFortran_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerFortran_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerFortran_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerFortran_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerFortran_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerFortran_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerFortran_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerFortran_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerFortran_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerFortran_disconnectNotify
  gen_qscilexerfortran_types.QsciLexerFortran(h: fcQsciLexerFortran_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerfortran_types.QsciLexerFortran): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerFortran_staticMetaObject())
proc delete*(self: gen_qscilexerfortran_types.QsciLexerFortran) =
  fcQsciLexerFortran_delete(self.h)
