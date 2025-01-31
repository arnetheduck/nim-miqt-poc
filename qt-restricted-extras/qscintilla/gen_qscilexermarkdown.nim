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
{.compile("gen_qscilexermarkdown.cpp", cflags).}


type QsciLexerMarkdownEnumEnum* = distinct cint
template Default*(_: type QsciLexerMarkdownEnumEnum): untyped = 0
template Special*(_: type QsciLexerMarkdownEnumEnum): untyped = 1
template StrongEmphasisAsterisks*(_: type QsciLexerMarkdownEnumEnum): untyped = 2
template StrongEmphasisUnderscores*(_: type QsciLexerMarkdownEnumEnum): untyped = 3
template EmphasisAsterisks*(_: type QsciLexerMarkdownEnumEnum): untyped = 4
template EmphasisUnderscores*(_: type QsciLexerMarkdownEnumEnum): untyped = 5
template Header1*(_: type QsciLexerMarkdownEnumEnum): untyped = 6
template Header2*(_: type QsciLexerMarkdownEnumEnum): untyped = 7
template Header3*(_: type QsciLexerMarkdownEnumEnum): untyped = 8
template Header4*(_: type QsciLexerMarkdownEnumEnum): untyped = 9
template Header5*(_: type QsciLexerMarkdownEnumEnum): untyped = 10
template Header6*(_: type QsciLexerMarkdownEnumEnum): untyped = 11
template Prechar*(_: type QsciLexerMarkdownEnumEnum): untyped = 12
template UnorderedListItem*(_: type QsciLexerMarkdownEnumEnum): untyped = 13
template OrderedListItem*(_: type QsciLexerMarkdownEnumEnum): untyped = 14
template BlockQuote*(_: type QsciLexerMarkdownEnumEnum): untyped = 15
template StrikeOut*(_: type QsciLexerMarkdownEnumEnum): untyped = 16
template HorizontalRule*(_: type QsciLexerMarkdownEnumEnum): untyped = 17
template Link*(_: type QsciLexerMarkdownEnumEnum): untyped = 18
template CodeBackticks*(_: type QsciLexerMarkdownEnumEnum): untyped = 19
template CodeDoubleBackticks*(_: type QsciLexerMarkdownEnumEnum): untyped = 20
template CodeBlock*(_: type QsciLexerMarkdownEnumEnum): untyped = 21

import gen_qscilexermarkdown_types
export gen_qscilexermarkdown_types

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

type cQsciLexerMarkdown*{.exportc: "QsciLexerMarkdown", incompleteStruct.} = object

proc fcQsciLexerMarkdown_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMarkdown_metaObject".}
proc fcQsciLexerMarkdown_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMarkdown_metacast".}
proc fcQsciLexerMarkdown_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMarkdown_metacall".}
proc fcQsciLexerMarkdown_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_tr".}
proc fcQsciLexerMarkdown_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf8".}
proc fcQsciLexerMarkdown_language(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_language".}
proc fcQsciLexerMarkdown_lexer(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_lexer".}
proc fcQsciLexerMarkdown_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultColor".}
proc fcQsciLexerMarkdown_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultFont".}
proc fcQsciLexerMarkdown_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_defaultPaper".}
proc fcQsciLexerMarkdown_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_description".}
proc fcQsciLexerMarkdown_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_tr2".}
proc fcQsciLexerMarkdown_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_tr3".}
proc fcQsciLexerMarkdown_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf82".}
proc fcQsciLexerMarkdown_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMarkdown_trUtf83".}
type cQsciLexerMarkdownVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerMarkdownVTable, self: ptr cQsciLexerMarkdown) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerMarkdown_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMarkdown_virtualbase_metaObject".}
proc fcQsciLexerMarkdown_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMarkdown_virtualbase_metacast".}
proc fcQsciLexerMarkdown_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMarkdown_virtualbase_metacall".}
proc fcQsciLexerMarkdown_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_virtualbase_lexer".}
proc fcQsciLexerMarkdown_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_lexerId".}
proc fcQsciLexerMarkdown_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerMarkdown_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMarkdown_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMarkdown_virtualbase_blockEnd".}
proc fcQsciLexerMarkdown_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_blockLookback".}
proc fcQsciLexerMarkdown_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMarkdown_virtualbase_blockStart".}
proc fcQsciLexerMarkdown_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMarkdown_virtualbase_blockStartKeyword".}
proc fcQsciLexerMarkdown_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_braceStyle".}
proc fcQsciLexerMarkdown_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerMarkdown_virtualbase_caseSensitive".}
proc fcQsciLexerMarkdown_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_color".}
proc fcQsciLexerMarkdown_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMarkdown_virtualbase_eolFill".}
proc fcQsciLexerMarkdown_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_font".}
proc fcQsciLexerMarkdown_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_indentationGuideView".}
proc fcQsciLexerMarkdown_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMarkdown_virtualbase_keywords".}
proc fcQsciLexerMarkdown_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_defaultStyle".}
proc fcQsciLexerMarkdown_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_paper".}
proc fcQsciLexerMarkdown_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMarkdown_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMarkdown_virtualbase_defaultEolFill".}
proc fcQsciLexerMarkdown_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMarkdown_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMarkdown_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMarkdown_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_setEditor".}
proc fcQsciLexerMarkdown_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerMarkdown_virtualbase_refreshProperties".}
proc fcQsciLexerMarkdown_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerMarkdown_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMarkdown_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerMarkdown_virtualbase_wordCharacters".}
proc fcQsciLexerMarkdown_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerMarkdown_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMarkdown_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMarkdown_virtualbase_setColor".}
proc fcQsciLexerMarkdown_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerMarkdown_virtualbase_setEolFill".}
proc fcQsciLexerMarkdown_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerMarkdown_virtualbase_setFont".}
proc fcQsciLexerMarkdown_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMarkdown_virtualbase_setPaper".}
proc fcQsciLexerMarkdown_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMarkdown_virtualbase_readProperties".}
proc fcQsciLexerMarkdown_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMarkdown_virtualbase_writeProperties".}
proc fcQsciLexerMarkdown_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerMarkdown_virtualbase_event".}
proc fcQsciLexerMarkdown_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerMarkdown_virtualbase_eventFilter".}
proc fcQsciLexerMarkdown_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_timerEvent".}
proc fcQsciLexerMarkdown_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_childEvent".}
proc fcQsciLexerMarkdown_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_customEvent".}
proc fcQsciLexerMarkdown_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_connectNotify".}
proc fcQsciLexerMarkdown_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMarkdown_virtualbase_disconnectNotify".}
proc fcQsciLexerMarkdown_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerMarkdown_protectedbase_sender".}
proc fcQsciLexerMarkdown_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerMarkdown_protectedbase_senderSignalIndex".}
proc fcQsciLexerMarkdown_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerMarkdown_protectedbase_receivers".}
proc fcQsciLexerMarkdown_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerMarkdown_protectedbase_isSignalConnected".}
proc fcQsciLexerMarkdown_new(vtbl: pointer, ): ptr cQsciLexerMarkdown {.importc: "QsciLexerMarkdown_new".}
proc fcQsciLexerMarkdown_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerMarkdown {.importc: "QsciLexerMarkdown_new2".}
proc fcQsciLexerMarkdown_staticMetaObject(): pointer {.importc: "QsciLexerMarkdown_staticMetaObject".}
proc fcQsciLexerMarkdown_delete(self: pointer) {.importc: "QsciLexerMarkdown_delete".}

proc metaObject*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMarkdown_metaObject(self.h))

proc metacast*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cstring): pointer =
  fcQsciLexerMarkdown_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMarkdown_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring): string =
  let v_ms = fcQsciLexerMarkdown_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring): string =
  let v_ms = fcQsciLexerMarkdown_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =
  (fcQsciLexerMarkdown_language(self.h))

proc lexer*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =
  (fcQsciLexerMarkdown_lexer(self.h))

proc defaultColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMarkdown_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_defaultPaper(self.h, style))

proc description*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): string =
  let v_ms = fcQsciLexerMarkdown_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMarkdown_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMarkdown_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMarkdown_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMarkdown_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerMarkdownmetaObjectProc* = proc(self: QsciLexerMarkdown): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerMarkdownmetacastProc* = proc(self: QsciLexerMarkdown, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerMarkdownmetacallProc* = proc(self: QsciLexerMarkdown, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerMarkdownlanguageProc* = proc(self: QsciLexerMarkdown): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownlexerProc* = proc(self: QsciLexerMarkdown): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownlexerIdProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdownautoCompletionFillupsProc* = proc(self: QsciLexerMarkdown): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownautoCompletionWordSeparatorsProc* = proc(self: QsciLexerMarkdown): seq[string] {.raises: [], gcsafe.}
type QsciLexerMarkdownblockEndProc* = proc(self: QsciLexerMarkdown, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownblockLookbackProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdownblockStartProc* = proc(self: QsciLexerMarkdown, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownblockStartKeywordProc* = proc(self: QsciLexerMarkdown, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownbraceStyleProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdowncaseSensitiveProc* = proc(self: QsciLexerMarkdown): bool {.raises: [], gcsafe.}
type QsciLexerMarkdowncolorProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMarkdowneolFillProc* = proc(self: QsciLexerMarkdown, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMarkdownfontProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMarkdownindentationGuideViewProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdownkeywordsProc* = proc(self: QsciLexerMarkdown, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdowndefaultStyleProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdowndescriptionProc* = proc(self: QsciLexerMarkdown, style: cint): string {.raises: [], gcsafe.}
type QsciLexerMarkdownpaperProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMarkdowndefaultColorProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMarkdowndefaultEolFillProc* = proc(self: QsciLexerMarkdown, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMarkdowndefaultFontProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMarkdowndefaultPaperProc* = proc(self: QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMarkdownsetEditorProc* = proc(self: QsciLexerMarkdown, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerMarkdownrefreshPropertiesProc* = proc(self: QsciLexerMarkdown): void {.raises: [], gcsafe.}
type QsciLexerMarkdownstyleBitsNeededProc* = proc(self: QsciLexerMarkdown): cint {.raises: [], gcsafe.}
type QsciLexerMarkdownwordCharactersProc* = proc(self: QsciLexerMarkdown): cstring {.raises: [], gcsafe.}
type QsciLexerMarkdownsetAutoIndentStyleProc* = proc(self: QsciLexerMarkdown, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerMarkdownsetColorProc* = proc(self: QsciLexerMarkdown, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMarkdownsetEolFillProc* = proc(self: QsciLexerMarkdown, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMarkdownsetFontProc* = proc(self: QsciLexerMarkdown, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMarkdownsetPaperProc* = proc(self: QsciLexerMarkdown, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMarkdownreadPropertiesProc* = proc(self: QsciLexerMarkdown, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMarkdownwritePropertiesProc* = proc(self: QsciLexerMarkdown, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMarkdowneventProc* = proc(self: QsciLexerMarkdown, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMarkdowneventFilterProc* = proc(self: QsciLexerMarkdown, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMarkdowntimerEventProc* = proc(self: QsciLexerMarkdown, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerMarkdownchildEventProc* = proc(self: QsciLexerMarkdown, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerMarkdowncustomEventProc* = proc(self: QsciLexerMarkdown, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerMarkdownconnectNotifyProc* = proc(self: QsciLexerMarkdown, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMarkdowndisconnectNotifyProc* = proc(self: QsciLexerMarkdown, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMarkdownVTable* = object
  vtbl: cQsciLexerMarkdownVTable
  metaObject*: QsciLexerMarkdownmetaObjectProc
  metacast*: QsciLexerMarkdownmetacastProc
  metacall*: QsciLexerMarkdownmetacallProc
  language*: QsciLexerMarkdownlanguageProc
  lexer*: QsciLexerMarkdownlexerProc
  lexerId*: QsciLexerMarkdownlexerIdProc
  autoCompletionFillups*: QsciLexerMarkdownautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerMarkdownautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerMarkdownblockEndProc
  blockLookback*: QsciLexerMarkdownblockLookbackProc
  blockStart*: QsciLexerMarkdownblockStartProc
  blockStartKeyword*: QsciLexerMarkdownblockStartKeywordProc
  braceStyle*: QsciLexerMarkdownbraceStyleProc
  caseSensitive*: QsciLexerMarkdowncaseSensitiveProc
  color*: QsciLexerMarkdowncolorProc
  eolFill*: QsciLexerMarkdowneolFillProc
  font*: QsciLexerMarkdownfontProc
  indentationGuideView*: QsciLexerMarkdownindentationGuideViewProc
  keywords*: QsciLexerMarkdownkeywordsProc
  defaultStyle*: QsciLexerMarkdowndefaultStyleProc
  description*: QsciLexerMarkdowndescriptionProc
  paper*: QsciLexerMarkdownpaperProc
  defaultColor*: QsciLexerMarkdowndefaultColorProc
  defaultEolFill*: QsciLexerMarkdowndefaultEolFillProc
  defaultFont*: QsciLexerMarkdowndefaultFontProc
  defaultPaper*: QsciLexerMarkdowndefaultPaperProc
  setEditor*: QsciLexerMarkdownsetEditorProc
  refreshProperties*: QsciLexerMarkdownrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerMarkdownstyleBitsNeededProc
  wordCharacters*: QsciLexerMarkdownwordCharactersProc
  setAutoIndentStyle*: QsciLexerMarkdownsetAutoIndentStyleProc
  setColor*: QsciLexerMarkdownsetColorProc
  setEolFill*: QsciLexerMarkdownsetEolFillProc
  setFont*: QsciLexerMarkdownsetFontProc
  setPaper*: QsciLexerMarkdownsetPaperProc
  readProperties*: QsciLexerMarkdownreadPropertiesProc
  writeProperties*: QsciLexerMarkdownwritePropertiesProc
  event*: QsciLexerMarkdowneventProc
  eventFilter*: QsciLexerMarkdowneventFilterProc
  timerEvent*: QsciLexerMarkdowntimerEventProc
  childEvent*: QsciLexerMarkdownchildEventProc
  customEvent*: QsciLexerMarkdowncustomEventProc
  connectNotify*: QsciLexerMarkdownconnectNotifyProc
  disconnectNotify*: QsciLexerMarkdowndisconnectNotifyProc
proc QsciLexerMarkdownmetaObject*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMarkdown_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerMarkdown_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerMarkdownmetacast*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cstring): pointer =
  fcQsciLexerMarkdown_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerMarkdown_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerMarkdownmetacall*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMarkdown_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerMarkdown_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMarkdown_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerMarkdownlexer*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =
  (fcQsciLexerMarkdown_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerMarkdown_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerMarkdownlexerId*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerMarkdownautoCompletionFillups*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =
  (fcQsciLexerMarkdown_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerMarkdown_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerMarkdownautoCompletionWordSeparators*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): seq[string] =
  var v_ma = fcQsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerMarkdown_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerMarkdownblockEnd*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =
  (fcQsciLexerMarkdown_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerMarkdownblockLookback*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerMarkdownblockStart*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =
  (fcQsciLexerMarkdown_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerMarkdownblockStartKeyword*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: ptr cint): cstring =
  (fcQsciLexerMarkdown_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerMarkdownbraceStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerMarkdowncaseSensitive*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): bool =
  fcQsciLexerMarkdown_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerMarkdowncolor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdowneolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): bool =
  fcQsciLexerMarkdown_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMarkdown_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerMarkdownfont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMarkdown_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdownindentationGuideView*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerMarkdownkeywords*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, set: cint): cstring =
  (fcQsciLexerMarkdown_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerMarkdown_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerMarkdowndefaultStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMarkdown_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerMarkdownpaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdowndefaultColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdowndefaultEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): bool =
  fcQsciLexerMarkdown_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMarkdown_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerMarkdowndefaultFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMarkdown_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdowndefaultPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMarkdown_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMarkdown_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerMarkdownsetEditor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerMarkdown_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerMarkdown_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerMarkdownrefreshProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): void =
  fcQsciLexerMarkdown_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerMarkdownstyleBitsNeeded*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerMarkdown_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerMarkdownwordCharacters*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cstring =
  (fcQsciLexerMarkdown_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerMarkdown_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerMarkdownsetAutoIndentStyle*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, autoindentstyle: cint): void =
  fcQsciLexerMarkdown_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerMarkdown_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerMarkdownsetColor*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMarkdown_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMarkdown_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerMarkdownsetEolFill*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, eoffill: bool, style: cint): void =
  fcQsciLexerMarkdown_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerMarkdown_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerMarkdownsetFont*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerMarkdown_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerMarkdown_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerMarkdownsetPaper*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMarkdown_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMarkdown_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerMarkdownreadProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMarkdown_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMarkdown_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMarkdownwriteProperties*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMarkdown_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMarkdown_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMarkdownevent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMarkdown_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMarkdown_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerMarkdowneventFilter*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMarkdown_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerMarkdown_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMarkdowntimerEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerMarkdown_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMarkdown_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerMarkdownchildEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerMarkdown_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMarkdown_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerMarkdowncustomEvent*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerMarkdown_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMarkdown_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerMarkdownconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMarkdown_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMarkdown_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerMarkdowndisconnectNotify*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMarkdown_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMarkdown_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMarkdownVTable](vtbl)
  let self = QsciLexerMarkdown(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerMarkdown_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, ): cint =
  fcQsciLexerMarkdown_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: cstring): cint =
  fcQsciLexerMarkdown_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerMarkdown_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexermarkdown_types.QsciLexerMarkdown,
    vtbl: ref QsciLexerMarkdownVTable = nil): gen_qscilexermarkdown_types.QsciLexerMarkdown =
  let vtbl = if vtbl == nil: new QsciLexerMarkdownVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMarkdownVTable, _: ptr cQsciLexerMarkdown) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMarkdownVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMarkdown_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMarkdown_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMarkdown_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMarkdown_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMarkdown_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMarkdown_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMarkdown_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMarkdown_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMarkdown_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMarkdown_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMarkdown_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMarkdown_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMarkdown_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMarkdown_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMarkdown_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMarkdown_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMarkdown_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMarkdown_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMarkdown_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMarkdown_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMarkdown_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMarkdown_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMarkdown_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMarkdown_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMarkdown_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMarkdown_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMarkdown_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMarkdown_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMarkdown_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMarkdown_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMarkdown_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMarkdown_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMarkdown_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMarkdown_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMarkdown_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMarkdown_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMarkdown_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMarkdown_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMarkdown_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMarkdown_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMarkdown_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMarkdown_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMarkdown_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMarkdown_disconnectNotify
  gen_qscilexermarkdown_types.QsciLexerMarkdown(h: fcQsciLexerMarkdown_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexermarkdown_types.QsciLexerMarkdown,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerMarkdownVTable = nil): gen_qscilexermarkdown_types.QsciLexerMarkdown =
  let vtbl = if vtbl == nil: new QsciLexerMarkdownVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMarkdownVTable, _: ptr cQsciLexerMarkdown) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMarkdownVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMarkdown_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMarkdown_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMarkdown_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMarkdown_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMarkdown_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMarkdown_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMarkdown_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMarkdown_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMarkdown_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMarkdown_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMarkdown_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMarkdown_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMarkdown_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMarkdown_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMarkdown_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMarkdown_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMarkdown_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMarkdown_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMarkdown_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMarkdown_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMarkdown_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMarkdown_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMarkdown_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMarkdown_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMarkdown_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMarkdown_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMarkdown_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMarkdown_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMarkdown_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMarkdown_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMarkdown_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMarkdown_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMarkdown_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMarkdown_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMarkdown_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMarkdown_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMarkdown_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMarkdown_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMarkdown_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMarkdown_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMarkdown_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMarkdown_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMarkdown_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMarkdown_disconnectNotify
  gen_qscilexermarkdown_types.QsciLexerMarkdown(h: fcQsciLexerMarkdown_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexermarkdown_types.QsciLexerMarkdown): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMarkdown_staticMetaObject())
proc delete*(self: gen_qscilexermarkdown_types.QsciLexerMarkdown) =
  fcQsciLexerMarkdown_delete(self.h)
