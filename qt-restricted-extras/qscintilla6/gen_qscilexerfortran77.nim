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
{.compile("gen_qscilexerfortran77.cpp", cflags).}


type QsciLexerFortran77Enum* = cint
const
  QsciLexerFortran77Default* = 0
  QsciLexerFortran77Comment* = 1
  QsciLexerFortran77Number* = 2
  QsciLexerFortran77SingleQuotedString* = 3
  QsciLexerFortran77DoubleQuotedString* = 4
  QsciLexerFortran77UnclosedString* = 5
  QsciLexerFortran77Operator* = 6
  QsciLexerFortran77Identifier* = 7
  QsciLexerFortran77Keyword* = 8
  QsciLexerFortran77IntrinsicFunction* = 9
  QsciLexerFortran77ExtendedFunction* = 10
  QsciLexerFortran77PreProcessor* = 11
  QsciLexerFortran77DottedOperator* = 12
  QsciLexerFortran77Label* = 13
  QsciLexerFortran77Continuation* = 14



import gen_qscilexerfortran77_types
export gen_qscilexerfortran77_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerFortran77*{.exportc: "QsciLexerFortran77", incompleteStruct.} = object

proc fcQsciLexerFortran77_new(): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new".}
proc fcQsciLexerFortran77_new2(parent: pointer): ptr cQsciLexerFortran77 {.importc: "QsciLexerFortran77_new2".}
proc fcQsciLexerFortran77_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran77_metaObject".}
proc fcQsciLexerFortran77_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran77_metacast".}
proc fcQsciLexerFortran77_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran77_metacall".}
proc fcQsciLexerFortran77_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr".}
proc fcQsciLexerFortran77_language(self: pointer, ): cstring {.importc: "QsciLexerFortran77_language".}
proc fcQsciLexerFortran77_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran77_lexer".}
proc fcQsciLexerFortran77_braceStyle(self: pointer, ): cint {.importc: "QsciLexerFortran77_braceStyle".}
proc fcQsciLexerFortran77_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultColor".}
proc fcQsciLexerFortran77_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerFortran77_defaultEolFill".}
proc fcQsciLexerFortran77_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultFont".}
proc fcQsciLexerFortran77_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerFortran77_defaultPaper".}
proc fcQsciLexerFortran77_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran77_keywords".}
proc fcQsciLexerFortran77_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerFortran77_description".}
proc fcQsciLexerFortran77_refreshProperties(self: pointer, ): void {.importc: "QsciLexerFortran77_refreshProperties".}
proc fcQsciLexerFortran77_foldCompact(self: pointer, ): bool {.importc: "QsciLexerFortran77_foldCompact".}
proc fcQsciLexerFortran77_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerFortran77_setFoldCompact".}
proc fcQsciLexerFortran77_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerFortran77_tr2".}
proc fcQsciLexerFortran77_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerFortran77_tr3".}
proc fQsciLexerFortran77_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerFortran77_virtualbase_metacall".}
proc fcQsciLexerFortran77_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_metacall".}
proc fQsciLexerFortran77_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerFortran77_virtualbase_setFoldCompact".}
proc fcQsciLexerFortran77_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setFoldCompact".}
proc fcQsciLexerFortran77_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_language".}
proc fQsciLexerFortran77_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_lexer".}
proc fcQsciLexerFortran77_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_lexer".}
proc fQsciLexerFortran77_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_lexerId".}
proc fcQsciLexerFortran77_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_lexerId".}
proc fQsciLexerFortran77_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_autoCompletionFillups".}
proc fcQsciLexerFortran77_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_autoCompletionFillups".}
proc fQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerFortran77_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerFortran77_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerFortran77_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockEnd".}
proc fcQsciLexerFortran77_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockEnd".}
proc fQsciLexerFortran77_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_blockLookback".}
proc fcQsciLexerFortran77_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockLookback".}
proc fQsciLexerFortran77_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockStart".}
proc fcQsciLexerFortran77_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockStart".}
proc fQsciLexerFortran77_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran77_virtualbase_blockStartKeyword".}
proc fcQsciLexerFortran77_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_blockStartKeyword".}
proc fQsciLexerFortran77_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_braceStyle".}
proc fcQsciLexerFortran77_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_braceStyle".}
proc fQsciLexerFortran77_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerFortran77_virtualbase_caseSensitive".}
proc fcQsciLexerFortran77_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_caseSensitive".}
proc fQsciLexerFortran77_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_color".}
proc fcQsciLexerFortran77_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_color".}
proc fQsciLexerFortran77_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran77_virtualbase_eolFill".}
proc fcQsciLexerFortran77_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_eolFill".}
proc fQsciLexerFortran77_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_font".}
proc fcQsciLexerFortran77_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_font".}
proc fQsciLexerFortran77_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_indentationGuideView".}
proc fcQsciLexerFortran77_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_indentationGuideView".}
proc fQsciLexerFortran77_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerFortran77_virtualbase_keywords".}
proc fcQsciLexerFortran77_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_keywords".}
proc fQsciLexerFortran77_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_defaultStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultStyle".}
proc fcQsciLexerFortran77_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_description".}
proc fQsciLexerFortran77_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_paper".}
proc fcQsciLexerFortran77_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_paper".}
proc fQsciLexerFortran77_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultColorWithStyle".}
proc fQsciLexerFortran77_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran77_virtualbase_defaultEolFill".}
proc fcQsciLexerFortran77_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultEolFill".}
proc fQsciLexerFortran77_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultFontWithStyle".}
proc fQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran77_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerFortran77_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerFortran77_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerFortran77_virtualbase_setEditor".}
proc fcQsciLexerFortran77_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setEditor".}
proc fQsciLexerFortran77_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerFortran77_virtualbase_refreshProperties".}
proc fcQsciLexerFortran77_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_refreshProperties".}
proc fQsciLexerFortran77_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerFortran77_virtualbase_styleBitsNeeded".}
proc fcQsciLexerFortran77_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_styleBitsNeeded".}
proc fQsciLexerFortran77_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerFortran77_virtualbase_wordCharacters".}
proc fcQsciLexerFortran77_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_wordCharacters".}
proc fQsciLexerFortran77_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerFortran77_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerFortran77_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setAutoIndentStyle".}
proc fQsciLexerFortran77_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setColor".}
proc fcQsciLexerFortran77_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setColor".}
proc fQsciLexerFortran77_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setEolFill".}
proc fcQsciLexerFortran77_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setEolFill".}
proc fQsciLexerFortran77_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setFont".}
proc fcQsciLexerFortran77_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setFont".}
proc fQsciLexerFortran77_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran77_virtualbase_setPaper".}
proc fcQsciLexerFortran77_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_setPaper".}
proc fQsciLexerFortran77_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran77_virtualbase_readProperties".}
proc fcQsciLexerFortran77_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_readProperties".}
proc fQsciLexerFortran77_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran77_virtualbase_writeProperties".}
proc fcQsciLexerFortran77_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_writeProperties".}
proc fQsciLexerFortran77_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerFortran77_virtualbase_event".}
proc fcQsciLexerFortran77_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_event".}
proc fQsciLexerFortran77_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerFortran77_virtualbase_eventFilter".}
proc fcQsciLexerFortran77_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_eventFilter".}
proc fQsciLexerFortran77_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_timerEvent".}
proc fcQsciLexerFortran77_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_timerEvent".}
proc fQsciLexerFortran77_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_childEvent".}
proc fcQsciLexerFortran77_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_childEvent".}
proc fQsciLexerFortran77_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran77_virtualbase_customEvent".}
proc fcQsciLexerFortran77_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_customEvent".}
proc fQsciLexerFortran77_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran77_virtualbase_connectNotify".}
proc fcQsciLexerFortran77_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_connectNotify".}
proc fQsciLexerFortran77_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran77_virtualbase_disconnectNotify".}
proc fcQsciLexerFortran77_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran77_override_virtual_disconnectNotify".}
proc fcQsciLexerFortran77_staticMetaObject(): pointer {.importc: "QsciLexerFortran77_staticMetaObject".}
proc fcQsciLexerFortran77_delete(self: pointer) {.importc: "QsciLexerFortran77_delete".}


func init*(T: type QsciLexerFortran77, h: ptr cQsciLexerFortran77): QsciLexerFortran77 =
  T(h: h)
proc create*(T: type QsciLexerFortran77, ): QsciLexerFortran77 =

  QsciLexerFortran77.init(fcQsciLexerFortran77_new())
proc create*(T: type QsciLexerFortran77, parent: gen_qobject.QObject): QsciLexerFortran77 =

  QsciLexerFortran77.init(fcQsciLexerFortran77_new2(parent.h))
proc metaObject*(self: QsciLexerFortran77, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran77_metaObject(self.h))

proc metacast*(self: QsciLexerFortran77, param1: cstring): pointer =

  fcQsciLexerFortran77_metacast(self.h, param1)

proc metacall*(self: QsciLexerFortran77, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerFortran77_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerFortran77, s: cstring): string =

  let v_ms = fcQsciLexerFortran77_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerFortran77, ): cstring =

  (fcQsciLexerFortran77_language(self.h))

proc lexer*(self: QsciLexerFortran77, ): cstring =

  (fcQsciLexerFortran77_lexer(self.h))

proc braceStyle*(self: QsciLexerFortran77, ): cint =

  fcQsciLexerFortran77_braceStyle(self.h)

proc defaultColor*(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerFortran77_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerFortran77, style: cint): bool =

  fcQsciLexerFortran77_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerFortran77, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerFortran77_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerFortran77_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerFortran77, set: cint): cstring =

  (fcQsciLexerFortran77_keywords(self.h, set))

proc description*(self: QsciLexerFortran77, style: cint): string =

  let v_ms = fcQsciLexerFortran77_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerFortran77, ): void =

  fcQsciLexerFortran77_refreshProperties(self.h)

proc foldCompact*(self: QsciLexerFortran77, ): bool =

  fcQsciLexerFortran77_foldCompact(self.h)

proc setFoldCompact*(self: QsciLexerFortran77, fold: bool): void =

  fcQsciLexerFortran77_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerFortran77, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerFortran77_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerFortran77, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerFortran77_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerFortran77, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerFortran77_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerFortran77metacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77metacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77metacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_metacall(self: ptr cQsciLexerFortran77, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_metacall ".} =
  type Cb = proc(super: QsciLexerFortran77metacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerFortran77(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerFortran77, fold: bool): void =


  fQsciLexerFortran77_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerFortran77setFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setFoldCompact(self: ptr cQsciLexerFortran77, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerFortran77setFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerFortran77(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerFortran77languageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerFortran77, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_language(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerFortran77, ): cstring =


  (fQsciLexerFortran77_virtualbase_lexer(self.h))

type QsciLexerFortran77lexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77lexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77lexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_lexer(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_lexer ".} =
  type Cb = proc(super: QsciLexerFortran77lexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_lexerId(self.h)

type QsciLexerFortran77lexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77lexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77lexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_lexerId(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_lexerId ".} =
  type Cb = proc(super: QsciLexerFortran77lexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerFortran77, ): cstring =


  (fQsciLexerFortran77_virtualbase_autoCompletionFillups(self.h))

type QsciLexerFortran77autoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77autoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77autoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_autoCompletionFillups(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerFortran77autoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerFortran77, ): seq[string] =


  var v_ma = fQsciLexerFortran77_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerFortran77autoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77autoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77autoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_autoCompletionWordSeparators(self: ptr cQsciLexerFortran77, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerFortran77_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerFortran77autoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerFortran77, style: ptr cint): cstring =


  (fQsciLexerFortran77_virtualbase_blockEnd(self.h, style))

type QsciLexerFortran77blockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77blockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77blockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockEnd(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockEnd ".} =
  type Cb = proc(super: QsciLexerFortran77blockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_blockLookback(self.h)

type QsciLexerFortran77blockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77blockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77blockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockLookback(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockLookback ".} =
  type Cb = proc(super: QsciLexerFortran77blockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerFortran77, style: ptr cint): cstring =


  (fQsciLexerFortran77_virtualbase_blockStart(self.h, style))

type QsciLexerFortran77blockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77blockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77blockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockStart(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockStart ".} =
  type Cb = proc(super: QsciLexerFortran77blockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerFortran77, style: ptr cint): cstring =


  (fQsciLexerFortran77_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerFortran77blockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77blockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77blockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_blockStartKeyword(self: ptr cQsciLexerFortran77, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerFortran77blockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_braceStyle(self.h)

type QsciLexerFortran77braceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77braceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77braceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_braceStyle(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_braceStyle ".} =
  type Cb = proc(super: QsciLexerFortran77braceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerFortran77, ): bool =


  fQsciLexerFortran77_virtualbase_caseSensitive(self.h)

type QsciLexerFortran77caseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77caseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77caseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_caseSensitive(self: ptr cQsciLexerFortran77, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_caseSensitive ".} =
  type Cb = proc(super: QsciLexerFortran77caseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_color(self.h, style))

type QsciLexerFortran77colorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77colorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77colorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_color(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_color ".} =
  type Cb = proc(super: QsciLexerFortran77colorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerFortran77, style: cint): bool =


  fQsciLexerFortran77_virtualbase_eolFill(self.h, style)

type QsciLexerFortran77eolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77eolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77eolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_eolFill(self: ptr cQsciLexerFortran77, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_eolFill ".} =
  type Cb = proc(super: QsciLexerFortran77eolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerFortran77, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerFortran77_virtualbase_font(self.h, style))

type QsciLexerFortran77fontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77fontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77fontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_font(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_font ".} =
  type Cb = proc(super: QsciLexerFortran77fontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_indentationGuideView(self.h)

type QsciLexerFortran77indentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77indentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77indentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_indentationGuideView(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerFortran77indentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerFortran77, set: cint): cstring =


  (fQsciLexerFortran77_virtualbase_keywords(self.h, set))

type QsciLexerFortran77keywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77keywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77keywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_keywords(self: ptr cQsciLexerFortran77, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_keywords ".} =
  type Cb = proc(super: QsciLexerFortran77keywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerFortran77(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_defaultStyle(self.h)

type QsciLexerFortran77defaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77defaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77defaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultStyle(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultStyle ".} =
  type Cb = proc(super: QsciLexerFortran77defaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerFortran77descriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerFortran77, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_description(self: ptr cQsciLexerFortran77, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerFortran77_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_paper(self.h, style))

type QsciLexerFortran77paperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77paperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77paperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_paper(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_paper ".} =
  type Cb = proc(super: QsciLexerFortran77paperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerFortran77defaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77defaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77defaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultColorWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerFortran77defaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerFortran77, style: cint): bool =


  fQsciLexerFortran77_virtualbase_defaultEolFill(self.h, style)

type QsciLexerFortran77defaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77defaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77defaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultEolFill(self: ptr cQsciLexerFortran77, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerFortran77defaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerFortran77, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerFortran77_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerFortran77defaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77defaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77defaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultFontWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerFortran77defaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerFortran77, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran77_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerFortran77defaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77defaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77defaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_defaultPaperWithStyle(self: ptr cQsciLexerFortran77, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran77_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerFortran77defaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerFortran77(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerFortran77, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerFortran77_virtualbase_setEditor(self.h, editor.h)

type QsciLexerFortran77setEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setEditor(self: ptr cQsciLexerFortran77, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setEditor ".} =
  type Cb = proc(super: QsciLexerFortran77setEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerFortran77(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerFortran77, ): void =


  fQsciLexerFortran77_virtualbase_refreshProperties(self.h)

type QsciLexerFortran77refreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77refreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77refreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_refreshProperties(self: ptr cQsciLexerFortran77, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_refreshProperties ".} =
  type Cb = proc(super: QsciLexerFortran77refreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerFortran77(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerFortran77, ): cint =


  fQsciLexerFortran77_virtualbase_styleBitsNeeded(self.h)

type QsciLexerFortran77styleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77styleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77styleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_styleBitsNeeded(self: ptr cQsciLexerFortran77, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran77_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerFortran77styleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerFortran77, ): cstring =


  (fQsciLexerFortran77_virtualbase_wordCharacters(self.h))

type QsciLexerFortran77wordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77wordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77wordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_wordCharacters(self: ptr cQsciLexerFortran77, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran77_wordCharacters ".} =
  type Cb = proc(super: QsciLexerFortran77wordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerFortran77(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerFortran77, autoindentstyle: cint): void =


  fQsciLexerFortran77_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerFortran77setAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setAutoIndentStyle(self: ptr cQsciLexerFortran77, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerFortran77setAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerFortran77(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerFortran77, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerFortran77_virtualbase_setColor(self.h, c.h, style)

type QsciLexerFortran77setColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setColor(self: ptr cQsciLexerFortran77, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setColor ".} =
  type Cb = proc(super: QsciLexerFortran77setColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerFortran77(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerFortran77, eoffill: bool, style: cint): void =


  fQsciLexerFortran77_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerFortran77setEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setEolFill(self: ptr cQsciLexerFortran77, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setEolFill ".} =
  type Cb = proc(super: QsciLexerFortran77setEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerFortran77(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerFortran77, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerFortran77_virtualbase_setFont(self.h, f.h, style)

type QsciLexerFortran77setFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setFont(self: ptr cQsciLexerFortran77, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setFont ".} =
  type Cb = proc(super: QsciLexerFortran77setFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerFortran77(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerFortran77, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerFortran77_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerFortran77setPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77setPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77setPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_setPaper(self: ptr cQsciLexerFortran77, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_setPaper ".} =
  type Cb = proc(super: QsciLexerFortran77setPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerFortran77(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerFortran77, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerFortran77_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortran77readPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77readPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77readPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_readProperties(self: ptr cQsciLexerFortran77, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_readProperties ".} =
  type Cb = proc(super: QsciLexerFortran77readPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerFortran77(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerFortran77, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerFortran77_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortran77writePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77writePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77writePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_writeProperties(self: ptr cQsciLexerFortran77, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_writeProperties ".} =
  type Cb = proc(super: QsciLexerFortran77writePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerFortran77(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerFortran77, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerFortran77_virtualbase_event(self.h, event.h)

type QsciLexerFortran77eventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77eventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77eventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_event(self: ptr cQsciLexerFortran77, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_event ".} =
  type Cb = proc(super: QsciLexerFortran77eventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerFortran77(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerFortran77, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerFortran77_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerFortran77eventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77eventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77eventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_eventFilter(self: ptr cQsciLexerFortran77, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran77_eventFilter ".} =
  type Cb = proc(super: QsciLexerFortran77eventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerFortran77(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerFortran77, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerFortran77_virtualbase_timerEvent(self.h, event.h)

type QsciLexerFortran77timerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77timerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77timerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_timerEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_timerEvent ".} =
  type Cb = proc(super: QsciLexerFortran77timerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerFortran77(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerFortran77, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerFortran77_virtualbase_childEvent(self.h, event.h)

type QsciLexerFortran77childEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77childEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77childEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_childEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_childEvent ".} =
  type Cb = proc(super: QsciLexerFortran77childEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerFortran77(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerFortran77, event: gen_qcoreevent.QEvent): void =


  fQsciLexerFortran77_virtualbase_customEvent(self.h, event.h)

type QsciLexerFortran77customEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77customEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77customEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_customEvent(self: ptr cQsciLexerFortran77, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_customEvent ".} =
  type Cb = proc(super: QsciLexerFortran77customEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerFortran77(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerFortran77, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerFortran77_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerFortran77connectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77connectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77connectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_connectNotify(self: ptr cQsciLexerFortran77, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_connectNotify ".} =
  type Cb = proc(super: QsciLexerFortran77connectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerFortran77(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerFortran77, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerFortran77_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerFortran77disconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerFortran77, slot: proc(super: QsciLexerFortran77disconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortran77disconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran77_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran77_disconnectNotify(self: ptr cQsciLexerFortran77, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran77_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerFortran77disconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerFortran77(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerFortran77): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran77_staticMetaObject())
proc delete*(self: QsciLexerFortran77) =
  fcQsciLexerFortran77_delete(self.h)
