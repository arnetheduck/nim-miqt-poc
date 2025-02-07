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
{.compile("gen_qscilexercsharp.cpp", cflags).}

import gen_qscilexercsharp_types
export gen_qscilexercsharp_types

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

type cQsciLexerCSharp*{.exportc: "QsciLexerCSharp", incompleteStruct.} = object

proc fcQsciLexerCSharp_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCSharp_metaObject".}
proc fcQsciLexerCSharp_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCSharp_metacast".}
proc fcQsciLexerCSharp_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCSharp_metacall".}
proc fcQsciLexerCSharp_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_tr".}
proc fcQsciLexerCSharp_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf8".}
proc fcQsciLexerCSharp_language(self: pointer, ): cstring {.importc: "QsciLexerCSharp_language".}
proc fcQsciLexerCSharp_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultColor".}
proc fcQsciLexerCSharp_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSharp_defaultEolFill".}
proc fcQsciLexerCSharp_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultFont".}
proc fcQsciLexerCSharp_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_defaultPaper".}
proc fcQsciLexerCSharp_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSharp_keywords".}
proc fcQsciLexerCSharp_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerCSharp_description".}
proc fcQsciLexerCSharp_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_tr2".}
proc fcQsciLexerCSharp_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSharp_tr3".}
proc fcQsciLexerCSharp_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf82".}
proc fcQsciLexerCSharp_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCSharp_trUtf83".}
type cQsciLexerCSharpVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerCSharpVTable, self: ptr cQsciLexerCSharp) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerCSharp_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCSharp_virtualbase_metaObject".}
proc fcQsciLexerCSharp_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCSharp_virtualbase_metacast".}
proc fcQsciLexerCSharp_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCSharp_virtualbase_metacall".}
proc fcQsciLexerCSharp_virtualbase_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerCSharp_virtualbase_setFoldAtElse".}
proc fcQsciLexerCSharp_virtualbase_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerCSharp_virtualbase_setFoldComments".}
proc fcQsciLexerCSharp_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerCSharp_virtualbase_setFoldCompact".}
proc fcQsciLexerCSharp_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerCSharp_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerCSharp_virtualbase_setStylePreprocessor(self: pointer, style: bool): void {.importc: "QsciLexerCSharp_virtualbase_setStylePreprocessor".}
proc fcQsciLexerCSharp_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerCSharp_virtualbase_lexer".}
proc fcQsciLexerCSharp_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_lexerId".}
proc fcQsciLexerCSharp_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerCSharp_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCSharp_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerCSharp_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCSharp_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSharp_virtualbase_blockEnd".}
proc fcQsciLexerCSharp_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_blockLookback".}
proc fcQsciLexerCSharp_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSharp_virtualbase_blockStart".}
proc fcQsciLexerCSharp_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerCSharp_virtualbase_blockStartKeyword".}
proc fcQsciLexerCSharp_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_braceStyle".}
proc fcQsciLexerCSharp_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerCSharp_virtualbase_caseSensitive".}
proc fcQsciLexerCSharp_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_color".}
proc fcQsciLexerCSharp_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSharp_virtualbase_eolFill".}
proc fcQsciLexerCSharp_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_font".}
proc fcQsciLexerCSharp_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_indentationGuideView".}
proc fcQsciLexerCSharp_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerCSharp_virtualbase_keywords".}
proc fcQsciLexerCSharp_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_defaultStyle".}
proc fcQsciLexerCSharp_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_paper".}
proc fcQsciLexerCSharp_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCSharp_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerCSharp_virtualbase_defaultEolFill".}
proc fcQsciLexerCSharp_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCSharp_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerCSharp_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCSharp_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCSharp_virtualbase_setEditor".}
proc fcQsciLexerCSharp_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerCSharp_virtualbase_refreshProperties".}
proc fcQsciLexerCSharp_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCSharp_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCSharp_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerCSharp_virtualbase_wordCharacters".}
proc fcQsciLexerCSharp_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerCSharp_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCSharp_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCSharp_virtualbase_setColor".}
proc fcQsciLexerCSharp_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerCSharp_virtualbase_setEolFill".}
proc fcQsciLexerCSharp_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerCSharp_virtualbase_setFont".}
proc fcQsciLexerCSharp_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerCSharp_virtualbase_setPaper".}
proc fcQsciLexerCSharp_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSharp_virtualbase_readProperties".}
proc fcQsciLexerCSharp_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSharp_virtualbase_writeProperties".}
proc fcQsciLexerCSharp_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerCSharp_virtualbase_event".}
proc fcQsciLexerCSharp_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerCSharp_virtualbase_eventFilter".}
proc fcQsciLexerCSharp_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSharp_virtualbase_timerEvent".}
proc fcQsciLexerCSharp_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSharp_virtualbase_childEvent".}
proc fcQsciLexerCSharp_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerCSharp_virtualbase_customEvent".}
proc fcQsciLexerCSharp_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCSharp_virtualbase_connectNotify".}
proc fcQsciLexerCSharp_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerCSharp_virtualbase_disconnectNotify".}
proc fcQsciLexerCSharp_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSharp_protectedbase_readProperties".}
proc fcQsciLexerCSharp_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerCSharp_protectedbase_writeProperties".}
proc fcQsciLexerCSharp_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerCSharp_protectedbase_sender".}
proc fcQsciLexerCSharp_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerCSharp_protectedbase_senderSignalIndex".}
proc fcQsciLexerCSharp_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerCSharp_protectedbase_receivers".}
proc fcQsciLexerCSharp_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerCSharp_protectedbase_isSignalConnected".}
proc fcQsciLexerCSharp_new(vtbl: pointer, ): ptr cQsciLexerCSharp {.importc: "QsciLexerCSharp_new".}
proc fcQsciLexerCSharp_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerCSharp {.importc: "QsciLexerCSharp_new2".}
proc fcQsciLexerCSharp_staticMetaObject(): pointer {.importc: "QsciLexerCSharp_staticMetaObject".}
proc fcQsciLexerCSharp_delete(self: pointer) {.importc: "QsciLexerCSharp_delete".}

proc metaObject*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSharp_metaObject(self.h))

proc metacast*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cstring): pointer =
  fcQsciLexerCSharp_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCSharp_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring): string =
  let v_ms = fcQsciLexerCSharp_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring): string =
  let v_ms = fcQsciLexerCSharp_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fcQsciLexerCSharp_language(self.h))

proc defaultColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fcQsciLexerCSharp_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSharp_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexercsharp_types.QsciLexerCSharp, set: cint): cstring =
  (fcQsciLexerCSharp_keywords(self.h, set))

proc description*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): string =
  let v_ms = fcQsciLexerCSharp_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCSharp_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCSharp_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCSharp_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercsharp_types.QsciLexerCSharp, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCSharp_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerCSharpmetaObjectProc* = proc(self: QsciLexerCSharp): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerCSharpmetacastProc* = proc(self: QsciLexerCSharp, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerCSharpmetacallProc* = proc(self: QsciLexerCSharp, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerCSharpsetFoldAtElseProc* = proc(self: QsciLexerCSharp, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetFoldCommentsProc* = proc(self: QsciLexerCSharp, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetFoldCompactProc* = proc(self: QsciLexerCSharp, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetFoldPreprocessorProc* = proc(self: QsciLexerCSharp, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetStylePreprocessorProc* = proc(self: QsciLexerCSharp, style: bool): void {.raises: [], gcsafe.}
type QsciLexerCSharplanguageProc* = proc(self: QsciLexerCSharp): cstring {.raises: [], gcsafe.}
type QsciLexerCSharplexerProc* = proc(self: QsciLexerCSharp): cstring {.raises: [], gcsafe.}
type QsciLexerCSharplexerIdProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpautoCompletionFillupsProc* = proc(self: QsciLexerCSharp): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpautoCompletionWordSeparatorsProc* = proc(self: QsciLexerCSharp): seq[string] {.raises: [], gcsafe.}
type QsciLexerCSharpblockEndProc* = proc(self: QsciLexerCSharp, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpblockLookbackProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpblockStartProc* = proc(self: QsciLexerCSharp, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpblockStartKeywordProc* = proc(self: QsciLexerCSharp, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpbraceStyleProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpcaseSensitiveProc* = proc(self: QsciLexerCSharp): bool {.raises: [], gcsafe.}
type QsciLexerCSharpcolorProc* = proc(self: QsciLexerCSharp, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSharpeolFillProc* = proc(self: QsciLexerCSharp, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCSharpfontProc* = proc(self: QsciLexerCSharp, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCSharpindentationGuideViewProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpkeywordsProc* = proc(self: QsciLexerCSharp, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpdefaultStyleProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpdescriptionProc* = proc(self: QsciLexerCSharp, style: cint): string {.raises: [], gcsafe.}
type QsciLexerCSharppaperProc* = proc(self: QsciLexerCSharp, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSharpdefaultColorProc* = proc(self: QsciLexerCSharp, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSharpdefaultEolFillProc* = proc(self: QsciLexerCSharp, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerCSharpdefaultFontProc* = proc(self: QsciLexerCSharp, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerCSharpdefaultPaperProc* = proc(self: QsciLexerCSharp, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerCSharpsetEditorProc* = proc(self: QsciLexerCSharp, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerCSharprefreshPropertiesProc* = proc(self: QsciLexerCSharp): void {.raises: [], gcsafe.}
type QsciLexerCSharpstyleBitsNeededProc* = proc(self: QsciLexerCSharp): cint {.raises: [], gcsafe.}
type QsciLexerCSharpwordCharactersProc* = proc(self: QsciLexerCSharp): cstring {.raises: [], gcsafe.}
type QsciLexerCSharpsetAutoIndentStyleProc* = proc(self: QsciLexerCSharp, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetColorProc* = proc(self: QsciLexerCSharp, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetEolFillProc* = proc(self: QsciLexerCSharp, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetFontProc* = proc(self: QsciLexerCSharp, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSharpsetPaperProc* = proc(self: QsciLexerCSharp, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerCSharpreadPropertiesProc* = proc(self: QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCSharpwritePropertiesProc* = proc(self: QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerCSharpeventProc* = proc(self: QsciLexerCSharp, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCSharpeventFilterProc* = proc(self: QsciLexerCSharp, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerCSharptimerEventProc* = proc(self: QsciLexerCSharp, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerCSharpchildEventProc* = proc(self: QsciLexerCSharp, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerCSharpcustomEventProc* = proc(self: QsciLexerCSharp, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerCSharpconnectNotifyProc* = proc(self: QsciLexerCSharp, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCSharpdisconnectNotifyProc* = proc(self: QsciLexerCSharp, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerCSharpVTable* = object
  vtbl: cQsciLexerCSharpVTable
  metaObject*: QsciLexerCSharpmetaObjectProc
  metacast*: QsciLexerCSharpmetacastProc
  metacall*: QsciLexerCSharpmetacallProc
  setFoldAtElse*: QsciLexerCSharpsetFoldAtElseProc
  setFoldComments*: QsciLexerCSharpsetFoldCommentsProc
  setFoldCompact*: QsciLexerCSharpsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerCSharpsetFoldPreprocessorProc
  setStylePreprocessor*: QsciLexerCSharpsetStylePreprocessorProc
  language*: QsciLexerCSharplanguageProc
  lexer*: QsciLexerCSharplexerProc
  lexerId*: QsciLexerCSharplexerIdProc
  autoCompletionFillups*: QsciLexerCSharpautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerCSharpautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerCSharpblockEndProc
  blockLookback*: QsciLexerCSharpblockLookbackProc
  blockStart*: QsciLexerCSharpblockStartProc
  blockStartKeyword*: QsciLexerCSharpblockStartKeywordProc
  braceStyle*: QsciLexerCSharpbraceStyleProc
  caseSensitive*: QsciLexerCSharpcaseSensitiveProc
  color*: QsciLexerCSharpcolorProc
  eolFill*: QsciLexerCSharpeolFillProc
  font*: QsciLexerCSharpfontProc
  indentationGuideView*: QsciLexerCSharpindentationGuideViewProc
  keywords*: QsciLexerCSharpkeywordsProc
  defaultStyle*: QsciLexerCSharpdefaultStyleProc
  description*: QsciLexerCSharpdescriptionProc
  paper*: QsciLexerCSharppaperProc
  defaultColor*: QsciLexerCSharpdefaultColorProc
  defaultEolFill*: QsciLexerCSharpdefaultEolFillProc
  defaultFont*: QsciLexerCSharpdefaultFontProc
  defaultPaper*: QsciLexerCSharpdefaultPaperProc
  setEditor*: QsciLexerCSharpsetEditorProc
  refreshProperties*: QsciLexerCSharprefreshPropertiesProc
  styleBitsNeeded*: QsciLexerCSharpstyleBitsNeededProc
  wordCharacters*: QsciLexerCSharpwordCharactersProc
  setAutoIndentStyle*: QsciLexerCSharpsetAutoIndentStyleProc
  setColor*: QsciLexerCSharpsetColorProc
  setEolFill*: QsciLexerCSharpsetEolFillProc
  setFont*: QsciLexerCSharpsetFontProc
  setPaper*: QsciLexerCSharpsetPaperProc
  readProperties*: QsciLexerCSharpreadPropertiesProc
  writeProperties*: QsciLexerCSharpwritePropertiesProc
  event*: QsciLexerCSharpeventProc
  eventFilter*: QsciLexerCSharpeventFilterProc
  timerEvent*: QsciLexerCSharptimerEventProc
  childEvent*: QsciLexerCSharpchildEventProc
  customEvent*: QsciLexerCSharpcustomEventProc
  connectNotify*: QsciLexerCSharpconnectNotifyProc
  disconnectNotify*: QsciLexerCSharpdisconnectNotifyProc
proc QsciLexerCSharpmetaObject*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSharp_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerCSharp_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerCSharpmetacast*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cstring): pointer =
  fcQsciLexerCSharp_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerCSharp_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerCSharpmetacall*(self: gen_qscilexercsharp_types.QsciLexerCSharp, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCSharp_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerCSharp_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerCSharpsetFoldAtElse*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fcQsciLexerCSharp_virtualbase_setFoldAtElse(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSharp_setFoldAtElse(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = fold
  vtbl[].setFoldAtElse(self, slotval1)

proc QsciLexerCSharpsetFoldComments*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fcQsciLexerCSharp_virtualbase_setFoldComments(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSharp_setFoldComments(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = fold
  vtbl[].setFoldComments(self, slotval1)

proc QsciLexerCSharpsetFoldCompact*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fcQsciLexerCSharp_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSharp_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerCSharpsetFoldPreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, fold: bool): void =
  fcQsciLexerCSharp_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerCSharp_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerCSharpsetStylePreprocessor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: bool): void =
  fcQsciLexerCSharp_virtualbase_setStylePreprocessor(self.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_setStylePreprocessor(vtbl: pointer, self: pointer, style: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  vtbl[].setStylePreprocessor(self, slotval1)

proc miqt_exec_callback_cQsciLexerCSharp_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerCSharplexer*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fcQsciLexerCSharp_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerCSharp_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerCSharplexerId*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerCSharpautoCompletionFillups*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fcQsciLexerCSharp_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerCSharp_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerCSharpautoCompletionWordSeparators*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): seq[string] =
  var v_ma = fcQsciLexerCSharp_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerCSharp_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerCSharpblockEnd*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fcQsciLexerCSharp_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerCSharpblockLookback*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerCSharpblockStart*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fcQsciLexerCSharp_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerCSharpblockStartKeyword*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: ptr cint): cstring =
  (fcQsciLexerCSharp_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerCSharpbraceStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerCSharpcaseSensitive*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): bool =
  fcQsciLexerCSharp_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerCSharpcolor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpeolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fcQsciLexerCSharp_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerCSharpfont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSharp_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpindentationGuideView*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerCSharpkeywords*(self: gen_qscilexercsharp_types.QsciLexerCSharp, set: cint): cstring =
  (fcQsciLexerCSharp_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerCSharp_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerCSharpdefaultStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerCSharp_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerCSharppaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpdefaultColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpdefaultEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): bool =
  fcQsciLexerCSharp_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerCSharpdefaultFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerCSharp_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpdefaultPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerCSharp_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerCSharp_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerCSharpsetEditor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerCSharp_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerCSharp_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerCSharprefreshProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): void =
  fcQsciLexerCSharp_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerCSharpstyleBitsNeeded*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerCSharp_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerCSharpwordCharacters*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cstring =
  (fcQsciLexerCSharp_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerCSharp_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerCSharpsetAutoIndentStyle*(self: gen_qscilexercsharp_types.QsciLexerCSharp, autoindentstyle: cint): void =
  fcQsciLexerCSharp_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerCSharp_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerCSharpsetColor*(self: gen_qscilexercsharp_types.QsciLexerCSharp, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCSharp_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerCSharpsetEolFill*(self: gen_qscilexercsharp_types.QsciLexerCSharp, eoffill: bool, style: cint): void =
  fcQsciLexerCSharp_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerCSharp_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerCSharpsetFont*(self: gen_qscilexercsharp_types.QsciLexerCSharp, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerCSharp_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerCSharpsetPaper*(self: gen_qscilexercsharp_types.QsciLexerCSharp, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerCSharp_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerCSharp_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerCSharpreadProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSharp_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCSharp_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSharpwriteProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSharp_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerCSharp_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSharpevent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCSharp_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSharp_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerCSharpeventFilter*(self: gen_qscilexercsharp_types.QsciLexerCSharp, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerCSharp_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerCSharp_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerCSharptimerEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerCSharp_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSharp_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerCSharpchildEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerCSharp_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSharp_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerCSharpcustomEvent*(self: gen_qscilexercsharp_types.QsciLexerCSharp, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerCSharp_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerCSharp_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerCSharpconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCSharp_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCSharp_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerCSharpdisconnectNotify*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerCSharp_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerCSharp_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerCSharpVTable](vtbl)
  let self = QsciLexerCSharp(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSharp_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexercsharp_types.QsciLexerCSharp, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerCSharp_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerCSharp_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexercsharp_types.QsciLexerCSharp, ): cint =
  fcQsciLexerCSharp_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: cstring): cint =
  fcQsciLexerCSharp_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexercsharp_types.QsciLexerCSharp, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerCSharp_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexercsharp_types.QsciLexerCSharp,
    vtbl: ref QsciLexerCSharpVTable = nil): gen_qscilexercsharp_types.QsciLexerCSharp =
  let vtbl = if vtbl == nil: new QsciLexerCSharpVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCSharpVTable, _: ptr cQsciLexerCSharp) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCSharpVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCSharp_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCSharp_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCSharp_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCSharp_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCSharp_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCSharp_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerCSharp_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerCSharp_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCSharp_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCSharp_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCSharp_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCSharp_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCSharp_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCSharp_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCSharp_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCSharp_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCSharp_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCSharp_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCSharp_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCSharp_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCSharp_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCSharp_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCSharp_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCSharp_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCSharp_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCSharp_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCSharp_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCSharp_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCSharp_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCSharp_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCSharp_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCSharp_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCSharp_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCSharp_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCSharp_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCSharp_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCSharp_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCSharp_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCSharp_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCSharp_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCSharp_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCSharp_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCSharp_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCSharp_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCSharp_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCSharp_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCSharp_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCSharp_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCSharp_disconnectNotify
  gen_qscilexercsharp_types.QsciLexerCSharp(h: fcQsciLexerCSharp_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexercsharp_types.QsciLexerCSharp,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerCSharpVTable = nil): gen_qscilexercsharp_types.QsciLexerCSharp =
  let vtbl = if vtbl == nil: new QsciLexerCSharpVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerCSharpVTable, _: ptr cQsciLexerCSharp) {.cdecl.} =
    let vtbl = cast[ref QsciLexerCSharpVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerCSharp_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerCSharp_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerCSharp_metacall
  if not isNil(vtbl.setFoldAtElse):
    vtbl[].vtbl.setFoldAtElse = miqt_exec_callback_cQsciLexerCSharp_setFoldAtElse
  if not isNil(vtbl.setFoldComments):
    vtbl[].vtbl.setFoldComments = miqt_exec_callback_cQsciLexerCSharp_setFoldComments
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerCSharp_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerCSharp_setFoldPreprocessor
  if not isNil(vtbl.setStylePreprocessor):
    vtbl[].vtbl.setStylePreprocessor = miqt_exec_callback_cQsciLexerCSharp_setStylePreprocessor
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerCSharp_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerCSharp_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerCSharp_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerCSharp_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerCSharp_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerCSharp_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerCSharp_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerCSharp_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerCSharp_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerCSharp_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerCSharp_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerCSharp_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerCSharp_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerCSharp_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerCSharp_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerCSharp_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerCSharp_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerCSharp_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerCSharp_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerCSharp_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerCSharp_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerCSharp_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerCSharp_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerCSharp_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerCSharp_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerCSharp_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerCSharp_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerCSharp_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerCSharp_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerCSharp_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerCSharp_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerCSharp_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerCSharp_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerCSharp_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerCSharp_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerCSharp_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerCSharp_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerCSharp_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerCSharp_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerCSharp_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerCSharp_disconnectNotify
  gen_qscilexercsharp_types.QsciLexerCSharp(h: fcQsciLexerCSharp_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexercsharp_types.QsciLexerCSharp): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerCSharp_staticMetaObject())
proc delete*(self: gen_qscilexercsharp_types.QsciLexerCSharp) =
  fcQsciLexerCSharp_delete(self.h)
