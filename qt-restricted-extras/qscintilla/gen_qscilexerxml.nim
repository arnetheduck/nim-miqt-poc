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
{.compile("gen_qscilexerxml.cpp", cflags).}

import gen_qscilexerxml_types
export gen_qscilexerxml_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexerhtml,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexerhtml,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerXML*{.exportc: "QsciLexerXML", incompleteStruct.} = object

proc fcQsciLexerXML_metaObject(self: pointer, ): pointer {.importc: "QsciLexerXML_metaObject".}
proc fcQsciLexerXML_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerXML_metacast".}
proc fcQsciLexerXML_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerXML_metacall".}
proc fcQsciLexerXML_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerXML_tr".}
proc fcQsciLexerXML_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerXML_trUtf8".}
proc fcQsciLexerXML_language(self: pointer, ): cstring {.importc: "QsciLexerXML_language".}
proc fcQsciLexerXML_lexer(self: pointer, ): cstring {.importc: "QsciLexerXML_lexer".}
proc fcQsciLexerXML_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_defaultColor".}
proc fcQsciLexerXML_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerXML_defaultEolFill".}
proc fcQsciLexerXML_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_defaultFont".}
proc fcQsciLexerXML_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_defaultPaper".}
proc fcQsciLexerXML_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerXML_keywords".}
proc fcQsciLexerXML_refreshProperties(self: pointer, ): void {.importc: "QsciLexerXML_refreshProperties".}
proc fcQsciLexerXML_setScriptsStyled(self: pointer, styled: bool): void {.importc: "QsciLexerXML_setScriptsStyled".}
proc fcQsciLexerXML_scriptsStyled(self: pointer, ): bool {.importc: "QsciLexerXML_scriptsStyled".}
proc fcQsciLexerXML_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerXML_tr2".}
proc fcQsciLexerXML_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerXML_tr3".}
proc fcQsciLexerXML_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerXML_trUtf82".}
proc fcQsciLexerXML_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerXML_trUtf83".}
type cQsciLexerXMLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerXMLVTable, self: ptr cQsciLexerXML) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldPreprocessor*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setCaseSensitiveTags*: proc(vtbl, self: pointer, sens: bool): void {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerXML_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerXML_virtualbase_metaObject".}
proc fcQsciLexerXML_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerXML_virtualbase_metacast".}
proc fcQsciLexerXML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerXML_virtualbase_metacall".}
proc fcQsciLexerXML_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerXML_virtualbase_setFoldCompact".}
proc fcQsciLexerXML_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerXML_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerXML_virtualbase_setCaseSensitiveTags(self: pointer, sens: bool): void {.importc: "QsciLexerXML_virtualbase_setCaseSensitiveTags".}
proc fcQsciLexerXML_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerXML_virtualbase_lexer".}
proc fcQsciLexerXML_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_lexerId".}
proc fcQsciLexerXML_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerXML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerXML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerXML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerXML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerXML_virtualbase_blockEnd".}
proc fcQsciLexerXML_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_blockLookback".}
proc fcQsciLexerXML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerXML_virtualbase_blockStart".}
proc fcQsciLexerXML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerXML_virtualbase_blockStartKeyword".}
proc fcQsciLexerXML_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_braceStyle".}
proc fcQsciLexerXML_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerXML_virtualbase_caseSensitive".}
proc fcQsciLexerXML_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_color".}
proc fcQsciLexerXML_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerXML_virtualbase_eolFill".}
proc fcQsciLexerXML_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_font".}
proc fcQsciLexerXML_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_indentationGuideView".}
proc fcQsciLexerXML_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerXML_virtualbase_keywords".}
proc fcQsciLexerXML_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_defaultStyle".}
proc fcQsciLexerXML_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_paper".}
proc fcQsciLexerXML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerXML_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerXML_virtualbase_defaultEolFill".}
proc fcQsciLexerXML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerXML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerXML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerXML_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerXML_virtualbase_setEditor".}
proc fcQsciLexerXML_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerXML_virtualbase_refreshProperties".}
proc fcQsciLexerXML_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerXML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerXML_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerXML_virtualbase_wordCharacters".}
proc fcQsciLexerXML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerXML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerXML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerXML_virtualbase_setColor".}
proc fcQsciLexerXML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerXML_virtualbase_setEolFill".}
proc fcQsciLexerXML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerXML_virtualbase_setFont".}
proc fcQsciLexerXML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerXML_virtualbase_setPaper".}
proc fcQsciLexerXML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerXML_virtualbase_readProperties".}
proc fcQsciLexerXML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerXML_virtualbase_writeProperties".}
proc fcQsciLexerXML_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerXML_virtualbase_event".}
proc fcQsciLexerXML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerXML_virtualbase_eventFilter".}
proc fcQsciLexerXML_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerXML_virtualbase_timerEvent".}
proc fcQsciLexerXML_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerXML_virtualbase_childEvent".}
proc fcQsciLexerXML_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerXML_virtualbase_customEvent".}
proc fcQsciLexerXML_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerXML_virtualbase_connectNotify".}
proc fcQsciLexerXML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerXML_virtualbase_disconnectNotify".}
proc fcQsciLexerXML_new(vtbl: pointer, ): ptr cQsciLexerXML {.importc: "QsciLexerXML_new".}
proc fcQsciLexerXML_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerXML {.importc: "QsciLexerXML_new2".}
proc fcQsciLexerXML_staticMetaObject(): pointer {.importc: "QsciLexerXML_staticMetaObject".}
proc fcQsciLexerXML_delete(self: pointer) {.importc: "QsciLexerXML_delete".}

proc metaObject*(self: gen_qscilexerxml_types.QsciLexerXML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerXML_metaObject(self.h))

proc metacast*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cstring): pointer =
  fcQsciLexerXML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerXML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring): string =
  let v_ms = fcQsciLexerXML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring): string =
  let v_ms = fcQsciLexerXML_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_language(self.h))

proc lexer*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_lexer(self.h))

proc defaultColor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fcQsciLexerXML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerXML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerxml_types.QsciLexerXML, set: cint): cstring =
  (fcQsciLexerXML_keywords(self.h, set))

proc refreshProperties*(self: gen_qscilexerxml_types.QsciLexerXML, ): void =
  fcQsciLexerXML_refreshProperties(self.h)

proc setScriptsStyled*(self: gen_qscilexerxml_types.QsciLexerXML, styled: bool): void =
  fcQsciLexerXML_setScriptsStyled(self.h, styled)

proc scriptsStyled*(self: gen_qscilexerxml_types.QsciLexerXML, ): bool =
  fcQsciLexerXML_scriptsStyled(self.h)

proc tr*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerXML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerXML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerXML_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerXML_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerXMLmetaObjectProc* = proc(self: QsciLexerXML): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerXMLmetacastProc* = proc(self: QsciLexerXML, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerXMLmetacallProc* = proc(self: QsciLexerXML, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerXMLsetFoldCompactProc* = proc(self: QsciLexerXML, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerXMLsetFoldPreprocessorProc* = proc(self: QsciLexerXML, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerXMLsetCaseSensitiveTagsProc* = proc(self: QsciLexerXML, sens: bool): void {.raises: [], gcsafe.}
type QsciLexerXMLlanguageProc* = proc(self: QsciLexerXML): cstring {.raises: [], gcsafe.}
type QsciLexerXMLlexerProc* = proc(self: QsciLexerXML): cstring {.raises: [], gcsafe.}
type QsciLexerXMLlexerIdProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLautoCompletionFillupsProc* = proc(self: QsciLexerXML): cstring {.raises: [], gcsafe.}
type QsciLexerXMLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerXML): seq[string] {.raises: [], gcsafe.}
type QsciLexerXMLblockEndProc* = proc(self: QsciLexerXML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerXMLblockLookbackProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLblockStartProc* = proc(self: QsciLexerXML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerXMLblockStartKeywordProc* = proc(self: QsciLexerXML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerXMLbraceStyleProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLcaseSensitiveProc* = proc(self: QsciLexerXML): bool {.raises: [], gcsafe.}
type QsciLexerXMLcolorProc* = proc(self: QsciLexerXML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerXMLeolFillProc* = proc(self: QsciLexerXML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerXMLfontProc* = proc(self: QsciLexerXML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerXMLindentationGuideViewProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLkeywordsProc* = proc(self: QsciLexerXML, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerXMLdefaultStyleProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLdescriptionProc* = proc(self: QsciLexerXML, style: cint): string {.raises: [], gcsafe.}
type QsciLexerXMLpaperProc* = proc(self: QsciLexerXML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerXMLdefaultColorProc* = proc(self: QsciLexerXML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerXMLdefaultEolFillProc* = proc(self: QsciLexerXML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerXMLdefaultFontProc* = proc(self: QsciLexerXML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerXMLdefaultPaperProc* = proc(self: QsciLexerXML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerXMLsetEditorProc* = proc(self: QsciLexerXML, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerXMLrefreshPropertiesProc* = proc(self: QsciLexerXML): void {.raises: [], gcsafe.}
type QsciLexerXMLstyleBitsNeededProc* = proc(self: QsciLexerXML): cint {.raises: [], gcsafe.}
type QsciLexerXMLwordCharactersProc* = proc(self: QsciLexerXML): cstring {.raises: [], gcsafe.}
type QsciLexerXMLsetAutoIndentStyleProc* = proc(self: QsciLexerXML, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerXMLsetColorProc* = proc(self: QsciLexerXML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerXMLsetEolFillProc* = proc(self: QsciLexerXML, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerXMLsetFontProc* = proc(self: QsciLexerXML, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerXMLsetPaperProc* = proc(self: QsciLexerXML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerXMLreadPropertiesProc* = proc(self: QsciLexerXML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerXMLwritePropertiesProc* = proc(self: QsciLexerXML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerXMLeventProc* = proc(self: QsciLexerXML, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerXMLeventFilterProc* = proc(self: QsciLexerXML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerXMLtimerEventProc* = proc(self: QsciLexerXML, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerXMLchildEventProc* = proc(self: QsciLexerXML, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerXMLcustomEventProc* = proc(self: QsciLexerXML, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerXMLconnectNotifyProc* = proc(self: QsciLexerXML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerXMLdisconnectNotifyProc* = proc(self: QsciLexerXML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerXMLVTable* = object
  vtbl: cQsciLexerXMLVTable
  metaObject*: QsciLexerXMLmetaObjectProc
  metacast*: QsciLexerXMLmetacastProc
  metacall*: QsciLexerXMLmetacallProc
  setFoldCompact*: QsciLexerXMLsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerXMLsetFoldPreprocessorProc
  setCaseSensitiveTags*: QsciLexerXMLsetCaseSensitiveTagsProc
  language*: QsciLexerXMLlanguageProc
  lexer*: QsciLexerXMLlexerProc
  lexerId*: QsciLexerXMLlexerIdProc
  autoCompletionFillups*: QsciLexerXMLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerXMLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerXMLblockEndProc
  blockLookback*: QsciLexerXMLblockLookbackProc
  blockStart*: QsciLexerXMLblockStartProc
  blockStartKeyword*: QsciLexerXMLblockStartKeywordProc
  braceStyle*: QsciLexerXMLbraceStyleProc
  caseSensitive*: QsciLexerXMLcaseSensitiveProc
  color*: QsciLexerXMLcolorProc
  eolFill*: QsciLexerXMLeolFillProc
  font*: QsciLexerXMLfontProc
  indentationGuideView*: QsciLexerXMLindentationGuideViewProc
  keywords*: QsciLexerXMLkeywordsProc
  defaultStyle*: QsciLexerXMLdefaultStyleProc
  description*: QsciLexerXMLdescriptionProc
  paper*: QsciLexerXMLpaperProc
  defaultColor*: QsciLexerXMLdefaultColorProc
  defaultEolFill*: QsciLexerXMLdefaultEolFillProc
  defaultFont*: QsciLexerXMLdefaultFontProc
  defaultPaper*: QsciLexerXMLdefaultPaperProc
  setEditor*: QsciLexerXMLsetEditorProc
  refreshProperties*: QsciLexerXMLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerXMLstyleBitsNeededProc
  wordCharacters*: QsciLexerXMLwordCharactersProc
  setAutoIndentStyle*: QsciLexerXMLsetAutoIndentStyleProc
  setColor*: QsciLexerXMLsetColorProc
  setEolFill*: QsciLexerXMLsetEolFillProc
  setFont*: QsciLexerXMLsetFontProc
  setPaper*: QsciLexerXMLsetPaperProc
  readProperties*: QsciLexerXMLreadPropertiesProc
  writeProperties*: QsciLexerXMLwritePropertiesProc
  event*: QsciLexerXMLeventProc
  eventFilter*: QsciLexerXMLeventFilterProc
  timerEvent*: QsciLexerXMLtimerEventProc
  childEvent*: QsciLexerXMLchildEventProc
  customEvent*: QsciLexerXMLcustomEventProc
  connectNotify*: QsciLexerXMLconnectNotifyProc
  disconnectNotify*: QsciLexerXMLdisconnectNotifyProc
proc QsciLexerXMLmetaObject*(self: gen_qscilexerxml_types.QsciLexerXML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerXML_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerXML_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerXMLmetacast*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cstring): pointer =
  fcQsciLexerXML_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerXML_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerXMLmetacall*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerXML_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerXML_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerXMLsetFoldCompact*(self: gen_qscilexerxml_types.QsciLexerXML, fold: bool): void =
  fcQsciLexerXML_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerXML_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerXMLsetFoldPreprocessor*(self: gen_qscilexerxml_types.QsciLexerXML, fold: bool): void =
  fcQsciLexerXML_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerXML_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerXMLsetCaseSensitiveTags*(self: gen_qscilexerxml_types.QsciLexerXML, sens: bool): void =
  fcQsciLexerXML_virtualbase_setCaseSensitiveTags(self.h, sens)

proc miqt_exec_callback_cQsciLexerXML_setCaseSensitiveTags(vtbl: pointer, self: pointer, sens: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = sens
  vtbl[].setCaseSensitiveTags(self, slotval1)

proc miqt_exec_callback_cQsciLexerXML_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerXMLlexer*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerXML_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerXMLlexerId*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerXML_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerXMLautoCompletionFillups*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerXML_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerXMLautoCompletionWordSeparators*(self: gen_qscilexerxml_types.QsciLexerXML, ): seq[string] =
  var v_ma = fcQsciLexerXML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerXML_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerXMLblockEnd*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fcQsciLexerXML_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerXMLblockLookback*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerXML_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerXMLblockStart*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fcQsciLexerXML_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerXMLblockStartKeyword*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fcQsciLexerXML_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerXMLbraceStyle*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerXML_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerXMLcaseSensitive*(self: gen_qscilexerxml_types.QsciLexerXML, ): bool =
  fcQsciLexerXML_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerXML_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerXMLcolor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLeolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fcQsciLexerXML_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerXML_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerXMLfont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerXML_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLindentationGuideView*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerXML_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerXMLkeywords*(self: gen_qscilexerxml_types.QsciLexerXML, set: cint): cstring =
  (fcQsciLexerXML_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerXML_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerXMLdefaultStyle*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerXML_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerXML_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerXMLpaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLdefaultColor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLdefaultEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fcQsciLexerXML_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerXML_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerXMLdefaultFont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerXML_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLdefaultPaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerXML_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerXML_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerXMLsetEditor*(self: gen_qscilexerxml_types.QsciLexerXML, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerXML_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerXML_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerXMLrefreshProperties*(self: gen_qscilexerxml_types.QsciLexerXML, ): void =
  fcQsciLexerXML_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerXML_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerXMLstyleBitsNeeded*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fcQsciLexerXML_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerXML_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerXMLwordCharacters*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerXML_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerXMLsetAutoIndentStyle*(self: gen_qscilexerxml_types.QsciLexerXML, autoindentstyle: cint): void =
  fcQsciLexerXML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerXML_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerXMLsetColor*(self: gen_qscilexerxml_types.QsciLexerXML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerXML_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerXML_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerXMLsetEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, eoffill: bool, style: cint): void =
  fcQsciLexerXML_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerXML_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerXMLsetFont*(self: gen_qscilexerxml_types.QsciLexerXML, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerXML_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerXML_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerXMLsetPaper*(self: gen_qscilexerxml_types.QsciLexerXML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerXML_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerXML_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerXMLreadProperties*(self: gen_qscilexerxml_types.QsciLexerXML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerXML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerXML_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerXMLwriteProperties*(self: gen_qscilexerxml_types.QsciLexerXML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerXML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerXML_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerXMLevent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerXML_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerXML_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerXMLeventFilter*(self: gen_qscilexerxml_types.QsciLexerXML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerXML_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerXML_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerXMLtimerEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerXML_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerXML_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerXMLchildEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerXML_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerXML_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerXMLcustomEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerXML_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerXML_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerXMLconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerXML_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerXML_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerXMLdisconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerXML_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerXML_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerXMLVTable](vtbl)
  let self = QsciLexerXML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerxml_types.QsciLexerXML,
    vtbl: ref QsciLexerXMLVTable = nil): gen_qscilexerxml_types.QsciLexerXML =
  let vtbl = if vtbl == nil: new QsciLexerXMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerXMLVTable, _: ptr cQsciLexerXML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerXMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerXML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerXML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerXML_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerXML_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerXML_setFoldPreprocessor
  if not isNil(vtbl.setCaseSensitiveTags):
    vtbl[].vtbl.setCaseSensitiveTags = miqt_exec_callback_cQsciLexerXML_setCaseSensitiveTags
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerXML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerXML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerXML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerXML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerXML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerXML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerXML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerXML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerXML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerXML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerXML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerXML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerXML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerXML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerXML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerXML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerXML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerXML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerXML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerXML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerXML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerXML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerXML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerXML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerXML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerXML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerXML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerXML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerXML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerXML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerXML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerXML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerXML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerXML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerXML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerXML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerXML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerXML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerXML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerXML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerXML_disconnectNotify
  gen_qscilexerxml_types.QsciLexerXML(h: fcQsciLexerXML_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerxml_types.QsciLexerXML,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerXMLVTable = nil): gen_qscilexerxml_types.QsciLexerXML =
  let vtbl = if vtbl == nil: new QsciLexerXMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerXMLVTable, _: ptr cQsciLexerXML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerXMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerXML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerXML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerXML_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerXML_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerXML_setFoldPreprocessor
  if not isNil(vtbl.setCaseSensitiveTags):
    vtbl[].vtbl.setCaseSensitiveTags = miqt_exec_callback_cQsciLexerXML_setCaseSensitiveTags
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerXML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerXML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerXML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerXML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerXML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerXML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerXML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerXML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerXML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerXML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerXML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerXML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerXML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerXML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerXML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerXML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerXML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerXML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerXML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerXML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerXML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerXML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerXML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerXML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerXML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerXML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerXML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerXML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerXML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerXML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerXML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerXML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerXML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerXML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerXML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerXML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerXML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerXML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerXML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerXML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerXML_disconnectNotify
  gen_qscilexerxml_types.QsciLexerXML(h: fcQsciLexerXML_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerxml_types.QsciLexerXML): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerXML_staticMetaObject())
proc delete*(self: gen_qscilexerxml_types.QsciLexerXML) =
  fcQsciLexerXML_delete(self.h)
