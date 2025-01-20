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
{.compile("gen_qscilexer.cpp", cflags).}


import gen_qscilexer_types
export gen_qscilexer_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciabstractapis,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciabstractapis,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexer*{.exportc: "QsciLexer", incompleteStruct.} = object

proc fcQsciLexer_new(): ptr cQsciLexer {.importc: "QsciLexer_new".}
proc fcQsciLexer_new2(parent: pointer): ptr cQsciLexer {.importc: "QsciLexer_new2".}
proc fcQsciLexer_metaObject(self: pointer, ): pointer {.importc: "QsciLexer_metaObject".}
proc fcQsciLexer_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexer_metacast".}
proc fcQsciLexer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexer_metacall".}
proc fcQsciLexer_tr(s: cstring): struct_miqt_string {.importc: "QsciLexer_tr".}
proc fcQsciLexer_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexer_trUtf8".}
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
proc fQsciLexer_connect_colorChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_colorChanged".}
proc fcQsciLexer_eolFillChanged(self: pointer, eolfilled: bool, style: cint): void {.importc: "QsciLexer_eolFillChanged".}
proc fQsciLexer_connect_eolFillChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_eolFillChanged".}
proc fcQsciLexer_fontChanged(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexer_fontChanged".}
proc fQsciLexer_connect_fontChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_fontChanged".}
proc fcQsciLexer_paperChanged(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexer_paperChanged".}
proc fQsciLexer_connect_paperChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_paperChanged".}
proc fcQsciLexer_propertyChanged(self: pointer, prop: cstring, val: cstring): void {.importc: "QsciLexer_propertyChanged".}
proc fQsciLexer_connect_propertyChanged(self: pointer, slot: int) {.importc: "QsciLexer_connect_propertyChanged".}
proc fcQsciLexer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexer_tr2".}
proc fcQsciLexer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexer_tr3".}
proc fcQsciLexer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexer_trUtf82".}
proc fcQsciLexer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexer_trUtf83".}
proc fcQsciLexer_readSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciLexer_readSettings2".}
proc fcQsciLexer_writeSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciLexer_writeSettings2".}
proc fQsciLexer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexer_virtualbase_metaObject".}
proc fcQsciLexer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_metaObject".}
proc fQsciLexer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexer_virtualbase_metacast".}
proc fcQsciLexer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_metacast".}
proc fQsciLexer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexer_virtualbase_metacall".}
proc fcQsciLexer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_metacall".}
proc fcQsciLexer_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_language".}
proc fQsciLexer_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexer_virtualbase_lexer".}
proc fcQsciLexer_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_lexer".}
proc fQsciLexer_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_lexerId".}
proc fcQsciLexer_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_lexerId".}
proc fQsciLexer_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexer_virtualbase_autoCompletionFillups".}
proc fcQsciLexer_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_autoCompletionFillups".}
proc fQsciLexer_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexer_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexer_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexer_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexer_virtualbase_blockEnd".}
proc fcQsciLexer_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_blockEnd".}
proc fQsciLexer_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_blockLookback".}
proc fcQsciLexer_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_blockLookback".}
proc fQsciLexer_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexer_virtualbase_blockStart".}
proc fcQsciLexer_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_blockStart".}
proc fQsciLexer_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexer_virtualbase_blockStartKeyword".}
proc fcQsciLexer_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_blockStartKeyword".}
proc fQsciLexer_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_braceStyle".}
proc fcQsciLexer_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_braceStyle".}
proc fQsciLexer_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexer_virtualbase_caseSensitive".}
proc fcQsciLexer_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_caseSensitive".}
proc fQsciLexer_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_color".}
proc fcQsciLexer_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_color".}
proc fQsciLexer_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexer_virtualbase_eolFill".}
proc fcQsciLexer_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_eolFill".}
proc fQsciLexer_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_font".}
proc fcQsciLexer_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_font".}
proc fQsciLexer_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_indentationGuideView".}
proc fcQsciLexer_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_indentationGuideView".}
proc fQsciLexer_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexer_virtualbase_keywords".}
proc fcQsciLexer_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_keywords".}
proc fQsciLexer_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_defaultStyle".}
proc fcQsciLexer_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_defaultStyle".}
proc fcQsciLexer_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_description".}
proc fQsciLexer_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_paper".}
proc fcQsciLexer_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_paper".}
proc fQsciLexer_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_defaultColorWithStyle".}
proc fcQsciLexer_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_defaultColorWithStyle".}
proc fQsciLexer_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexer_virtualbase_defaultEolFill".}
proc fcQsciLexer_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_defaultEolFill".}
proc fQsciLexer_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_defaultFontWithStyle".}
proc fcQsciLexer_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_defaultFontWithStyle".}
proc fQsciLexer_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexer_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexer_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_defaultPaperWithStyle".}
proc fQsciLexer_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexer_virtualbase_setEditor".}
proc fcQsciLexer_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setEditor".}
proc fQsciLexer_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexer_virtualbase_refreshProperties".}
proc fcQsciLexer_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_refreshProperties".}
proc fQsciLexer_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexer_virtualbase_styleBitsNeeded".}
proc fcQsciLexer_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_styleBitsNeeded".}
proc fQsciLexer_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexer_virtualbase_wordCharacters".}
proc fcQsciLexer_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_wordCharacters".}
proc fQsciLexer_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexer_virtualbase_setAutoIndentStyle".}
proc fcQsciLexer_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setAutoIndentStyle".}
proc fQsciLexer_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexer_virtualbase_setColor".}
proc fcQsciLexer_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setColor".}
proc fQsciLexer_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexer_virtualbase_setEolFill".}
proc fcQsciLexer_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setEolFill".}
proc fQsciLexer_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexer_virtualbase_setFont".}
proc fcQsciLexer_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setFont".}
proc fQsciLexer_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexer_virtualbase_setPaper".}
proc fcQsciLexer_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_setPaper".}
proc fQsciLexer_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexer_virtualbase_readProperties".}
proc fcQsciLexer_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_readProperties".}
proc fQsciLexer_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexer_virtualbase_writeProperties".}
proc fcQsciLexer_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_writeProperties".}
proc fQsciLexer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexer_virtualbase_event".}
proc fcQsciLexer_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_event".}
proc fQsciLexer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexer_virtualbase_eventFilter".}
proc fcQsciLexer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_eventFilter".}
proc fQsciLexer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexer_virtualbase_timerEvent".}
proc fcQsciLexer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_timerEvent".}
proc fQsciLexer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexer_virtualbase_childEvent".}
proc fcQsciLexer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_childEvent".}
proc fQsciLexer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexer_virtualbase_customEvent".}
proc fcQsciLexer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_customEvent".}
proc fQsciLexer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexer_virtualbase_connectNotify".}
proc fcQsciLexer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_connectNotify".}
proc fQsciLexer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexer_virtualbase_disconnectNotify".}
proc fcQsciLexer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexer_override_virtual_disconnectNotify".}
proc fcQsciLexer_staticMetaObject(): pointer {.importc: "QsciLexer_staticMetaObject".}
proc fcQsciLexer_delete(self: pointer) {.importc: "QsciLexer_delete".}


func init*(T: type QsciLexer, h: ptr cQsciLexer): QsciLexer =
  T(h: h)
proc create*(T: type QsciLexer, ): QsciLexer =

  QsciLexer.init(fcQsciLexer_new())
proc create*(T: type QsciLexer, parent: gen_qobject.QObject): QsciLexer =

  QsciLexer.init(fcQsciLexer_new2(parent.h))
proc metaObject*(self: QsciLexer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexer_metaObject(self.h))

proc metacast*(self: QsciLexer, param1: cstring): pointer =

  fcQsciLexer_metacast(self.h, param1)

proc metacall*(self: QsciLexer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexer, s: cstring): string =

  let v_ms = fcQsciLexer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexer, s: cstring): string =

  let v_ms = fcQsciLexer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexer, ): cstring =

  (fcQsciLexer_language(self.h))

proc lexer*(self: QsciLexer, ): cstring =

  (fcQsciLexer_lexer(self.h))

proc lexerId*(self: QsciLexer, ): cint =

  fcQsciLexer_lexerId(self.h)

proc apis*(self: QsciLexer, ): gen_qsciabstractapis.QsciAbstractAPIs =

  gen_qsciabstractapis.QsciAbstractAPIs(h: fcQsciLexer_apis(self.h))

proc autoCompletionFillups*(self: QsciLexer, ): cstring =

  (fcQsciLexer_autoCompletionFillups(self.h))

proc autoCompletionWordSeparators*(self: QsciLexer, ): seq[string] =

  var v_ma = fcQsciLexer_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc autoIndentStyle*(self: QsciLexer, ): cint =

  fcQsciLexer_autoIndentStyle(self.h)

proc blockEnd*(self: QsciLexer, style: ptr cint): cstring =

  (fcQsciLexer_blockEnd(self.h, style))

proc blockLookback*(self: QsciLexer, ): cint =

  fcQsciLexer_blockLookback(self.h)

proc blockStart*(self: QsciLexer, style: ptr cint): cstring =

  (fcQsciLexer_blockStart(self.h, style))

proc blockStartKeyword*(self: QsciLexer, style: ptr cint): cstring =

  (fcQsciLexer_blockStartKeyword(self.h, style))

proc braceStyle*(self: QsciLexer, ): cint =

  fcQsciLexer_braceStyle(self.h)

proc caseSensitive*(self: QsciLexer, ): bool =

  fcQsciLexer_caseSensitive(self.h)

proc color*(self: QsciLexer, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_color(self.h, style))

proc eolFill*(self: QsciLexer, style: cint): bool =

  fcQsciLexer_eolFill(self.h, style)

proc font*(self: QsciLexer, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexer_font(self.h, style))

proc indentationGuideView*(self: QsciLexer, ): cint =

  fcQsciLexer_indentationGuideView(self.h)

proc keywords*(self: QsciLexer, set: cint): cstring =

  (fcQsciLexer_keywords(self.h, set))

proc defaultStyle*(self: QsciLexer, ): cint =

  fcQsciLexer_defaultStyle(self.h)

proc description*(self: QsciLexer, style: cint): string =

  let v_ms = fcQsciLexer_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paper*(self: QsciLexer, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_paper(self.h, style))

proc defaultColor*(self: QsciLexer, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_defaultColor(self.h))

proc defaultColorWithStyle*(self: QsciLexer, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_defaultColorWithStyle(self.h, style))

proc defaultEolFill*(self: QsciLexer, style: cint): bool =

  fcQsciLexer_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexer, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexer_defaultFont(self.h))

proc defaultFontWithStyle*(self: QsciLexer, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexer_defaultFontWithStyle(self.h, style))

proc defaultPaper*(self: QsciLexer, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_defaultPaper(self.h))

proc defaultPaperWithStyle*(self: QsciLexer, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexer_defaultPaperWithStyle(self.h, style))

proc editor*(self: QsciLexer, ): gen_qsciscintilla.QsciScintilla =

  gen_qsciscintilla.QsciScintilla(h: fcQsciLexer_editor(self.h))

proc setAPIs*(self: QsciLexer, apis: gen_qsciabstractapis.QsciAbstractAPIs): void =

  fcQsciLexer_setAPIs(self.h, apis.h)

proc setDefaultColor*(self: QsciLexer, c: gen_qcolor.QColor): void =

  fcQsciLexer_setDefaultColor(self.h, c.h)

proc setDefaultFont*(self: QsciLexer, f: gen_qfont.QFont): void =

  fcQsciLexer_setDefaultFont(self.h, f.h)

proc setDefaultPaper*(self: QsciLexer, c: gen_qcolor.QColor): void =

  fcQsciLexer_setDefaultPaper(self.h, c.h)

proc setEditor*(self: QsciLexer, editor: gen_qsciscintilla.QsciScintilla): void =

  fcQsciLexer_setEditor(self.h, editor.h)

proc readSettings*(self: QsciLexer, qs: gen_qsettings.QSettings): bool =

  fcQsciLexer_readSettings(self.h, qs.h)

proc refreshProperties*(self: QsciLexer, ): void =

  fcQsciLexer_refreshProperties(self.h)

proc styleBitsNeeded*(self: QsciLexer, ): cint =

  fcQsciLexer_styleBitsNeeded(self.h)

proc wordCharacters*(self: QsciLexer, ): cstring =

  (fcQsciLexer_wordCharacters(self.h))

proc writeSettings*(self: QsciLexer, qs: gen_qsettings.QSettings): bool =

  fcQsciLexer_writeSettings(self.h, qs.h)

proc setAutoIndentStyle*(self: QsciLexer, autoindentstyle: cint): void =

  fcQsciLexer_setAutoIndentStyle(self.h, autoindentstyle)

proc setColor*(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =

  fcQsciLexer_setColor(self.h, c.h, style)

proc setEolFill*(self: QsciLexer, eoffill: bool, style: cint): void =

  fcQsciLexer_setEolFill(self.h, eoffill, style)

proc setFont*(self: QsciLexer, f: gen_qfont.QFont, style: cint): void =

  fcQsciLexer_setFont(self.h, f.h, style)

proc setPaper*(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =

  fcQsciLexer_setPaper(self.h, c.h, style)

proc colorChanged*(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =

  fcQsciLexer_colorChanged(self.h, c.h, style)

proc miqt_exec_callback_QsciLexer_colorChanged(slot: int, c: pointer, style: cint) {.exportc.} =
  type Cb = proc(c: gen_qcolor.QColor, style: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)

proc oncolorChanged*(self: QsciLexer, slot: proc(c: gen_qcolor.QColor, style: cint)) =
  type Cb = proc(c: gen_qcolor.QColor, style: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciLexer_connect_colorChanged(self.h, cast[int](addr tmp[]))
proc eolFillChanged*(self: QsciLexer, eolfilled: bool, style: cint): void =

  fcQsciLexer_eolFillChanged(self.h, eolfilled, style)

proc miqt_exec_callback_QsciLexer_eolFillChanged(slot: int, eolfilled: bool, style: cint) {.exportc.} =
  type Cb = proc(eolfilled: bool, style: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = eolfilled

  let slotval2 = style


  nimfunc[](slotval1, slotval2)

proc oneolFillChanged*(self: QsciLexer, slot: proc(eolfilled: bool, style: cint)) =
  type Cb = proc(eolfilled: bool, style: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciLexer_connect_eolFillChanged(self.h, cast[int](addr tmp[]))
proc fontChanged*(self: QsciLexer, f: gen_qfont.QFont, style: cint): void =

  fcQsciLexer_fontChanged(self.h, f.h, style)

proc miqt_exec_callback_QsciLexer_fontChanged(slot: int, f: pointer, style: cint) {.exportc.} =
  type Cb = proc(f: gen_qfont.QFont, style: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)

proc onfontChanged*(self: QsciLexer, slot: proc(f: gen_qfont.QFont, style: cint)) =
  type Cb = proc(f: gen_qfont.QFont, style: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciLexer_connect_fontChanged(self.h, cast[int](addr tmp[]))
proc paperChanged*(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =

  fcQsciLexer_paperChanged(self.h, c.h, style)

proc miqt_exec_callback_QsciLexer_paperChanged(slot: int, c: pointer, style: cint) {.exportc.} =
  type Cb = proc(c: gen_qcolor.QColor, style: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)

proc onpaperChanged*(self: QsciLexer, slot: proc(c: gen_qcolor.QColor, style: cint)) =
  type Cb = proc(c: gen_qcolor.QColor, style: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciLexer_connect_paperChanged(self.h, cast[int](addr tmp[]))
proc propertyChanged*(self: QsciLexer, prop: cstring, val: cstring): void =

  fcQsciLexer_propertyChanged(self.h, prop, val)

proc miqt_exec_callback_QsciLexer_propertyChanged(slot: int, prop: cstring, val: cstring) {.exportc.} =
  type Cb = proc(prop: cstring, val: cstring)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (prop)

  let slotval2 = (val)


  nimfunc[](slotval1, slotval2)

proc onpropertyChanged*(self: QsciLexer, slot: proc(prop: cstring, val: cstring)) =
  type Cb = proc(prop: cstring, val: cstring)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciLexer_connect_propertyChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QsciLexer, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexer, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readSettings2*(self: QsciLexer, qs: gen_qsettings.QSettings, prefix: cstring): bool =

  fcQsciLexer_readSettings2(self.h, qs.h, prefix)

proc writeSettings2*(self: QsciLexer, qs: gen_qsettings.QSettings, prefix: cstring): bool =

  fcQsciLexer_writeSettings2(self.h, qs.h, prefix)

proc callVirtualBase_metaObject(self: QsciLexer, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexer_virtualbase_metaObject(self.h))

type QsciLexermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexer, slot: proc(super: QsciLexermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_metaObject(self: ptr cQsciLexer, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexer_metaObject ".} =
  type Cb = proc(super: QsciLexermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexer, param1: cstring): pointer =


  fQsciLexer_virtualbase_metacast(self.h, param1)

type QsciLexermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexer, slot: proc(super: QsciLexermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_metacast(self: ptr cQsciLexer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexer_metacast ".} =
  type Cb = proc(super: QsciLexermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexer(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexer, slot: proc(super: QsciLexermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_metacall(self: ptr cQsciLexer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexer_metacall ".} =
  type Cb = proc(super: QsciLexermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexer, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_language(self: ptr cQsciLexer, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexer_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexer, ): cstring =


  (fQsciLexer_virtualbase_lexer(self.h))

type QsciLexerlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexer, slot: proc(super: QsciLexerlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_lexer(self: ptr cQsciLexer, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexer_lexer ".} =
  type Cb = proc(super: QsciLexerlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_lexerId(self.h)

type QsciLexerlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexer, slot: proc(super: QsciLexerlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_lexerId(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_lexerId ".} =
  type Cb = proc(super: QsciLexerlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexer, ): cstring =


  (fQsciLexer_virtualbase_autoCompletionFillups(self.h))

type QsciLexerautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexer, slot: proc(super: QsciLexerautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_autoCompletionFillups(self: ptr cQsciLexer, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexer_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexer, ): seq[string] =


  var v_ma = fQsciLexer_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexer, slot: proc(super: QsciLexerautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_autoCompletionWordSeparators(self: ptr cQsciLexer, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexer_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexer, style: ptr cint): cstring =


  (fQsciLexer_virtualbase_blockEnd(self.h, style))

type QsciLexerblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexer, slot: proc(super: QsciLexerblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_blockEnd(self: ptr cQsciLexer, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexer_blockEnd ".} =
  type Cb = proc(super: QsciLexerblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_blockLookback(self.h)

type QsciLexerblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexer, slot: proc(super: QsciLexerblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_blockLookback(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_blockLookback ".} =
  type Cb = proc(super: QsciLexerblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexer, style: ptr cint): cstring =


  (fQsciLexer_virtualbase_blockStart(self.h, style))

type QsciLexerblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexer, slot: proc(super: QsciLexerblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_blockStart(self: ptr cQsciLexer, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexer_blockStart ".} =
  type Cb = proc(super: QsciLexerblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexer, style: ptr cint): cstring =


  (fQsciLexer_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexer, slot: proc(super: QsciLexerblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_blockStartKeyword(self: ptr cQsciLexer, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexer_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_braceStyle(self.h)

type QsciLexerbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexer, slot: proc(super: QsciLexerbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_braceStyle(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_braceStyle ".} =
  type Cb = proc(super: QsciLexerbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexer, ): bool =


  fQsciLexer_virtualbase_caseSensitive(self.h)

type QsciLexercaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexer, slot: proc(super: QsciLexercaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexercaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_caseSensitive(self: ptr cQsciLexer, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexer_caseSensitive ".} =
  type Cb = proc(super: QsciLexercaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexer, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexer_virtualbase_color(self.h, style))

type QsciLexercolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexer, slot: proc(super: QsciLexercolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexercolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_color(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_color ".} =
  type Cb = proc(super: QsciLexercolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexer, style: cint): bool =


  fQsciLexer_virtualbase_eolFill(self.h, style)

type QsciLexereolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexer, slot: proc(super: QsciLexereolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexereolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_eolFill(self: ptr cQsciLexer, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexer_eolFill ".} =
  type Cb = proc(super: QsciLexereolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexer, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexer_virtualbase_font(self.h, style))

type QsciLexerfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexer, slot: proc(super: QsciLexerfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_font(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_font ".} =
  type Cb = proc(super: QsciLexerfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_indentationGuideView(self.h)

type QsciLexerindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexer, slot: proc(super: QsciLexerindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_indentationGuideView(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexer, set: cint): cstring =


  (fQsciLexer_virtualbase_keywords(self.h, set))

type QsciLexerkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexer, slot: proc(super: QsciLexerkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_keywords(self: ptr cQsciLexer, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexer_keywords ".} =
  type Cb = proc(super: QsciLexerkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexer(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_defaultStyle(self.h)

type QsciLexerdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexer, slot: proc(super: QsciLexerdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_defaultStyle(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_defaultStyle ".} =
  type Cb = proc(super: QsciLexerdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexer, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_description(self: ptr cQsciLexer, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexer_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexer, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexer_virtualbase_paper(self.h, style))

type QsciLexerpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexer, slot: proc(super: QsciLexerpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_paper(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_paper ".} =
  type Cb = proc(super: QsciLexerpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexer, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexer_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexer, slot: proc(super: QsciLexerdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_defaultColorWithStyle(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexer, style: cint): bool =


  fQsciLexer_virtualbase_defaultEolFill(self.h, style)

type QsciLexerdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexer, slot: proc(super: QsciLexerdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_defaultEolFill(self: ptr cQsciLexer, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexer_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexer, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexer_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexer, slot: proc(super: QsciLexerdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_defaultFontWithStyle(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexer, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexer_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexer, slot: proc(super: QsciLexerdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_defaultPaperWithStyle(self: ptr cQsciLexer, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexer_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexer(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexer, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexer_virtualbase_setEditor(self.h, editor.h)

type QsciLexersetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexer, slot: proc(super: QsciLexersetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setEditor(self: ptr cQsciLexer, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_setEditor ".} =
  type Cb = proc(super: QsciLexersetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexer(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexer, ): void =


  fQsciLexer_virtualbase_refreshProperties(self.h)

type QsciLexerrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexer, slot: proc(super: QsciLexerrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_refreshProperties(self: ptr cQsciLexer, slot: int): void {.exportc: "miqt_exec_callback_QsciLexer_refreshProperties ".} =
  type Cb = proc(super: QsciLexerrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexer(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexer, ): cint =


  fQsciLexer_virtualbase_styleBitsNeeded(self.h)

type QsciLexerstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexer, slot: proc(super: QsciLexerstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_styleBitsNeeded(self: ptr cQsciLexer, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexer_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexer, ): cstring =


  (fQsciLexer_virtualbase_wordCharacters(self.h))

type QsciLexerwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexer, slot: proc(super: QsciLexerwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_wordCharacters(self: ptr cQsciLexer, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexer_wordCharacters ".} =
  type Cb = proc(super: QsciLexerwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexer, autoindentstyle: cint): void =


  fQsciLexer_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexersetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexer, slot: proc(super: QsciLexersetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setAutoIndentStyle(self: ptr cQsciLexer, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexer_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexersetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexer(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexer_virtualbase_setColor(self.h, c.h, style)

type QsciLexersetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexer, slot: proc(super: QsciLexersetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setColor(self: ptr cQsciLexer, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexer_setColor ".} =
  type Cb = proc(super: QsciLexersetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexer(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexer, eoffill: bool, style: cint): void =


  fQsciLexer_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexersetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexer, slot: proc(super: QsciLexersetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setEolFill(self: ptr cQsciLexer, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexer_setEolFill ".} =
  type Cb = proc(super: QsciLexersetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexer(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexer, f: gen_qfont.QFont, style: cint): void =


  fQsciLexer_virtualbase_setFont(self.h, f.h, style)

type QsciLexersetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexer, slot: proc(super: QsciLexersetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setFont(self: ptr cQsciLexer, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexer_setFont ".} =
  type Cb = proc(super: QsciLexersetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexer(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexer, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexer_virtualbase_setPaper(self.h, c.h, style)

type QsciLexersetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexer, slot: proc(super: QsciLexersetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexersetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_setPaper(self: ptr cQsciLexer, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexer_setPaper ".} =
  type Cb = proc(super: QsciLexersetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexer(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexer, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexer_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexer, slot: proc(super: QsciLexerreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_readProperties(self: ptr cQsciLexer, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexer_readProperties ".} =
  type Cb = proc(super: QsciLexerreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexer(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexer, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexer_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexer, slot: proc(super: QsciLexerwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_writeProperties(self: ptr cQsciLexer, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexer_writeProperties ".} =
  type Cb = proc(super: QsciLexerwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexer(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexer, event: gen_qcoreevent.QEvent): bool =


  fQsciLexer_virtualbase_event(self.h, event.h)

type QsciLexereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexer, slot: proc(super: QsciLexereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_event(self: ptr cQsciLexer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexer_event ".} =
  type Cb = proc(super: QsciLexereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexer, slot: proc(super: QsciLexereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_eventFilter(self: ptr cQsciLexer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexer_eventFilter ".} =
  type Cb = proc(super: QsciLexereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexer, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexer_virtualbase_timerEvent(self.h, event.h)

type QsciLexertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexer, slot: proc(super: QsciLexertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_timerEvent(self: ptr cQsciLexer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_timerEvent ".} =
  type Cb = proc(super: QsciLexertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexer, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexer_virtualbase_childEvent(self.h, event.h)

type QsciLexerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexer, slot: proc(super: QsciLexerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_childEvent(self: ptr cQsciLexer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_childEvent ".} =
  type Cb = proc(super: QsciLexerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexer, event: gen_qcoreevent.QEvent): void =


  fQsciLexer_virtualbase_customEvent(self.h, event.h)

type QsciLexercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexer, slot: proc(super: QsciLexercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_customEvent(self: ptr cQsciLexer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_customEvent ".} =
  type Cb = proc(super: QsciLexercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexer, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexer_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexer, slot: proc(super: QsciLexerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_connectNotify(self: ptr cQsciLexer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_connectNotify ".} =
  type Cb = proc(super: QsciLexerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexer, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexer_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexer, slot: proc(super: QsciLexerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexer_disconnectNotify(self: ptr cQsciLexer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexer_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexer_staticMetaObject())
proc delete*(self: QsciLexer) =
  fcQsciLexer_delete(self.h)
