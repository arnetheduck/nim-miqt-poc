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
{.compile("gen_qscilexerbatch.cpp", cflags).}


type QsciLexerBatchEnumEnum* = distinct cint
template Default*(_: type QsciLexerBatchEnumEnum): untyped = 0
template Comment*(_: type QsciLexerBatchEnumEnum): untyped = 1
template Keyword*(_: type QsciLexerBatchEnumEnum): untyped = 2
template Label*(_: type QsciLexerBatchEnumEnum): untyped = 3
template HideCommandChar*(_: type QsciLexerBatchEnumEnum): untyped = 4
template ExternalCommand*(_: type QsciLexerBatchEnumEnum): untyped = 5
template Variable*(_: type QsciLexerBatchEnumEnum): untyped = 6
template Operator*(_: type QsciLexerBatchEnumEnum): untyped = 7

import gen_qscilexerbatch_types
export gen_qscilexerbatch_types

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

type cQsciLexerBatch*{.exportc: "QsciLexerBatch", incompleteStruct.} = object

proc fcQsciLexerBatch_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBatch_metaObject".}
proc fcQsciLexerBatch_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBatch_metacast".}
proc fcQsciLexerBatch_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBatch_metacall".}
proc fcQsciLexerBatch_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr".}
proc fcQsciLexerBatch_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerBatch_trUtf8".}
proc fcQsciLexerBatch_language(self: pointer, ): cstring {.importc: "QsciLexerBatch_language".}
proc fcQsciLexerBatch_lexer(self: pointer, ): cstring {.importc: "QsciLexerBatch_lexer".}
proc fcQsciLexerBatch_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBatch_wordCharacters".}
proc fcQsciLexerBatch_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerBatch_caseSensitive".}
proc fcQsciLexerBatch_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultColor".}
proc fcQsciLexerBatch_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBatch_defaultEolFill".}
proc fcQsciLexerBatch_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultFont".}
proc fcQsciLexerBatch_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultPaper".}
proc fcQsciLexerBatch_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBatch_keywords".}
proc fcQsciLexerBatch_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBatch_description".}
proc fcQsciLexerBatch_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr2".}
proc fcQsciLexerBatch_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBatch_tr3".}
proc fcQsciLexerBatch_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBatch_trUtf82".}
proc fcQsciLexerBatch_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBatch_trUtf83".}
type cQsciLexerBatchVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerBatchVTable, self: ptr cQsciLexerBatch) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerBatch_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBatch_virtualbase_metaObject".}
proc fcQsciLexerBatch_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBatch_virtualbase_metacast".}
proc fcQsciLexerBatch_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBatch_virtualbase_metacall".}
proc fcQsciLexerBatch_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerBatch_virtualbase_lexer".}
proc fcQsciLexerBatch_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_lexerId".}
proc fcQsciLexerBatch_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerBatch_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerBatch_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBatch_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBatch_virtualbase_blockEnd".}
proc fcQsciLexerBatch_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_blockLookback".}
proc fcQsciLexerBatch_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBatch_virtualbase_blockStart".}
proc fcQsciLexerBatch_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerBatch_virtualbase_blockStartKeyword".}
proc fcQsciLexerBatch_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_braceStyle".}
proc fcQsciLexerBatch_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerBatch_virtualbase_caseSensitive".}
proc fcQsciLexerBatch_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_color".}
proc fcQsciLexerBatch_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBatch_virtualbase_eolFill".}
proc fcQsciLexerBatch_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_font".}
proc fcQsciLexerBatch_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_indentationGuideView".}
proc fcQsciLexerBatch_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBatch_virtualbase_keywords".}
proc fcQsciLexerBatch_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_defaultStyle".}
proc fcQsciLexerBatch_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_paper".}
proc fcQsciLexerBatch_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBatch_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBatch_virtualbase_defaultEolFill".}
proc fcQsciLexerBatch_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBatch_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBatch_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerBatch_virtualbase_setEditor".}
proc fcQsciLexerBatch_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerBatch_virtualbase_refreshProperties".}
proc fcQsciLexerBatch_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerBatch_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBatch_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBatch_virtualbase_wordCharacters".}
proc fcQsciLexerBatch_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerBatch_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBatch_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerBatch_virtualbase_setColor".}
proc fcQsciLexerBatch_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerBatch_virtualbase_setEolFill".}
proc fcQsciLexerBatch_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerBatch_virtualbase_setFont".}
proc fcQsciLexerBatch_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerBatch_virtualbase_setPaper".}
proc fcQsciLexerBatch_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBatch_virtualbase_readProperties".}
proc fcQsciLexerBatch_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerBatch_virtualbase_writeProperties".}
proc fcQsciLexerBatch_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerBatch_virtualbase_event".}
proc fcQsciLexerBatch_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerBatch_virtualbase_eventFilter".}
proc fcQsciLexerBatch_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBatch_virtualbase_timerEvent".}
proc fcQsciLexerBatch_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBatch_virtualbase_childEvent".}
proc fcQsciLexerBatch_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerBatch_virtualbase_customEvent".}
proc fcQsciLexerBatch_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerBatch_virtualbase_connectNotify".}
proc fcQsciLexerBatch_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerBatch_virtualbase_disconnectNotify".}
proc fcQsciLexerBatch_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerBatch_protectedbase_sender".}
proc fcQsciLexerBatch_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerBatch_protectedbase_senderSignalIndex".}
proc fcQsciLexerBatch_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerBatch_protectedbase_receivers".}
proc fcQsciLexerBatch_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerBatch_protectedbase_isSignalConnected".}
proc fcQsciLexerBatch_new(vtbl: pointer, ): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new".}
proc fcQsciLexerBatch_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new2".}
proc fcQsciLexerBatch_staticMetaObject(): pointer {.importc: "QsciLexerBatch_staticMetaObject".}
proc fcQsciLexerBatch_delete(self: pointer) {.importc: "QsciLexerBatch_delete".}

proc metaObject*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBatch_metaObject(self.h))

proc metacast*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cstring): pointer =
  fcQsciLexerBatch_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerBatch_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring): string =
  let v_ms = fcQsciLexerBatch_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring): string =
  let v_ms = fcQsciLexerBatch_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_language(self.h))

proc lexer*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_wordCharacters(self.h))

proc caseSensitive*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): bool =
  fcQsciLexerBatch_caseSensitive(self.h)

proc defaultColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =
  fcQsciLexerBatch_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBatch_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerbatch_types.QsciLexerBatch, set: cint): cstring =
  (fcQsciLexerBatch_keywords(self.h, set))

proc description*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): string =
  let v_ms = fcQsciLexerBatch_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerBatch_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerBatch_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerBatch_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerBatch_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerBatchmetaObjectProc* = proc(self: QsciLexerBatch): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerBatchmetacastProc* = proc(self: QsciLexerBatch, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerBatchmetacallProc* = proc(self: QsciLexerBatch, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerBatchlanguageProc* = proc(self: QsciLexerBatch): cstring {.raises: [], gcsafe.}
type QsciLexerBatchlexerProc* = proc(self: QsciLexerBatch): cstring {.raises: [], gcsafe.}
type QsciLexerBatchlexerIdProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchautoCompletionFillupsProc* = proc(self: QsciLexerBatch): cstring {.raises: [], gcsafe.}
type QsciLexerBatchautoCompletionWordSeparatorsProc* = proc(self: QsciLexerBatch): seq[string] {.raises: [], gcsafe.}
type QsciLexerBatchblockEndProc* = proc(self: QsciLexerBatch, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBatchblockLookbackProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchblockStartProc* = proc(self: QsciLexerBatch, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBatchblockStartKeywordProc* = proc(self: QsciLexerBatch, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerBatchbraceStyleProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchcaseSensitiveProc* = proc(self: QsciLexerBatch): bool {.raises: [], gcsafe.}
type QsciLexerBatchcolorProc* = proc(self: QsciLexerBatch, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBatcheolFillProc* = proc(self: QsciLexerBatch, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerBatchfontProc* = proc(self: QsciLexerBatch, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerBatchindentationGuideViewProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchkeywordsProc* = proc(self: QsciLexerBatch, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerBatchdefaultStyleProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchdescriptionProc* = proc(self: QsciLexerBatch, style: cint): string {.raises: [], gcsafe.}
type QsciLexerBatchpaperProc* = proc(self: QsciLexerBatch, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBatchdefaultColorProc* = proc(self: QsciLexerBatch, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBatchdefaultEolFillProc* = proc(self: QsciLexerBatch, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerBatchdefaultFontProc* = proc(self: QsciLexerBatch, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerBatchdefaultPaperProc* = proc(self: QsciLexerBatch, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerBatchsetEditorProc* = proc(self: QsciLexerBatch, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerBatchrefreshPropertiesProc* = proc(self: QsciLexerBatch): void {.raises: [], gcsafe.}
type QsciLexerBatchstyleBitsNeededProc* = proc(self: QsciLexerBatch): cint {.raises: [], gcsafe.}
type QsciLexerBatchwordCharactersProc* = proc(self: QsciLexerBatch): cstring {.raises: [], gcsafe.}
type QsciLexerBatchsetAutoIndentStyleProc* = proc(self: QsciLexerBatch, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerBatchsetColorProc* = proc(self: QsciLexerBatch, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBatchsetEolFillProc* = proc(self: QsciLexerBatch, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBatchsetFontProc* = proc(self: QsciLexerBatch, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBatchsetPaperProc* = proc(self: QsciLexerBatch, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerBatchreadPropertiesProc* = proc(self: QsciLexerBatch, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerBatchwritePropertiesProc* = proc(self: QsciLexerBatch, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerBatcheventProc* = proc(self: QsciLexerBatch, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerBatcheventFilterProc* = proc(self: QsciLexerBatch, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerBatchtimerEventProc* = proc(self: QsciLexerBatch, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerBatchchildEventProc* = proc(self: QsciLexerBatch, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerBatchcustomEventProc* = proc(self: QsciLexerBatch, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerBatchconnectNotifyProc* = proc(self: QsciLexerBatch, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerBatchdisconnectNotifyProc* = proc(self: QsciLexerBatch, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerBatchVTable* = object
  vtbl: cQsciLexerBatchVTable
  metaObject*: QsciLexerBatchmetaObjectProc
  metacast*: QsciLexerBatchmetacastProc
  metacall*: QsciLexerBatchmetacallProc
  language*: QsciLexerBatchlanguageProc
  lexer*: QsciLexerBatchlexerProc
  lexerId*: QsciLexerBatchlexerIdProc
  autoCompletionFillups*: QsciLexerBatchautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerBatchautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerBatchblockEndProc
  blockLookback*: QsciLexerBatchblockLookbackProc
  blockStart*: QsciLexerBatchblockStartProc
  blockStartKeyword*: QsciLexerBatchblockStartKeywordProc
  braceStyle*: QsciLexerBatchbraceStyleProc
  caseSensitive*: QsciLexerBatchcaseSensitiveProc
  color*: QsciLexerBatchcolorProc
  eolFill*: QsciLexerBatcheolFillProc
  font*: QsciLexerBatchfontProc
  indentationGuideView*: QsciLexerBatchindentationGuideViewProc
  keywords*: QsciLexerBatchkeywordsProc
  defaultStyle*: QsciLexerBatchdefaultStyleProc
  description*: QsciLexerBatchdescriptionProc
  paper*: QsciLexerBatchpaperProc
  defaultColor*: QsciLexerBatchdefaultColorProc
  defaultEolFill*: QsciLexerBatchdefaultEolFillProc
  defaultFont*: QsciLexerBatchdefaultFontProc
  defaultPaper*: QsciLexerBatchdefaultPaperProc
  setEditor*: QsciLexerBatchsetEditorProc
  refreshProperties*: QsciLexerBatchrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerBatchstyleBitsNeededProc
  wordCharacters*: QsciLexerBatchwordCharactersProc
  setAutoIndentStyle*: QsciLexerBatchsetAutoIndentStyleProc
  setColor*: QsciLexerBatchsetColorProc
  setEolFill*: QsciLexerBatchsetEolFillProc
  setFont*: QsciLexerBatchsetFontProc
  setPaper*: QsciLexerBatchsetPaperProc
  readProperties*: QsciLexerBatchreadPropertiesProc
  writeProperties*: QsciLexerBatchwritePropertiesProc
  event*: QsciLexerBatcheventProc
  eventFilter*: QsciLexerBatcheventFilterProc
  timerEvent*: QsciLexerBatchtimerEventProc
  childEvent*: QsciLexerBatchchildEventProc
  customEvent*: QsciLexerBatchcustomEventProc
  connectNotify*: QsciLexerBatchconnectNotifyProc
  disconnectNotify*: QsciLexerBatchdisconnectNotifyProc
proc QsciLexerBatchmetaObject*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBatch_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerBatch_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerBatchmetacast*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cstring): pointer =
  fcQsciLexerBatch_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerBatch_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerBatchmetacall*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerBatch_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerBatch_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerBatch_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerBatchlexer*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerBatch_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerBatchlexerId*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerBatch_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerBatchautoCompletionFillups*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerBatch_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerBatchautoCompletionWordSeparators*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): seq[string] =
  var v_ma = fcQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerBatch_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerBatchblockEnd*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =
  (fcQsciLexerBatch_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerBatchblockLookback*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerBatch_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerBatchblockStart*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =
  (fcQsciLexerBatch_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerBatchblockStartKeyword*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =
  (fcQsciLexerBatch_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerBatchbraceStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerBatch_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerBatchcaseSensitive*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): bool =
  fcQsciLexerBatch_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerBatch_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerBatchcolor*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerBatcheolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =
  fcQsciLexerBatch_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerBatch_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerBatchfont*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBatch_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerBatchindentationGuideView*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerBatch_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerBatchkeywords*(self: gen_qscilexerbatch_types.QsciLexerBatch, set: cint): cstring =
  (fcQsciLexerBatch_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerBatch_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerBatchdefaultStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerBatch_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerBatch_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerBatchpaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerBatchdefaultColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerBatchdefaultEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =
  fcQsciLexerBatch_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerBatch_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerBatchdefaultFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerBatch_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerBatchdefaultPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerBatch_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerBatch_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerBatchsetEditor*(self: gen_qscilexerbatch_types.QsciLexerBatch, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerBatch_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerBatch_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerBatchrefreshProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): void =
  fcQsciLexerBatch_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerBatch_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerBatchstyleBitsNeeded*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerBatch_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerBatchwordCharacters*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =
  (fcQsciLexerBatch_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerBatch_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerBatchsetAutoIndentStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, autoindentstyle: cint): void =
  fcQsciLexerBatch_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerBatch_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerBatchsetColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerBatch_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerBatch_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerBatchsetEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, eoffill: bool, style: cint): void =
  fcQsciLexerBatch_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerBatch_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerBatchsetFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerBatch_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerBatch_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerBatchsetPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerBatch_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerBatch_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerBatchreadProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBatch_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerBatch_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBatchwriteProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerBatch_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerBatch_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBatchevent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerBatch_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBatch_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerBatcheventFilter*(self: gen_qscilexerbatch_types.QsciLexerBatch, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerBatch_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerBatch_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerBatchtimerEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerBatch_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBatch_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerBatchchildEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerBatch_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBatch_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerBatchcustomEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerBatch_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerBatch_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerBatchconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerBatch_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerBatch_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerBatchdisconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerBatch_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerBatch_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerBatchVTable](vtbl)
  let self = QsciLexerBatch(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerBatch_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =
  fcQsciLexerBatch_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: cstring): cint =
  fcQsciLexerBatch_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerBatch_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerbatch_types.QsciLexerBatch,
    vtbl: ref QsciLexerBatchVTable = nil): gen_qscilexerbatch_types.QsciLexerBatch =
  let vtbl = if vtbl == nil: new QsciLexerBatchVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerBatchVTable, _: ptr cQsciLexerBatch) {.cdecl.} =
    let vtbl = cast[ref QsciLexerBatchVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerBatch_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerBatch_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerBatch_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerBatch_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerBatch_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerBatch_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerBatch_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerBatch_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerBatch_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerBatch_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerBatch_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerBatch_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerBatch_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerBatch_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerBatch_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerBatch_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerBatch_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerBatch_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerBatch_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerBatch_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerBatch_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerBatch_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerBatch_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerBatch_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerBatch_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerBatch_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerBatch_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerBatch_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerBatch_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerBatch_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerBatch_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerBatch_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerBatch_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerBatch_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerBatch_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerBatch_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerBatch_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerBatch_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerBatch_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerBatch_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerBatch_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerBatch_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerBatch_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerBatch_disconnectNotify
  gen_qscilexerbatch_types.QsciLexerBatch(h: fcQsciLexerBatch_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerbatch_types.QsciLexerBatch,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerBatchVTable = nil): gen_qscilexerbatch_types.QsciLexerBatch =
  let vtbl = if vtbl == nil: new QsciLexerBatchVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerBatchVTable, _: ptr cQsciLexerBatch) {.cdecl.} =
    let vtbl = cast[ref QsciLexerBatchVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerBatch_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerBatch_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerBatch_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerBatch_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerBatch_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerBatch_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerBatch_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerBatch_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerBatch_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerBatch_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerBatch_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerBatch_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerBatch_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerBatch_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerBatch_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerBatch_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerBatch_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerBatch_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerBatch_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerBatch_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerBatch_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerBatch_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerBatch_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerBatch_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerBatch_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerBatch_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerBatch_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerBatch_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerBatch_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerBatch_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerBatch_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerBatch_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerBatch_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerBatch_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerBatch_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerBatch_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerBatch_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerBatch_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerBatch_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerBatch_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerBatch_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerBatch_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerBatch_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerBatch_disconnectNotify
  gen_qscilexerbatch_types.QsciLexerBatch(h: fcQsciLexerBatch_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerbatch_types.QsciLexerBatch): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerBatch_staticMetaObject())
proc delete*(self: gen_qscilexerbatch_types.QsciLexerBatch) =
  fcQsciLexerBatch_delete(self.h)
