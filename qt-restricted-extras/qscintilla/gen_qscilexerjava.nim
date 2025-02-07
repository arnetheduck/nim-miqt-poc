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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")
{.compile("gen_qscilexerjava.cpp", cflags).}

import gen_qscilexerjava_types
export gen_qscilexerjava_types

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

type cQsciLexerJava*{.exportc: "QsciLexerJava", incompleteStruct.} = object

proc fcQsciLexerJava_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJava_metaObject".}
proc fcQsciLexerJava_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJava_metacast".}
proc fcQsciLexerJava_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJava_metacall".}
proc fcQsciLexerJava_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerJava_tr".}
proc fcQsciLexerJava_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerJava_trUtf8".}
proc fcQsciLexerJava_language(self: pointer, ): cstring {.importc: "QsciLexerJava_language".}
proc fcQsciLexerJava_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJava_keywords".}
proc fcQsciLexerJava_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJava_tr2".}
proc fcQsciLexerJava_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJava_tr3".}
proc fcQsciLexerJava_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJava_trUtf82".}
proc fcQsciLexerJava_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJava_trUtf83".}
type cQsciLexerJavaVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerJavaVTable, self: ptr cQsciLexerJava) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerJava_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJava_virtualbase_metaObject".}
proc fcQsciLexerJava_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJava_virtualbase_metacast".}
proc fcQsciLexerJava_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJava_virtualbase_metacall".}
proc fcQsciLexerJava_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerJava_virtualbase_setFoldAtElse".}
proc fcQsciLexerJava_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerJava_virtualbase_setFoldComments".}
proc fcQsciLexerJava_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerJava_virtualbase_setFoldCompact".}
proc fcQsciLexerJava_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerJava_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerJava_virtualbase_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerJava_virtualbase_setStylePreprocessor".}
proc fcQsciLexerJava_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerJava_virtualbase_lexer".}
proc fcQsciLexerJava_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_lexerId".}
proc fcQsciLexerJava_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerJava_virtualbase_autoCompletionFillups".}
proc fcQsciLexerJava_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerJava_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerJava_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJava_virtualbase_blockEnd".}
proc fcQsciLexerJava_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_blockLookback".}
proc fcQsciLexerJava_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJava_virtualbase_blockStart".}
proc fcQsciLexerJava_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerJava_virtualbase_blockStartKeyword".}
proc fcQsciLexerJava_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_braceStyle".}
proc fcQsciLexerJava_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerJava_virtualbase_caseSensitive".}
proc fcQsciLexerJava_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_color".}
proc fcQsciLexerJava_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJava_virtualbase_eolFill".}
proc fcQsciLexerJava_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_font".}
proc fcQsciLexerJava_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_indentationGuideView".}
proc fcQsciLexerJava_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJava_virtualbase_keywords".}
proc fcQsciLexerJava_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_defaultStyle".}
proc fcQsciLexerJava_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_paper".}
proc fcQsciLexerJava_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerJava_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerJava_virtualbase_defaultEolFill".}
proc fcQsciLexerJava_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerJava_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerJava_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerJava_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerJava_virtualbase_setEditor".}
proc fcQsciLexerJava_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerJava_virtualbase_refreshProperties".}
proc fcQsciLexerJava_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerJava_virtualbase_styleBitsNeeded".}
proc fcQsciLexerJava_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerJava_virtualbase_wordCharacters".}
proc fcQsciLexerJava_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerJava_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerJava_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerJava_virtualbase_setColor".}
proc fcQsciLexerJava_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerJava_virtualbase_setEolFill".}
proc fcQsciLexerJava_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerJava_virtualbase_setFont".}
proc fcQsciLexerJava_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerJava_virtualbase_setPaper".}
proc fcQsciLexerJava_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJava_virtualbase_readProperties".}
proc fcQsciLexerJava_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJava_virtualbase_writeProperties".}
proc fcQsciLexerJava_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerJava_virtualbase_event".}
proc fcQsciLexerJava_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerJava_virtualbase_eventFilter".}
proc fcQsciLexerJava_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJava_virtualbase_timerEvent".}
proc fcQsciLexerJava_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJava_virtualbase_childEvent".}
proc fcQsciLexerJava_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerJava_virtualbase_customEvent".}
proc fcQsciLexerJava_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerJava_virtualbase_connectNotify".}
proc fcQsciLexerJava_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerJava_virtualbase_disconnectNotify".}
proc fcQsciLexerJava_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJava_protectedbase_readProperties".}
proc fcQsciLexerJava_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerJava_protectedbase_writeProperties".}
proc fcQsciLexerJava_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerJava_protectedbase_sender".}
proc fcQsciLexerJava_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerJava_protectedbase_senderSignalIndex".}
proc fcQsciLexerJava_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerJava_protectedbase_receivers".}
proc fcQsciLexerJava_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerJava_protectedbase_isSignalConnected".}
proc fcQsciLexerJava_new(vtbl: pointer, ): ptr cQsciLexerJava {.importc: "QsciLexerJava_new".}
proc fcQsciLexerJava_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerJava {.importc: "QsciLexerJava_new2".}
proc fcQsciLexerJava_staticMetaObject(): pointer {.importc: "QsciLexerJava_staticMetaObject".}
proc fcQsciLexerJava_delete(self: pointer) {.importc: "QsciLexerJava_delete".}

proc metaObject*(self: gen_qscilexerjava_types.QsciLexerJava, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJava_metaObject(self.h))

proc metacast*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cstring): pointer =
  fcQsciLexerJava_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJava_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring): string =
  let v_ms = fcQsciLexerJava_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring): string =
  let v_ms = fcQsciLexerJava_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =
  (fcQsciLexerJava_language(self.h))

proc keywords*(self: gen_qscilexerjava_types.QsciLexerJava, set: cint): cstring =
  (fcQsciLexerJava_keywords(self.h, set))

proc tr*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJava_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJava_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerJava_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerJava_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerJavametaObjectProc* = proc(self: QsciLexerJava): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerJavametacastProc* = proc(self: QsciLexerJava, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerJavametacallProc* = proc(self: QsciLexerJava, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerJavasetFoldAtElseProc* = proc(self: QsciLexerJava, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerJavasetFoldCommentsProc* = proc(self: QsciLexerJava, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerJavasetFoldCompactProc* = proc(self: QsciLexerJava, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerJavasetFoldPreprocessorProc* = proc(self: QsciLexerJava, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerJavasetStylePreprocessorProc* = proc(self: QsciLexerJava, style: bool): void {.raises: [], gcsafe.}
type QsciLexerJavalanguageProc* = proc(self: QsciLexerJava): cstring {.raises: [], gcsafe.}
type QsciLexerJavalexerProc* = proc(self: QsciLexerJava): cstring {.raises: [], gcsafe.}
type QsciLexerJavalexerIdProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavaautoCompletionFillupsProc* = proc(self: QsciLexerJava): cstring {.raises: [], gcsafe.}
type QsciLexerJavaautoCompletionWordSeparatorsProc* = proc(self: QsciLexerJava): seq[string] {.raises: [], gcsafe.}
type QsciLexerJavablockEndProc* = proc(self: QsciLexerJava, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJavablockLookbackProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavablockStartProc* = proc(self: QsciLexerJava, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJavablockStartKeywordProc* = proc(self: QsciLexerJava, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerJavabraceStyleProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavacaseSensitiveProc* = proc(self: QsciLexerJava): bool {.raises: [], gcsafe.}
type QsciLexerJavacolorProc* = proc(self: QsciLexerJava, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJavaeolFillProc* = proc(self: QsciLexerJava, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerJavafontProc* = proc(self: QsciLexerJava, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerJavaindentationGuideViewProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavakeywordsProc* = proc(self: QsciLexerJava, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerJavadefaultStyleProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavadescriptionProc* = proc(self: QsciLexerJava, style: cint): string {.raises: [], gcsafe.}
type QsciLexerJavapaperProc* = proc(self: QsciLexerJava, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJavadefaultColorProc* = proc(self: QsciLexerJava, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJavadefaultEolFillProc* = proc(self: QsciLexerJava, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerJavadefaultFontProc* = proc(self: QsciLexerJava, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerJavadefaultPaperProc* = proc(self: QsciLexerJava, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerJavasetEditorProc* = proc(self: QsciLexerJava, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerJavarefreshPropertiesProc* = proc(self: QsciLexerJava): void {.raises: [], gcsafe.}
type QsciLexerJavastyleBitsNeededProc* = proc(self: QsciLexerJava): cint {.raises: [], gcsafe.}
type QsciLexerJavawordCharactersProc* = proc(self: QsciLexerJava): cstring {.raises: [], gcsafe.}
type QsciLexerJavasetAutoIndentStyleProc* = proc(self: QsciLexerJava, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerJavasetColorProc* = proc(self: QsciLexerJava, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJavasetEolFillProc* = proc(self: QsciLexerJava, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJavasetFontProc* = proc(self: QsciLexerJava, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJavasetPaperProc* = proc(self: QsciLexerJava, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerJavareadPropertiesProc* = proc(self: QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerJavawritePropertiesProc* = proc(self: QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerJavaeventProc* = proc(self: QsciLexerJava, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerJavaeventFilterProc* = proc(self: QsciLexerJava, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerJavatimerEventProc* = proc(self: QsciLexerJava, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerJavachildEventProc* = proc(self: QsciLexerJava, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerJavacustomEventProc* = proc(self: QsciLexerJava, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerJavaconnectNotifyProc* = proc(self: QsciLexerJava, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerJavadisconnectNotifyProc* = proc(self: QsciLexerJava, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerJavaVTable* = object
  vtbl: cQsciLexerJavaVTable
  metaObject*: QsciLexerJavametaObjectProc
  metacast*: QsciLexerJavametacastProc
  metacall*: QsciLexerJavametacallProc
  setFoldAtElse*: QsciLexerJavasetFoldAtElseProc
  setFoldComments*: QsciLexerJavasetFoldCommentsProc
  setFoldCompact*: QsciLexerJavasetFoldCompactProc
  setFoldPreprocessor*: QsciLexerJavasetFoldPreprocessorProc
  setStylePreprocessor*: QsciLexerJavasetStylePreprocessorProc
  language*: QsciLexerJavalanguageProc
  lexer*: QsciLexerJavalexerProc
  lexerId*: QsciLexerJavalexerIdProc
  autoCompletionFillups*: QsciLexerJavaautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerJavaautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerJavablockEndProc
  blockLookback*: QsciLexerJavablockLookbackProc
  blockStart*: QsciLexerJavablockStartProc
  blockStartKeyword*: QsciLexerJavablockStartKeywordProc
  braceStyle*: QsciLexerJavabraceStyleProc
  caseSensitive*: QsciLexerJavacaseSensitiveProc
  color*: QsciLexerJavacolorProc
  eolFill*: QsciLexerJavaeolFillProc
  font*: QsciLexerJavafontProc
  indentationGuideView*: QsciLexerJavaindentationGuideViewProc
  keywords*: QsciLexerJavakeywordsProc
  defaultStyle*: QsciLexerJavadefaultStyleProc
  description*: QsciLexerJavadescriptionProc
  paper*: QsciLexerJavapaperProc
  defaultColor*: QsciLexerJavadefaultColorProc
  defaultEolFill*: QsciLexerJavadefaultEolFillProc
  defaultFont*: QsciLexerJavadefaultFontProc
  defaultPaper*: QsciLexerJavadefaultPaperProc
  setEditor*: QsciLexerJavasetEditorProc
  refreshProperties*: QsciLexerJavarefreshPropertiesProc
  styleBitsNeeded*: QsciLexerJavastyleBitsNeededProc
  wordCharacters*: QsciLexerJavawordCharactersProc
  setAutoIndentStyle*: QsciLexerJavasetAutoIndentStyleProc
  setColor*: QsciLexerJavasetColorProc
  setEolFill*: QsciLexerJavasetEolFillProc
  setFont*: QsciLexerJavasetFontProc
  setPaper*: QsciLexerJavasetPaperProc
  readProperties*: QsciLexerJavareadPropertiesProc
  writeProperties*: QsciLexerJavawritePropertiesProc
  event*: QsciLexerJavaeventProc
  eventFilter*: QsciLexerJavaeventFilterProc
  timerEvent*: QsciLexerJavatimerEventProc
  childEvent*: QsciLexerJavachildEventProc
  customEvent*: QsciLexerJavacustomEventProc
  connectNotify*: QsciLexerJavaconnectNotifyProc
  disconnectNotify*: QsciLexerJavadisconnectNotifyProc
proc QsciLexerJavametaObject*(self: gen_qscilexerjava_types.QsciLexerJava, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJava_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerJava_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerJavametacast*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cstring): pointer =
  fcQsciLexerJava_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerJava_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerJavametacall*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerJava_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerJava_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerJavasetFoldAtElse*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =
  fcQsciLexerJava_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerJava_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerJavasetFoldComments*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =
  fcQsciLexerJava_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerJava_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerJavasetFoldCompact*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =
  fcQsciLexerJava_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerJava_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerJavasetFoldPreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =
  fcQsciLexerJava_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerJava_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerJavasetStylePreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, style: bool): void =
  fcQsciLexerJava_virtualbase_setStylePreprocessor(self.h, style)

proc miqt_exec_callback_cQsciLexerJava_setStylePreprocessor(vtbl: pointer, self: pointer, style: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  vtbl[].setStylePreprocessor(self, slotval1)

proc miqt_exec_callback_cQsciLexerJava_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerJavalexer*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =
  (fcQsciLexerJava_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerJava_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerJavalexerId*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerJava_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerJavaautoCompletionFillups*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =
  (fcQsciLexerJava_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerJava_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerJavaautoCompletionWordSeparators*(self: gen_qscilexerjava_types.QsciLexerJava, ): seq[string] =
  var v_ma = fcQsciLexerJava_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerJava_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerJavablockEnd*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =
  (fcQsciLexerJava_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerJavablockLookback*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerJava_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerJavablockStart*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =
  (fcQsciLexerJava_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerJavablockStartKeyword*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =
  (fcQsciLexerJava_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerJavabraceStyle*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerJava_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerJavacaseSensitive*(self: gen_qscilexerjava_types.QsciLexerJava, ): bool =
  fcQsciLexerJava_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerJava_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerJavacolor*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJava_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerJavaeolFill*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): bool =
  fcQsciLexerJava_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerJava_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerJavafont*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerJava_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerJavaindentationGuideView*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerJava_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerJavakeywords*(self: gen_qscilexerjava_types.QsciLexerJava, set: cint): cstring =
  (fcQsciLexerJava_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerJava_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerJavadefaultStyle*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerJava_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerJava_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerJavapaper*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJava_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerJavadefaultColor*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJava_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerJavadefaultEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): bool =
  fcQsciLexerJava_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerJava_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerJavadefaultFont*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerJava_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerJavadefaultPaper*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerJava_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerJava_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerJavasetEditor*(self: gen_qscilexerjava_types.QsciLexerJava, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerJava_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerJava_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerJavarefreshProperties*(self: gen_qscilexerjava_types.QsciLexerJava, ): void =
  fcQsciLexerJava_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerJava_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerJavastyleBitsNeeded*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerJava_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerJavawordCharacters*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =
  (fcQsciLexerJava_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerJava_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerJavasetAutoIndentStyle*(self: gen_qscilexerjava_types.QsciLexerJava, autoindentstyle: cint): void =
  fcQsciLexerJava_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerJava_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerJavasetColor*(self: gen_qscilexerjava_types.QsciLexerJava, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerJava_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerJava_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerJavasetEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, eoffill: bool, style: cint): void =
  fcQsciLexerJava_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerJava_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerJavasetFont*(self: gen_qscilexerjava_types.QsciLexerJava, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerJava_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerJava_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerJavasetPaper*(self: gen_qscilexerjava_types.QsciLexerJava, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerJava_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerJava_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerJavareadProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJava_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerJava_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJavawriteProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJava_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerJava_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJavaevent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerJava_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJava_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerJavaeventFilter*(self: gen_qscilexerjava_types.QsciLexerJava, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerJava_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerJava_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerJavatimerEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerJava_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJava_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerJavachildEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerJava_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJava_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerJavacustomEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerJava_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerJava_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerJavaconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerJava_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerJava_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerJavadisconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerJava_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerJava_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerJavaVTable](vtbl)
  let self = QsciLexerJava(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJava_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerJava_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerjava_types.QsciLexerJava, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerJava_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =
  fcQsciLexerJava_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerjava_types.QsciLexerJava, signal: cstring): cint =
  fcQsciLexerJava_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerjava_types.QsciLexerJava, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerJava_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerjava_types.QsciLexerJava,
    vtbl: ref QsciLexerJavaVTable = nil): gen_qscilexerjava_types.QsciLexerJava =
  let vtbl = if vtbl == nil: new QsciLexerJavaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerJavaVTable, _: ptr cQsciLexerJava) {.cdecl.} =
    let vtbl = cast[ref QsciLexerJavaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerJava_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerJava_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerJava_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerJava_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerJava_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerJava_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerJava_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerJava_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerJava_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerJava_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerJava_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerJava_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerJava_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerJava_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerJava_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerJava_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerJava_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerJava_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerJava_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerJava_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerJava_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerJava_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerJava_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerJava_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerJava_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerJava_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerJava_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerJava_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerJava_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerJava_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerJava_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerJava_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerJava_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerJava_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerJava_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerJava_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerJava_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerJava_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerJava_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerJava_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerJava_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerJava_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerJava_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerJava_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerJava_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerJava_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerJava_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerJava_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerJava_disconnectNotify
  gen_qscilexerjava_types.QsciLexerJava(h: fcQsciLexerJava_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerjava_types.QsciLexerJava,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerJavaVTable = nil): gen_qscilexerjava_types.QsciLexerJava =
  let vtbl = if vtbl == nil: new QsciLexerJavaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerJavaVTable, _: ptr cQsciLexerJava) {.cdecl.} =
    let vtbl = cast[ref QsciLexerJavaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerJava_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerJava_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerJava_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerJava_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerJava_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerJava_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerJava_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerJava_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerJava_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerJava_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerJava_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerJava_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerJava_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerJava_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerJava_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerJava_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerJava_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerJava_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerJava_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerJava_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerJava_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerJava_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerJava_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerJava_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerJava_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerJava_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerJava_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerJava_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerJava_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerJava_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerJava_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerJava_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerJava_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerJava_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerJava_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerJava_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerJava_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerJava_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerJava_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerJava_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerJava_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerJava_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerJava_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerJava_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerJava_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerJava_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerJava_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerJava_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerJava_disconnectNotify
  gen_qscilexerjava_types.QsciLexerJava(h: fcQsciLexerJava_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerjava_types.QsciLexerJava): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerJava_staticMetaObject())
proc delete*(self: gen_qscilexerjava_types.QsciLexerJava) =
  fcQsciLexerJava_delete(self.h)
