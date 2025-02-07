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
{.compile("gen_qscilexeredifact.cpp", cflags).}


type QsciLexerEDIFACTEnumEnum* = distinct cint
template Default*(_: type QsciLexerEDIFACTEnumEnum): untyped = 0
template SegmentStart*(_: type QsciLexerEDIFACTEnumEnum): untyped = 1
template SegmentEnd*(_: type QsciLexerEDIFACTEnumEnum): untyped = 2
template ElementSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 3
template CompositeSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 4
template ReleaseSeparator*(_: type QsciLexerEDIFACTEnumEnum): untyped = 5
template UNASegmentHeader*(_: type QsciLexerEDIFACTEnumEnum): untyped = 6
template UNHSegmentHeader*(_: type QsciLexerEDIFACTEnumEnum): untyped = 7
template BadSegment*(_: type QsciLexerEDIFACTEnumEnum): untyped = 8

import gen_qscilexeredifact_types
export gen_qscilexeredifact_types

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

type cQsciLexerEDIFACT*{.exportc: "QsciLexerEDIFACT", incompleteStruct.} = object

proc fcQsciLexerEDIFACT_metaObject(self: pointer, ): pointer {.importc: "QsciLexerEDIFACT_metaObject".}
proc fcQsciLexerEDIFACT_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerEDIFACT_metacast".}
proc fcQsciLexerEDIFACT_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerEDIFACT_metacall".}
proc fcQsciLexerEDIFACT_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr".}
proc fcQsciLexerEDIFACT_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf8".}
proc fcQsciLexerEDIFACT_language(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_language".}
proc fcQsciLexerEDIFACT_lexer(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_lexer".}
proc fcQsciLexerEDIFACT_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_defaultColor".}
proc fcQsciLexerEDIFACT_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_description".}
proc fcQsciLexerEDIFACT_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr2".}
proc fcQsciLexerEDIFACT_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_tr3".}
proc fcQsciLexerEDIFACT_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf82".}
proc fcQsciLexerEDIFACT_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerEDIFACT_trUtf83".}
type cQsciLexerEDIFACTVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerEDIFACTVTable, self: ptr cQsciLexerEDIFACT) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerEDIFACT_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerEDIFACT_virtualbase_metaObject".}
proc fcQsciLexerEDIFACT_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerEDIFACT_virtualbase_metacast".}
proc fcQsciLexerEDIFACT_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerEDIFACT_virtualbase_metacall".}
proc fcQsciLexerEDIFACT_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_virtualbase_lexer".}
proc fcQsciLexerEDIFACT_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_lexerId".}
proc fcQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionFillups".}
proc fcQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerEDIFACT_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerEDIFACT_virtualbase_blockEnd".}
proc fcQsciLexerEDIFACT_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_blockLookback".}
proc fcQsciLexerEDIFACT_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerEDIFACT_virtualbase_blockStart".}
proc fcQsciLexerEDIFACT_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerEDIFACT_virtualbase_blockStartKeyword".}
proc fcQsciLexerEDIFACT_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_braceStyle".}
proc fcQsciLexerEDIFACT_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerEDIFACT_virtualbase_caseSensitive".}
proc fcQsciLexerEDIFACT_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_color".}
proc fcQsciLexerEDIFACT_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerEDIFACT_virtualbase_eolFill".}
proc fcQsciLexerEDIFACT_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_font".}
proc fcQsciLexerEDIFACT_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_indentationGuideView".}
proc fcQsciLexerEDIFACT_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerEDIFACT_virtualbase_keywords".}
proc fcQsciLexerEDIFACT_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_defaultStyle".}
proc fcQsciLexerEDIFACT_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_paper".}
proc fcQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerEDIFACT_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerEDIFACT_virtualbase_defaultEolFill".}
proc fcQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerEDIFACT_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerEDIFACT_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_setEditor".}
proc fcQsciLexerEDIFACT_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerEDIFACT_virtualbase_refreshProperties".}
proc fcQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_virtualbase_styleBitsNeeded".}
proc fcQsciLexerEDIFACT_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerEDIFACT_virtualbase_wordCharacters".}
proc fcQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerEDIFACT_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerEDIFACT_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerEDIFACT_virtualbase_setColor".}
proc fcQsciLexerEDIFACT_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerEDIFACT_virtualbase_setEolFill".}
proc fcQsciLexerEDIFACT_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerEDIFACT_virtualbase_setFont".}
proc fcQsciLexerEDIFACT_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerEDIFACT_virtualbase_setPaper".}
proc fcQsciLexerEDIFACT_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerEDIFACT_virtualbase_readProperties".}
proc fcQsciLexerEDIFACT_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerEDIFACT_virtualbase_writeProperties".}
proc fcQsciLexerEDIFACT_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerEDIFACT_virtualbase_event".}
proc fcQsciLexerEDIFACT_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerEDIFACT_virtualbase_eventFilter".}
proc fcQsciLexerEDIFACT_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_timerEvent".}
proc fcQsciLexerEDIFACT_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_childEvent".}
proc fcQsciLexerEDIFACT_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_customEvent".}
proc fcQsciLexerEDIFACT_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_connectNotify".}
proc fcQsciLexerEDIFACT_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerEDIFACT_virtualbase_disconnectNotify".}
proc fcQsciLexerEDIFACT_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerEDIFACT_protectedbase_sender".}
proc fcQsciLexerEDIFACT_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerEDIFACT_protectedbase_senderSignalIndex".}
proc fcQsciLexerEDIFACT_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerEDIFACT_protectedbase_receivers".}
proc fcQsciLexerEDIFACT_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerEDIFACT_protectedbase_isSignalConnected".}
proc fcQsciLexerEDIFACT_new(vtbl: pointer, ): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new".}
proc fcQsciLexerEDIFACT_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new2".}
proc fcQsciLexerEDIFACT_staticMetaObject(): pointer {.importc: "QsciLexerEDIFACT_staticMetaObject".}
proc fcQsciLexerEDIFACT_delete(self: pointer) {.importc: "QsciLexerEDIFACT_delete".}

proc metaObject*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerEDIFACT_metaObject(self.h))

proc metacast*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cstring): pointer =
  fcQsciLexerEDIFACT_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerEDIFACT_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_language(self.h))

proc lexer*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_lexer(self.h))

proc defaultColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerEDIFACT_defaultColor(self.h, style))

proc description*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): string =
  let v_ms = fcQsciLexerEDIFACT_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerEDIFACT_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerEDIFACT_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerEDIFACTmetaObjectProc* = proc(self: QsciLexerEDIFACT): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerEDIFACTmetacastProc* = proc(self: QsciLexerEDIFACT, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerEDIFACTmetacallProc* = proc(self: QsciLexerEDIFACT, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTlanguageProc* = proc(self: QsciLexerEDIFACT): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTlexerProc* = proc(self: QsciLexerEDIFACT): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTlexerIdProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTautoCompletionFillupsProc* = proc(self: QsciLexerEDIFACT): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTautoCompletionWordSeparatorsProc* = proc(self: QsciLexerEDIFACT): seq[string] {.raises: [], gcsafe.}
type QsciLexerEDIFACTblockEndProc* = proc(self: QsciLexerEDIFACT, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTblockLookbackProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTblockStartProc* = proc(self: QsciLexerEDIFACT, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTblockStartKeywordProc* = proc(self: QsciLexerEDIFACT, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTbraceStyleProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTcaseSensitiveProc* = proc(self: QsciLexerEDIFACT): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTcolorProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerEDIFACTeolFillProc* = proc(self: QsciLexerEDIFACT, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTfontProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerEDIFACTindentationGuideViewProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTkeywordsProc* = proc(self: QsciLexerEDIFACT, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTdefaultStyleProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTdescriptionProc* = proc(self: QsciLexerEDIFACT, style: cint): string {.raises: [], gcsafe.}
type QsciLexerEDIFACTpaperProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerEDIFACTdefaultColorProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerEDIFACTdefaultEolFillProc* = proc(self: QsciLexerEDIFACT, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTdefaultFontProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerEDIFACTdefaultPaperProc* = proc(self: QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetEditorProc* = proc(self: QsciLexerEDIFACT, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTrefreshPropertiesProc* = proc(self: QsciLexerEDIFACT): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTstyleBitsNeededProc* = proc(self: QsciLexerEDIFACT): cint {.raises: [], gcsafe.}
type QsciLexerEDIFACTwordCharactersProc* = proc(self: QsciLexerEDIFACT): cstring {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetAutoIndentStyleProc* = proc(self: QsciLexerEDIFACT, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetColorProc* = proc(self: QsciLexerEDIFACT, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetEolFillProc* = proc(self: QsciLexerEDIFACT, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetFontProc* = proc(self: QsciLexerEDIFACT, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTsetPaperProc* = proc(self: QsciLexerEDIFACT, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTreadPropertiesProc* = proc(self: QsciLexerEDIFACT, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTwritePropertiesProc* = proc(self: QsciLexerEDIFACT, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTeventProc* = proc(self: QsciLexerEDIFACT, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTeventFilterProc* = proc(self: QsciLexerEDIFACT, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerEDIFACTtimerEventProc* = proc(self: QsciLexerEDIFACT, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTchildEventProc* = proc(self: QsciLexerEDIFACT, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTcustomEventProc* = proc(self: QsciLexerEDIFACT, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTconnectNotifyProc* = proc(self: QsciLexerEDIFACT, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTdisconnectNotifyProc* = proc(self: QsciLexerEDIFACT, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerEDIFACTVTable* = object
  vtbl: cQsciLexerEDIFACTVTable
  metaObject*: QsciLexerEDIFACTmetaObjectProc
  metacast*: QsciLexerEDIFACTmetacastProc
  metacall*: QsciLexerEDIFACTmetacallProc
  language*: QsciLexerEDIFACTlanguageProc
  lexer*: QsciLexerEDIFACTlexerProc
  lexerId*: QsciLexerEDIFACTlexerIdProc
  autoCompletionFillups*: QsciLexerEDIFACTautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerEDIFACTautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerEDIFACTblockEndProc
  blockLookback*: QsciLexerEDIFACTblockLookbackProc
  blockStart*: QsciLexerEDIFACTblockStartProc
  blockStartKeyword*: QsciLexerEDIFACTblockStartKeywordProc
  braceStyle*: QsciLexerEDIFACTbraceStyleProc
  caseSensitive*: QsciLexerEDIFACTcaseSensitiveProc
  color*: QsciLexerEDIFACTcolorProc
  eolFill*: QsciLexerEDIFACTeolFillProc
  font*: QsciLexerEDIFACTfontProc
  indentationGuideView*: QsciLexerEDIFACTindentationGuideViewProc
  keywords*: QsciLexerEDIFACTkeywordsProc
  defaultStyle*: QsciLexerEDIFACTdefaultStyleProc
  description*: QsciLexerEDIFACTdescriptionProc
  paper*: QsciLexerEDIFACTpaperProc
  defaultColor*: QsciLexerEDIFACTdefaultColorProc
  defaultEolFill*: QsciLexerEDIFACTdefaultEolFillProc
  defaultFont*: QsciLexerEDIFACTdefaultFontProc
  defaultPaper*: QsciLexerEDIFACTdefaultPaperProc
  setEditor*: QsciLexerEDIFACTsetEditorProc
  refreshProperties*: QsciLexerEDIFACTrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerEDIFACTstyleBitsNeededProc
  wordCharacters*: QsciLexerEDIFACTwordCharactersProc
  setAutoIndentStyle*: QsciLexerEDIFACTsetAutoIndentStyleProc
  setColor*: QsciLexerEDIFACTsetColorProc
  setEolFill*: QsciLexerEDIFACTsetEolFillProc
  setFont*: QsciLexerEDIFACTsetFontProc
  setPaper*: QsciLexerEDIFACTsetPaperProc
  readProperties*: QsciLexerEDIFACTreadPropertiesProc
  writeProperties*: QsciLexerEDIFACTwritePropertiesProc
  event*: QsciLexerEDIFACTeventProc
  eventFilter*: QsciLexerEDIFACTeventFilterProc
  timerEvent*: QsciLexerEDIFACTtimerEventProc
  childEvent*: QsciLexerEDIFACTchildEventProc
  customEvent*: QsciLexerEDIFACTcustomEventProc
  connectNotify*: QsciLexerEDIFACTconnectNotifyProc
  disconnectNotify*: QsciLexerEDIFACTdisconnectNotifyProc
proc QsciLexerEDIFACTmetaObject*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerEDIFACT_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerEDIFACT_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerEDIFACTmetacast*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cstring): pointer =
  fcQsciLexerEDIFACT_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerEDIFACT_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTmetacall*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerEDIFACT_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerEDIFACT_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerEDIFACT_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerEDIFACTlexer*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerEDIFACT_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerEDIFACTlexerId*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerEDIFACTautoCompletionFillups*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerEDIFACTautoCompletionWordSeparators*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): seq[string] =
  var v_ma = fcQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerEDIFACTblockEnd*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fcQsciLexerEDIFACT_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTblockLookback*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerEDIFACTblockStart*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fcQsciLexerEDIFACT_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTblockStartKeyword*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: ptr cint): cstring =
  (fcQsciLexerEDIFACT_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTbraceStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerEDIFACTcaseSensitive*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): bool =
  fcQsciLexerEDIFACT_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerEDIFACTcolor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerEDIFACT_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTeolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): bool =
  fcQsciLexerEDIFACT_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTfont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerEDIFACT_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTindentationGuideView*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerEDIFACTkeywords*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, set: cint): cstring =
  (fcQsciLexerEDIFACT_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerEDIFACT_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTdefaultStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerEDIFACT_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerEDIFACTpaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerEDIFACT_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTdefaultColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTdefaultEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): bool =
  fcQsciLexerEDIFACT_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTdefaultFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTdefaultPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerEDIFACT_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerEDIFACTsetEditor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerEDIFACT_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerEDIFACTrefreshProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): void =
  fcQsciLexerEDIFACT_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerEDIFACTstyleBitsNeeded*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerEDIFACTwordCharacters*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cstring =
  (fcQsciLexerEDIFACT_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerEDIFACT_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerEDIFACTsetAutoIndentStyle*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, autoindentstyle: cint): void =
  fcQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerEDIFACT_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerEDIFACTsetColor*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerEDIFACT_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerEDIFACTsetEolFill*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, eoffill: bool, style: cint): void =
  fcQsciLexerEDIFACT_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerEDIFACTsetFont*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerEDIFACT_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerEDIFACTsetPaper*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerEDIFACT_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerEDIFACT_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerEDIFACTreadProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerEDIFACT_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerEDIFACT_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerEDIFACTwriteProperties*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerEDIFACT_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerEDIFACT_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerEDIFACTevent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerEDIFACT_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerEDIFACTeventFilter*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerEDIFACT_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerEDIFACTtimerEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerEDIFACT_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerEDIFACTchildEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerEDIFACT_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerEDIFACTcustomEvent*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerEDIFACT_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerEDIFACTconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerEDIFACT_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerEDIFACTdisconnectNotify*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerEDIFACT_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerEDIFACT_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerEDIFACTVTable](vtbl)
  let self = QsciLexerEDIFACT(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerEDIFACT_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, ): cint =
  fcQsciLexerEDIFACT_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: cstring): cint =
  fcQsciLexerEDIFACT_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerEDIFACT_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexeredifact_types.QsciLexerEDIFACT,
    vtbl: ref QsciLexerEDIFACTVTable = nil): gen_qscilexeredifact_types.QsciLexerEDIFACT =
  let vtbl = if vtbl == nil: new QsciLexerEDIFACTVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerEDIFACTVTable, _: ptr cQsciLexerEDIFACT) {.cdecl.} =
    let vtbl = cast[ref QsciLexerEDIFACTVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerEDIFACT_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerEDIFACT_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerEDIFACT_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerEDIFACT_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerEDIFACT_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerEDIFACT_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerEDIFACT_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerEDIFACT_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerEDIFACT_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerEDIFACT_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerEDIFACT_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerEDIFACT_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerEDIFACT_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerEDIFACT_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerEDIFACT_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerEDIFACT_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerEDIFACT_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerEDIFACT_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerEDIFACT_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerEDIFACT_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerEDIFACT_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerEDIFACT_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerEDIFACT_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerEDIFACT_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerEDIFACT_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerEDIFACT_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerEDIFACT_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerEDIFACT_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerEDIFACT_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerEDIFACT_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerEDIFACT_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerEDIFACT_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerEDIFACT_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerEDIFACT_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerEDIFACT_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerEDIFACT_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerEDIFACT_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerEDIFACT_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerEDIFACT_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerEDIFACT_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerEDIFACT_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerEDIFACT_disconnectNotify
  gen_qscilexeredifact_types.QsciLexerEDIFACT(h: fcQsciLexerEDIFACT_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexeredifact_types.QsciLexerEDIFACT,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerEDIFACTVTable = nil): gen_qscilexeredifact_types.QsciLexerEDIFACT =
  let vtbl = if vtbl == nil: new QsciLexerEDIFACTVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerEDIFACTVTable, _: ptr cQsciLexerEDIFACT) {.cdecl.} =
    let vtbl = cast[ref QsciLexerEDIFACTVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerEDIFACT_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerEDIFACT_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerEDIFACT_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerEDIFACT_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerEDIFACT_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerEDIFACT_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerEDIFACT_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerEDIFACT_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerEDIFACT_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerEDIFACT_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerEDIFACT_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerEDIFACT_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerEDIFACT_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerEDIFACT_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerEDIFACT_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerEDIFACT_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerEDIFACT_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerEDIFACT_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerEDIFACT_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerEDIFACT_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerEDIFACT_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerEDIFACT_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerEDIFACT_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerEDIFACT_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerEDIFACT_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerEDIFACT_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerEDIFACT_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerEDIFACT_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerEDIFACT_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerEDIFACT_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerEDIFACT_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerEDIFACT_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerEDIFACT_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerEDIFACT_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerEDIFACT_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerEDIFACT_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerEDIFACT_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerEDIFACT_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerEDIFACT_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerEDIFACT_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerEDIFACT_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerEDIFACT_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerEDIFACT_disconnectNotify
  gen_qscilexeredifact_types.QsciLexerEDIFACT(h: fcQsciLexerEDIFACT_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexeredifact_types.QsciLexerEDIFACT): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerEDIFACT_staticMetaObject())
proc delete*(self: gen_qscilexeredifact_types.QsciLexerEDIFACT) =
  fcQsciLexerEDIFACT_delete(self.h)
