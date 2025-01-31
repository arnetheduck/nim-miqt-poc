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
{.compile("gen_qscilexeridl.cpp", cflags).}

import gen_qscilexeridl_types
export gen_qscilexeridl_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexercpp,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexercpp,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerIDL*{.exportc: "QsciLexerIDL", incompleteStruct.} = object

proc fcQsciLexerIDL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerIDL_metaObject".}
proc fcQsciLexerIDL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerIDL_metacast".}
proc fcQsciLexerIDL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerIDL_metacall".}
proc fcQsciLexerIDL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr".}
proc fcQsciLexerIDL_language(self: pointer, ): cstring {.importc: "QsciLexerIDL_language".}
proc fcQsciLexerIDL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_defaultColor".}
proc fcQsciLexerIDL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerIDL_keywords".}
proc fcQsciLexerIDL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerIDL_description".}
proc fcQsciLexerIDL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr2".}
proc fcQsciLexerIDL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerIDL_tr3".}
type cQsciLexerIDLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerIDLVTable, self: ptr cQsciLexerIDL) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldAtElse*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldPreprocessor*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setStylePreprocessor*: proc(vtbl, self: pointer, style: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerIDL_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerIDL_virtualbase_metaObject".}
proc fcQsciLexerIDL_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerIDL_virtualbase_metacast".}
proc fcQsciLexerIDL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerIDL_virtualbase_metacall".}
proc fcQsciLexerIDL_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerIDL_virtualbase_setFoldAtElse".}
proc fcQsciLexerIDL_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerIDL_virtualbase_setFoldComments".}
proc fcQsciLexerIDL_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerIDL_virtualbase_setFoldCompact".}
proc fcQsciLexerIDL_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerIDL_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerIDL_virtualbase_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerIDL_virtualbase_setStylePreprocessor".}
proc fcQsciLexerIDL_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerIDL_virtualbase_lexer".}
proc fcQsciLexerIDL_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_lexerId".}
proc fcQsciLexerIDL_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerIDL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerIDL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerIDL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerIDL_virtualbase_blockEnd".}
proc fcQsciLexerIDL_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_blockLookback".}
proc fcQsciLexerIDL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerIDL_virtualbase_blockStart".}
proc fcQsciLexerIDL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerIDL_virtualbase_blockStartKeyword".}
proc fcQsciLexerIDL_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_braceStyle".}
proc fcQsciLexerIDL_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerIDL_virtualbase_caseSensitive".}
proc fcQsciLexerIDL_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_color".}
proc fcQsciLexerIDL_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerIDL_virtualbase_eolFill".}
proc fcQsciLexerIDL_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_font".}
proc fcQsciLexerIDL_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_indentationGuideView".}
proc fcQsciLexerIDL_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerIDL_virtualbase_keywords".}
proc fcQsciLexerIDL_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_defaultStyle".}
proc fcQsciLexerIDL_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_paper".}
proc fcQsciLexerIDL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerIDL_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerIDL_virtualbase_defaultEolFill".}
proc fcQsciLexerIDL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerIDL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerIDL_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerIDL_virtualbase_setEditor".}
proc fcQsciLexerIDL_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerIDL_virtualbase_refreshProperties".}
proc fcQsciLexerIDL_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerIDL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerIDL_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerIDL_virtualbase_wordCharacters".}
proc fcQsciLexerIDL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerIDL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerIDL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerIDL_virtualbase_setColor".}
proc fcQsciLexerIDL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerIDL_virtualbase_setEolFill".}
proc fcQsciLexerIDL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerIDL_virtualbase_setFont".}
proc fcQsciLexerIDL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerIDL_virtualbase_setPaper".}
proc fcQsciLexerIDL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerIDL_virtualbase_readProperties".}
proc fcQsciLexerIDL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerIDL_virtualbase_writeProperties".}
proc fcQsciLexerIDL_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerIDL_virtualbase_event".}
proc fcQsciLexerIDL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerIDL_virtualbase_eventFilter".}
proc fcQsciLexerIDL_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerIDL_virtualbase_timerEvent".}
proc fcQsciLexerIDL_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerIDL_virtualbase_childEvent".}
proc fcQsciLexerIDL_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerIDL_virtualbase_customEvent".}
proc fcQsciLexerIDL_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerIDL_virtualbase_connectNotify".}
proc fcQsciLexerIDL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerIDL_virtualbase_disconnectNotify".}
proc fcQsciLexerIDL_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerIDL_protectedbase_readProperties".}
proc fcQsciLexerIDL_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerIDL_protectedbase_writeProperties".}
proc fcQsciLexerIDL_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerIDL_protectedbase_sender".}
proc fcQsciLexerIDL_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerIDL_protectedbase_senderSignalIndex".}
proc fcQsciLexerIDL_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerIDL_protectedbase_receivers".}
proc fcQsciLexerIDL_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerIDL_protectedbase_isSignalConnected".}
proc fcQsciLexerIDL_new(vtbl: pointer, ): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new".}
proc fcQsciLexerIDL_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new2".}
proc fcQsciLexerIDL_staticMetaObject(): pointer {.importc: "QsciLexerIDL_staticMetaObject".}
proc fcQsciLexerIDL_delete(self: pointer) {.importc: "QsciLexerIDL_delete".}

proc metaObject*(self: gen_qscilexeridl_types.QsciLexerIDL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerIDL_metaObject(self.h))

proc metacast*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cstring): pointer =
  fcQsciLexerIDL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerIDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring): string =
  let v_ms = fcQsciLexerIDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =
  (fcQsciLexerIDL_language(self.h))

proc defaultColor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerIDL_defaultColor(self.h, style))

proc keywords*(self: gen_qscilexeridl_types.QsciLexerIDL, set: cint): cstring =
  (fcQsciLexerIDL_keywords(self.h, set))

proc description*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): string =
  let v_ms = fcQsciLexerIDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerIDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerIDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerIDLmetaObjectProc* = proc(self: QsciLexerIDL): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerIDLmetacastProc* = proc(self: QsciLexerIDL, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerIDLmetacallProc* = proc(self: QsciLexerIDL, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerIDLsetFoldAtElseProc* = proc(self: QsciLexerIDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerIDLsetFoldCommentsProc* = proc(self: QsciLexerIDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerIDLsetFoldCompactProc* = proc(self: QsciLexerIDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerIDLsetFoldPreprocessorProc* = proc(self: QsciLexerIDL, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerIDLsetStylePreprocessorProc* = proc(self: QsciLexerIDL, style: bool): void {.raises: [], gcsafe.}
type QsciLexerIDLlanguageProc* = proc(self: QsciLexerIDL): cstring {.raises: [], gcsafe.}
type QsciLexerIDLlexerProc* = proc(self: QsciLexerIDL): cstring {.raises: [], gcsafe.}
type QsciLexerIDLlexerIdProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLautoCompletionFillupsProc* = proc(self: QsciLexerIDL): cstring {.raises: [], gcsafe.}
type QsciLexerIDLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerIDL): seq[string] {.raises: [], gcsafe.}
type QsciLexerIDLblockEndProc* = proc(self: QsciLexerIDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerIDLblockLookbackProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLblockStartProc* = proc(self: QsciLexerIDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerIDLblockStartKeywordProc* = proc(self: QsciLexerIDL, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerIDLbraceStyleProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLcaseSensitiveProc* = proc(self: QsciLexerIDL): bool {.raises: [], gcsafe.}
type QsciLexerIDLcolorProc* = proc(self: QsciLexerIDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerIDLeolFillProc* = proc(self: QsciLexerIDL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerIDLfontProc* = proc(self: QsciLexerIDL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerIDLindentationGuideViewProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLkeywordsProc* = proc(self: QsciLexerIDL, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerIDLdefaultStyleProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLdescriptionProc* = proc(self: QsciLexerIDL, style: cint): string {.raises: [], gcsafe.}
type QsciLexerIDLpaperProc* = proc(self: QsciLexerIDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerIDLdefaultColorProc* = proc(self: QsciLexerIDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerIDLdefaultEolFillProc* = proc(self: QsciLexerIDL, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerIDLdefaultFontProc* = proc(self: QsciLexerIDL, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerIDLdefaultPaperProc* = proc(self: QsciLexerIDL, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerIDLsetEditorProc* = proc(self: QsciLexerIDL, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerIDLrefreshPropertiesProc* = proc(self: QsciLexerIDL): void {.raises: [], gcsafe.}
type QsciLexerIDLstyleBitsNeededProc* = proc(self: QsciLexerIDL): cint {.raises: [], gcsafe.}
type QsciLexerIDLwordCharactersProc* = proc(self: QsciLexerIDL): cstring {.raises: [], gcsafe.}
type QsciLexerIDLsetAutoIndentStyleProc* = proc(self: QsciLexerIDL, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerIDLsetColorProc* = proc(self: QsciLexerIDL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerIDLsetEolFillProc* = proc(self: QsciLexerIDL, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerIDLsetFontProc* = proc(self: QsciLexerIDL, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerIDLsetPaperProc* = proc(self: QsciLexerIDL, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerIDLreadPropertiesProc* = proc(self: QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerIDLwritePropertiesProc* = proc(self: QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerIDLeventProc* = proc(self: QsciLexerIDL, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerIDLeventFilterProc* = proc(self: QsciLexerIDL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerIDLtimerEventProc* = proc(self: QsciLexerIDL, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerIDLchildEventProc* = proc(self: QsciLexerIDL, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerIDLcustomEventProc* = proc(self: QsciLexerIDL, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerIDLconnectNotifyProc* = proc(self: QsciLexerIDL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerIDLdisconnectNotifyProc* = proc(self: QsciLexerIDL, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerIDLVTable* = object
  vtbl: cQsciLexerIDLVTable
  metaObject*: QsciLexerIDLmetaObjectProc
  metacast*: QsciLexerIDLmetacastProc
  metacall*: QsciLexerIDLmetacallProc
  setFoldAtElse*: QsciLexerIDLsetFoldAtElseProc
  setFoldComments*: QsciLexerIDLsetFoldCommentsProc
  setFoldCompact*: QsciLexerIDLsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerIDLsetFoldPreprocessorProc
  setStylePreprocessor*: QsciLexerIDLsetStylePreprocessorProc
  language*: QsciLexerIDLlanguageProc
  lexer*: QsciLexerIDLlexerProc
  lexerId*: QsciLexerIDLlexerIdProc
  autoCompletionFillups*: QsciLexerIDLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerIDLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerIDLblockEndProc
  blockLookback*: QsciLexerIDLblockLookbackProc
  blockStart*: QsciLexerIDLblockStartProc
  blockStartKeyword*: QsciLexerIDLblockStartKeywordProc
  braceStyle*: QsciLexerIDLbraceStyleProc
  caseSensitive*: QsciLexerIDLcaseSensitiveProc
  color*: QsciLexerIDLcolorProc
  eolFill*: QsciLexerIDLeolFillProc
  font*: QsciLexerIDLfontProc
  indentationGuideView*: QsciLexerIDLindentationGuideViewProc
  keywords*: QsciLexerIDLkeywordsProc
  defaultStyle*: QsciLexerIDLdefaultStyleProc
  description*: QsciLexerIDLdescriptionProc
  paper*: QsciLexerIDLpaperProc
  defaultColor*: QsciLexerIDLdefaultColorProc
  defaultEolFill*: QsciLexerIDLdefaultEolFillProc
  defaultFont*: QsciLexerIDLdefaultFontProc
  defaultPaper*: QsciLexerIDLdefaultPaperProc
  setEditor*: QsciLexerIDLsetEditorProc
  refreshProperties*: QsciLexerIDLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerIDLstyleBitsNeededProc
  wordCharacters*: QsciLexerIDLwordCharactersProc
  setAutoIndentStyle*: QsciLexerIDLsetAutoIndentStyleProc
  setColor*: QsciLexerIDLsetColorProc
  setEolFill*: QsciLexerIDLsetEolFillProc
  setFont*: QsciLexerIDLsetFontProc
  setPaper*: QsciLexerIDLsetPaperProc
  readProperties*: QsciLexerIDLreadPropertiesProc
  writeProperties*: QsciLexerIDLwritePropertiesProc
  event*: QsciLexerIDLeventProc
  eventFilter*: QsciLexerIDLeventFilterProc
  timerEvent*: QsciLexerIDLtimerEventProc
  childEvent*: QsciLexerIDLchildEventProc
  customEvent*: QsciLexerIDLcustomEventProc
  connectNotify*: QsciLexerIDLconnectNotifyProc
  disconnectNotify*: QsciLexerIDLdisconnectNotifyProc
proc QsciLexerIDLmetaObject*(self: gen_qscilexeridl_types.QsciLexerIDL, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerIDL_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerIDL_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerIDLmetacast*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cstring): pointer =
  fcQsciLexerIDL_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerIDL_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerIDLmetacall*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerIDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerIDL_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerIDLsetFoldAtElse*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =
  fcQsciLexerIDL_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerIDL_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerIDLsetFoldComments*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =
  fcQsciLexerIDL_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerIDL_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerIDLsetFoldCompact*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =
  fcQsciLexerIDL_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerIDL_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerIDLsetFoldPreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =
  fcQsciLexerIDL_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerIDL_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerIDLsetStylePreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: bool): void =
  fcQsciLexerIDL_virtualbase_setStylePreprocessor(self.h, style)

proc miqt_exec_callback_cQsciLexerIDL_setStylePreprocessor(vtbl: pointer, self: pointer, style: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  vtbl[].setStylePreprocessor(self, slotval1)

proc miqt_exec_callback_cQsciLexerIDL_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerIDLlexer*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =
  (fcQsciLexerIDL_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerIDL_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerIDLlexerId*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerIDL_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerIDLautoCompletionFillups*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =
  (fcQsciLexerIDL_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerIDL_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerIDLautoCompletionWordSeparators*(self: gen_qscilexeridl_types.QsciLexerIDL, ): seq[string] =
  var v_ma = fcQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerIDL_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerIDLblockEnd*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =
  (fcQsciLexerIDL_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerIDLblockLookback*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerIDL_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerIDLblockStart*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =
  (fcQsciLexerIDL_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerIDLblockStartKeyword*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =
  (fcQsciLexerIDL_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerIDLbraceStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerIDL_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerIDLcaseSensitive*(self: gen_qscilexeridl_types.QsciLexerIDL, ): bool =
  fcQsciLexerIDL_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerIDL_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerIDLcolor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerIDL_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLeolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): bool =
  fcQsciLexerIDL_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerIDL_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerIDLfont*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerIDL_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLindentationGuideView*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerIDL_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerIDLkeywords*(self: gen_qscilexeridl_types.QsciLexerIDL, set: cint): cstring =
  (fcQsciLexerIDL_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerIDL_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerIDLdefaultStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerIDL_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerIDL_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerIDLpaper*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerIDL_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLdefaultColor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerIDL_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLdefaultEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): bool =
  fcQsciLexerIDL_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerIDL_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerIDLdefaultFont*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerIDL_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLdefaultPaper*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerIDL_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerIDL_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerIDLsetEditor*(self: gen_qscilexeridl_types.QsciLexerIDL, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerIDL_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerIDL_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerIDLrefreshProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, ): void =
  fcQsciLexerIDL_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerIDL_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerIDLstyleBitsNeeded*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerIDL_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerIDLwordCharacters*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =
  (fcQsciLexerIDL_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerIDL_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerIDLsetAutoIndentStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, autoindentstyle: cint): void =
  fcQsciLexerIDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerIDL_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerIDLsetColor*(self: gen_qscilexeridl_types.QsciLexerIDL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerIDL_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerIDL_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerIDLsetEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, eoffill: bool, style: cint): void =
  fcQsciLexerIDL_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerIDL_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerIDLsetFont*(self: gen_qscilexeridl_types.QsciLexerIDL, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerIDL_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerIDL_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerIDLsetPaper*(self: gen_qscilexeridl_types.QsciLexerIDL, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerIDL_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerIDL_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerIDLreadProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerIDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerIDL_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerIDLwriteProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerIDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerIDL_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerIDLevent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerIDL_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerIDL_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerIDLeventFilter*(self: gen_qscilexeridl_types.QsciLexerIDL, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerIDL_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerIDL_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerIDLtimerEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerIDL_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerIDL_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerIDLchildEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerIDL_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerIDL_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerIDLcustomEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerIDL_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerIDL_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerIDLconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerIDL_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerIDL_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerIDLdisconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerIDL_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerIDL_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerIDLVTable](vtbl)
  let self = QsciLexerIDL(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerIDL_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerIDL_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexeridl_types.QsciLexerIDL, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerIDL_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =
  fcQsciLexerIDL_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: cstring): cint =
  fcQsciLexerIDL_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerIDL_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexeridl_types.QsciLexerIDL,
    vtbl: ref QsciLexerIDLVTable = nil): gen_qscilexeridl_types.QsciLexerIDL =
  let vtbl = if vtbl == nil: new QsciLexerIDLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerIDLVTable, _: ptr cQsciLexerIDL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerIDLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerIDL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerIDL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerIDL_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerIDL_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerIDL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerIDL_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerIDL_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerIDL_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerIDL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerIDL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerIDL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerIDL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerIDL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerIDL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerIDL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerIDL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerIDL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerIDL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerIDL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerIDL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerIDL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerIDL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerIDL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerIDL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerIDL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerIDL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerIDL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerIDL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerIDL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerIDL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerIDL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerIDL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerIDL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerIDL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerIDL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerIDL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerIDL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerIDL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerIDL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerIDL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerIDL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerIDL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerIDL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerIDL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerIDL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerIDL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerIDL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerIDL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerIDL_disconnectNotify
  gen_qscilexeridl_types.QsciLexerIDL(h: fcQsciLexerIDL_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexeridl_types.QsciLexerIDL,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerIDLVTable = nil): gen_qscilexeridl_types.QsciLexerIDL =
  let vtbl = if vtbl == nil: new QsciLexerIDLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerIDLVTable, _: ptr cQsciLexerIDL) {.cdecl.} =
    let vtbl = cast[ref QsciLexerIDLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerIDL_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerIDL_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerIDL_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerIDL_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerIDL_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerIDL_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerIDL_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerIDL_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerIDL_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerIDL_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerIDL_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerIDL_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerIDL_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerIDL_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerIDL_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerIDL_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerIDL_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerIDL_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerIDL_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerIDL_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerIDL_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerIDL_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerIDL_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerIDL_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerIDL_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerIDL_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerIDL_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerIDL_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerIDL_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerIDL_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerIDL_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerIDL_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerIDL_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerIDL_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerIDL_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerIDL_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerIDL_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerIDL_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerIDL_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerIDL_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerIDL_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerIDL_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerIDL_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerIDL_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerIDL_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerIDL_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerIDL_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerIDL_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerIDL_disconnectNotify
  gen_qscilexeridl_types.QsciLexerIDL(h: fcQsciLexerIDL_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexeridl_types.QsciLexerIDL): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerIDL_staticMetaObject())
proc delete*(self: gen_qscilexeridl_types.QsciLexerIDL) =
  fcQsciLexerIDL_delete(self.h)
