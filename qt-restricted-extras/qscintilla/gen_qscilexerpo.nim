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
{.compile("gen_qscilexerpo.cpp", cflags).}


type QsciLexerPOEnumEnum* = distinct cint
template Default*(_: type QsciLexerPOEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPOEnumEnum): untyped = 1
template MessageId*(_: type QsciLexerPOEnumEnum): untyped = 2
template MessageIdText*(_: type QsciLexerPOEnumEnum): untyped = 3
template MessageString*(_: type QsciLexerPOEnumEnum): untyped = 4
template MessageStringText*(_: type QsciLexerPOEnumEnum): untyped = 5
template MessageContext*(_: type QsciLexerPOEnumEnum): untyped = 6
template MessageContextText*(_: type QsciLexerPOEnumEnum): untyped = 7
template Fuzzy*(_: type QsciLexerPOEnumEnum): untyped = 8
template ProgrammerComment*(_: type QsciLexerPOEnumEnum): untyped = 9
template Reference*(_: type QsciLexerPOEnumEnum): untyped = 10
template Flags*(_: type QsciLexerPOEnumEnum): untyped = 11
template MessageIdTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 12
template MessageStringTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 13
template MessageContextTextEOL*(_: type QsciLexerPOEnumEnum): untyped = 14

import gen_qscilexerpo_types
export gen_qscilexerpo_types

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

type cQsciLexerPO*{.exportc: "QsciLexerPO", incompleteStruct.} = object

proc fcQsciLexerPO_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPO_metaObject".}
proc fcQsciLexerPO_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPO_metacast".}
proc fcQsciLexerPO_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPO_metacall".}
proc fcQsciLexerPO_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerPO_tr".}
proc fcQsciLexerPO_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerPO_trUtf8".}
proc fcQsciLexerPO_language(self: pointer, ): cstring {.importc: "QsciLexerPO_language".}
proc fcQsciLexerPO_lexer(self: pointer, ): cstring {.importc: "QsciLexerPO_lexer".}
proc fcQsciLexerPO_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_defaultColor".}
proc fcQsciLexerPO_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_defaultFont".}
proc fcQsciLexerPO_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerPO_description".}
proc fcQsciLexerPO_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPO_refreshProperties".}
proc fcQsciLexerPO_foldComments(self: pointer, ): bool {.importc: "QsciLexerPO_foldComments".}
proc fcQsciLexerPO_foldCompact(self: pointer, ): bool {.importc: "QsciLexerPO_foldCompact".}
proc fcQsciLexerPO_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPO_setFoldComments".}
proc fcQsciLexerPO_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPO_setFoldCompact".}
proc fcQsciLexerPO_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPO_tr2".}
proc fcQsciLexerPO_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPO_tr3".}
proc fcQsciLexerPO_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerPO_trUtf82".}
proc fcQsciLexerPO_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerPO_trUtf83".}
type cQsciLexerPOVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPOVTable, self: ptr cQsciLexerPO) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldComments*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerPO_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerPO_virtualbase_metaObject".}
proc fcQsciLexerPO_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerPO_virtualbase_metacast".}
proc fcQsciLexerPO_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerPO_virtualbase_metacall".}
proc fcQsciLexerPO_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerPO_virtualbase_setFoldComments".}
proc fcQsciLexerPO_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerPO_virtualbase_setFoldCompact".}
proc fcQsciLexerPO_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerPO_virtualbase_lexer".}
proc fcQsciLexerPO_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_lexerId".}
proc fcQsciLexerPO_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerPO_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPO_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerPO_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPO_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPO_virtualbase_blockEnd".}
proc fcQsciLexerPO_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_blockLookback".}
proc fcQsciLexerPO_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPO_virtualbase_blockStart".}
proc fcQsciLexerPO_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerPO_virtualbase_blockStartKeyword".}
proc fcQsciLexerPO_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_braceStyle".}
proc fcQsciLexerPO_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerPO_virtualbase_caseSensitive".}
proc fcQsciLexerPO_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_color".}
proc fcQsciLexerPO_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPO_virtualbase_eolFill".}
proc fcQsciLexerPO_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_font".}
proc fcQsciLexerPO_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_indentationGuideView".}
proc fcQsciLexerPO_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerPO_virtualbase_keywords".}
proc fcQsciLexerPO_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_defaultStyle".}
proc fcQsciLexerPO_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_paper".}
proc fcQsciLexerPO_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPO_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerPO_virtualbase_defaultEolFill".}
proc fcQsciLexerPO_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPO_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerPO_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPO_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerPO_virtualbase_setEditor".}
proc fcQsciLexerPO_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerPO_virtualbase_refreshProperties".}
proc fcQsciLexerPO_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerPO_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPO_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerPO_virtualbase_wordCharacters".}
proc fcQsciLexerPO_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerPO_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPO_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPO_virtualbase_setColor".}
proc fcQsciLexerPO_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerPO_virtualbase_setEolFill".}
proc fcQsciLexerPO_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerPO_virtualbase_setFont".}
proc fcQsciLexerPO_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerPO_virtualbase_setPaper".}
proc fcQsciLexerPO_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPO_virtualbase_readProperties".}
proc fcQsciLexerPO_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPO_virtualbase_writeProperties".}
proc fcQsciLexerPO_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerPO_virtualbase_event".}
proc fcQsciLexerPO_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerPO_virtualbase_eventFilter".}
proc fcQsciLexerPO_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPO_virtualbase_timerEvent".}
proc fcQsciLexerPO_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPO_virtualbase_childEvent".}
proc fcQsciLexerPO_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerPO_virtualbase_customEvent".}
proc fcQsciLexerPO_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPO_virtualbase_connectNotify".}
proc fcQsciLexerPO_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerPO_virtualbase_disconnectNotify".}
proc fcQsciLexerPO_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPO_protectedbase_readProperties".}
proc fcQsciLexerPO_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerPO_protectedbase_writeProperties".}
proc fcQsciLexerPO_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerPO_protectedbase_sender".}
proc fcQsciLexerPO_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerPO_protectedbase_senderSignalIndex".}
proc fcQsciLexerPO_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerPO_protectedbase_receivers".}
proc fcQsciLexerPO_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerPO_protectedbase_isSignalConnected".}
proc fcQsciLexerPO_new(vtbl: pointer, ): ptr cQsciLexerPO {.importc: "QsciLexerPO_new".}
proc fcQsciLexerPO_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerPO {.importc: "QsciLexerPO_new2".}
proc fcQsciLexerPO_staticMetaObject(): pointer {.importc: "QsciLexerPO_staticMetaObject".}
proc fcQsciLexerPO_delete(self: pointer) {.importc: "QsciLexerPO_delete".}

proc metaObject*(self: gen_qscilexerpo_types.QsciLexerPO, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPO_metaObject(self.h))

proc metacast*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cstring): pointer =
  fcQsciLexerPO_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPO_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring): string =
  let v_ms = fcQsciLexerPO_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring): string =
  let v_ms = fcQsciLexerPO_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_language(self.h))

proc lexer*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_lexer(self.h))

proc defaultColor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPO_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPO_defaultFont(self.h, style))

proc description*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): string =
  let v_ms = fcQsciLexerPO_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerpo_types.QsciLexerPO, ): void =
  fcQsciLexerPO_refreshProperties(self.h)

proc foldComments*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fcQsciLexerPO_foldComments(self.h)

proc foldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fcQsciLexerPO_foldCompact(self.h)

proc setFoldComments*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_setFoldComments(self.h, fold)

proc setFoldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPO_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPO_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerPO_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerpo_types.QsciLexerPO, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerPO_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerPOmetaObjectProc* = proc(self: QsciLexerPO): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPOmetacastProc* = proc(self: QsciLexerPO, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPOmetacallProc* = proc(self: QsciLexerPO, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPOsetFoldCommentsProc* = proc(self: QsciLexerPO, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPOsetFoldCompactProc* = proc(self: QsciLexerPO, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPOlanguageProc* = proc(self: QsciLexerPO): cstring {.raises: [], gcsafe.}
type QsciLexerPOlexerProc* = proc(self: QsciLexerPO): cstring {.raises: [], gcsafe.}
type QsciLexerPOlexerIdProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOautoCompletionFillupsProc* = proc(self: QsciLexerPO): cstring {.raises: [], gcsafe.}
type QsciLexerPOautoCompletionWordSeparatorsProc* = proc(self: QsciLexerPO): seq[string] {.raises: [], gcsafe.}
type QsciLexerPOblockEndProc* = proc(self: QsciLexerPO, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOblockLookbackProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOblockStartProc* = proc(self: QsciLexerPO, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOblockStartKeywordProc* = proc(self: QsciLexerPO, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPObraceStyleProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOcaseSensitiveProc* = proc(self: QsciLexerPO): bool {.raises: [], gcsafe.}
type QsciLexerPOcolorProc* = proc(self: QsciLexerPO, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOeolFillProc* = proc(self: QsciLexerPO, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPOfontProc* = proc(self: QsciLexerPO, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPOindentationGuideViewProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOkeywordsProc* = proc(self: QsciLexerPO, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPOdefaultStyleProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOdescriptionProc* = proc(self: QsciLexerPO, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPOpaperProc* = proc(self: QsciLexerPO, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOdefaultColorProc* = proc(self: QsciLexerPO, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOdefaultEolFillProc* = proc(self: QsciLexerPO, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPOdefaultFontProc* = proc(self: QsciLexerPO, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPOdefaultPaperProc* = proc(self: QsciLexerPO, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPOsetEditorProc* = proc(self: QsciLexerPO, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPOrefreshPropertiesProc* = proc(self: QsciLexerPO): void {.raises: [], gcsafe.}
type QsciLexerPOstyleBitsNeededProc* = proc(self: QsciLexerPO): cint {.raises: [], gcsafe.}
type QsciLexerPOwordCharactersProc* = proc(self: QsciLexerPO): cstring {.raises: [], gcsafe.}
type QsciLexerPOsetAutoIndentStyleProc* = proc(self: QsciLexerPO, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPOsetColorProc* = proc(self: QsciLexerPO, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOsetEolFillProc* = proc(self: QsciLexerPO, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOsetFontProc* = proc(self: QsciLexerPO, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOsetPaperProc* = proc(self: QsciLexerPO, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPOreadPropertiesProc* = proc(self: QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPOwritePropertiesProc* = proc(self: QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPOeventProc* = proc(self: QsciLexerPO, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPOeventFilterProc* = proc(self: QsciLexerPO, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPOtimerEventProc* = proc(self: QsciLexerPO, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPOchildEventProc* = proc(self: QsciLexerPO, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPOcustomEventProc* = proc(self: QsciLexerPO, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPOconnectNotifyProc* = proc(self: QsciLexerPO, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPOdisconnectNotifyProc* = proc(self: QsciLexerPO, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPOVTable* = object
  vtbl: cQsciLexerPOVTable
  metaObject*: QsciLexerPOmetaObjectProc
  metacast*: QsciLexerPOmetacastProc
  metacall*: QsciLexerPOmetacallProc
  setFoldComments*: QsciLexerPOsetFoldCommentsProc
  setFoldCompact*: QsciLexerPOsetFoldCompactProc
  language*: QsciLexerPOlanguageProc
  lexer*: QsciLexerPOlexerProc
  lexerId*: QsciLexerPOlexerIdProc
  autoCompletionFillups*: QsciLexerPOautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPOautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPOblockEndProc
  blockLookback*: QsciLexerPOblockLookbackProc
  blockStart*: QsciLexerPOblockStartProc
  blockStartKeyword*: QsciLexerPOblockStartKeywordProc
  braceStyle*: QsciLexerPObraceStyleProc
  caseSensitive*: QsciLexerPOcaseSensitiveProc
  color*: QsciLexerPOcolorProc
  eolFill*: QsciLexerPOeolFillProc
  font*: QsciLexerPOfontProc
  indentationGuideView*: QsciLexerPOindentationGuideViewProc
  keywords*: QsciLexerPOkeywordsProc
  defaultStyle*: QsciLexerPOdefaultStyleProc
  description*: QsciLexerPOdescriptionProc
  paper*: QsciLexerPOpaperProc
  defaultColor*: QsciLexerPOdefaultColorProc
  defaultEolFill*: QsciLexerPOdefaultEolFillProc
  defaultFont*: QsciLexerPOdefaultFontProc
  defaultPaper*: QsciLexerPOdefaultPaperProc
  setEditor*: QsciLexerPOsetEditorProc
  refreshProperties*: QsciLexerPOrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPOstyleBitsNeededProc
  wordCharacters*: QsciLexerPOwordCharactersProc
  setAutoIndentStyle*: QsciLexerPOsetAutoIndentStyleProc
  setColor*: QsciLexerPOsetColorProc
  setEolFill*: QsciLexerPOsetEolFillProc
  setFont*: QsciLexerPOsetFontProc
  setPaper*: QsciLexerPOsetPaperProc
  readProperties*: QsciLexerPOreadPropertiesProc
  writeProperties*: QsciLexerPOwritePropertiesProc
  event*: QsciLexerPOeventProc
  eventFilter*: QsciLexerPOeventFilterProc
  timerEvent*: QsciLexerPOtimerEventProc
  childEvent*: QsciLexerPOchildEventProc
  customEvent*: QsciLexerPOcustomEventProc
  connectNotify*: QsciLexerPOconnectNotifyProc
  disconnectNotify*: QsciLexerPOdisconnectNotifyProc
proc QsciLexerPOmetaObject*(self: gen_qscilexerpo_types.QsciLexerPO, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPO_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerPO_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPOmetacast*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cstring): pointer =
  fcQsciLexerPO_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerPO_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPOmetacall*(self: gen_qscilexerpo_types.QsciLexerPO, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerPO_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerPO_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPOsetFoldComments*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerPO_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerPOsetFoldCompact*(self: gen_qscilexerpo_types.QsciLexerPO, fold: bool): void =
  fcQsciLexerPO_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerPO_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerPO_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPOlexer*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerPO_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPOlexerId*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerPO_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPOautoCompletionFillups*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerPO_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPOautoCompletionWordSeparators*(self: gen_qscilexerpo_types.QsciLexerPO, ): seq[string] =
  var v_ma = fcQsciLexerPO_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerPO_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPOblockEnd*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fcQsciLexerPO_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPOblockLookback*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerPO_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPOblockStart*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fcQsciLexerPO_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPOblockStartKeyword*(self: gen_qscilexerpo_types.QsciLexerPO, style: ptr cint): cstring =
  (fcQsciLexerPO_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPObraceStyle*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerPO_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPOcaseSensitive*(self: gen_qscilexerpo_types.QsciLexerPO, ): bool =
  fcQsciLexerPO_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerPO_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPOcolor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPO_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPOeolFill*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): bool =
  fcQsciLexerPO_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPO_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPOfont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPO_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPOindentationGuideView*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerPO_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPOkeywords*(self: gen_qscilexerpo_types.QsciLexerPO, set: cint): cstring =
  (fcQsciLexerPO_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerPO_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPOdefaultStyle*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerPO_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerPO_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPOpaper*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPO_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPOdefaultColor*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPO_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPOdefaultEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): bool =
  fcQsciLexerPO_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerPO_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPOdefaultFont*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerPO_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPOdefaultPaper*(self: gen_qscilexerpo_types.QsciLexerPO, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerPO_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerPO_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPOsetEditor*(self: gen_qscilexerpo_types.QsciLexerPO, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerPO_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerPO_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPOrefreshProperties*(self: gen_qscilexerpo_types.QsciLexerPO, ): void =
  fcQsciLexerPO_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerPO_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPOstyleBitsNeeded*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerPO_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPOwordCharacters*(self: gen_qscilexerpo_types.QsciLexerPO, ): cstring =
  (fcQsciLexerPO_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerPO_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPOsetAutoIndentStyle*(self: gen_qscilexerpo_types.QsciLexerPO, autoindentstyle: cint): void =
  fcQsciLexerPO_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerPO_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPOsetColor*(self: gen_qscilexerpo_types.QsciLexerPO, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPO_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPO_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPOsetEolFill*(self: gen_qscilexerpo_types.QsciLexerPO, eoffill: bool, style: cint): void =
  fcQsciLexerPO_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerPO_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPOsetFont*(self: gen_qscilexerpo_types.QsciLexerPO, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerPO_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerPO_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPOsetPaper*(self: gen_qscilexerpo_types.QsciLexerPO, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerPO_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerPO_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPOreadProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPO_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPO_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOwriteProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPO_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerPO_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOevent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPO_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPO_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPOeventFilter*(self: gen_qscilexerpo_types.QsciLexerPO, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerPO_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerPO_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPOtimerEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerPO_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPO_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPOchildEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerPO_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPO_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPOcustomEvent*(self: gen_qscilexerpo_types.QsciLexerPO, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerPO_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerPO_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPOconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPO_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPO_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPOdisconnectNotify*(self: gen_qscilexerpo_types.QsciLexerPO, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerPO_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerPO_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPOVTable](vtbl)
  let self = QsciLexerPO(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPO_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerpo_types.QsciLexerPO, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerPO_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerpo_types.QsciLexerPO, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerPO_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerpo_types.QsciLexerPO, ): cint =
  fcQsciLexerPO_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerpo_types.QsciLexerPO, signal: cstring): cint =
  fcQsciLexerPO_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerpo_types.QsciLexerPO, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerPO_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerpo_types.QsciLexerPO,
    vtbl: ref QsciLexerPOVTable = nil): gen_qscilexerpo_types.QsciLexerPO =
  let vtbl = if vtbl == nil: new QsciLexerPOVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPOVTable, _: ptr cQsciLexerPO) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPOVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPO_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPO_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPO_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPO_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPO_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPO_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPO_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPO_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPO_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPO_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPO_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPO_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPO_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPO_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPO_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPO_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPO_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPO_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPO_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPO_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPO_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPO_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPO_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPO_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPO_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPO_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPO_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPO_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPO_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPO_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPO_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPO_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPO_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPO_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPO_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPO_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPO_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPO_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPO_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPO_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPO_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPO_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPO_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPO_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPO_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPO_disconnectNotify
  gen_qscilexerpo_types.QsciLexerPO(h: fcQsciLexerPO_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerpo_types.QsciLexerPO,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPOVTable = nil): gen_qscilexerpo_types.QsciLexerPO =
  let vtbl = if vtbl == nil: new QsciLexerPOVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPOVTable, _: ptr cQsciLexerPO) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPOVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerPO_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerPO_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerPO_metacall
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerPO_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerPO_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerPO_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerPO_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerPO_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerPO_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerPO_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerPO_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerPO_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerPO_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerPO_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerPO_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerPO_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerPO_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerPO_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerPO_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerPO_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerPO_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerPO_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerPO_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerPO_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerPO_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerPO_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerPO_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerPO_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerPO_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerPO_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerPO_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerPO_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerPO_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerPO_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerPO_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerPO_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerPO_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerPO_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerPO_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerPO_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerPO_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerPO_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerPO_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerPO_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerPO_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerPO_disconnectNotify
  gen_qscilexerpo_types.QsciLexerPO(h: fcQsciLexerPO_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerpo_types.QsciLexerPO): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerPO_staticMetaObject())
proc delete*(self: gen_qscilexerpo_types.QsciLexerPO) =
  fcQsciLexerPO_delete(self.h)
