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
{.compile("gen_qscilexermakefile.cpp", cflags).}


type QsciLexerMakefileEnumEnum* = distinct cint
template Default*(_: type QsciLexerMakefileEnumEnum): untyped = 0
template Comment*(_: type QsciLexerMakefileEnumEnum): untyped = 1
template Preprocessor*(_: type QsciLexerMakefileEnumEnum): untyped = 2
template Variable*(_: type QsciLexerMakefileEnumEnum): untyped = 3
template Operator*(_: type QsciLexerMakefileEnumEnum): untyped = 4
template Target*(_: type QsciLexerMakefileEnumEnum): untyped = 5
template Error*(_: type QsciLexerMakefileEnumEnum): untyped = 9

import gen_qscilexermakefile_types
export gen_qscilexermakefile_types

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

type cQsciLexerMakefile*{.exportc: "QsciLexerMakefile", incompleteStruct.} = object

proc fcQsciLexerMakefile_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMakefile_metaObject".}
proc fcQsciLexerMakefile_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMakefile_metacast".}
proc fcQsciLexerMakefile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMakefile_metacall".}
proc fcQsciLexerMakefile_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_tr".}
proc fcQsciLexerMakefile_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_trUtf8".}
proc fcQsciLexerMakefile_language(self: pointer, ): cstring {.importc: "QsciLexerMakefile_language".}
proc fcQsciLexerMakefile_lexer(self: pointer, ): cstring {.importc: "QsciLexerMakefile_lexer".}
proc fcQsciLexerMakefile_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerMakefile_wordCharacters".}
proc fcQsciLexerMakefile_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultColor".}
proc fcQsciLexerMakefile_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMakefile_defaultEolFill".}
proc fcQsciLexerMakefile_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultFont".}
proc fcQsciLexerMakefile_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultPaper".}
proc fcQsciLexerMakefile_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMakefile_description".}
proc fcQsciLexerMakefile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_tr2".}
proc fcQsciLexerMakefile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMakefile_tr3".}
proc fcQsciLexerMakefile_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_trUtf82".}
proc fcQsciLexerMakefile_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMakefile_trUtf83".}
type cQsciLexerMakefileVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerMakefileVTable, self: ptr cQsciLexerMakefile) {.cdecl, raises:[], gcsafe.}
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
proc fcQsciLexerMakefile_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMakefile_virtualbase_metaObject".}
proc fcQsciLexerMakefile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMakefile_virtualbase_metacast".}
proc fcQsciLexerMakefile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMakefile_virtualbase_metacall".}
proc fcQsciLexerMakefile_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerMakefile_virtualbase_lexer".}
proc fcQsciLexerMakefile_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_lexerId".}
proc fcQsciLexerMakefile_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerMakefile_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMakefile_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerMakefile_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMakefile_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMakefile_virtualbase_blockEnd".}
proc fcQsciLexerMakefile_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_blockLookback".}
proc fcQsciLexerMakefile_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMakefile_virtualbase_blockStart".}
proc fcQsciLexerMakefile_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerMakefile_virtualbase_blockStartKeyword".}
proc fcQsciLexerMakefile_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_braceStyle".}
proc fcQsciLexerMakefile_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerMakefile_virtualbase_caseSensitive".}
proc fcQsciLexerMakefile_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_color".}
proc fcQsciLexerMakefile_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMakefile_virtualbase_eolFill".}
proc fcQsciLexerMakefile_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_font".}
proc fcQsciLexerMakefile_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_indentationGuideView".}
proc fcQsciLexerMakefile_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMakefile_virtualbase_keywords".}
proc fcQsciLexerMakefile_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_defaultStyle".}
proc fcQsciLexerMakefile_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_paper".}
proc fcQsciLexerMakefile_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMakefile_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMakefile_virtualbase_defaultEolFill".}
proc fcQsciLexerMakefile_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMakefile_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMakefile_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerMakefile_virtualbase_setEditor".}
proc fcQsciLexerMakefile_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerMakefile_virtualbase_refreshProperties".}
proc fcQsciLexerMakefile_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerMakefile_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMakefile_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerMakefile_virtualbase_wordCharacters".}
proc fcQsciLexerMakefile_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerMakefile_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMakefile_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMakefile_virtualbase_setColor".}
proc fcQsciLexerMakefile_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerMakefile_virtualbase_setEolFill".}
proc fcQsciLexerMakefile_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerMakefile_virtualbase_setFont".}
proc fcQsciLexerMakefile_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerMakefile_virtualbase_setPaper".}
proc fcQsciLexerMakefile_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMakefile_virtualbase_readProperties".}
proc fcQsciLexerMakefile_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerMakefile_virtualbase_writeProperties".}
proc fcQsciLexerMakefile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerMakefile_virtualbase_event".}
proc fcQsciLexerMakefile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerMakefile_virtualbase_eventFilter".}
proc fcQsciLexerMakefile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMakefile_virtualbase_timerEvent".}
proc fcQsciLexerMakefile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMakefile_virtualbase_childEvent".}
proc fcQsciLexerMakefile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerMakefile_virtualbase_customEvent".}
proc fcQsciLexerMakefile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMakefile_virtualbase_connectNotify".}
proc fcQsciLexerMakefile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerMakefile_virtualbase_disconnectNotify".}
proc fcQsciLexerMakefile_new(vtbl: pointer, ): ptr cQsciLexerMakefile {.importc: "QsciLexerMakefile_new".}
proc fcQsciLexerMakefile_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerMakefile {.importc: "QsciLexerMakefile_new2".}
proc fcQsciLexerMakefile_staticMetaObject(): pointer {.importc: "QsciLexerMakefile_staticMetaObject".}
proc fcQsciLexerMakefile_delete(self: pointer) {.importc: "QsciLexerMakefile_delete".}

proc metaObject*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMakefile_metaObject(self.h))

proc metacast*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cstring): pointer =
  fcQsciLexerMakefile_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMakefile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring): string =
  let v_ms = fcQsciLexerMakefile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring): string =
  let v_ms = fcQsciLexerMakefile_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_language(self.h))

proc lexer*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_lexer(self.h))

proc wordCharacters*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fcQsciLexerMakefile_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMakefile_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_defaultPaper(self.h, style))

proc description*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): string =
  let v_ms = fcQsciLexerMakefile_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMakefile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMakefile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMakefile_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMakefile_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerMakefilemetaObjectProc* = proc(self: QsciLexerMakefile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerMakefilemetacastProc* = proc(self: QsciLexerMakefile, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerMakefilemetacallProc* = proc(self: QsciLexerMakefile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerMakefilelanguageProc* = proc(self: QsciLexerMakefile): cstring {.raises: [], gcsafe.}
type QsciLexerMakefilelexerProc* = proc(self: QsciLexerMakefile): cstring {.raises: [], gcsafe.}
type QsciLexerMakefilelexerIdProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefileautoCompletionFillupsProc* = proc(self: QsciLexerMakefile): cstring {.raises: [], gcsafe.}
type QsciLexerMakefileautoCompletionWordSeparatorsProc* = proc(self: QsciLexerMakefile): seq[string] {.raises: [], gcsafe.}
type QsciLexerMakefileblockEndProc* = proc(self: QsciLexerMakefile, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMakefileblockLookbackProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefileblockStartProc* = proc(self: QsciLexerMakefile, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMakefileblockStartKeywordProc* = proc(self: QsciLexerMakefile, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerMakefilebraceStyleProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefilecaseSensitiveProc* = proc(self: QsciLexerMakefile): bool {.raises: [], gcsafe.}
type QsciLexerMakefilecolorProc* = proc(self: QsciLexerMakefile, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMakefileeolFillProc* = proc(self: QsciLexerMakefile, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMakefilefontProc* = proc(self: QsciLexerMakefile, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMakefileindentationGuideViewProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefilekeywordsProc* = proc(self: QsciLexerMakefile, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerMakefiledefaultStyleProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefiledescriptionProc* = proc(self: QsciLexerMakefile, style: cint): string {.raises: [], gcsafe.}
type QsciLexerMakefilepaperProc* = proc(self: QsciLexerMakefile, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMakefiledefaultColorProc* = proc(self: QsciLexerMakefile, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMakefiledefaultEolFillProc* = proc(self: QsciLexerMakefile, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerMakefiledefaultFontProc* = proc(self: QsciLexerMakefile, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerMakefiledefaultPaperProc* = proc(self: QsciLexerMakefile, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerMakefilesetEditorProc* = proc(self: QsciLexerMakefile, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerMakefilerefreshPropertiesProc* = proc(self: QsciLexerMakefile): void {.raises: [], gcsafe.}
type QsciLexerMakefilestyleBitsNeededProc* = proc(self: QsciLexerMakefile): cint {.raises: [], gcsafe.}
type QsciLexerMakefilewordCharactersProc* = proc(self: QsciLexerMakefile): cstring {.raises: [], gcsafe.}
type QsciLexerMakefilesetAutoIndentStyleProc* = proc(self: QsciLexerMakefile, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerMakefilesetColorProc* = proc(self: QsciLexerMakefile, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMakefilesetEolFillProc* = proc(self: QsciLexerMakefile, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMakefilesetFontProc* = proc(self: QsciLexerMakefile, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMakefilesetPaperProc* = proc(self: QsciLexerMakefile, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerMakefilereadPropertiesProc* = proc(self: QsciLexerMakefile, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMakefilewritePropertiesProc* = proc(self: QsciLexerMakefile, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerMakefileeventProc* = proc(self: QsciLexerMakefile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMakefileeventFilterProc* = proc(self: QsciLexerMakefile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerMakefiletimerEventProc* = proc(self: QsciLexerMakefile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerMakefilechildEventProc* = proc(self: QsciLexerMakefile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerMakefilecustomEventProc* = proc(self: QsciLexerMakefile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerMakefileconnectNotifyProc* = proc(self: QsciLexerMakefile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMakefiledisconnectNotifyProc* = proc(self: QsciLexerMakefile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerMakefileVTable* = object
  vtbl: cQsciLexerMakefileVTable
  metaObject*: QsciLexerMakefilemetaObjectProc
  metacast*: QsciLexerMakefilemetacastProc
  metacall*: QsciLexerMakefilemetacallProc
  language*: QsciLexerMakefilelanguageProc
  lexer*: QsciLexerMakefilelexerProc
  lexerId*: QsciLexerMakefilelexerIdProc
  autoCompletionFillups*: QsciLexerMakefileautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerMakefileautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerMakefileblockEndProc
  blockLookback*: QsciLexerMakefileblockLookbackProc
  blockStart*: QsciLexerMakefileblockStartProc
  blockStartKeyword*: QsciLexerMakefileblockStartKeywordProc
  braceStyle*: QsciLexerMakefilebraceStyleProc
  caseSensitive*: QsciLexerMakefilecaseSensitiveProc
  color*: QsciLexerMakefilecolorProc
  eolFill*: QsciLexerMakefileeolFillProc
  font*: QsciLexerMakefilefontProc
  indentationGuideView*: QsciLexerMakefileindentationGuideViewProc
  keywords*: QsciLexerMakefilekeywordsProc
  defaultStyle*: QsciLexerMakefiledefaultStyleProc
  description*: QsciLexerMakefiledescriptionProc
  paper*: QsciLexerMakefilepaperProc
  defaultColor*: QsciLexerMakefiledefaultColorProc
  defaultEolFill*: QsciLexerMakefiledefaultEolFillProc
  defaultFont*: QsciLexerMakefiledefaultFontProc
  defaultPaper*: QsciLexerMakefiledefaultPaperProc
  setEditor*: QsciLexerMakefilesetEditorProc
  refreshProperties*: QsciLexerMakefilerefreshPropertiesProc
  styleBitsNeeded*: QsciLexerMakefilestyleBitsNeededProc
  wordCharacters*: QsciLexerMakefilewordCharactersProc
  setAutoIndentStyle*: QsciLexerMakefilesetAutoIndentStyleProc
  setColor*: QsciLexerMakefilesetColorProc
  setEolFill*: QsciLexerMakefilesetEolFillProc
  setFont*: QsciLexerMakefilesetFontProc
  setPaper*: QsciLexerMakefilesetPaperProc
  readProperties*: QsciLexerMakefilereadPropertiesProc
  writeProperties*: QsciLexerMakefilewritePropertiesProc
  event*: QsciLexerMakefileeventProc
  eventFilter*: QsciLexerMakefileeventFilterProc
  timerEvent*: QsciLexerMakefiletimerEventProc
  childEvent*: QsciLexerMakefilechildEventProc
  customEvent*: QsciLexerMakefilecustomEventProc
  connectNotify*: QsciLexerMakefileconnectNotifyProc
  disconnectNotify*: QsciLexerMakefiledisconnectNotifyProc
proc QsciLexerMakefilemetaObject*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMakefile_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerMakefile_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerMakefilemetacast*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cstring): pointer =
  fcQsciLexerMakefile_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerMakefile_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerMakefilemetacall*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMakefile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerMakefile_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMakefile_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerMakefilelexer*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerMakefile_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerMakefilelexerId*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerMakefileautoCompletionFillups*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerMakefile_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerMakefileautoCompletionWordSeparators*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): seq[string] =
  var v_ma = fcQsciLexerMakefile_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerMakefile_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerMakefileblockEnd*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fcQsciLexerMakefile_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerMakefileblockLookback*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerMakefileblockStart*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fcQsciLexerMakefile_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerMakefileblockStartKeyword*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fcQsciLexerMakefile_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerMakefilebraceStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerMakefilecaseSensitive*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): bool =
  fcQsciLexerMakefile_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerMakefilecolor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefileeolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fcQsciLexerMakefile_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMakefile_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerMakefilefont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMakefile_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefileindentationGuideView*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerMakefilekeywords*(self: gen_qscilexermakefile_types.QsciLexerMakefile, set: cint): cstring =
  (fcQsciLexerMakefile_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerMakefile_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerMakefiledefaultStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerMakefile_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerMakefilepaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefiledefaultColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefiledefaultEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fcQsciLexerMakefile_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerMakefile_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerMakefiledefaultFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerMakefile_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefiledefaultPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerMakefile_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerMakefile_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerMakefilesetEditor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerMakefile_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerMakefile_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerMakefilerefreshProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): void =
  fcQsciLexerMakefile_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerMakefilestyleBitsNeeded*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fcQsciLexerMakefile_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerMakefile_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerMakefilewordCharacters*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerMakefile_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerMakefilesetAutoIndentStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, autoindentstyle: cint): void =
  fcQsciLexerMakefile_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerMakefile_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerMakefilesetColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMakefile_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMakefile_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerMakefilesetEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, eoffill: bool, style: cint): void =
  fcQsciLexerMakefile_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerMakefile_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerMakefilesetFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerMakefile_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerMakefile_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerMakefilesetPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerMakefile_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerMakefile_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerMakefilereadProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMakefile_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMakefile_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMakefilewriteProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerMakefile_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerMakefile_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMakefileevent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMakefile_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMakefile_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerMakefileeventFilter*(self: gen_qscilexermakefile_types.QsciLexerMakefile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerMakefile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerMakefile_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerMakefiletimerEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerMakefile_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMakefile_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerMakefilechildEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerMakefile_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMakefile_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerMakefilecustomEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerMakefile_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerMakefile_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerMakefileconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMakefile_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMakefile_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerMakefiledisconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerMakefile_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerMakefile_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerMakefileVTable](vtbl)
  let self = QsciLexerMakefile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscilexermakefile_types.QsciLexerMakefile,
    vtbl: ref QsciLexerMakefileVTable = nil): gen_qscilexermakefile_types.QsciLexerMakefile =
  let vtbl = if vtbl == nil: new QsciLexerMakefileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMakefileVTable, _: ptr cQsciLexerMakefile) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMakefileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMakefile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMakefile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMakefile_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMakefile_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMakefile_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMakefile_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMakefile_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMakefile_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMakefile_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMakefile_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMakefile_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMakefile_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMakefile_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMakefile_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMakefile_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMakefile_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMakefile_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMakefile_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMakefile_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMakefile_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMakefile_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMakefile_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMakefile_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMakefile_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMakefile_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMakefile_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMakefile_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMakefile_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMakefile_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMakefile_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMakefile_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMakefile_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMakefile_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMakefile_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMakefile_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMakefile_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMakefile_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMakefile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMakefile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMakefile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMakefile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMakefile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMakefile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMakefile_disconnectNotify
  gen_qscilexermakefile_types.QsciLexerMakefile(h: fcQsciLexerMakefile_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexermakefile_types.QsciLexerMakefile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerMakefileVTable = nil): gen_qscilexermakefile_types.QsciLexerMakefile =
  let vtbl = if vtbl == nil: new QsciLexerMakefileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerMakefileVTable, _: ptr cQsciLexerMakefile) {.cdecl.} =
    let vtbl = cast[ref QsciLexerMakefileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerMakefile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerMakefile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerMakefile_metacall
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerMakefile_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerMakefile_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerMakefile_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerMakefile_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerMakefile_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerMakefile_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerMakefile_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerMakefile_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerMakefile_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerMakefile_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerMakefile_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerMakefile_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerMakefile_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerMakefile_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerMakefile_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerMakefile_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerMakefile_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerMakefile_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerMakefile_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerMakefile_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerMakefile_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerMakefile_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerMakefile_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerMakefile_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerMakefile_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerMakefile_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerMakefile_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerMakefile_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerMakefile_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerMakefile_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerMakefile_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerMakefile_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerMakefile_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerMakefile_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerMakefile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerMakefile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerMakefile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerMakefile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerMakefile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerMakefile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerMakefile_disconnectNotify
  gen_qscilexermakefile_types.QsciLexerMakefile(h: fcQsciLexerMakefile_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexermakefile_types.QsciLexerMakefile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerMakefile_staticMetaObject())
proc delete*(self: gen_qscilexermakefile_types.QsciLexerMakefile) =
  fcQsciLexerMakefile_delete(self.h)
