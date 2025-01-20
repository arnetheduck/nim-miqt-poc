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
{.compile("gen_qscilexercustom.cpp", cflags).}


import gen_qscilexercustom_types
export gen_qscilexercustom_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qscistyle,
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
  gen_qscistyle,
  gen_qsettings

type cQsciLexerCustom*{.exportc: "QsciLexerCustom", incompleteStruct.} = object

proc fcQsciLexerCustom_new(): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new".}
proc fcQsciLexerCustom_new2(parent: pointer): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new2".}
proc fcQsciLexerCustom_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCustom_metaObject".}
proc fcQsciLexerCustom_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCustom_metacast".}
proc fcQsciLexerCustom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCustom_metacall".}
proc fcQsciLexerCustom_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr".}
proc fcQsciLexerCustom_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCustom_trUtf8".}
proc fcQsciLexerCustom_setStyling(self: pointer, length: cint, style: cint): void {.importc: "QsciLexerCustom_setStyling".}
proc fcQsciLexerCustom_setStyling2(self: pointer, length: cint, style: pointer): void {.importc: "QsciLexerCustom_setStyling2".}
proc fcQsciLexerCustom_startStyling(self: pointer, pos: cint): void {.importc: "QsciLexerCustom_startStyling".}
proc fcQsciLexerCustom_styleText(self: pointer, start: cint, endVal: cint): void {.importc: "QsciLexerCustom_styleText".}
proc fcQsciLexerCustom_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCustom_setEditor".}
proc fcQsciLexerCustom_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCustom_styleBitsNeeded".}
proc fcQsciLexerCustom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr2".}
proc fcQsciLexerCustom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCustom_tr3".}
proc fcQsciLexerCustom_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCustom_trUtf82".}
proc fcQsciLexerCustom_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCustom_trUtf83".}
proc fcQsciLexerCustom_startStyling2(self: pointer, pos: cint, styleBits: cint): void {.importc: "QsciLexerCustom_startStyling2".}
proc fQsciLexerCustom_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCustom_virtualbase_metaObject".}
proc fcQsciLexerCustom_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metaObject".}
proc fQsciLexerCustom_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCustom_virtualbase_metacast".}
proc fcQsciLexerCustom_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metacast".}
proc fQsciLexerCustom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCustom_virtualbase_metacall".}
proc fcQsciLexerCustom_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metacall".}
proc fcQsciLexerCustom_override_virtual_styleText(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_styleText".}
proc fQsciLexerCustom_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCustom_virtualbase_setEditor".}
proc fcQsciLexerCustom_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setEditor".}
proc fQsciLexerCustom_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCustom_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_styleBitsNeeded".}
proc fcQsciLexerCustom_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_language".}
proc fQsciLexerCustom_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_lexer".}
proc fcQsciLexerCustom_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_lexer".}
proc fQsciLexerCustom_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_lexerId".}
proc fcQsciLexerCustom_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_lexerId".}
proc fQsciLexerCustom_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCustom_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_autoCompletionFillups".}
proc fQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCustom_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCustom_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCustom_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockEnd".}
proc fcQsciLexerCustom_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockEnd".}
proc fQsciLexerCustom_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_blockLookback".}
proc fcQsciLexerCustom_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockLookback".}
proc fQsciLexerCustom_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockStart".}
proc fcQsciLexerCustom_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockStart".}
proc fQsciLexerCustom_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockStartKeyword".}
proc fcQsciLexerCustom_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockStartKeyword".}
proc fQsciLexerCustom_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_braceStyle".}
proc fcQsciLexerCustom_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_braceStyle".}
proc fQsciLexerCustom_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCustom_virtualbase_caseSensitive".}
proc fcQsciLexerCustom_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_caseSensitive".}
proc fQsciLexerCustom_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_color".}
proc fcQsciLexerCustom_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_color".}
proc fQsciLexerCustom_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCustom_virtualbase_eolFill".}
proc fcQsciLexerCustom_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_eolFill".}
proc fQsciLexerCustom_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_font".}
proc fcQsciLexerCustom_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_font".}
proc fQsciLexerCustom_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_indentationGuideView".}
proc fcQsciLexerCustom_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_indentationGuideView".}
proc fQsciLexerCustom_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCustom_virtualbase_keywords".}
proc fcQsciLexerCustom_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_keywords".}
proc fQsciLexerCustom_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_defaultStyle".}
proc fcQsciLexerCustom_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultStyle".}
proc fcQsciLexerCustom_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_description".}
proc fQsciLexerCustom_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_paper".}
proc fcQsciLexerCustom_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_paper".}
proc fQsciLexerCustom_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCustom_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCustom_virtualbase_defaultEolFill".}
proc fcQsciLexerCustom_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultEolFill".}
proc fQsciLexerCustom_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCustom_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCustom_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCustom_virtualbase_refreshProperties".}
proc fcQsciLexerCustom_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_refreshProperties".}
proc fQsciLexerCustom_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_wordCharacters".}
proc fcQsciLexerCustom_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_wordCharacters".}
proc fQsciLexerCustom_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCustom_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCustom_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCustom_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setColor".}
proc fcQsciLexerCustom_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setColor".}
proc fQsciLexerCustom_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setEolFill".}
proc fcQsciLexerCustom_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setEolFill".}
proc fQsciLexerCustom_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setFont".}
proc fcQsciLexerCustom_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setFont".}
proc fQsciLexerCustom_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setPaper".}
proc fcQsciLexerCustom_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setPaper".}
proc fQsciLexerCustom_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCustom_virtualbase_readProperties".}
proc fcQsciLexerCustom_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_readProperties".}
proc fQsciLexerCustom_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCustom_virtualbase_writeProperties".}
proc fcQsciLexerCustom_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_writeProperties".}
proc fQsciLexerCustom_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCustom_virtualbase_event".}
proc fcQsciLexerCustom_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_event".}
proc fQsciLexerCustom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCustom_virtualbase_eventFilter".}
proc fcQsciLexerCustom_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_eventFilter".}
proc fQsciLexerCustom_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_timerEvent".}
proc fcQsciLexerCustom_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_timerEvent".}
proc fQsciLexerCustom_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_childEvent".}
proc fcQsciLexerCustom_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_childEvent".}
proc fQsciLexerCustom_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_customEvent".}
proc fcQsciLexerCustom_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_customEvent".}
proc fQsciLexerCustom_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCustom_virtualbase_connectNotify".}
proc fcQsciLexerCustom_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_connectNotify".}
proc fQsciLexerCustom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCustom_virtualbase_disconnectNotify".}
proc fcQsciLexerCustom_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_disconnectNotify".}
proc fcQsciLexerCustom_staticMetaObject(): pointer {.importc: "QsciLexerCustom_staticMetaObject".}
proc fcQsciLexerCustom_delete(self: pointer) {.importc: "QsciLexerCustom_delete".}


func init*(T: type gen_qscilexercustom_types.QsciLexerCustom, h: ptr cQsciLexerCustom): gen_qscilexercustom_types.QsciLexerCustom =
  T(h: h)
proc create*(T: type gen_qscilexercustom_types.QsciLexerCustom, ): gen_qscilexercustom_types.QsciLexerCustom =
  gen_qscilexercustom_types.QsciLexerCustom.init(fcQsciLexerCustom_new())

proc create*(T: type gen_qscilexercustom_types.QsciLexerCustom, parent: gen_qobject.QObject): gen_qscilexercustom_types.QsciLexerCustom =
  gen_qscilexercustom_types.QsciLexerCustom.init(fcQsciLexerCustom_new2(parent.h))

proc metaObject*(self: gen_qscilexercustom_types.QsciLexerCustom, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCustom_metaObject(self.h))

proc metacast*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cstring): pointer =
  fcQsciLexerCustom_metacast(self.h, param1)

proc metacall*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerCustom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring): string =
  let v_ms = fcQsciLexerCustom_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring): string =
  let v_ms = fcQsciLexerCustom_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, length: cint, style: cint): void =
  fcQsciLexerCustom_setStyling(self.h, length, style)

proc setStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, length: cint, style: gen_qscistyle.QsciStyle): void =
  fcQsciLexerCustom_setStyling2(self.h, length, style.h)

proc startStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, pos: cint): void =
  fcQsciLexerCustom_startStyling(self.h, pos)

proc styleText*(self: gen_qscilexercustom_types.QsciLexerCustom, start: cint, endVal: cint): void =
  fcQsciLexerCustom_styleText(self.h, start, endVal)

proc setEditor*(self: gen_qscilexercustom_types.QsciLexerCustom, editor: gen_qsciscintilla.QsciScintilla): void =
  fcQsciLexerCustom_setEditor(self.h, editor.h)

proc styleBitsNeeded*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fcQsciLexerCustom_styleBitsNeeded(self.h)

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCustom_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCustom_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerCustom_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexercustom_types.QsciLexerCustom, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerCustom_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startStyling*(self: gen_qscilexercustom_types.QsciLexerCustom, pos: cint, styleBits: cint): void =
  fcQsciLexerCustom_startStyling2(self.h, pos, styleBits)

proc QsciLexerCustommetaObject*(self: gen_qscilexercustom_types.QsciLexerCustom, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerCustom_virtualbase_metaObject(self.h))

type QsciLexerCustommetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustommetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustommetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metaObject(self: ptr cQsciLexerCustom, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerCustommetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerCustommetacast*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cstring): pointer =
  fQsciLexerCustom_virtualbase_metacast(self.h, param1)

type QsciLexerCustommetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustommetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustommetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metacast(self: ptr cQsciLexerCustom, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_metacast ".} =
  var nimfunc = cast[ptr QsciLexerCustommetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustommetacall*(self: gen_qscilexercustom_types.QsciLexerCustom, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerCustom_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCustommetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustommetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustommetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metacall(self: ptr cQsciLexerCustom, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_metacall ".} =
  var nimfunc = cast[ptr QsciLexerCustommetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerCustomstyleTextProc* = proc(start: cint, endVal: cint): void
proc onstyleText*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomstyleTextProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomstyleTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_styleText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_styleText(self: ptr cQsciLexerCustom, slot: int, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_styleText ".} =
  var nimfunc = cast[ptr QsciLexerCustomstyleTextProc](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)
proc QsciLexerCustomsetEditor*(self: gen_qscilexercustom_types.QsciLexerCustom, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerCustom_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCustomsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setEditor(self: ptr cQsciLexerCustom, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerCustomstyleBitsNeeded*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCustomstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_styleBitsNeeded(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerCustomstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCustomlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_language(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_language ".} =
  var nimfunc = cast[ptr QsciLexerCustomlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomlexer*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fQsciLexerCustom_virtualbase_lexer(self.h))

type QsciLexerCustomlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_lexer(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_lexer ".} =
  var nimfunc = cast[ptr QsciLexerCustomlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomlexerId*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_lexerId(self.h)

type QsciLexerCustomlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_lexerId(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerCustomlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomautoCompletionFillups*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fQsciLexerCustom_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCustomautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_autoCompletionFillups(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerCustomautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomautoCompletionWordSeparators*(self: gen_qscilexercustom_types.QsciLexerCustom, ): seq[string] =
  var v_ma = fQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCustomautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_autoCompletionWordSeparators(self: ptr cQsciLexerCustom, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCustom_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerCustomautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerCustomblockEnd*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fQsciLexerCustom_virtualbase_blockEnd(self.h, style))

type QsciLexerCustomblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockEnd(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerCustomblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomblockLookback*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_blockLookback(self.h)

type QsciLexerCustomblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockLookback(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerCustomblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomblockStart*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fQsciLexerCustom_virtualbase_blockStart(self.h, style))

type QsciLexerCustomblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockStart(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerCustomblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomblockStartKeyword*(self: gen_qscilexercustom_types.QsciLexerCustom, style: ptr cint): cstring =
  (fQsciLexerCustom_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCustomblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockStartKeyword(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerCustomblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustombraceStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_braceStyle(self.h)

type QsciLexerCustombraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustombraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustombraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_braceStyle(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustombraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomcaseSensitive*(self: gen_qscilexercustom_types.QsciLexerCustom, ): bool =
  fQsciLexerCustom_virtualbase_caseSensitive(self.h)

type QsciLexerCustomcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_caseSensitive(self: ptr cQsciLexerCustom, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerCustomcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomcolor*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_color(self.h, style))

type QsciLexerCustomcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_color(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_color ".} =
  var nimfunc = cast[ptr QsciLexerCustomcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomeolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): bool =
  fQsciLexerCustom_virtualbase_eolFill(self.h, style)

type QsciLexerCustomeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_eolFill(self: ptr cQsciLexerCustom, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerCustomeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomfont*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCustom_virtualbase_font(self.h, style))

type QsciLexerCustomfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_font(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_font ".} =
  var nimfunc = cast[ptr QsciLexerCustomfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomindentationGuideView*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_indentationGuideView(self.h)

type QsciLexerCustomindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_indentationGuideView(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerCustomindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomkeywords*(self: gen_qscilexercustom_types.QsciLexerCustom, set: cint): cstring =
  (fQsciLexerCustom_virtualbase_keywords(self.h, set))

type QsciLexerCustomkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_keywords(self: ptr cQsciLexerCustom, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_keywords ".} =
  var nimfunc = cast[ptr QsciLexerCustomkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomdefaultStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cint =
  fQsciLexerCustom_virtualbase_defaultStyle(self.h)

type QsciLexerCustomdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultStyle(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustomdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerCustomdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_description(self: ptr cQsciLexerCustom, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCustom_description ".} =
  var nimfunc = cast[ptr QsciLexerCustomdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerCustompaper*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_paper(self.h, style))

type QsciLexerCustompaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustompaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustompaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_paper(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_paper ".} =
  var nimfunc = cast[ptr QsciLexerCustompaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomdefaultColor*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCustomdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultColorWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustomdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomdefaultEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): bool =
  fQsciLexerCustom_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCustomdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultEolFill(self: ptr cQsciLexerCustom, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCustomdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomdefaultFont*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerCustom_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCustomdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultFontWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustomdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomdefaultPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCustomdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultPaperWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustomdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerCustomrefreshProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, ): void =
  fQsciLexerCustom_virtualbase_refreshProperties(self.h)

type QsciLexerCustomrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_refreshProperties(self: ptr cQsciLexerCustom, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCustom_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerCustomrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerCustomwordCharacters*(self: gen_qscilexercustom_types.QsciLexerCustom, ): cstring =
  (fQsciLexerCustom_virtualbase_wordCharacters(self.h))

type QsciLexerCustomwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_wordCharacters(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerCustomwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerCustomsetAutoIndentStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, autoindentstyle: cint): void =
  fQsciLexerCustom_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCustomsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setAutoIndentStyle(self: ptr cQsciLexerCustom, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerCustomsetColor*(self: gen_qscilexercustom_types.QsciLexerCustom, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCustom_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCustomsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setColor(self: ptr cQsciLexerCustom, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setColor ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCustomsetEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, eoffill: bool, style: cint): void =
  fQsciLexerCustom_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCustomsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setEolFill(self: ptr cQsciLexerCustom, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCustomsetFont*(self: gen_qscilexercustom_types.QsciLexerCustom, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerCustom_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCustomsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setFont(self: ptr cQsciLexerCustom, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setFont ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCustomsetPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerCustom_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCustomsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setPaper(self: ptr cQsciLexerCustom, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerCustomsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerCustomreadProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCustom_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCustomreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_readProperties(self: ptr cQsciLexerCustom, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerCustomreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCustomwriteProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerCustom_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCustomwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_writeProperties(self: ptr cQsciLexerCustom, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerCustomwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCustomevent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCustom_virtualbase_event(self.h, event.h)

type QsciLexerCustomeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_event(self: ptr cQsciLexerCustom, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_event ".} =
  var nimfunc = cast[ptr QsciLexerCustomeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerCustomeventFilter*(self: gen_qscilexercustom_types.QsciLexerCustom, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerCustom_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCustomeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_eventFilter(self: ptr cQsciLexerCustom, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerCustomeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerCustomtimerEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerCustom_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCustomtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_timerEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerCustomtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCustomchildEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerCustom_virtualbase_childEvent(self.h, event.h)

type QsciLexerCustomchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_childEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerCustomchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCustomcustomEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, event: gen_qcoreevent.QEvent): void =
  fQsciLexerCustom_virtualbase_customEvent(self.h, event.h)

type QsciLexerCustomcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_customEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerCustomcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerCustomconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCustom_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCustomconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_connectNotify(self: ptr cQsciLexerCustom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCustomconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerCustomdisconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerCustom_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCustomdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexercustom_types.QsciLexerCustom, slot: QsciLexerCustomdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerCustomdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_disconnectNotify(self: ptr cQsciLexerCustom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerCustomdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexercustom_types.QsciLexerCustom): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCustom_staticMetaObject())
proc delete*(self: gen_qscilexercustom_types.QsciLexerCustom) =
  fcQsciLexerCustom_delete(self.h)
