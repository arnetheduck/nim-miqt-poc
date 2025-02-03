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
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexerhtml,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexerhtml,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerXML*{.exportc: "QsciLexerXML", incompleteStruct.} = object

proc fcQsciLexerXML_new(): ptr cQsciLexerXML {.importc: "QsciLexerXML_new".}
proc fcQsciLexerXML_new2(parent: pointer): ptr cQsciLexerXML {.importc: "QsciLexerXML_new2".}
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
proc fQsciLexerXML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerXML_virtualbase_metacall".}
proc fcQsciLexerXML_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_metacall".}
proc fQsciLexerXML_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerXML_virtualbase_setFoldCompact".}
proc fcQsciLexerXML_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setFoldCompact".}
proc fQsciLexerXML_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerXML_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerXML_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setFoldPreprocessor".}
proc fQsciLexerXML_virtualbase_setCaseSensitiveTags(self: pointer, sens: bool): void{.importc: "QsciLexerXML_virtualbase_setCaseSensitiveTags".}
proc fcQsciLexerXML_override_virtual_setCaseSensitiveTags(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setCaseSensitiveTags".}
proc fcQsciLexerXML_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_language".}
proc fQsciLexerXML_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerXML_virtualbase_lexer".}
proc fcQsciLexerXML_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_lexer".}
proc fQsciLexerXML_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_lexerId".}
proc fcQsciLexerXML_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_lexerId".}
proc fQsciLexerXML_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerXML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerXML_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_autoCompletionFillups".}
proc fQsciLexerXML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerXML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerXML_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerXML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerXML_virtualbase_blockEnd".}
proc fcQsciLexerXML_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_blockEnd".}
proc fQsciLexerXML_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_blockLookback".}
proc fcQsciLexerXML_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_blockLookback".}
proc fQsciLexerXML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerXML_virtualbase_blockStart".}
proc fcQsciLexerXML_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_blockStart".}
proc fQsciLexerXML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerXML_virtualbase_blockStartKeyword".}
proc fcQsciLexerXML_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_blockStartKeyword".}
proc fQsciLexerXML_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_braceStyle".}
proc fcQsciLexerXML_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_braceStyle".}
proc fQsciLexerXML_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerXML_virtualbase_caseSensitive".}
proc fcQsciLexerXML_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_caseSensitive".}
proc fQsciLexerXML_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_color".}
proc fcQsciLexerXML_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_color".}
proc fQsciLexerXML_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerXML_virtualbase_eolFill".}
proc fcQsciLexerXML_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_eolFill".}
proc fQsciLexerXML_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_font".}
proc fcQsciLexerXML_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_font".}
proc fQsciLexerXML_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_indentationGuideView".}
proc fcQsciLexerXML_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_indentationGuideView".}
proc fQsciLexerXML_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerXML_virtualbase_keywords".}
proc fcQsciLexerXML_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_keywords".}
proc fQsciLexerXML_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_defaultStyle".}
proc fcQsciLexerXML_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_defaultStyle".}
proc fcQsciLexerXML_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_description".}
proc fQsciLexerXML_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_paper".}
proc fcQsciLexerXML_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_paper".}
proc fQsciLexerXML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerXML_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_defaultColorWithStyle".}
proc fQsciLexerXML_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerXML_virtualbase_defaultEolFill".}
proc fcQsciLexerXML_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_defaultEolFill".}
proc fQsciLexerXML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerXML_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_defaultFontWithStyle".}
proc fQsciLexerXML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerXML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerXML_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerXML_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerXML_virtualbase_setEditor".}
proc fcQsciLexerXML_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setEditor".}
proc fQsciLexerXML_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerXML_virtualbase_refreshProperties".}
proc fcQsciLexerXML_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_refreshProperties".}
proc fQsciLexerXML_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerXML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerXML_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_styleBitsNeeded".}
proc fQsciLexerXML_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerXML_virtualbase_wordCharacters".}
proc fcQsciLexerXML_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_wordCharacters".}
proc fQsciLexerXML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerXML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerXML_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setAutoIndentStyle".}
proc fQsciLexerXML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerXML_virtualbase_setColor".}
proc fcQsciLexerXML_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setColor".}
proc fQsciLexerXML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerXML_virtualbase_setEolFill".}
proc fcQsciLexerXML_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setEolFill".}
proc fQsciLexerXML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerXML_virtualbase_setFont".}
proc fcQsciLexerXML_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setFont".}
proc fQsciLexerXML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerXML_virtualbase_setPaper".}
proc fcQsciLexerXML_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_setPaper".}
proc fQsciLexerXML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerXML_virtualbase_readProperties".}
proc fcQsciLexerXML_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_readProperties".}
proc fQsciLexerXML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerXML_virtualbase_writeProperties".}
proc fcQsciLexerXML_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_writeProperties".}
proc fQsciLexerXML_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerXML_virtualbase_event".}
proc fcQsciLexerXML_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_event".}
proc fQsciLexerXML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerXML_virtualbase_eventFilter".}
proc fcQsciLexerXML_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_eventFilter".}
proc fQsciLexerXML_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerXML_virtualbase_timerEvent".}
proc fcQsciLexerXML_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_timerEvent".}
proc fQsciLexerXML_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerXML_virtualbase_childEvent".}
proc fcQsciLexerXML_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_childEvent".}
proc fQsciLexerXML_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerXML_virtualbase_customEvent".}
proc fcQsciLexerXML_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_customEvent".}
proc fQsciLexerXML_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerXML_virtualbase_connectNotify".}
proc fcQsciLexerXML_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_connectNotify".}
proc fQsciLexerXML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerXML_virtualbase_disconnectNotify".}
proc fcQsciLexerXML_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_disconnectNotify".}
proc fcQsciLexerXML_delete(self: pointer) {.importc: "QsciLexerXML_delete".}


func init*(T: type QsciLexerXML, h: ptr cQsciLexerXML): QsciLexerXML =
  T(h: h)
proc create*(T: type QsciLexerXML, ): QsciLexerXML =

  QsciLexerXML.init(fcQsciLexerXML_new())
proc create*(T: type QsciLexerXML, parent: gen_qobject.QObject): QsciLexerXML =

  QsciLexerXML.init(fcQsciLexerXML_new2(parent.h))
proc metaObject*(self: QsciLexerXML, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerXML_metaObject(self.h))

proc metacast*(self: QsciLexerXML, param1: cstring): pointer =

  fcQsciLexerXML_metacast(self.h, param1)

proc metacall*(self: QsciLexerXML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerXML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerXML, s: cstring): string =

  let v_ms = fcQsciLexerXML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerXML, s: cstring): string =

  let v_ms = fcQsciLexerXML_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerXML, ): cstring =

  (fcQsciLexerXML_language(self.h))

proc lexer*(self: QsciLexerXML, ): cstring =

  (fcQsciLexerXML_lexer(self.h))

proc defaultColor*(self: QsciLexerXML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerXML_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerXML, style: cint): bool =

  fcQsciLexerXML_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerXML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerXML_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerXML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerXML_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerXML, set: cint): cstring =

  (fcQsciLexerXML_keywords(self.h, set))

proc refreshProperties*(self: QsciLexerXML, ): void =

  fcQsciLexerXML_refreshProperties(self.h)

proc setScriptsStyled*(self: QsciLexerXML, styled: bool): void =

  fcQsciLexerXML_setScriptsStyled(self.h, styled)

proc scriptsStyled*(self: QsciLexerXML, ): bool =

  fcQsciLexerXML_scriptsStyled(self.h)

proc tr2*(_: type QsciLexerXML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerXML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerXML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerXML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerXML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerXML_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerXML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerXML_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerXML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerXML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerXMLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_metacall(self: ptr cQsciLexerXML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerXML_metacall ".} =
  type Cb = proc(super: QsciLexerXMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerXML(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerXML, fold: bool): void =


  fQsciLexerXML_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerXMLsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFoldCompact(self: ptr cQsciLexerXML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerXMLsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerXML(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerXML, fold: bool): void =


  fQsciLexerXML_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerXMLsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFoldPreprocessor(self: ptr cQsciLexerXML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerXMLsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerXML(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaseSensitiveTags(self: QsciLexerXML, sens: bool): void =


  fQsciLexerXML_virtualbase_setCaseSensitiveTags(self.h, sens)

type QsciLexerXMLsetCaseSensitiveTagsBase* = proc(sens: bool): void
proc onsetCaseSensitiveTags*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetCaseSensitiveTagsBase, sens: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetCaseSensitiveTagsBase, sens: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setCaseSensitiveTags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setCaseSensitiveTags(self: ptr cQsciLexerXML, slot: int, sens: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setCaseSensitiveTags ".} =
  type Cb = proc(super: QsciLexerXMLsetCaseSensitiveTagsBase, sens: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sens: bool): auto =
    callVirtualBase_setCaseSensitiveTags(QsciLexerXML(h: self), sens)
  let slotval1 = sens


  nimfunc[](superCall, slotval1)
type QsciLexerXMLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerXML, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_language(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerXML, ): cstring =


  (fQsciLexerXML_virtualbase_lexer(self.h))

type QsciLexerXMLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_lexer(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_lexer ".} =
  type Cb = proc(super: QsciLexerXMLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_lexerId(self.h)

type QsciLexerXMLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_lexerId(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_lexerId ".} =
  type Cb = proc(super: QsciLexerXMLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerXML, ): cstring =


  (fQsciLexerXML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerXMLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_autoCompletionFillups(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerXMLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerXML, ): seq[string] =


  var v_ma = fQsciLexerXML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerXMLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_autoCompletionWordSeparators(self: ptr cQsciLexerXML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerXML_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerXMLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerXML, style: ptr cint): cstring =


  (fQsciLexerXML_virtualbase_blockEnd(self.h, style))

type QsciLexerXMLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockEnd(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockEnd ".} =
  type Cb = proc(super: QsciLexerXMLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_blockLookback(self.h)

type QsciLexerXMLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockLookback(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_blockLookback ".} =
  type Cb = proc(super: QsciLexerXMLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerXML, style: ptr cint): cstring =


  (fQsciLexerXML_virtualbase_blockStart(self.h, style))

type QsciLexerXMLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockStart(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockStart ".} =
  type Cb = proc(super: QsciLexerXMLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerXML, style: ptr cint): cstring =


  (fQsciLexerXML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerXMLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockStartKeyword(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerXMLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_braceStyle(self.h)

type QsciLexerXMLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_braceStyle(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_braceStyle ".} =
  type Cb = proc(super: QsciLexerXMLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerXML, ): bool =


  fQsciLexerXML_virtualbase_caseSensitive(self.h)

type QsciLexerXMLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_caseSensitive(self: ptr cQsciLexerXML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerXML_caseSensitive ".} =
  type Cb = proc(super: QsciLexerXMLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerXML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_color(self.h, style))

type QsciLexerXMLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_color(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_color ".} =
  type Cb = proc(super: QsciLexerXMLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerXML, style: cint): bool =


  fQsciLexerXML_virtualbase_eolFill(self.h, style)

type QsciLexerXMLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_eolFill(self: ptr cQsciLexerXML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerXML_eolFill ".} =
  type Cb = proc(super: QsciLexerXMLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerXML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerXML_virtualbase_font(self.h, style))

type QsciLexerXMLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_font(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_font ".} =
  type Cb = proc(super: QsciLexerXMLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_indentationGuideView(self.h)

type QsciLexerXMLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_indentationGuideView(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerXMLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerXML, set: cint): cstring =


  (fQsciLexerXML_virtualbase_keywords(self.h, set))

type QsciLexerXMLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_keywords(self: ptr cQsciLexerXML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_keywords ".} =
  type Cb = proc(super: QsciLexerXMLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerXML(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_defaultStyle(self.h)

type QsciLexerXMLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultStyle(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_defaultStyle ".} =
  type Cb = proc(super: QsciLexerXMLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerXMLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerXML, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_description(self: ptr cQsciLexerXML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerXML_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerXML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_paper(self.h, style))

type QsciLexerXMLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_paper(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_paper ".} =
  type Cb = proc(super: QsciLexerXMLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerXML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerXMLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultColorWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerXMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerXML, style: cint): bool =


  fQsciLexerXML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerXMLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultEolFill(self: ptr cQsciLexerXML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerXML_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerXMLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerXML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerXML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerXMLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultFontWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerXMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerXML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerXMLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultPaperWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerXMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerXML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerXML, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerXML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerXMLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setEditor(self: ptr cQsciLexerXML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_setEditor ".} =
  type Cb = proc(super: QsciLexerXMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerXML(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerXML, ): void =


  fQsciLexerXML_virtualbase_refreshProperties(self.h)

type QsciLexerXMLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_refreshProperties(self: ptr cQsciLexerXML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerXML_refreshProperties ".} =
  type Cb = proc(super: QsciLexerXMLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerXML(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerXML, ): cint =


  fQsciLexerXML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerXMLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_styleBitsNeeded(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerXMLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerXML, ): cstring =


  (fQsciLexerXML_virtualbase_wordCharacters(self.h))

type QsciLexerXMLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_wordCharacters(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_wordCharacters ".} =
  type Cb = proc(super: QsciLexerXMLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerXML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerXML, autoindentstyle: cint): void =


  fQsciLexerXML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerXMLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setAutoIndentStyle(self: ptr cQsciLexerXML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerXMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerXML(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerXML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerXML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerXMLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setColor(self: ptr cQsciLexerXML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setColor ".} =
  type Cb = proc(super: QsciLexerXMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerXML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerXML, eoffill: bool, style: cint): void =


  fQsciLexerXML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerXMLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setEolFill(self: ptr cQsciLexerXML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setEolFill ".} =
  type Cb = proc(super: QsciLexerXMLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerXML(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerXML, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerXML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerXMLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFont(self: ptr cQsciLexerXML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFont ".} =
  type Cb = proc(super: QsciLexerXMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerXML(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerXML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerXML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerXMLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setPaper(self: ptr cQsciLexerXML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setPaper ".} =
  type Cb = proc(super: QsciLexerXMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerXML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerXML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerXML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerXMLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_readProperties(self: ptr cQsciLexerXML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerXML_readProperties ".} =
  type Cb = proc(super: QsciLexerXMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerXML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerXML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerXML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerXMLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_writeProperties(self: ptr cQsciLexerXML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerXML_writeProperties ".} =
  type Cb = proc(super: QsciLexerXMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerXML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerXML, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerXML_virtualbase_event(self.h, event.h)

type QsciLexerXMLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_event(self: ptr cQsciLexerXML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerXML_event ".} =
  type Cb = proc(super: QsciLexerXMLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerXML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerXML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerXML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerXMLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_eventFilter(self: ptr cQsciLexerXML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerXML_eventFilter ".} =
  type Cb = proc(super: QsciLexerXMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerXML(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerXML, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerXML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerXMLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_timerEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_timerEvent ".} =
  type Cb = proc(super: QsciLexerXMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerXML(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerXML, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerXML_virtualbase_childEvent(self.h, event.h)

type QsciLexerXMLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_childEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_childEvent ".} =
  type Cb = proc(super: QsciLexerXMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerXML(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerXML, event: gen_qcoreevent.QEvent): void =


  fQsciLexerXML_virtualbase_customEvent(self.h, event.h)

type QsciLexerXMLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_customEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_customEvent ".} =
  type Cb = proc(super: QsciLexerXMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerXML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerXML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerXML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerXMLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_connectNotify(self: ptr cQsciLexerXML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_connectNotify ".} =
  type Cb = proc(super: QsciLexerXMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerXML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerXML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerXML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerXMLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerXML, slot: proc(super: QsciLexerXMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerXMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_disconnectNotify(self: ptr cQsciLexerXML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerXMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerXML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerXML) =
  fcQsciLexerXML_delete(self.h)
