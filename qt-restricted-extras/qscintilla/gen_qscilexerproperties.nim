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
{.compile("gen_qscilexerproperties.cpp", cflags).}


type QsciLexerPropertiesEnumEnum* = distinct cint
template Default*(_: type QsciLexerPropertiesEnumEnum): untyped = 0
template Comment*(_: type QsciLexerPropertiesEnumEnum): untyped = 1
template Section*(_: type QsciLexerPropertiesEnumEnum): untyped = 2
template Assignment*(_: type QsciLexerPropertiesEnumEnum): untyped = 3
template DefaultValue*(_: type QsciLexerPropertiesEnumEnum): untyped = 4
template Key*(_: type QsciLexerPropertiesEnumEnum): untyped = 5

import gen_qscilexerproperties_types
export gen_qscilexerproperties_types

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

type cQsciLexerProperties*{.exportc: "QsciLexerProperties", incompleteStruct.} = object

proc fcQsciLexerProperties_metaObject(self: pointer, ): pointer {.importc: "QsciLexerProperties_metaObject".}
proc fcQsciLexerProperties_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerProperties_metacast".}
proc fcQsciLexerProperties_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerProperties_metacall".}
proc fcQsciLexerProperties_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr".}
proc fcQsciLexerProperties_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerProperties_trUtf8".}
proc fcQsciLexerProperties_language(self: pointer, ): cstring {.importc: "QsciLexerProperties_language".}
proc fcQsciLexerProperties_lexer(self: pointer, ): cstring {.importc: "QsciLexerProperties_lexer".}
proc fcQsciLexerProperties_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerProperties_wordCharacters".}
proc fcQsciLexerProperties_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultColor".}
proc fcQsciLexerProperties_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerProperties_defaultEolFill".}
proc fcQsciLexerProperties_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultFont".}
proc fcQsciLexerProperties_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultPaper".}
proc fcQsciLexerProperties_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerProperties_description".}
proc fcQsciLexerProperties_refreshProperties(self: pointer, ): void {.importc: "QsciLexerProperties_refreshProperties".}
proc fcQsciLexerProperties_foldCompact(self: pointer, ): bool {.importc: "QsciLexerProperties_foldCompact".}
proc fcQsciLexerProperties_setInitialSpaces(self: pointer, enable: bool): void {.importc: "QsciLexerProperties_setInitialSpaces".}
proc fcQsciLexerProperties_initialSpaces(self: pointer, ): bool {.importc: "QsciLexerProperties_initialSpaces".}
proc fcQsciLexerProperties_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerProperties_setFoldCompact".}
proc fcQsciLexerProperties_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr2".}
proc fcQsciLexerProperties_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerProperties_tr3".}
proc fcQsciLexerProperties_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerProperties_trUtf82".}
proc fcQsciLexerProperties_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerProperties_trUtf83".}
type cQsciLexerPropertiesVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerPropertiesVTable, self: ptr cQsciLexerProperties) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQsciLexerProperties_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerProperties_virtualbase_metaObject".}
proc fcQsciLexerProperties_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerProperties_virtualbase_metacast".}
proc fcQsciLexerProperties_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerProperties_virtualbase_metacall".}
proc fcQsciLexerProperties_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerProperties_virtualbase_setFoldCompact".}
proc fcQsciLexerProperties_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerProperties_virtualbase_lexer".}
proc fcQsciLexerProperties_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_lexerId".}
proc fcQsciLexerProperties_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerProperties_virtualbase_autoCompletionFillups".}
proc fcQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerProperties_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerProperties_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerProperties_virtualbase_blockEnd".}
proc fcQsciLexerProperties_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_blockLookback".}
proc fcQsciLexerProperties_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerProperties_virtualbase_blockStart".}
proc fcQsciLexerProperties_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerProperties_virtualbase_blockStartKeyword".}
proc fcQsciLexerProperties_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_braceStyle".}
proc fcQsciLexerProperties_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerProperties_virtualbase_caseSensitive".}
proc fcQsciLexerProperties_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_color".}
proc fcQsciLexerProperties_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerProperties_virtualbase_eolFill".}
proc fcQsciLexerProperties_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_font".}
proc fcQsciLexerProperties_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_indentationGuideView".}
proc fcQsciLexerProperties_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerProperties_virtualbase_keywords".}
proc fcQsciLexerProperties_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_defaultStyle".}
proc fcQsciLexerProperties_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_paper".}
proc fcQsciLexerProperties_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerProperties_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerProperties_virtualbase_defaultEolFill".}
proc fcQsciLexerProperties_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerProperties_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerProperties_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerProperties_virtualbase_setEditor".}
proc fcQsciLexerProperties_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerProperties_virtualbase_refreshProperties".}
proc fcQsciLexerProperties_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerProperties_virtualbase_styleBitsNeeded".}
proc fcQsciLexerProperties_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerProperties_virtualbase_wordCharacters".}
proc fcQsciLexerProperties_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerProperties_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerProperties_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerProperties_virtualbase_setColor".}
proc fcQsciLexerProperties_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerProperties_virtualbase_setEolFill".}
proc fcQsciLexerProperties_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerProperties_virtualbase_setFont".}
proc fcQsciLexerProperties_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerProperties_virtualbase_setPaper".}
proc fcQsciLexerProperties_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerProperties_virtualbase_readProperties".}
proc fcQsciLexerProperties_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerProperties_virtualbase_writeProperties".}
proc fcQsciLexerProperties_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerProperties_virtualbase_event".}
proc fcQsciLexerProperties_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerProperties_virtualbase_eventFilter".}
proc fcQsciLexerProperties_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerProperties_virtualbase_timerEvent".}
proc fcQsciLexerProperties_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerProperties_virtualbase_childEvent".}
proc fcQsciLexerProperties_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerProperties_virtualbase_customEvent".}
proc fcQsciLexerProperties_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerProperties_virtualbase_connectNotify".}
proc fcQsciLexerProperties_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerProperties_virtualbase_disconnectNotify".}
proc fcQsciLexerProperties_new(vtbl: pointer, ): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new".}
proc fcQsciLexerProperties_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new2".}
proc fcQsciLexerProperties_staticMetaObject(): pointer {.importc: "QsciLexerProperties_staticMetaObject".}
proc fcQsciLexerProperties_delete(self: pointer) {.importc: "QsciLexerProperties_delete".}

proc metaObject*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerProperties_metaObject(self.h))

proc metacast*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cstring): pointer =
  fcQsciLexerProperties_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerProperties_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring): string =
  let v_ms = fcQsciLexerProperties_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring): string =
  let v_ms = fcQsciLexerProperties_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_language(self.h))

proc lexer*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =
  fcQsciLexerProperties_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerProperties_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_defaultPaper(self.h, style))

proc description*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): string =
  let v_ms = fcQsciLexerProperties_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): void =
  fcQsciLexerProperties_refreshProperties(self.h)

proc foldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =
  fcQsciLexerProperties_foldCompact(self.h)

proc setInitialSpaces*(self: gen_qscilexerproperties_types.QsciLexerProperties, enable: bool): void =
  fcQsciLexerProperties_setInitialSpaces(self.h, enable)

proc initialSpaces*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =
  fcQsciLexerProperties_initialSpaces(self.h)

proc setFoldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, fold: bool): void =
  fcQsciLexerProperties_setFoldCompact(self.h, fold)

proc tr*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerProperties_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerProperties_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerProperties_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerproperties_types.QsciLexerProperties, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerProperties_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerPropertiesmetaObjectProc* = proc(self: QsciLexerProperties): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerPropertiesmetacastProc* = proc(self: QsciLexerProperties, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerPropertiesmetacallProc* = proc(self: QsciLexerProperties, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerPropertiessetFoldCompactProc* = proc(self: QsciLexerProperties, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerPropertieslanguageProc* = proc(self: QsciLexerProperties): cstring {.raises: [], gcsafe.}
type QsciLexerPropertieslexerProc* = proc(self: QsciLexerProperties): cstring {.raises: [], gcsafe.}
type QsciLexerPropertieslexerIdProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertiesautoCompletionFillupsProc* = proc(self: QsciLexerProperties): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiesautoCompletionWordSeparatorsProc* = proc(self: QsciLexerProperties): seq[string] {.raises: [], gcsafe.}
type QsciLexerPropertiesblockEndProc* = proc(self: QsciLexerProperties, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiesblockLookbackProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertiesblockStartProc* = proc(self: QsciLexerProperties, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiesblockStartKeywordProc* = proc(self: QsciLexerProperties, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiesbraceStyleProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertiescaseSensitiveProc* = proc(self: QsciLexerProperties): bool {.raises: [], gcsafe.}
type QsciLexerPropertiescolorProc* = proc(self: QsciLexerProperties, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPropertieseolFillProc* = proc(self: QsciLexerProperties, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPropertiesfontProc* = proc(self: QsciLexerProperties, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPropertiesindentationGuideViewProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertieskeywordsProc* = proc(self: QsciLexerProperties, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiesdefaultStyleProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertiesdescriptionProc* = proc(self: QsciLexerProperties, style: cint): string {.raises: [], gcsafe.}
type QsciLexerPropertiespaperProc* = proc(self: QsciLexerProperties, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPropertiesdefaultColorProc* = proc(self: QsciLexerProperties, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPropertiesdefaultEolFillProc* = proc(self: QsciLexerProperties, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerPropertiesdefaultFontProc* = proc(self: QsciLexerProperties, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerPropertiesdefaultPaperProc* = proc(self: QsciLexerProperties, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerPropertiessetEditorProc* = proc(self: QsciLexerProperties, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerPropertiesrefreshPropertiesProc* = proc(self: QsciLexerProperties): void {.raises: [], gcsafe.}
type QsciLexerPropertiesstyleBitsNeededProc* = proc(self: QsciLexerProperties): cint {.raises: [], gcsafe.}
type QsciLexerPropertieswordCharactersProc* = proc(self: QsciLexerProperties): cstring {.raises: [], gcsafe.}
type QsciLexerPropertiessetAutoIndentStyleProc* = proc(self: QsciLexerProperties, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerPropertiessetColorProc* = proc(self: QsciLexerProperties, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPropertiessetEolFillProc* = proc(self: QsciLexerProperties, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPropertiessetFontProc* = proc(self: QsciLexerProperties, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPropertiessetPaperProc* = proc(self: QsciLexerProperties, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerPropertiesreadPropertiesProc* = proc(self: QsciLexerProperties, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPropertieswritePropertiesProc* = proc(self: QsciLexerProperties, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerPropertieseventProc* = proc(self: QsciLexerProperties, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPropertieseventFilterProc* = proc(self: QsciLexerProperties, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerPropertiestimerEventProc* = proc(self: QsciLexerProperties, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerPropertieschildEventProc* = proc(self: QsciLexerProperties, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerPropertiescustomEventProc* = proc(self: QsciLexerProperties, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerPropertiesconnectNotifyProc* = proc(self: QsciLexerProperties, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPropertiesdisconnectNotifyProc* = proc(self: QsciLexerProperties, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerPropertiesVTable* = object
  vtbl: cQsciLexerPropertiesVTable
  metaObject*: QsciLexerPropertiesmetaObjectProc
  metacast*: QsciLexerPropertiesmetacastProc
  metacall*: QsciLexerPropertiesmetacallProc
  setFoldCompact*: QsciLexerPropertiessetFoldCompactProc
  language*: QsciLexerPropertieslanguageProc
  lexer*: QsciLexerPropertieslexerProc
  lexerId*: QsciLexerPropertieslexerIdProc
  autoCompletionFillups*: QsciLexerPropertiesautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerPropertiesautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerPropertiesblockEndProc
  blockLookback*: QsciLexerPropertiesblockLookbackProc
  blockStart*: QsciLexerPropertiesblockStartProc
  blockStartKeyword*: QsciLexerPropertiesblockStartKeywordProc
  braceStyle*: QsciLexerPropertiesbraceStyleProc
  caseSensitive*: QsciLexerPropertiescaseSensitiveProc
  color*: QsciLexerPropertiescolorProc
  eolFill*: QsciLexerPropertieseolFillProc
  font*: QsciLexerPropertiesfontProc
  indentationGuideView*: QsciLexerPropertiesindentationGuideViewProc
  keywords*: QsciLexerPropertieskeywordsProc
  defaultStyle*: QsciLexerPropertiesdefaultStyleProc
  description*: QsciLexerPropertiesdescriptionProc
  paper*: QsciLexerPropertiespaperProc
  defaultColor*: QsciLexerPropertiesdefaultColorProc
  defaultEolFill*: QsciLexerPropertiesdefaultEolFillProc
  defaultFont*: QsciLexerPropertiesdefaultFontProc
  defaultPaper*: QsciLexerPropertiesdefaultPaperProc
  setEditor*: QsciLexerPropertiessetEditorProc
  refreshProperties*: QsciLexerPropertiesrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerPropertiesstyleBitsNeededProc
  wordCharacters*: QsciLexerPropertieswordCharactersProc
  setAutoIndentStyle*: QsciLexerPropertiessetAutoIndentStyleProc
  setColor*: QsciLexerPropertiessetColorProc
  setEolFill*: QsciLexerPropertiessetEolFillProc
  setFont*: QsciLexerPropertiessetFontProc
  setPaper*: QsciLexerPropertiessetPaperProc
  readProperties*: QsciLexerPropertiesreadPropertiesProc
  writeProperties*: QsciLexerPropertieswritePropertiesProc
  event*: QsciLexerPropertieseventProc
  eventFilter*: QsciLexerPropertieseventFilterProc
  timerEvent*: QsciLexerPropertiestimerEventProc
  childEvent*: QsciLexerPropertieschildEventProc
  customEvent*: QsciLexerPropertiescustomEventProc
  connectNotify*: QsciLexerPropertiesconnectNotifyProc
  disconnectNotify*: QsciLexerPropertiesdisconnectNotifyProc
proc QsciLexerPropertiesmetaObject*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerProperties_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerProperties_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerPropertiesmetacast*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cstring): pointer =
  fcQsciLexerProperties_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerProperties_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesmetacall*(self: gen_qscilexerproperties_types.QsciLexerProperties, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerProperties_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerProperties_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerPropertiessetFoldCompact*(self: gen_qscilexerproperties_types.QsciLexerProperties, fold: bool): void =
  fcQsciLexerProperties_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerProperties_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc miqt_exec_callback_cQsciLexerProperties_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerPropertieslexer*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerProperties_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerPropertieslexerId*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerProperties_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerPropertiesautoCompletionFillups*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerProperties_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerPropertiesautoCompletionWordSeparators*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): seq[string] =
  var v_ma = fcQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerProperties_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerPropertiesblockEnd*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =
  (fcQsciLexerProperties_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesblockLookback*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerProperties_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerPropertiesblockStart*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =
  (fcQsciLexerProperties_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesblockStartKeyword*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: ptr cint): cstring =
  (fcQsciLexerProperties_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesbraceStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerProperties_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerPropertiescaseSensitive*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): bool =
  fcQsciLexerProperties_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerProperties_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerPropertiescolor*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertieseolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =
  fcQsciLexerProperties_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerProperties_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesfont*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerProperties_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertiesindentationGuideView*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerProperties_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerPropertieskeywords*(self: gen_qscilexerproperties_types.QsciLexerProperties, set: cint): cstring =
  (fcQsciLexerProperties_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerProperties_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesdefaultStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerProperties_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerProperties_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerPropertiespaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertiesdefaultColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertiesdefaultEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): bool =
  fcQsciLexerProperties_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerProperties_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerPropertiesdefaultFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerProperties_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertiesdefaultPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerProperties_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerProperties_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerPropertiessetEditor*(self: gen_qscilexerproperties_types.QsciLexerProperties, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerProperties_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerProperties_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerPropertiesrefreshProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): void =
  fcQsciLexerProperties_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerProperties_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerPropertiesstyleBitsNeeded*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cint =
  fcQsciLexerProperties_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerProperties_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerPropertieswordCharacters*(self: gen_qscilexerproperties_types.QsciLexerProperties, ): cstring =
  (fcQsciLexerProperties_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerProperties_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerPropertiessetAutoIndentStyle*(self: gen_qscilexerproperties_types.QsciLexerProperties, autoindentstyle: cint): void =
  fcQsciLexerProperties_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerProperties_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerPropertiessetColor*(self: gen_qscilexerproperties_types.QsciLexerProperties, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerProperties_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerProperties_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerPropertiessetEolFill*(self: gen_qscilexerproperties_types.QsciLexerProperties, eoffill: bool, style: cint): void =
  fcQsciLexerProperties_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerProperties_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerPropertiessetFont*(self: gen_qscilexerproperties_types.QsciLexerProperties, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerProperties_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerProperties_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerPropertiessetPaper*(self: gen_qscilexerproperties_types.QsciLexerProperties, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerProperties_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerProperties_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerPropertiesreadProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerProperties_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerProperties_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPropertieswriteProperties*(self: gen_qscilexerproperties_types.QsciLexerProperties, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerProperties_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerProperties_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPropertiesevent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerProperties_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerProperties_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerPropertieseventFilter*(self: gen_qscilexerproperties_types.QsciLexerProperties, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerProperties_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerProperties_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerPropertiestimerEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerProperties_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerProperties_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerPropertieschildEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerProperties_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerProperties_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerPropertiescustomEvent*(self: gen_qscilexerproperties_types.QsciLexerProperties, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerProperties_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerProperties_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerPropertiesconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerProperties_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerProperties_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerPropertiesdisconnectNotify*(self: gen_qscilexerproperties_types.QsciLexerProperties, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerProperties_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerProperties_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerPropertiesVTable](vtbl)
  let self = QsciLexerProperties(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexerproperties_types.QsciLexerProperties,
    vtbl: ref QsciLexerPropertiesVTable = nil): gen_qscilexerproperties_types.QsciLexerProperties =
  let vtbl = if vtbl == nil: new QsciLexerPropertiesVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPropertiesVTable, _: ptr cQsciLexerProperties) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPropertiesVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerProperties_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerProperties_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerProperties_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerProperties_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerProperties_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerProperties_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerProperties_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerProperties_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerProperties_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerProperties_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerProperties_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerProperties_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerProperties_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerProperties_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerProperties_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerProperties_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerProperties_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerProperties_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerProperties_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerProperties_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerProperties_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerProperties_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerProperties_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerProperties_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerProperties_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerProperties_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerProperties_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerProperties_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerProperties_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerProperties_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerProperties_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerProperties_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerProperties_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerProperties_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerProperties_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerProperties_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerProperties_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerProperties_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerProperties_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerProperties_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerProperties_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerProperties_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerProperties_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerProperties_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerProperties_disconnectNotify
  gen_qscilexerproperties_types.QsciLexerProperties(h: fcQsciLexerProperties_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerproperties_types.QsciLexerProperties,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerPropertiesVTable = nil): gen_qscilexerproperties_types.QsciLexerProperties =
  let vtbl = if vtbl == nil: new QsciLexerPropertiesVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerPropertiesVTable, _: ptr cQsciLexerProperties) {.cdecl.} =
    let vtbl = cast[ref QsciLexerPropertiesVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerProperties_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerProperties_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerProperties_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerProperties_setFoldCompact
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerProperties_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerProperties_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerProperties_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerProperties_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerProperties_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerProperties_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerProperties_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerProperties_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerProperties_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerProperties_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerProperties_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerProperties_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerProperties_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerProperties_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerProperties_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerProperties_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerProperties_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerProperties_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerProperties_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerProperties_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerProperties_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerProperties_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerProperties_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerProperties_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerProperties_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerProperties_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerProperties_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerProperties_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerProperties_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerProperties_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerProperties_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerProperties_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerProperties_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerProperties_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerProperties_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerProperties_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerProperties_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerProperties_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerProperties_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerProperties_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerProperties_disconnectNotify
  gen_qscilexerproperties_types.QsciLexerProperties(h: fcQsciLexerProperties_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerproperties_types.QsciLexerProperties): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerProperties_staticMetaObject())
proc delete*(self: gen_qscilexerproperties_types.QsciLexerProperties) =
  fcQsciLexerProperties_delete(self.h)
