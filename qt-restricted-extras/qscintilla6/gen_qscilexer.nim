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
{.compile("gen_qscilexer.cpp", cflags).}

import gen_qscilexer_types
export gen_qscilexer_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciabstractapis_types,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciabstractapis_types,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexer*{.exportc: "QsciLexer", incompleteStruct.} = object

proc fcQsciLexer_metaObject(self: pointer, ): pointer {.importc: "QsciLexer_metaObject".}
proc fcQsciLexer_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexer_metacast".}
proc fcQsciLexer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexer_metacall".}
proc fcQsciLexer_tr(s: cstring): struct_miqt_string {.importc: "QsciLexer_tr".}
proc fcQsciLexer_language(self: pointer, ): cstring {.importc: "QsciLexer_language".}
proc fcQsciLexer_lexer(self: pointer, ): cstring {.importc: "QsciLexer_lexer".}
proc fcQsciLexer_lexerId(self: pointer, ): cint {.importc: "QsciLexer_lexerId".}
proc fcQsciLexer_apis(self: pointer, ): pointer {.importc: "QsciLexer_apis".}
proc fcQsciLexer_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexer_autoCompletionFillups".}
proc fcQsciLexer_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexer_autoCompletionWordSeparators".}
proc fcQsciLexer_autoIndentStyle(self: pointer, ): cint {.importc: "QsciLexer_autoIndentStyle".}
proc fcQsciLexer_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_blockEnd".}
proc fcQsciLexer_blockLookback(self: pointer, ): cint {.importc: "QsciLexer_blockLookback".}
proc fcQsciLexer_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_blockStart".}
proc fcQsciLexer_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_blockStartKeyword".}
proc fcQsciLexer_braceStyle(self: pointer, ): cint {.importc: "QsciLexer_braceStyle".}
proc fcQsciLexer_caseSensitive(self: pointer, ): bool {.importc: "QsciLexer_caseSensitive".}
proc fcQsciLexer_color(self: pointer, style: cint): pointer {.importc: "QsciLexer_color".}
proc fcQsciLexer_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexer_eolFill".}
proc fcQsciLexer_font(self: pointer, style: cint): pointer {.importc: "QsciLexer_font".}
proc fcQsciLexer_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexer_indentationGuideView".}
proc fcQsciLexer_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexer_keywords".}
proc fcQsciLexer_defaultStyle(self: pointer, ): cint {.importc: "QsciLexer_defaultStyle".}
proc fcQsciLexer_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexer_description".}
proc fcQsciLexer_paper(self: pointer, style: cint): pointer {.importc: "QsciLexer_paper".}
proc fcQsciLexer_defaultColor(self: pointer, ): pointer {.importc: "QsciLexer_defaultColor".}
proc fcQsciLexer_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_defaultColorWithStyle".}
proc fcQsciLexer_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexer_defaultEolFill".}
proc fcQsciLexer_defaultFont(self: pointer, ): pointer {.importc: "QsciLexer_defaultFont".}
proc fcQsciLexer_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_defaultFontWithStyle".}
proc fcQsciLexer_defaultPaper(self: pointer, ): pointer {.importc: "QsciLexer_defaultPaper".}
proc fcQsciLexer_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_defaultPaperWithStyle".}
proc fcQsciLexer_editor(self: pointer, ): pointer {.importc: "QsciLexer_editor".}
proc fcQsciLexer_setAPIs(self: pointer, apis: pointer): void {.importc: "QsciLexer_setAPIs".}
proc fcQsciLexer_setDefaultColor(self: pointer, c: pointer): void {.importc: "QsciLexer_setDefaultColor".}
proc fcQsciLexer_setDefaultFont(self: pointer, f: pointer): void {.importc: "QsciLexer_setDefaultFont".}
proc fcQsciLexer_setDefaultPaper(self: pointer, c: pointer): void {.importc: "QsciLexer_setDefaultPaper".}
proc fcQsciLexer_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexer_setEditor".}
proc fcQsciLexer_readSettings(self: pointer, qs: pointer): bool {.importc: "QsciLexer_readSettings".}
proc fcQsciLexer_refreshProperties(self: pointer, ): void {.importc: "QsciLexer_refreshProperties".}
proc fcQsciLexer_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexer_styleBitsNeeded".}
proc fcQsciLexer_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexer_wordCharacters".}
proc fcQsciLexer_writeSettings(self: pointer, qs: pointer): bool {.importc: "QsciLexer_writeSettings".}
proc fcQsciLexer_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexer_setAutoIndentStyle".}
proc fcQsciLexer_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_setColor".}
proc fcQsciLexer_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexer_setEolFill".}
proc fcQsciLexer_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexer_setFont".}
proc fcQsciLexer_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_setPaper".}
proc fcQsciLexer_colorChanged(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_colorChanged".}
proc fcQsciLexer_connect_colorChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_colorChanged".}
proc fcQsciLexer_eolFillChanged(self: pointer, eolfilled: bool, style: cint): void {.importc: "QsciLexer_eolFillChanged".}
proc fcQsciLexer_connect_eolFillChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_eolFillChanged".}
proc fcQsciLexer_fontChanged(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexer_fontChanged".}
proc fcQsciLexer_connect_fontChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_fontChanged".}
proc fcQsciLexer_paperChanged(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_paperChanged".}
proc fcQsciLexer_connect_paperChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_paperChanged".}
proc fcQsciLexer_propertyChanged(self: pointer, prop: cstring, val: cstring): void {.importc: "QsciLexer_propertyChanged".}
proc fcQsciLexer_connect_propertyChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_propertyChanged".}
proc fcQsciLexer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexer_tr2".}
proc fcQsciLexer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexer_tr3".}
proc fcQsciLexer_readSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciLexer_readSettings2".}
proc fcQsciLexer_writeSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciLexer_writeSettings2".}
type cQsciLexerVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerVTable, self: ptr cQsciLexer) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexer_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexer_virtualbase_metaObject".}
proc fcQsciLexer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexer_virtualbase_metacast".}
proc fcQsciLexer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexer_virtualbase_metacall".}
proc fcQsciLexer_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexer_virtualbase_lexer".}
proc fcQsciLexer_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_lexerId".}
proc fcQsciLexer_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexer_virtualbase_autoCompletionFillups".}
proc fcQsciLexer_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexer_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexer_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_virtualbase_blockEnd".}
proc fcQsciLexer_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_blockLookback".}
proc fcQsciLexer_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_virtualbase_blockStart".}
proc fcQsciLexer_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexer_virtualbase_blockStartKeyword".}
proc fcQsciLexer_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_braceStyle".}
proc fcQsciLexer_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexer_virtualbase_caseSensitive".}
proc fcQsciLexer_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_color".}
proc fcQsciLexer_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexer_virtualbase_eolFill".}
proc fcQsciLexer_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_font".}
proc fcQsciLexer_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_indentationGuideView".}
proc fcQsciLexer_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexer_virtualbase_keywords".}
proc fcQsciLexer_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_defaultStyle".}
proc fcQsciLexer_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_paper".}
proc fcQsciLexer_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_defaultColorWithStyle".}
proc fcQsciLexer_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexer_virtualbase_defaultEolFill".}
proc fcQsciLexer_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_defaultFontWithStyle".}
proc fcQsciLexer_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexer_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexer_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexer_virtualbase_setEditor".}
proc fcQsciLexer_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexer_virtualbase_refreshProperties".}
proc fcQsciLexer_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexer_virtualbase_styleBitsNeeded".}
proc fcQsciLexer_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexer_virtualbase_wordCharacters".}
proc fcQsciLexer_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexer_virtualbase_setAutoIndentStyle".}
proc fcQsciLexer_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_virtualbase_setColor".}
proc fcQsciLexer_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexer_virtualbase_setEolFill".}
proc fcQsciLexer_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexer_virtualbase_setFont".}
proc fcQsciLexer_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_virtualbase_setPaper".}
proc fcQsciLexer_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexer_virtualbase_readProperties".}
proc fcQsciLexer_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexer_virtualbase_writeProperties".}
proc fcQsciLexer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexer_virtualbase_event".}
proc fcQsciLexer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexer_virtualbase_eventFilter".}
proc fcQsciLexer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexer_virtualbase_timerEvent".}
proc fcQsciLexer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexer_virtualbase_childEvent".}
proc fcQsciLexer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexer_virtualbase_customEvent".}
proc fcQsciLexer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexer_virtualbase_connectNotify".}
proc fcQsciLexer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexer_virtualbase_disconnectNotify".}
proc fcQsciLexer_new(vtbl: pointer, ): ptr cQsciLexer {.importc: "QsciLexer_new".}
proc fcQsciLexer_new2(vtbl: pointer, parent: pointer): ptr cQsciLexer {.importc: "QsciLexer_new2".}
proc fcQsciLexer_staticMetaObject(): pointer {.importc: "QsciLexer_staticMetaObject".}
proc fcQsciLexer_delete(self: pointer) {.importc: "QsciLexer_delete".}

proc metaObject*(self: gen_qscilexer_types.QsciLexer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexer_metaObject(self.h))

proc metacast*(self: gen_qscilexer_types.QsciLexer, param1: cstring): pointer =
  fcQsciLexer_metacast(self.h, param1)

proc metacall*(self: gen_qscilexer_types.QsciLexer, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexer_types.QsciLexer, s: cstring): string =
  let v_ms = fcQsciLexer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_language(self.h))

proc lexer*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_lexer(self.h))

proc lexerId*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_lexerId(self.h)

proc apis*(self: gen_qscilexer_types.QsciLexer, ): gen_qsciabstractapis_types.QsciAbstractAPIs =
  gen_qsciabstractapis_types.QsciAbstractAPIs(h: fcQsciLexer_apis(self.h))

proc autoCompletionFillups*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_autoCompletionFillups(self.h))

proc autoCompletionWordSeparators*(self: gen_qscilexer_types.QsciLexer, ): seq[string] =
  var v_ma = fcQsciLexer_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc autoIndentStyle*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_autoIndentStyle(self.h)

proc blockEnd*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_blockEnd(self.h, style))

proc blockLookback*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_blockLookback(self.h)

proc blockStart*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_blockStart(self.h, style))

proc blockStartKeyword*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_blockStartKeyword(self.h, style))

proc braceStyle*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_braceStyle(self.h)

proc caseSensitive*(self: gen_qscilexer_types.QsciLexer, ): bool =
  fcQsciLexer_caseSensitive(self.h)

proc color*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_color(self.h, style))

proc eolFill*(self: gen_qscilexer_types.QsciLexer, style: cint): bool =
  fcQsciLexer_eolFill(self.h, style)

proc font*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexer_font(self.h, style))

proc indentationGuideView*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_indentationGuideView(self.h)

proc keywords*(self: gen_qscilexer_types.QsciLexer, set: cint): cstring =
  (fcQsciLexer_keywords(self.h, set))

proc defaultStyle*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_defaultStyle(self.h)

proc description*(self: gen_qscilexer_types.QsciLexer, style: cint): string =
  let v_ms = fcQsciLexer_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paper*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_paper(self.h, style))

proc defaultColor*(self: gen_qscilexer_types.QsciLexer, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_defaultColor(self.h))

proc defaultColor*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_defaultColorWithStyle(self.h, style))

proc defaultEolFill*(self: gen_qscilexer_types.QsciLexer, style: cint): bool =
  fcQsciLexer_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexer_types.QsciLexer, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexer_defaultFont(self.h))

proc defaultFont*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexer_defaultFontWithStyle(self.h, style))

proc defaultPaper*(self: gen_qscilexer_types.QsciLexer, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_defaultPaper(self.h))

proc defaultPaper*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_defaultPaperWithStyle(self.h, style))

proc editor*(self: gen_qscilexer_types.QsciLexer, ): gen_qsciscintilla_types.QsciScintilla =
  gen_qsciscintilla_types.QsciScintilla(h: fcQsciLexer_editor(self.h))

proc setAPIs*(self: gen_qscilexer_types.QsciLexer, apis: gen_qsciabstractapis_types.QsciAbstractAPIs): void =
  fcQsciLexer_setAPIs(self.h, apis.h)

proc setDefaultColor*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor): void =
  fcQsciLexer_setDefaultColor(self.h, c.h)

proc setDefaultFont*(self: gen_qscilexer_types.QsciLexer, f: gen_qfont_types.QFont): void =
  fcQsciLexer_setDefaultFont(self.h, f.h)

proc setDefaultPaper*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor): void =
  fcQsciLexer_setDefaultPaper(self.h, c.h)

proc setEditor*(self: gen_qscilexer_types.QsciLexer, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexer_setEditor(self.h, editor.h)

proc readSettings*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings): bool =
  fcQsciLexer_readSettings(self.h, qs.h)

proc refreshProperties*(self: gen_qscilexer_types.QsciLexer, ): void =
  fcQsciLexer_refreshProperties(self.h)

proc styleBitsNeeded*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_styleBitsNeeded(self.h)

proc wordCharacters*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_wordCharacters(self.h))

proc writeSettings*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings): bool =
  fcQsciLexer_writeSettings(self.h, qs.h)

proc setAutoIndentStyle*(self: gen_qscilexer_types.QsciLexer, autoindentstyle: cint): void =
  fcQsciLexer_setAutoIndentStyle(self.h, autoindentstyle)

proc setColor*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_setColor(self.h, c.h, style)

proc setEolFill*(self: gen_qscilexer_types.QsciLexer, eoffill: bool, style: cint): void =
  fcQsciLexer_setEolFill(self.h, eoffill, style)

proc setFont*(self: gen_qscilexer_types.QsciLexer, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexer_setFont(self.h, f.h, style)

proc setPaper*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_setPaper(self.h, c.h, style)

proc colorChanged*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_colorChanged(self.h, c.h, style)

type QsciLexercolorChangedSlot* = proc(c: gen_qcolor_types.QColor, style: cint)
proc miqt_exec_callback_cQsciLexer_colorChanged(slot: int, c: pointer, style: cint) {.exportc: "miqt_exec_callback_QsciLexer_colorChanged".} =
  let nimfunc = cast[ptr QsciLexercolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: c)

  let slotval2 = style

  nimfunc[](slotval1, slotval2)

proc oncolorChanged*(self: gen_qscilexer_types.QsciLexer, slot: QsciLexercolorChangedSlot) =
  var tmp = new QsciLexercolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_connect_colorChanged(self.h, cast[int](addr tmp[]))

proc eolFillChanged*(self: gen_qscilexer_types.QsciLexer, eolfilled: bool, style: cint): void =
  fcQsciLexer_eolFillChanged(self.h, eolfilled, style)

type QsciLexereolFillChangedSlot* = proc(eolfilled: bool, style: cint)
proc miqt_exec_callback_cQsciLexer_eolFillChanged(slot: int, eolfilled: bool, style: cint) {.exportc: "miqt_exec_callback_QsciLexer_eolFillChanged".} =
  let nimfunc = cast[ptr QsciLexereolFillChangedSlot](cast[pointer](slot))
  let slotval1 = eolfilled

  let slotval2 = style

  nimfunc[](slotval1, slotval2)

proc oneolFillChanged*(self: gen_qscilexer_types.QsciLexer, slot: QsciLexereolFillChangedSlot) =
  var tmp = new QsciLexereolFillChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_connect_eolFillChanged(self.h, cast[int](addr tmp[]))

proc fontChanged*(self: gen_qscilexer_types.QsciLexer, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexer_fontChanged(self.h, f.h, style)

type QsciLexerfontChangedSlot* = proc(f: gen_qfont_types.QFont, style: cint)
proc miqt_exec_callback_cQsciLexer_fontChanged(slot: int, f: pointer, style: cint) {.exportc: "miqt_exec_callback_QsciLexer_fontChanged".} =
  let nimfunc = cast[ptr QsciLexerfontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: f)

  let slotval2 = style

  nimfunc[](slotval1, slotval2)

proc onfontChanged*(self: gen_qscilexer_types.QsciLexer, slot: QsciLexerfontChangedSlot) =
  var tmp = new QsciLexerfontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_connect_fontChanged(self.h, cast[int](addr tmp[]))

proc paperChanged*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_paperChanged(self.h, c.h, style)

type QsciLexerpaperChangedSlot* = proc(c: gen_qcolor_types.QColor, style: cint)
proc miqt_exec_callback_cQsciLexer_paperChanged(slot: int, c: pointer, style: cint) {.exportc: "miqt_exec_callback_QsciLexer_paperChanged".} =
  let nimfunc = cast[ptr QsciLexerpaperChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: c)

  let slotval2 = style

  nimfunc[](slotval1, slotval2)

proc onpaperChanged*(self: gen_qscilexer_types.QsciLexer, slot: QsciLexerpaperChangedSlot) =
  var tmp = new QsciLexerpaperChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_connect_paperChanged(self.h, cast[int](addr tmp[]))

proc propertyChanged*(self: gen_qscilexer_types.QsciLexer, prop: cstring, val: cstring): void =
  fcQsciLexer_propertyChanged(self.h, prop, val)

type QsciLexerpropertyChangedSlot* = proc(prop: cstring, val: cstring)
proc miqt_exec_callback_cQsciLexer_propertyChanged(slot: int, prop: cstring, val: cstring) {.exportc: "miqt_exec_callback_QsciLexer_propertyChanged".} =
  let nimfunc = cast[ptr QsciLexerpropertyChangedSlot](cast[pointer](slot))
  let slotval1 = (prop)

  let slotval2 = (val)

  nimfunc[](slotval1, slotval2)

proc onpropertyChanged*(self: gen_qscilexer_types.QsciLexer, slot: QsciLexerpropertyChangedSlot) =
  var tmp = new QsciLexerpropertyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_connect_propertyChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qscilexer_types.QsciLexer, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexer_types.QsciLexer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readSettings*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings, prefix: cstring): bool =
  fcQsciLexer_readSettings2(self.h, qs.h, prefix)

proc writeSettings*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings, prefix: cstring): bool =
  fcQsciLexer_writeSettings2(self.h, qs.h, prefix)

type QsciLexermetaObjectProc* = proc(self: QsciLexer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexermetacastProc* = proc(self: QsciLexer, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexermetacallProc* = proc(self: QsciLexer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerlanguageProc* = proc(self: QsciLexer): cstring {.raises: [], gcsafe.}
type QsciLexerlexerProc* = proc(self: QsciLexer): cstring {.raises: [], gcsafe.}
type QsciLexerlexerIdProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexerautoCompletionFillupsProc* = proc(self: QsciLexer): cstring {.raises: [], gcsafe.}
type QsciLexerautoCompletionWordSeparatorsProc* = proc(self: QsciLexer): seq[string] {.raises: [], gcsafe.}
type QsciLexerblockEndProc* = proc(self: QsciLexer, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerblockLookbackProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexerblockStartProc* = proc(self: QsciLexer, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerblockStartKeywordProc* = proc(self: QsciLexer, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerbraceStyleProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexercaseSensitiveProc* = proc(self: QsciLexer): bool {.raises: [], gcsafe.}
type QsciLexercolorProc* = proc(self: QsciLexer, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexereolFillProc* = proc(self: QsciLexer, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerfontProc* = proc(self: QsciLexer, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerindentationGuideViewProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexerkeywordsProc* = proc(self: QsciLexer, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerdefaultStyleProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexerdescriptionProc* = proc(self: QsciLexer, style: cint): string {.raises: [], gcsafe.}
type QsciLexerpaperProc* = proc(self: QsciLexer, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerdefaultColorProc* = proc(self: QsciLexer, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerdefaultEolFillProc* = proc(self: QsciLexer, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerdefaultFontProc* = proc(self: QsciLexer, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerdefaultPaperProc* = proc(self: QsciLexer, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexersetEditorProc* = proc(self: QsciLexer, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerrefreshPropertiesProc* = proc(self: QsciLexer): void {.raises: [], gcsafe.}
type QsciLexerstyleBitsNeededProc* = proc(self: QsciLexer): cint {.raises: [], gcsafe.}
type QsciLexerwordCharactersProc* = proc(self: QsciLexer): cstring {.raises: [], gcsafe.}
type QsciLexersetAutoIndentStyleProc* = proc(self: QsciLexer, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexersetColorProc* = proc(self: QsciLexer, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexersetEolFillProc* = proc(self: QsciLexer, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexersetFontProc* = proc(self: QsciLexer, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexersetPaperProc* = proc(self: QsciLexer, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerreadPropertiesProc* = proc(self: QsciLexer, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerwritePropertiesProc* = proc(self: QsciLexer, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexereventProc* = proc(self: QsciLexer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexereventFilterProc* = proc(self: QsciLexer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexertimerEventProc* = proc(self: QsciLexer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerchildEventProc* = proc(self: QsciLexer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexercustomEventProc* = proc(self: QsciLexer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerconnectNotifyProc* = proc(self: QsciLexer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerdisconnectNotifyProc* = proc(self: QsciLexer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerVTable* = object
  vtbl: cQsciLexerVTable
  metaObject*: QsciLexermetaObjectProc
  metacast*: QsciLexermetacastProc
  metacall*: QsciLexermetacallProc
  language*: QsciLexerlanguageProc
  lexer*: QsciLexerlexerProc
  lexerId*: QsciLexerlexerIdProc
  autoCompletionFillups*: QsciLexerautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerblockEndProc
  blockLookback*: QsciLexerblockLookbackProc
  blockStart*: QsciLexerblockStartProc
  blockStartKeyword*: QsciLexerblockStartKeywordProc
  braceStyle*: QsciLexerbraceStyleProc
  caseSensitive*: QsciLexercaseSensitiveProc
  color*: QsciLexercolorProc
  eolFill*: QsciLexereolFillProc
  font*: QsciLexerfontProc
  indentationGuideView*: QsciLexerindentationGuideViewProc
  keywords*: QsciLexerkeywordsProc
  defaultStyle*: QsciLexerdefaultStyleProc
  description*: QsciLexerdescriptionProc
  paper*: QsciLexerpaperProc
  defaultColor*: QsciLexerdefaultColorProc
  defaultEolFill*: QsciLexerdefaultEolFillProc
  defaultFont*: QsciLexerdefaultFontProc
  defaultPaper*: QsciLexerdefaultPaperProc
  setEditor*: QsciLexersetEditorProc
  refreshProperties*: QsciLexerrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerstyleBitsNeededProc
  wordCharacters*: QsciLexerwordCharactersProc
  setAutoIndentStyle*: QsciLexersetAutoIndentStyleProc
  setColor*: QsciLexersetColorProc
  setEolFill*: QsciLexersetEolFillProc
  setFont*: QsciLexersetFontProc
  setPaper*: QsciLexersetPaperProc
  readProperties*: QsciLexerreadPropertiesProc
  writeProperties*: QsciLexerwritePropertiesProc
  event*: QsciLexereventProc
  eventFilter*: QsciLexereventFilterProc
  timerEvent*: QsciLexertimerEventProc
  childEvent*: QsciLexerchildEventProc
  customEvent*: QsciLexercustomEventProc
  connectNotify*: QsciLexerconnectNotifyProc
  disconnectNotify*: QsciLexerdisconnectNotifyProc
proc QsciLexermetaObject*(self: gen_qscilexer_types.QsciLexer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexer_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexer_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexermetacast*(self: gen_qscilexer_types.QsciLexer, param1: cstring): pointer =
  fcQsciLexer_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexer_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexermetacall*(self: gen_qscilexer_types.QsciLexer, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexer_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexer_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerlexer*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexer_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerlexerId*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexer_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerautoCompletionFillups*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexer_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerautoCompletionWordSeparators*(self: gen_qscilexer_types.QsciLexer, ): seq[string] =
  var v_ma = fcQsciLexer_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexer_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerblockEnd*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexer_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerblockLookback*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexer_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerblockStart*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexer_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerblockStartKeyword*(self: gen_qscilexer_types.QsciLexer, style: ptr cint): cstring =
  (fcQsciLexer_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexer_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerbraceStyle*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexer_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexercaseSensitive*(self: gen_qscilexer_types.QsciLexer, ): bool =
  fcQsciLexer_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexer_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexercolor*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexer_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexereolFill*(self: gen_qscilexer_types.QsciLexer, style: cint): bool =
  fcQsciLexer_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexer_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerfont*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexer_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexer_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerindentationGuideView*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexer_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerkeywords*(self: gen_qscilexer_types.QsciLexer, set: cint): cstring =
  (fcQsciLexer_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexer_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerdefaultStyle*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexer_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexer_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerpaper*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexer_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerdefaultColor*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexer_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerdefaultEolFill*(self: gen_qscilexer_types.QsciLexer, style: cint): bool =
  fcQsciLexer_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexer_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerdefaultFont*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexer_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexer_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerdefaultPaper*(self: gen_qscilexer_types.QsciLexer, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexer_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexer_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexersetEditor*(self: gen_qscilexer_types.QsciLexer, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexer_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexer_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerrefreshProperties*(self: gen_qscilexer_types.QsciLexer, ): void =
  fcQsciLexer_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexer_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerstyleBitsNeeded*(self: gen_qscilexer_types.QsciLexer, ): cint =
  fcQsciLexer_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexer_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerwordCharacters*(self: gen_qscilexer_types.QsciLexer, ): cstring =
  (fcQsciLexer_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexer_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexersetAutoIndentStyle*(self: gen_qscilexer_types.QsciLexer, autoindentstyle: cint): void =
  fcQsciLexer_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexer_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexersetColor*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexer_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexersetEolFill*(self: gen_qscilexer_types.QsciLexer, eoffill: bool, style: cint): void =
  fcQsciLexer_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexer_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexersetFont*(self: gen_qscilexer_types.QsciLexer, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexer_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexer_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexersetPaper*(self: gen_qscilexer_types.QsciLexer, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexer_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexer_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerreadProperties*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexer_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexer_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerwriteProperties*(self: gen_qscilexer_types.QsciLexer, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexer_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexer_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerevent*(self: gen_qscilexer_types.QsciLexer, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexer_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexer_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexereventFilter*(self: gen_qscilexer_types.QsciLexer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexer_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexertimerEvent*(self: gen_qscilexer_types.QsciLexer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexer_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexer_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerchildEvent*(self: gen_qscilexer_types.QsciLexer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexer_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexer_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexercustomEvent*(self: gen_qscilexer_types.QsciLexer, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexer_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexer_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerconnectNotify*(self: gen_qscilexer_types.QsciLexer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexer_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexer_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerdisconnectNotify*(self: gen_qscilexer_types.QsciLexer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexer_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexer_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerVTable](vtbl)
  let self = QsciLexer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexer_types.QsciLexer,
    vtbl: ref QsciLexerVTable = nil): gen_qscilexer_types.QsciLexer =
  let vtbl = if vtbl == nil: new QsciLexerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVTable, _: ptr cQsciLexer) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexer_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexer_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexer_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexer_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexer_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexer_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexer_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexer_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexer_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexer_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexer_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexer_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexer_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexer_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexer_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexer_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexer_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexer_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexer_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexer_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexer_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexer_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexer_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexer_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexer_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexer_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexer_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexer_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexer_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexer_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexer_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexer_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexer_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexer_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexer_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexer_disconnectNotify
  gen_qscilexer_types.QsciLexer(h: fcQsciLexer_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexer_types.QsciLexer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerVTable = nil): gen_qscilexer_types.QsciLexer =
  let vtbl = if vtbl == nil: new QsciLexerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerVTable, _: ptr cQsciLexer) {.cdecl.} =
    let vtbl = cast[ref QsciLexerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexer_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexer_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexer_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexer_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexer_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexer_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexer_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexer_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexer_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexer_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexer_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexer_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexer_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexer_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexer_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexer_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexer_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexer_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexer_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexer_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexer_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexer_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexer_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexer_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexer_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexer_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexer_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexer_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexer_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexer_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexer_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexer_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexer_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexer_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexer_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexer_disconnectNotify
  gen_qscilexer_types.QsciLexer(h: fcQsciLexer_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexer_types.QsciLexer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexer_staticMetaObject())
proc delete*(self: gen_qscilexer_types.QsciLexer) =
  fcQsciLexer_delete(self.h)
