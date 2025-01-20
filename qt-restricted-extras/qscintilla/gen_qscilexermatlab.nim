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
{.compile("gen_qscilexermatlab.cpp", cflags).}


type QsciLexerMatlabEnumEnum* = distinct cint
template Default*(_: type QsciLexerMatlabEnumEnum): untyped = 0
template Comment*(_: type QsciLexerMatlabEnumEnum): untyped = 1
template Command*(_: type QsciLexerMatlabEnumEnum): untyped = 2
template Number*(_: type QsciLexerMatlabEnumEnum): untyped = 3
template Keyword*(_: type QsciLexerMatlabEnumEnum): untyped = 4
template SingleQuotedString*(_: type QsciLexerMatlabEnumEnum): untyped = 5
template Operator*(_: type QsciLexerMatlabEnumEnum): untyped = 6
template Identifier*(_: type QsciLexerMatlabEnumEnum): untyped = 7
template DoubleQuotedString*(_: type QsciLexerMatlabEnumEnum): untyped = 8


import gen_qscilexermatlab_types
export gen_qscilexermatlab_types

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

type cQsciLexerMatlab*{.exportc: "QsciLexerMatlab", incompleteStruct.} = object

proc fcQsciLexerMatlab_new(): ptr cQsciLexerMatlab {.importc: "QsciLexerMatlab_new".}
proc fcQsciLexerMatlab_new2(parent: pointer): ptr cQsciLexerMatlab {.importc: "QsciLexerMatlab_new2".}
proc fcQsciLexerMatlab_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMatlab_metaObject".}
proc fcQsciLexerMatlab_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMatlab_metacast".}
proc fcQsciLexerMatlab_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMatlab_metacall".}
proc fcQsciLexerMatlab_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_tr".}
proc fcQsciLexerMatlab_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_trUtf8".}
proc fcQsciLexerMatlab_language(self: pointer, ): cstring {.importc: "QsciLexerMatlab_language".}
proc fcQsciLexerMatlab_lexer(self: pointer, ): cstring {.importc: "QsciLexerMatlab_lexer".}
proc fcQsciLexerMatlab_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultColor".}
proc fcQsciLexerMatlab_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultFont".}
proc fcQsciLexerMatlab_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMatlab_keywords".}
proc fcQsciLexerMatlab_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMatlab_description".}
proc fcQsciLexerMatlab_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_tr2".}
proc fcQsciLexerMatlab_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMatlab_tr3".}
proc fcQsciLexerMatlab_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_trUtf82".}
proc fcQsciLexerMatlab_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMatlab_trUtf83".}
proc fQsciLexerMatlab_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerMatlab_virtualbase_metaObject".}
proc fcQsciLexerMatlab_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_metaObject".}
proc fQsciLexerMatlab_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerMatlab_virtualbase_metacast".}
proc fcQsciLexerMatlab_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_metacast".}
proc fQsciLexerMatlab_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerMatlab_virtualbase_metacall".}
proc fcQsciLexerMatlab_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_metacall".}
proc fcQsciLexerMatlab_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_language".}
proc fQsciLexerMatlab_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerMatlab_virtualbase_lexer".}
proc fcQsciLexerMatlab_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_lexer".}
proc fQsciLexerMatlab_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_lexerId".}
proc fcQsciLexerMatlab_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_lexerId".}
proc fQsciLexerMatlab_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerMatlab_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMatlab_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_autoCompletionFillups".}
proc fQsciLexerMatlab_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerMatlab_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMatlab_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerMatlab_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMatlab_virtualbase_blockEnd".}
proc fcQsciLexerMatlab_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_blockEnd".}
proc fQsciLexerMatlab_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_blockLookback".}
proc fcQsciLexerMatlab_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_blockLookback".}
proc fQsciLexerMatlab_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMatlab_virtualbase_blockStart".}
proc fcQsciLexerMatlab_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_blockStart".}
proc fQsciLexerMatlab_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMatlab_virtualbase_blockStartKeyword".}
proc fcQsciLexerMatlab_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_blockStartKeyword".}
proc fQsciLexerMatlab_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_braceStyle".}
proc fcQsciLexerMatlab_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_braceStyle".}
proc fQsciLexerMatlab_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerMatlab_virtualbase_caseSensitive".}
proc fcQsciLexerMatlab_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_caseSensitive".}
proc fQsciLexerMatlab_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_color".}
proc fcQsciLexerMatlab_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_color".}
proc fQsciLexerMatlab_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMatlab_virtualbase_eolFill".}
proc fcQsciLexerMatlab_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_eolFill".}
proc fQsciLexerMatlab_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_font".}
proc fcQsciLexerMatlab_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_font".}
proc fQsciLexerMatlab_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_indentationGuideView".}
proc fcQsciLexerMatlab_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_indentationGuideView".}
proc fQsciLexerMatlab_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerMatlab_virtualbase_keywords".}
proc fcQsciLexerMatlab_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_keywords".}
proc fQsciLexerMatlab_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_defaultStyle".}
proc fcQsciLexerMatlab_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_defaultStyle".}
proc fcQsciLexerMatlab_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_description".}
proc fQsciLexerMatlab_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_paper".}
proc fcQsciLexerMatlab_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_paper".}
proc fQsciLexerMatlab_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMatlab_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_defaultColorWithStyle".}
proc fQsciLexerMatlab_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMatlab_virtualbase_defaultEolFill".}
proc fcQsciLexerMatlab_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_defaultEolFill".}
proc fQsciLexerMatlab_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMatlab_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_defaultFontWithStyle".}
proc fQsciLexerMatlab_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMatlab_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMatlab_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerMatlab_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerMatlab_virtualbase_setEditor".}
proc fcQsciLexerMatlab_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setEditor".}
proc fQsciLexerMatlab_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerMatlab_virtualbase_refreshProperties".}
proc fcQsciLexerMatlab_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_refreshProperties".}
proc fQsciLexerMatlab_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerMatlab_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMatlab_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_styleBitsNeeded".}
proc fQsciLexerMatlab_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerMatlab_virtualbase_wordCharacters".}
proc fcQsciLexerMatlab_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_wordCharacters".}
proc fQsciLexerMatlab_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerMatlab_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMatlab_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setAutoIndentStyle".}
proc fQsciLexerMatlab_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMatlab_virtualbase_setColor".}
proc fcQsciLexerMatlab_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setColor".}
proc fQsciLexerMatlab_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerMatlab_virtualbase_setEolFill".}
proc fcQsciLexerMatlab_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setEolFill".}
proc fQsciLexerMatlab_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerMatlab_virtualbase_setFont".}
proc fcQsciLexerMatlab_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setFont".}
proc fQsciLexerMatlab_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMatlab_virtualbase_setPaper".}
proc fcQsciLexerMatlab_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_setPaper".}
proc fQsciLexerMatlab_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMatlab_virtualbase_readProperties".}
proc fcQsciLexerMatlab_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_readProperties".}
proc fQsciLexerMatlab_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMatlab_virtualbase_writeProperties".}
proc fcQsciLexerMatlab_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_writeProperties".}
proc fQsciLexerMatlab_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerMatlab_virtualbase_event".}
proc fcQsciLexerMatlab_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_event".}
proc fQsciLexerMatlab_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerMatlab_virtualbase_eventFilter".}
proc fcQsciLexerMatlab_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_eventFilter".}
proc fQsciLexerMatlab_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMatlab_virtualbase_timerEvent".}
proc fcQsciLexerMatlab_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_timerEvent".}
proc fQsciLexerMatlab_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMatlab_virtualbase_childEvent".}
proc fcQsciLexerMatlab_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_childEvent".}
proc fQsciLexerMatlab_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMatlab_virtualbase_customEvent".}
proc fcQsciLexerMatlab_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_customEvent".}
proc fQsciLexerMatlab_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMatlab_virtualbase_connectNotify".}
proc fcQsciLexerMatlab_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_connectNotify".}
proc fQsciLexerMatlab_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMatlab_virtualbase_disconnectNotify".}
proc fcQsciLexerMatlab_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerMatlab_override_virtual_disconnectNotify".}
proc fcQsciLexerMatlab_staticMetaObject(): pointer {.importc: "QsciLexerMatlab_staticMetaObject".}
proc fcQsciLexerMatlab_delete(self: pointer) {.importc: "QsciLexerMatlab_delete".}


func init*(T: type gen_qscilexermatlab_types.QsciLexerMatlab, h: ptr cQsciLexerMatlab): gen_qscilexermatlab_types.QsciLexerMatlab =
  T(h: h)
proc create*(T: type gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qscilexermatlab_types.QsciLexerMatlab =
  gen_qscilexermatlab_types.QsciLexerMatlab.init(fcQsciLexerMatlab_new())

proc create*(T: type gen_qscilexermatlab_types.QsciLexerMatlab, parent: gen_qobject.QObject): gen_qscilexermatlab_types.QsciLexerMatlab =
  gen_qscilexermatlab_types.QsciLexerMatlab.init(fcQsciLexerMatlab_new2(parent.h))

proc metaObject*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMatlab_metaObject(self.h))

proc metacast*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cstring): pointer =
  fcQsciLexerMatlab_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMatlab_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring): string =
  let v_ms = fcQsciLexerMatlab_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring): string =
  let v_ms = fcQsciLexerMatlab_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_language(self.h))

proc lexer*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fcQsciLexerMatlab_lexer(self.h))

proc defaultColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerMatlab_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerMatlab_defaultFont(self.h, style))

proc keywords*(self: gen_qscilexermatlab_types.QsciLexerMatlab, set: cint): cstring =
  (fcQsciLexerMatlab_keywords(self.h, set))

proc description*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): string =
  let v_ms = fcQsciLexerMatlab_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMatlab_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMatlab_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMatlab_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexermatlab_types.QsciLexerMatlab, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMatlab_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerMatlabmetaObject*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerMatlab_virtualbase_metaObject(self.h))

type QsciLexerMatlabmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metaObject(self: ptr cQsciLexerMatlab, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerMatlabmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerMatlabmetacast*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cstring): pointer =
  fQsciLexerMatlab_virtualbase_metacast(self.h, param1)

type QsciLexerMatlabmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metacast(self: ptr cQsciLexerMatlab, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_metacast ".} =
  var nimfunc = cast[ptr QsciLexerMatlabmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabmetacall*(self: gen_qscilexermatlab_types.QsciLexerMatlab, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerMatlab_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMatlabmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metacall(self: ptr cQsciLexerMatlab, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_metacall ".} =
  var nimfunc = cast[ptr QsciLexerMatlabmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMatlablanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlablanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlablanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_language(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_language ".} =
  var nimfunc = cast[ptr QsciLexerMatlablanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlablexer*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fQsciLexerMatlab_virtualbase_lexer(self.h))

type QsciLexerMatlablexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlablexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlablexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_lexer(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_lexer ".} =
  var nimfunc = cast[ptr QsciLexerMatlablexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlablexerId*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_lexerId(self.h)

type QsciLexerMatlablexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlablexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlablexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_lexerId(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerMatlablexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabautoCompletionFillups*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fQsciLexerMatlab_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMatlabautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_autoCompletionFillups(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerMatlabautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabautoCompletionWordSeparators*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): seq[string] =
  var v_ma = fQsciLexerMatlab_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMatlabautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_autoCompletionWordSeparators(self: ptr cQsciLexerMatlab, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMatlab_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerMatlabautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerMatlabblockEnd*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fQsciLexerMatlab_virtualbase_blockEnd(self.h, style))

type QsciLexerMatlabblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockEnd(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerMatlabblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabblockLookback*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_blockLookback(self.h)

type QsciLexerMatlabblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockLookback(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerMatlabblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabblockStart*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fQsciLexerMatlab_virtualbase_blockStart(self.h, style))

type QsciLexerMatlabblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockStart(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerMatlabblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabblockStartKeyword*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: ptr cint): cstring =
  (fQsciLexerMatlab_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMatlabblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockStartKeyword(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerMatlabblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabbraceStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_braceStyle(self.h)

type QsciLexerMatlabbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_braceStyle(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabcaseSensitive*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): bool =
  fQsciLexerMatlab_virtualbase_caseSensitive(self.h)

type QsciLexerMatlabcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_caseSensitive(self: ptr cQsciLexerMatlab, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerMatlabcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabcolor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_color(self.h, style))

type QsciLexerMatlabcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_color(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_color ".} =
  var nimfunc = cast[ptr QsciLexerMatlabcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabeolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): bool =
  fQsciLexerMatlab_virtualbase_eolFill(self.h, style)

type QsciLexerMatlabeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_eolFill(self: ptr cQsciLexerMatlab, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerMatlabeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabfont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerMatlab_virtualbase_font(self.h, style))

type QsciLexerMatlabfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_font(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_font ".} =
  var nimfunc = cast[ptr QsciLexerMatlabfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabindentationGuideView*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_indentationGuideView(self.h)

type QsciLexerMatlabindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_indentationGuideView(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerMatlabindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabkeywords*(self: gen_qscilexermatlab_types.QsciLexerMatlab, set: cint): cstring =
  (fQsciLexerMatlab_virtualbase_keywords(self.h, set))

type QsciLexerMatlabkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_keywords(self: ptr cQsciLexerMatlab, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_keywords ".} =
  var nimfunc = cast[ptr QsciLexerMatlabkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabdefaultStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_defaultStyle(self.h)

type QsciLexerMatlabdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultStyle(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerMatlabdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_description(self: ptr cQsciLexerMatlab, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMatlab_description ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerMatlabpaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_paper(self.h, style))

type QsciLexerMatlabpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_paper(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_paper ".} =
  var nimfunc = cast[ptr QsciLexerMatlabpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabdefaultColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMatlabdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultColorWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabdefaultEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): bool =
  fQsciLexerMatlab_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMatlabdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultEolFill(self: ptr cQsciLexerMatlab, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabdefaultFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerMatlab_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMatlabdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultFontWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabdefaultPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMatlabdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultPaperWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMatlabsetEditor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerMatlab_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMatlabsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setEditor(self: ptr cQsciLexerMatlab, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerMatlabrefreshProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): void =
  fQsciLexerMatlab_virtualbase_refreshProperties(self.h)

type QsciLexerMatlabrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_refreshProperties(self: ptr cQsciLexerMatlab, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerMatlabrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerMatlabstyleBitsNeeded*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cint =
  fQsciLexerMatlab_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMatlabstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_styleBitsNeeded(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerMatlabstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabwordCharacters*(self: gen_qscilexermatlab_types.QsciLexerMatlab, ): cstring =
  (fQsciLexerMatlab_virtualbase_wordCharacters(self.h))

type QsciLexerMatlabwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_wordCharacters(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerMatlabwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMatlabsetAutoIndentStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, autoindentstyle: cint): void =
  fQsciLexerMatlab_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMatlabsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setAutoIndentStyle(self: ptr cQsciLexerMatlab, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerMatlabsetColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerMatlab_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMatlabsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setColor(self: ptr cQsciLexerMatlab, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setColor ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMatlabsetEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, eoffill: bool, style: cint): void =
  fQsciLexerMatlab_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMatlabsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setEolFill(self: ptr cQsciLexerMatlab, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMatlabsetFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerMatlab_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMatlabsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setFont(self: ptr cQsciLexerMatlab, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setFont ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMatlabsetPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerMatlab_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMatlabsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setPaper(self: ptr cQsciLexerMatlab, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerMatlabsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMatlabreadProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerMatlab_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMatlabreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_readProperties(self: ptr cQsciLexerMatlab, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerMatlabreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMatlabwriteProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerMatlab_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMatlabwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_writeProperties(self: ptr cQsciLexerMatlab, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerMatlabwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMatlabevent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerMatlab_virtualbase_event(self.h, event.h)

type QsciLexerMatlabeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_event(self: ptr cQsciLexerMatlab, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_event ".} =
  var nimfunc = cast[ptr QsciLexerMatlabeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMatlabeventFilter*(self: gen_qscilexermatlab_types.QsciLexerMatlab, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerMatlab_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMatlabeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_eventFilter(self: ptr cQsciLexerMatlab, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerMatlabeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMatlabtimerEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerMatlab_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMatlabtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_timerEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerMatlabtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMatlabchildEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerMatlab_virtualbase_childEvent(self.h, event.h)

type QsciLexerMatlabchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_childEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerMatlabchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMatlabcustomEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, event: gen_qcoreevent.QEvent): void =
  fQsciLexerMatlab_virtualbase_customEvent(self.h, event.h)

type QsciLexerMatlabcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_customEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerMatlabcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMatlabconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerMatlab_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMatlabconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_connectNotify(self: ptr cQsciLexerMatlab, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMatlabconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerMatlabdisconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerMatlab_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMatlabdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexermatlab_types.QsciLexerMatlab, slot: QsciLexerMatlabdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMatlabdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_disconnectNotify(self: ptr cQsciLexerMatlab, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMatlabdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexermatlab_types.QsciLexerMatlab): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMatlab_staticMetaObject())
proc delete*(self: gen_qscilexermatlab_types.QsciLexerMatlab) =
  fcQsciLexerMatlab_delete(self.h)
