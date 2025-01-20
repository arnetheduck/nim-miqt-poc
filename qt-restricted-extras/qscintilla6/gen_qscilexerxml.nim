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
proc fQsciLexerXML_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerXML_virtualbase_metaObject".}
proc fcQsciLexerXML_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_metaObject".}
proc fQsciLexerXML_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerXML_virtualbase_metacast".}
proc fcQsciLexerXML_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerXML_override_virtual_metacast".}
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
proc fcQsciLexerXML_staticMetaObject(): pointer {.importc: "QsciLexerXML_staticMetaObject".}
proc fcQsciLexerXML_delete(self: pointer) {.importc: "QsciLexerXML_delete".}


func init*(T: type gen_qscilexerxml_types.QsciLexerXML, h: ptr cQsciLexerXML): gen_qscilexerxml_types.QsciLexerXML =
  T(h: h)
proc create*(T: type gen_qscilexerxml_types.QsciLexerXML, ): gen_qscilexerxml_types.QsciLexerXML =
  gen_qscilexerxml_types.QsciLexerXML.init(fcQsciLexerXML_new())

proc create*(T: type gen_qscilexerxml_types.QsciLexerXML, parent: gen_qobject.QObject): gen_qscilexerxml_types.QsciLexerXML =
  gen_qscilexerxml_types.QsciLexerXML.init(fcQsciLexerXML_new2(parent.h))

proc metaObject*(self: gen_qscilexerxml_types.QsciLexerXML, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerXML_metaObject(self.h))

proc metacast*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cstring): pointer =
  fcQsciLexerXML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerXML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerxml_types.QsciLexerXML, s: cstring): string =
  let v_ms = fcQsciLexerXML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_language(self.h))

proc lexer*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fcQsciLexerXML_lexer(self.h))

proc defaultColor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerXML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fcQsciLexerXML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerXML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerXML_defaultPaper(self.h, style))

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

proc QsciLexerXMLmetaObject*(self: gen_qscilexerxml_types.QsciLexerXML, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerXML_virtualbase_metaObject(self.h))

type QsciLexerXMLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_metaObject(self: ptr cQsciLexerXML, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerXMLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerXMLmetacast*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cstring): pointer =
  fQsciLexerXML_virtualbase_metacast(self.h, param1)

type QsciLexerXMLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_metacast(self: ptr cQsciLexerXML, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_metacast ".} =
  var nimfunc = cast[ptr QsciLexerXMLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLmetacall*(self: gen_qscilexerxml_types.QsciLexerXML, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerXML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerXMLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_metacall(self: ptr cQsciLexerXML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerXML_metacall ".} =
  var nimfunc = cast[ptr QsciLexerXMLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerXMLsetFoldCompact*(self: gen_qscilexerxml_types.QsciLexerXML, fold: bool): void =
  fQsciLexerXML_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerXMLsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFoldCompact(self: ptr cQsciLexerXML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerXMLsetFoldPreprocessor*(self: gen_qscilexerxml_types.QsciLexerXML, fold: bool): void =
  fQsciLexerXML_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerXMLsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFoldPreprocessor(self: ptr cQsciLexerXML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerXMLsetCaseSensitiveTags*(self: gen_qscilexerxml_types.QsciLexerXML, sens: bool): void =
  fQsciLexerXML_virtualbase_setCaseSensitiveTags(self.h, sens)

type QsciLexerXMLsetCaseSensitiveTagsProc* = proc(sens: bool): void
proc onsetCaseSensitiveTags*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetCaseSensitiveTagsProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetCaseSensitiveTagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setCaseSensitiveTags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setCaseSensitiveTags(self: ptr cQsciLexerXML, slot: int, sens: bool): void {.exportc: "miqt_exec_callback_QsciLexerXML_setCaseSensitiveTags ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetCaseSensitiveTagsProc](cast[pointer](slot))
  let slotval1 = sens


  nimfunc[](slotval1)
type QsciLexerXMLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_language(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_language ".} =
  var nimfunc = cast[ptr QsciLexerXMLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLlexer*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fQsciLexerXML_virtualbase_lexer(self.h))

type QsciLexerXMLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_lexer(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_lexer ".} =
  var nimfunc = cast[ptr QsciLexerXMLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLlexerId*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_lexerId(self.h)

type QsciLexerXMLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_lexerId(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerXMLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLautoCompletionFillups*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fQsciLexerXML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerXMLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_autoCompletionFillups(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerXMLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLautoCompletionWordSeparators*(self: gen_qscilexerxml_types.QsciLexerXML, ): seq[string] =
  var v_ma = fQsciLexerXML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerXMLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_autoCompletionWordSeparators(self: ptr cQsciLexerXML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerXML_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerXMLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerXMLblockEnd*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fQsciLexerXML_virtualbase_blockEnd(self.h, style))

type QsciLexerXMLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockEnd(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerXMLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLblockLookback*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_blockLookback(self.h)

type QsciLexerXMLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockLookback(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerXMLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLblockStart*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fQsciLexerXML_virtualbase_blockStart(self.h, style))

type QsciLexerXMLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockStart(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerXMLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLblockStartKeyword*(self: gen_qscilexerxml_types.QsciLexerXML, style: ptr cint): cstring =
  (fQsciLexerXML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerXMLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_blockStartKeyword(self: ptr cQsciLexerXML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerXMLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLbraceStyle*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_braceStyle(self.h)

type QsciLexerXMLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_braceStyle(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLcaseSensitive*(self: gen_qscilexerxml_types.QsciLexerXML, ): bool =
  fQsciLexerXML_virtualbase_caseSensitive(self.h)

type QsciLexerXMLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_caseSensitive(self: ptr cQsciLexerXML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerXML_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerXMLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLcolor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_color(self.h, style))

type QsciLexerXMLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_color(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_color ".} =
  var nimfunc = cast[ptr QsciLexerXMLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLeolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fQsciLexerXML_virtualbase_eolFill(self.h, style)

type QsciLexerXMLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_eolFill(self: ptr cQsciLexerXML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerXML_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerXMLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLfont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerXML_virtualbase_font(self.h, style))

type QsciLexerXMLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_font(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_font ".} =
  var nimfunc = cast[ptr QsciLexerXMLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLindentationGuideView*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_indentationGuideView(self.h)

type QsciLexerXMLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_indentationGuideView(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerXMLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLkeywords*(self: gen_qscilexerxml_types.QsciLexerXML, set: cint): cstring =
  (fQsciLexerXML_virtualbase_keywords(self.h, set))

type QsciLexerXMLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_keywords(self: ptr cQsciLexerXML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_keywords ".} =
  var nimfunc = cast[ptr QsciLexerXMLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLdefaultStyle*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_defaultStyle(self.h)

type QsciLexerXMLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultStyle(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerXMLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_description(self: ptr cQsciLexerXML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerXML_description ".} =
  var nimfunc = cast[ptr QsciLexerXMLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerXMLpaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_paper(self.h, style))

type QsciLexerXMLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_paper(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_paper ".} =
  var nimfunc = cast[ptr QsciLexerXMLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLdefaultColor*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerXMLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultColorWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLdefaultEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): bool =
  fQsciLexerXML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerXMLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultEolFill(self: ptr cQsciLexerXML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerXML_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerXMLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLdefaultFont*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerXML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerXMLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultFontWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLdefaultPaper*(self: gen_qscilexerxml_types.QsciLexerXML, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerXML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerXMLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_defaultPaperWithStyle(self: ptr cQsciLexerXML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerXML_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerXMLsetEditor*(self: gen_qscilexerxml_types.QsciLexerXML, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerXML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerXMLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setEditor(self: ptr cQsciLexerXML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerXMLrefreshProperties*(self: gen_qscilexerxml_types.QsciLexerXML, ): void =
  fQsciLexerXML_virtualbase_refreshProperties(self.h)

type QsciLexerXMLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_refreshProperties(self: ptr cQsciLexerXML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerXML_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerXMLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerXMLstyleBitsNeeded*(self: gen_qscilexerxml_types.QsciLexerXML, ): cint =
  fQsciLexerXML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerXMLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_styleBitsNeeded(self: ptr cQsciLexerXML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerXML_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerXMLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLwordCharacters*(self: gen_qscilexerxml_types.QsciLexerXML, ): cstring =
  (fQsciLexerXML_virtualbase_wordCharacters(self.h))

type QsciLexerXMLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_wordCharacters(self: ptr cQsciLexerXML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerXML_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerXMLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerXMLsetAutoIndentStyle*(self: gen_qscilexerxml_types.QsciLexerXML, autoindentstyle: cint): void =
  fQsciLexerXML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerXMLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setAutoIndentStyle(self: ptr cQsciLexerXML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerXMLsetColor*(self: gen_qscilexerxml_types.QsciLexerXML, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerXML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerXMLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setColor(self: ptr cQsciLexerXML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setColor ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerXMLsetEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, eoffill: bool, style: cint): void =
  fQsciLexerXML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerXMLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setEolFill(self: ptr cQsciLexerXML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerXMLsetFont*(self: gen_qscilexerxml_types.QsciLexerXML, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerXML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerXMLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setFont(self: ptr cQsciLexerXML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setFont ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerXMLsetPaper*(self: gen_qscilexerxml_types.QsciLexerXML, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerXML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerXMLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_setPaper(self: ptr cQsciLexerXML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerXML_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerXMLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerXMLreadProperties*(self: gen_qscilexerxml_types.QsciLexerXML, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerXML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerXMLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_readProperties(self: ptr cQsciLexerXML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerXML_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerXMLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerXMLwriteProperties*(self: gen_qscilexerxml_types.QsciLexerXML, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerXML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerXMLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_writeProperties(self: ptr cQsciLexerXML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerXML_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerXMLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerXMLevent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerXML_virtualbase_event(self.h, event.h)

type QsciLexerXMLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_event(self: ptr cQsciLexerXML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerXML_event ".} =
  var nimfunc = cast[ptr QsciLexerXMLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerXMLeventFilter*(self: gen_qscilexerxml_types.QsciLexerXML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerXML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerXMLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_eventFilter(self: ptr cQsciLexerXML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerXML_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerXMLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerXMLtimerEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerXML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerXMLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_timerEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerXMLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerXMLchildEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerXML_virtualbase_childEvent(self.h, event.h)

type QsciLexerXMLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_childEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerXMLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerXMLcustomEvent*(self: gen_qscilexerxml_types.QsciLexerXML, event: gen_qcoreevent.QEvent): void =
  fQsciLexerXML_virtualbase_customEvent(self.h, event.h)

type QsciLexerXMLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_customEvent(self: ptr cQsciLexerXML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerXMLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerXMLconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerXML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerXMLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_connectNotify(self: ptr cQsciLexerXML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerXMLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerXMLdisconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerXML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerXMLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerxml_types.QsciLexerXML, slot: QsciLexerXMLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerXMLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerXML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerXML_disconnectNotify(self: ptr cQsciLexerXML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerXML_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerXMLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerxml_types.QsciLexerXML): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerXML_staticMetaObject())
proc delete*(self: gen_qscilexerxml_types.QsciLexerXML) =
  fcQsciLexerXML_delete(self.h)
