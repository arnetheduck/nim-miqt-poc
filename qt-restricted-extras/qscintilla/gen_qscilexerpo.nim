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


type QsciLexerPOEnum* = cint
const
  QsciLexerPODefault* = 0
  QsciLexerPOComment* = 1
  QsciLexerPOMessageId* = 2
  QsciLexerPOMessageIdText* = 3
  QsciLexerPOMessageString* = 4
  QsciLexerPOMessageStringText* = 5
  QsciLexerPOMessageContext* = 6
  QsciLexerPOMessageContextText* = 7
  QsciLexerPOFuzzy* = 8
  QsciLexerPOProgrammerComment* = 9
  QsciLexerPOReference* = 10
  QsciLexerPOFlags* = 11
  QsciLexerPOMessageIdTextEOL* = 12
  QsciLexerPOMessageStringTextEOL* = 13
  QsciLexerPOMessageContextTextEOL* = 14



import gen_qscilexerpo_types
export gen_qscilexerpo_types

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

type cQsciLexerPO*{.exportc: "QsciLexerPO", incompleteStruct.} = object

proc fcQsciLexerPO_new(): ptr cQsciLexerPO {.importc: "QsciLexerPO_new".}
proc fcQsciLexerPO_new2(parent: pointer): ptr cQsciLexerPO {.importc: "QsciLexerPO_new2".}
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
proc fQsciLexerPO_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerPO_virtualbase_metaObject".}
proc fcQsciLexerPO_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metaObject".}
proc fQsciLexerPO_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerPO_virtualbase_metacast".}
proc fcQsciLexerPO_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metacast".}
proc fQsciLexerPO_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerPO_virtualbase_metacall".}
proc fcQsciLexerPO_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_metacall".}
proc fQsciLexerPO_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerPO_virtualbase_setFoldComments".}
proc fcQsciLexerPO_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFoldComments".}
proc fQsciLexerPO_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerPO_virtualbase_setFoldCompact".}
proc fcQsciLexerPO_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFoldCompact".}
proc fcQsciLexerPO_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_language".}
proc fQsciLexerPO_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_lexer".}
proc fcQsciLexerPO_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_lexer".}
proc fQsciLexerPO_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_lexerId".}
proc fcQsciLexerPO_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_lexerId".}
proc fQsciLexerPO_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_autoCompletionFillups".}
proc fcQsciLexerPO_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_autoCompletionFillups".}
proc fQsciLexerPO_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerPO_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerPO_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerPO_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockEnd".}
proc fcQsciLexerPO_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockEnd".}
proc fQsciLexerPO_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_blockLookback".}
proc fcQsciLexerPO_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockLookback".}
proc fQsciLexerPO_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockStart".}
proc fcQsciLexerPO_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockStart".}
proc fQsciLexerPO_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerPO_virtualbase_blockStartKeyword".}
proc fcQsciLexerPO_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_blockStartKeyword".}
proc fQsciLexerPO_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_braceStyle".}
proc fcQsciLexerPO_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_braceStyle".}
proc fQsciLexerPO_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerPO_virtualbase_caseSensitive".}
proc fcQsciLexerPO_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_caseSensitive".}
proc fQsciLexerPO_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_color".}
proc fcQsciLexerPO_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_color".}
proc fQsciLexerPO_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPO_virtualbase_eolFill".}
proc fcQsciLexerPO_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_eolFill".}
proc fQsciLexerPO_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_font".}
proc fcQsciLexerPO_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_font".}
proc fQsciLexerPO_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_indentationGuideView".}
proc fcQsciLexerPO_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_indentationGuideView".}
proc fQsciLexerPO_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerPO_virtualbase_keywords".}
proc fcQsciLexerPO_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_keywords".}
proc fQsciLexerPO_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_defaultStyle".}
proc fcQsciLexerPO_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultStyle".}
proc fcQsciLexerPO_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_description".}
proc fQsciLexerPO_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_paper".}
proc fcQsciLexerPO_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_paper".}
proc fQsciLexerPO_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultColorWithStyle".}
proc fQsciLexerPO_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerPO_virtualbase_defaultEolFill".}
proc fcQsciLexerPO_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultEolFill".}
proc fQsciLexerPO_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultFontWithStyle".}
proc fQsciLexerPO_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerPO_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerPO_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerPO_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerPO_virtualbase_setEditor".}
proc fcQsciLexerPO_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setEditor".}
proc fQsciLexerPO_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerPO_virtualbase_refreshProperties".}
proc fcQsciLexerPO_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_refreshProperties".}
proc fQsciLexerPO_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerPO_virtualbase_styleBitsNeeded".}
proc fcQsciLexerPO_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_styleBitsNeeded".}
proc fQsciLexerPO_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerPO_virtualbase_wordCharacters".}
proc fcQsciLexerPO_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_wordCharacters".}
proc fQsciLexerPO_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerPO_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerPO_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setAutoIndentStyle".}
proc fQsciLexerPO_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setColor".}
proc fcQsciLexerPO_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setColor".}
proc fQsciLexerPO_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerPO_virtualbase_setEolFill".}
proc fcQsciLexerPO_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setEolFill".}
proc fQsciLexerPO_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setFont".}
proc fcQsciLexerPO_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setFont".}
proc fQsciLexerPO_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerPO_virtualbase_setPaper".}
proc fcQsciLexerPO_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_setPaper".}
proc fQsciLexerPO_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPO_virtualbase_readProperties".}
proc fcQsciLexerPO_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_readProperties".}
proc fQsciLexerPO_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerPO_virtualbase_writeProperties".}
proc fcQsciLexerPO_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_writeProperties".}
proc fQsciLexerPO_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerPO_virtualbase_event".}
proc fcQsciLexerPO_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_event".}
proc fQsciLexerPO_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerPO_virtualbase_eventFilter".}
proc fcQsciLexerPO_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_eventFilter".}
proc fQsciLexerPO_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_timerEvent".}
proc fcQsciLexerPO_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_timerEvent".}
proc fQsciLexerPO_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_childEvent".}
proc fcQsciLexerPO_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_childEvent".}
proc fQsciLexerPO_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerPO_virtualbase_customEvent".}
proc fcQsciLexerPO_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_customEvent".}
proc fQsciLexerPO_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPO_virtualbase_connectNotify".}
proc fcQsciLexerPO_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_connectNotify".}
proc fQsciLexerPO_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerPO_virtualbase_disconnectNotify".}
proc fcQsciLexerPO_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerPO_override_virtual_disconnectNotify".}
proc fcQsciLexerPO_staticMetaObject(): pointer {.importc: "QsciLexerPO_staticMetaObject".}
proc fcQsciLexerPO_delete(self: pointer) {.importc: "QsciLexerPO_delete".}


func init*(T: type QsciLexerPO, h: ptr cQsciLexerPO): QsciLexerPO =
  T(h: h)
proc create*(T: type QsciLexerPO, ): QsciLexerPO =

  QsciLexerPO.init(fcQsciLexerPO_new())
proc create*(T: type QsciLexerPO, parent: gen_qobject.QObject): QsciLexerPO =

  QsciLexerPO.init(fcQsciLexerPO_new2(parent.h))
proc metaObject*(self: QsciLexerPO, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPO_metaObject(self.h))

proc metacast*(self: QsciLexerPO, param1: cstring): pointer =

  fcQsciLexerPO_metacast(self.h, param1)

proc metacall*(self: QsciLexerPO, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerPO_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerPO, s: cstring): string =

  let v_ms = fcQsciLexerPO_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerPO, s: cstring): string =

  let v_ms = fcQsciLexerPO_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerPO, ): cstring =

  (fcQsciLexerPO_language(self.h))

proc lexer*(self: QsciLexerPO, ): cstring =

  (fcQsciLexerPO_lexer(self.h))

proc defaultColor*(self: QsciLexerPO, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerPO_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerPO, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerPO_defaultFont(self.h, style))

proc description*(self: QsciLexerPO, style: cint): string =

  let v_ms = fcQsciLexerPO_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerPO, ): void =

  fcQsciLexerPO_refreshProperties(self.h)

proc foldComments*(self: QsciLexerPO, ): bool =

  fcQsciLexerPO_foldComments(self.h)

proc foldCompact*(self: QsciLexerPO, ): bool =

  fcQsciLexerPO_foldCompact(self.h)

proc setFoldComments*(self: QsciLexerPO, fold: bool): void =

  fcQsciLexerPO_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerPO, fold: bool): void =

  fcQsciLexerPO_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerPO, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPO_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerPO, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPO_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerPO, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerPO_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerPO, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerPO_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerPO, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerPO_virtualbase_metaObject(self.h))

type QsciLexerPOmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerPO, slot: proc(super: QsciLexerPOmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metaObject(self: ptr cQsciLexerPO, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_metaObject ".} =
  type Cb = proc(super: QsciLexerPOmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerPO, param1: cstring): pointer =


  fQsciLexerPO_virtualbase_metacast(self.h, param1)

type QsciLexerPOmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerPO, slot: proc(super: QsciLexerPOmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metacast(self: ptr cQsciLexerPO, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_metacast ".} =
  type Cb = proc(super: QsciLexerPOmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerPO(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerPO, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerPO_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPOmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerPO, slot: proc(super: QsciLexerPOmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_metacall(self: ptr cQsciLexerPO, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerPO_metacall ".} =
  type Cb = proc(super: QsciLexerPOmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerPO(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldComments(self: QsciLexerPO, fold: bool): void =


  fQsciLexerPO_virtualbase_setFoldComments(self.h, fold)

type QsciLexerPOsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFoldComments(self: ptr cQsciLexerPO, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFoldComments ".} =
  type Cb = proc(super: QsciLexerPOsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerPO(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerPO, fold: bool): void =


  fQsciLexerPO_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPOsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFoldCompact(self: ptr cQsciLexerPO, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPOsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerPO(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPOlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerPO, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_language(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerPO, ): cstring =


  (fQsciLexerPO_virtualbase_lexer(self.h))

type QsciLexerPOlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerPO, slot: proc(super: QsciLexerPOlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_lexer(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_lexer ".} =
  type Cb = proc(super: QsciLexerPOlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_lexerId(self.h)

type QsciLexerPOlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerPO, slot: proc(super: QsciLexerPOlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_lexerId(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_lexerId ".} =
  type Cb = proc(super: QsciLexerPOlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerPO, ): cstring =


  (fQsciLexerPO_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPOautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerPO, slot: proc(super: QsciLexerPOautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_autoCompletionFillups(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPOautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerPO, ): seq[string] =


  var v_ma = fQsciLexerPO_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPOautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerPO, slot: proc(super: QsciLexerPOautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_autoCompletionWordSeparators(self: ptr cQsciLexerPO, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerPO_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPOautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerPO, style: ptr cint): cstring =


  (fQsciLexerPO_virtualbase_blockEnd(self.h, style))

type QsciLexerPOblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerPO, slot: proc(super: QsciLexerPOblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockEnd(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockEnd ".} =
  type Cb = proc(super: QsciLexerPOblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_blockLookback(self.h)

type QsciLexerPOblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerPO, slot: proc(super: QsciLexerPOblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockLookback(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_blockLookback ".} =
  type Cb = proc(super: QsciLexerPOblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerPO, style: ptr cint): cstring =


  (fQsciLexerPO_virtualbase_blockStart(self.h, style))

type QsciLexerPOblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerPO, slot: proc(super: QsciLexerPOblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockStart(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockStart ".} =
  type Cb = proc(super: QsciLexerPOblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerPO, style: ptr cint): cstring =


  (fQsciLexerPO_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPOblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerPO, slot: proc(super: QsciLexerPOblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_blockStartKeyword(self: ptr cQsciLexerPO, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPOblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_braceStyle(self.h)

type QsciLexerPObraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPObraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPObraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_braceStyle(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_braceStyle ".} =
  type Cb = proc(super: QsciLexerPObraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerPO, ): bool =


  fQsciLexerPO_virtualbase_caseSensitive(self.h)

type QsciLexerPOcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerPO, slot: proc(super: QsciLexerPOcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_caseSensitive(self: ptr cQsciLexerPO, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerPO_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPOcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerPO, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_color(self.h, style))

type QsciLexerPOcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerPO, slot: proc(super: QsciLexerPOcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_color(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_color ".} =
  type Cb = proc(super: QsciLexerPOcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerPO, style: cint): bool =


  fQsciLexerPO_virtualbase_eolFill(self.h, style)

type QsciLexerPOeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerPO, slot: proc(super: QsciLexerPOeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_eolFill(self: ptr cQsciLexerPO, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPO_eolFill ".} =
  type Cb = proc(super: QsciLexerPOeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerPO, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPO_virtualbase_font(self.h, style))

type QsciLexerPOfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerPO, slot: proc(super: QsciLexerPOfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_font(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_font ".} =
  type Cb = proc(super: QsciLexerPOfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_indentationGuideView(self.h)

type QsciLexerPOindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerPO, slot: proc(super: QsciLexerPOindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_indentationGuideView(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPOindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerPO, set: cint): cstring =


  (fQsciLexerPO_virtualbase_keywords(self.h, set))

type QsciLexerPOkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerPO, slot: proc(super: QsciLexerPOkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_keywords(self: ptr cQsciLexerPO, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_keywords ".} =
  type Cb = proc(super: QsciLexerPOkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerPO(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_defaultStyle(self.h)

type QsciLexerPOdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultStyle(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPOdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPOdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerPO, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_description(self: ptr cQsciLexerPO, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerPO_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerPO, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_paper(self.h, style))

type QsciLexerPOpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerPO, slot: proc(super: QsciLexerPOpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_paper(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_paper ".} =
  type Cb = proc(super: QsciLexerPOpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerPO, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPOdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultColorWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPOdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerPO, style: cint): bool =


  fQsciLexerPO_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPOdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultEolFill(self: ptr cQsciLexerPO, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerPO_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPOdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerPO, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerPO_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPOdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultFontWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPOdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerPO, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerPO_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPOdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_defaultPaperWithStyle(self: ptr cQsciLexerPO, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerPO_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPOdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerPO(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerPO, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerPO_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPOsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setEditor(self: ptr cQsciLexerPO, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_setEditor ".} =
  type Cb = proc(super: QsciLexerPOsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerPO(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerPO, ): void =


  fQsciLexerPO_virtualbase_refreshProperties(self.h)

type QsciLexerPOrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerPO, slot: proc(super: QsciLexerPOrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_refreshProperties(self: ptr cQsciLexerPO, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerPO_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPOrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerPO(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerPO, ): cint =


  fQsciLexerPO_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPOstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerPO, slot: proc(super: QsciLexerPOstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_styleBitsNeeded(self: ptr cQsciLexerPO, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerPO_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPOstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerPO, ): cstring =


  (fQsciLexerPO_virtualbase_wordCharacters(self.h))

type QsciLexerPOwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerPO, slot: proc(super: QsciLexerPOwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_wordCharacters(self: ptr cQsciLexerPO, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerPO_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPOwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerPO(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerPO, autoindentstyle: cint): void =


  fQsciLexerPO_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPOsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setAutoIndentStyle(self: ptr cQsciLexerPO, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPOsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerPO(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerPO, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPO_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPOsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setColor(self: ptr cQsciLexerPO, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setColor ".} =
  type Cb = proc(super: QsciLexerPOsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerPO(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerPO, eoffill: bool, style: cint): void =


  fQsciLexerPO_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPOsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setEolFill(self: ptr cQsciLexerPO, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setEolFill ".} =
  type Cb = proc(super: QsciLexerPOsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerPO(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerPO, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerPO_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPOsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setFont(self: ptr cQsciLexerPO, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setFont ".} =
  type Cb = proc(super: QsciLexerPOsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerPO(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerPO, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerPO_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPOsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerPO, slot: proc(super: QsciLexerPOsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_setPaper(self: ptr cQsciLexerPO, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerPO_setPaper ".} =
  type Cb = proc(super: QsciLexerPOsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerPO(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerPO, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPO_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerPO, slot: proc(super: QsciLexerPOreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_readProperties(self: ptr cQsciLexerPO, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPO_readProperties ".} =
  type Cb = proc(super: QsciLexerPOreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerPO(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerPO, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerPO_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPOwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerPO, slot: proc(super: QsciLexerPOwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_writeProperties(self: ptr cQsciLexerPO, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerPO_writeProperties ".} =
  type Cb = proc(super: QsciLexerPOwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerPO(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerPO, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPO_virtualbase_event(self.h, event.h)

type QsciLexerPOeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerPO, slot: proc(super: QsciLexerPOeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_event(self: ptr cQsciLexerPO, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPO_event ".} =
  type Cb = proc(super: QsciLexerPOeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerPO(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerPO, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerPO_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPOeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerPO, slot: proc(super: QsciLexerPOeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_eventFilter(self: ptr cQsciLexerPO, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerPO_eventFilter ".} =
  type Cb = proc(super: QsciLexerPOeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerPO(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerPO, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerPO_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPOtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerPO, slot: proc(super: QsciLexerPOtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_timerEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_timerEvent ".} =
  type Cb = proc(super: QsciLexerPOtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerPO(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerPO, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerPO_virtualbase_childEvent(self.h, event.h)

type QsciLexerPOchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerPO, slot: proc(super: QsciLexerPOchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_childEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_childEvent ".} =
  type Cb = proc(super: QsciLexerPOchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerPO(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerPO, event: gen_qcoreevent.QEvent): void =


  fQsciLexerPO_virtualbase_customEvent(self.h, event.h)

type QsciLexerPOcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerPO, slot: proc(super: QsciLexerPOcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_customEvent(self: ptr cQsciLexerPO, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_customEvent ".} =
  type Cb = proc(super: QsciLexerPOcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerPO(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerPO, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPO_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPOconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerPO, slot: proc(super: QsciLexerPOconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_connectNotify(self: ptr cQsciLexerPO, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_connectNotify ".} =
  type Cb = proc(super: QsciLexerPOconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerPO(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerPO, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerPO_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPOdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerPO, slot: proc(super: QsciLexerPOdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPOdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerPO_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerPO_disconnectNotify(self: ptr cQsciLexerPO, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerPO_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPOdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerPO(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerPO): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerPO_staticMetaObject())
proc delete*(self: QsciLexerPO) =
  fcQsciLexerPO_delete(self.h)
