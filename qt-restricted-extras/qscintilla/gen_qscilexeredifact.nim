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
{.compile("gen_qscilexeredifact.cpp", cflags).}


type QsciLexerEDIFACTEnum* = cint
const
  QsciLexerEDIFACTDefault* = 0
  QsciLexerEDIFACTSegmentStart* = 1
  QsciLexerEDIFACTSegmentEnd* = 2
  QsciLexerEDIFACTElementSeparator* = 3
  QsciLexerEDIFACTCompositeSeparator* = 4
  QsciLexerEDIFACTReleaseSeparator* = 5
  QsciLexerEDIFACTUNASegmentHeader* = 6
  QsciLexerEDIFACTUNHSegmentHeader* = 7
  QsciLexerEDIFACTBadSegment* = 8



import gen_qscilexeredifact_types
export gen_qscilexeredifact_types

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

type cQsciLexerEDIFACT*{.exportc: "QsciLexerEDIFACT", incompleteStruct.} = object

proc fcQsciLexerEDIFACT_new(): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new".}
proc fcQsciLexerEDIFACT_new2(parent: pointer): ptr cQsciLexerEDIFACT {.importc: "QsciLexerEDIFACT_new2".}
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
proc fQsciLexerEDIFACT_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerEDIFACT_virtualbase_metacall".}
proc fcQsciLexerEDIFACT_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_metacall".}
proc fcQsciLexerEDIFACT_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_language".}
proc fQsciLexerEDIFACT_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_lexer".}
proc fcQsciLexerEDIFACT_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_lexer".}
proc fQsciLexerEDIFACT_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_lexerId".}
proc fcQsciLexerEDIFACT_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_lexerId".}
proc fQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionFillups".}
proc fcQsciLexerEDIFACT_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_autoCompletionFillups".}
proc fQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerEDIFACT_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockEnd".}
proc fcQsciLexerEDIFACT_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockEnd".}
proc fQsciLexerEDIFACT_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_blockLookback".}
proc fcQsciLexerEDIFACT_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockLookback".}
proc fQsciLexerEDIFACT_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockStart".}
proc fcQsciLexerEDIFACT_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockStart".}
proc fQsciLexerEDIFACT_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_blockStartKeyword".}
proc fcQsciLexerEDIFACT_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_blockStartKeyword".}
proc fQsciLexerEDIFACT_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_braceStyle".}
proc fcQsciLexerEDIFACT_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_braceStyle".}
proc fQsciLexerEDIFACT_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerEDIFACT_virtualbase_caseSensitive".}
proc fcQsciLexerEDIFACT_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_caseSensitive".}
proc fQsciLexerEDIFACT_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_color".}
proc fcQsciLexerEDIFACT_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_color".}
proc fQsciLexerEDIFACT_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerEDIFACT_virtualbase_eolFill".}
proc fcQsciLexerEDIFACT_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_eolFill".}
proc fQsciLexerEDIFACT_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_font".}
proc fcQsciLexerEDIFACT_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_font".}
proc fQsciLexerEDIFACT_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_indentationGuideView".}
proc fcQsciLexerEDIFACT_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_indentationGuideView".}
proc fQsciLexerEDIFACT_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerEDIFACT_virtualbase_keywords".}
proc fcQsciLexerEDIFACT_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_keywords".}
proc fQsciLexerEDIFACT_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_defaultStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultStyle".}
proc fcQsciLexerEDIFACT_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_description".}
proc fQsciLexerEDIFACT_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_paper".}
proc fcQsciLexerEDIFACT_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_paper".}
proc fQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultColorWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerEDIFACT_virtualbase_defaultEolFill".}
proc fcQsciLexerEDIFACT_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultEolFill".}
proc fQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultFontWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerEDIFACT_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerEDIFACT_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerEDIFACT_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_setEditor".}
proc fcQsciLexerEDIFACT_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setEditor".}
proc fQsciLexerEDIFACT_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerEDIFACT_virtualbase_refreshProperties".}
proc fcQsciLexerEDIFACT_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_refreshProperties".}
proc fQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerEDIFACT_virtualbase_styleBitsNeeded".}
proc fcQsciLexerEDIFACT_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_styleBitsNeeded".}
proc fQsciLexerEDIFACT_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerEDIFACT_virtualbase_wordCharacters".}
proc fcQsciLexerEDIFACT_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_wordCharacters".}
proc fQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerEDIFACT_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setAutoIndentStyle".}
proc fQsciLexerEDIFACT_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setColor".}
proc fcQsciLexerEDIFACT_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setColor".}
proc fQsciLexerEDIFACT_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setEolFill".}
proc fcQsciLexerEDIFACT_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setEolFill".}
proc fQsciLexerEDIFACT_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setFont".}
proc fcQsciLexerEDIFACT_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setFont".}
proc fQsciLexerEDIFACT_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerEDIFACT_virtualbase_setPaper".}
proc fcQsciLexerEDIFACT_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_setPaper".}
proc fQsciLexerEDIFACT_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerEDIFACT_virtualbase_readProperties".}
proc fcQsciLexerEDIFACT_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_readProperties".}
proc fQsciLexerEDIFACT_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerEDIFACT_virtualbase_writeProperties".}
proc fcQsciLexerEDIFACT_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_writeProperties".}
proc fQsciLexerEDIFACT_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerEDIFACT_virtualbase_event".}
proc fcQsciLexerEDIFACT_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_event".}
proc fQsciLexerEDIFACT_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerEDIFACT_virtualbase_eventFilter".}
proc fcQsciLexerEDIFACT_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_eventFilter".}
proc fQsciLexerEDIFACT_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_timerEvent".}
proc fcQsciLexerEDIFACT_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_timerEvent".}
proc fQsciLexerEDIFACT_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_childEvent".}
proc fcQsciLexerEDIFACT_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_childEvent".}
proc fQsciLexerEDIFACT_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_customEvent".}
proc fcQsciLexerEDIFACT_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_customEvent".}
proc fQsciLexerEDIFACT_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_connectNotify".}
proc fcQsciLexerEDIFACT_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_connectNotify".}
proc fQsciLexerEDIFACT_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerEDIFACT_virtualbase_disconnectNotify".}
proc fcQsciLexerEDIFACT_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerEDIFACT_override_virtual_disconnectNotify".}
proc fcQsciLexerEDIFACT_delete(self: pointer) {.importc: "QsciLexerEDIFACT_delete".}


func init*(T: type QsciLexerEDIFACT, h: ptr cQsciLexerEDIFACT): QsciLexerEDIFACT =
  T(h: h)
proc create*(T: type QsciLexerEDIFACT, ): QsciLexerEDIFACT =

  QsciLexerEDIFACT.init(fcQsciLexerEDIFACT_new())
proc create*(T: type QsciLexerEDIFACT, parent: gen_qobject.QObject): QsciLexerEDIFACT =

  QsciLexerEDIFACT.init(fcQsciLexerEDIFACT_new2(parent.h))
proc metaObject*(self: QsciLexerEDIFACT, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerEDIFACT_metaObject(self.h))

proc metacast*(self: QsciLexerEDIFACT, param1: cstring): pointer =

  fcQsciLexerEDIFACT_metacast(self.h, param1)

proc metacall*(self: QsciLexerEDIFACT, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerEDIFACT_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerEDIFACT, s: cstring): string =

  let v_ms = fcQsciLexerEDIFACT_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerEDIFACT, s: cstring): string =

  let v_ms = fcQsciLexerEDIFACT_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerEDIFACT, ): cstring =

  (fcQsciLexerEDIFACT_language(self.h))

proc lexer*(self: QsciLexerEDIFACT, ): cstring =

  (fcQsciLexerEDIFACT_lexer(self.h))

proc defaultColor*(self: QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerEDIFACT_defaultColor(self.h, style))

proc description*(self: QsciLexerEDIFACT, style: cint): string =

  let v_ms = fcQsciLexerEDIFACT_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerEDIFACT, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerEDIFACT_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerEDIFACT_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerEDIFACT, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerEDIFACT_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerEDIFACT, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerEDIFACT_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerEDIFACT, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerEDIFACT_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerEDIFACTmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_metacall(self: ptr cQsciLexerEDIFACT, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_metacall ".} =
  type Cb = proc(super: QsciLexerEDIFACTmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerEDIFACT(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerEDIFACTlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerEDIFACT, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_language(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerEDIFACT, ): cstring =


  (fQsciLexerEDIFACT_virtualbase_lexer(self.h))

type QsciLexerEDIFACTlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_lexer(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_lexer ".} =
  type Cb = proc(super: QsciLexerEDIFACTlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_lexerId(self.h)

type QsciLexerEDIFACTlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_lexerId(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_lexerId ".} =
  type Cb = proc(super: QsciLexerEDIFACTlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerEDIFACT, ): cstring =


  (fQsciLexerEDIFACT_virtualbase_autoCompletionFillups(self.h))

type QsciLexerEDIFACTautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_autoCompletionFillups(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerEDIFACTautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerEDIFACT, ): seq[string] =


  var v_ma = fQsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerEDIFACTautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_autoCompletionWordSeparators(self: ptr cQsciLexerEDIFACT, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerEDIFACTautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerEDIFACT, style: ptr cint): cstring =


  (fQsciLexerEDIFACT_virtualbase_blockEnd(self.h, style))

type QsciLexerEDIFACTblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockEnd(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockEnd ".} =
  type Cb = proc(super: QsciLexerEDIFACTblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_blockLookback(self.h)

type QsciLexerEDIFACTblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockLookback(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockLookback ".} =
  type Cb = proc(super: QsciLexerEDIFACTblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerEDIFACT, style: ptr cint): cstring =


  (fQsciLexerEDIFACT_virtualbase_blockStart(self.h, style))

type QsciLexerEDIFACTblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockStart(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockStart ".} =
  type Cb = proc(super: QsciLexerEDIFACTblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerEDIFACT, style: ptr cint): cstring =


  (fQsciLexerEDIFACT_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerEDIFACTblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_blockStartKeyword(self: ptr cQsciLexerEDIFACT, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerEDIFACTblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_braceStyle(self.h)

type QsciLexerEDIFACTbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_braceStyle(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_braceStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerEDIFACT, ): bool =


  fQsciLexerEDIFACT_virtualbase_caseSensitive(self.h)

type QsciLexerEDIFACTcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_caseSensitive(self: ptr cQsciLexerEDIFACT, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_caseSensitive ".} =
  type Cb = proc(super: QsciLexerEDIFACTcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_color(self.h, style))

type QsciLexerEDIFACTcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_color(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_color ".} =
  type Cb = proc(super: QsciLexerEDIFACTcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerEDIFACT, style: cint): bool =


  fQsciLexerEDIFACT_virtualbase_eolFill(self.h, style)

type QsciLexerEDIFACTeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_eolFill(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_eolFill ".} =
  type Cb = proc(super: QsciLexerEDIFACTeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerEDIFACT, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerEDIFACT_virtualbase_font(self.h, style))

type QsciLexerEDIFACTfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_font(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_font ".} =
  type Cb = proc(super: QsciLexerEDIFACTfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_indentationGuideView(self.h)

type QsciLexerEDIFACTindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_indentationGuideView(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerEDIFACTindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerEDIFACT, set: cint): cstring =


  (fQsciLexerEDIFACT_virtualbase_keywords(self.h, set))

type QsciLexerEDIFACTkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_keywords(self: ptr cQsciLexerEDIFACT, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_keywords ".} =
  type Cb = proc(super: QsciLexerEDIFACTkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerEDIFACT(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_defaultStyle(self.h)

type QsciLexerEDIFACTdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultStyle(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerEDIFACTdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerEDIFACT, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_description(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_paper(self.h, style))

type QsciLexerEDIFACTpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_paper(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_paper ".} =
  type Cb = proc(super: QsciLexerEDIFACTpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultColorWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerEDIFACT, style: cint): bool =


  fQsciLexerEDIFACT_virtualbase_defaultEolFill(self.h, style)

type QsciLexerEDIFACTdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultEolFill(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerEDIFACTdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerEDIFACT, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerEDIFACT_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultFontWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerEDIFACT, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerEDIFACTdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_defaultPaperWithStyle(self: ptr cQsciLexerEDIFACT, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerEDIFACT(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerEDIFACT, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerEDIFACT_virtualbase_setEditor(self.h, editor.h)

type QsciLexerEDIFACTsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setEditor(self: ptr cQsciLexerEDIFACT, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setEditor ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerEDIFACT(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerEDIFACT, ): void =


  fQsciLexerEDIFACT_virtualbase_refreshProperties(self.h)

type QsciLexerEDIFACTrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_refreshProperties(self: ptr cQsciLexerEDIFACT, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_refreshProperties ".} =
  type Cb = proc(super: QsciLexerEDIFACTrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerEDIFACT(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerEDIFACT, ): cint =


  fQsciLexerEDIFACT_virtualbase_styleBitsNeeded(self.h)

type QsciLexerEDIFACTstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_styleBitsNeeded(self: ptr cQsciLexerEDIFACT, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerEDIFACTstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerEDIFACT, ): cstring =


  (fQsciLexerEDIFACT_virtualbase_wordCharacters(self.h))

type QsciLexerEDIFACTwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_wordCharacters(self: ptr cQsciLexerEDIFACT, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_wordCharacters ".} =
  type Cb = proc(super: QsciLexerEDIFACTwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerEDIFACT(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerEDIFACT, autoindentstyle: cint): void =


  fQsciLexerEDIFACT_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerEDIFACTsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setAutoIndentStyle(self: ptr cQsciLexerEDIFACT, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerEDIFACT(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerEDIFACT, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerEDIFACT_virtualbase_setColor(self.h, c.h, style)

type QsciLexerEDIFACTsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setColor(self: ptr cQsciLexerEDIFACT, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setColor ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerEDIFACT(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerEDIFACT, eoffill: bool, style: cint): void =


  fQsciLexerEDIFACT_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerEDIFACTsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setEolFill(self: ptr cQsciLexerEDIFACT, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setEolFill ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerEDIFACT(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerEDIFACT, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerEDIFACT_virtualbase_setFont(self.h, f.h, style)

type QsciLexerEDIFACTsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setFont(self: ptr cQsciLexerEDIFACT, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setFont ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerEDIFACT(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerEDIFACT, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerEDIFACT_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerEDIFACTsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_setPaper(self: ptr cQsciLexerEDIFACT, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_setPaper ".} =
  type Cb = proc(super: QsciLexerEDIFACTsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerEDIFACT(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerEDIFACT, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerEDIFACT_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerEDIFACTreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_readProperties(self: ptr cQsciLexerEDIFACT, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_readProperties ".} =
  type Cb = proc(super: QsciLexerEDIFACTreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerEDIFACT(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerEDIFACT, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerEDIFACT_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerEDIFACTwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_writeProperties(self: ptr cQsciLexerEDIFACT, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_writeProperties ".} =
  type Cb = proc(super: QsciLexerEDIFACTwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerEDIFACT(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerEDIFACT, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerEDIFACT_virtualbase_event(self.h, event.h)

type QsciLexerEDIFACTeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_event(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_event ".} =
  type Cb = proc(super: QsciLexerEDIFACTeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerEDIFACT(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerEDIFACT, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerEDIFACT_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerEDIFACTeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_eventFilter(self: ptr cQsciLexerEDIFACT, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_eventFilter ".} =
  type Cb = proc(super: QsciLexerEDIFACTeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerEDIFACT(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerEDIFACT, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerEDIFACT_virtualbase_timerEvent(self.h, event.h)

type QsciLexerEDIFACTtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_timerEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_timerEvent ".} =
  type Cb = proc(super: QsciLexerEDIFACTtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerEDIFACT(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerEDIFACT, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerEDIFACT_virtualbase_childEvent(self.h, event.h)

type QsciLexerEDIFACTchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_childEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_childEvent ".} =
  type Cb = proc(super: QsciLexerEDIFACTchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerEDIFACT(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerEDIFACT, event: gen_qcoreevent.QEvent): void =


  fQsciLexerEDIFACT_virtualbase_customEvent(self.h, event.h)

type QsciLexerEDIFACTcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_customEvent(self: ptr cQsciLexerEDIFACT, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_customEvent ".} =
  type Cb = proc(super: QsciLexerEDIFACTcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerEDIFACT(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerEDIFACT, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerEDIFACT_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerEDIFACTconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_connectNotify(self: ptr cQsciLexerEDIFACT, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_connectNotify ".} =
  type Cb = proc(super: QsciLexerEDIFACTconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerEDIFACT(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerEDIFACT, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerEDIFACT_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerEDIFACTdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerEDIFACT, slot: proc(super: QsciLexerEDIFACTdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerEDIFACTdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerEDIFACT_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerEDIFACT_disconnectNotify(self: ptr cQsciLexerEDIFACT, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerEDIFACT_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerEDIFACTdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerEDIFACT(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerEDIFACT) =
  fcQsciLexerEDIFACT_delete(self.h)
