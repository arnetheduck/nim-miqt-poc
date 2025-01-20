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
{.compile("gen_qscilexerspice.cpp", cflags).}


type QsciLexerSpiceEnumEnum* = distinct cint
template Default*(_: type QsciLexerSpiceEnumEnum): untyped = 0
template Identifier*(_: type QsciLexerSpiceEnumEnum): untyped = 1
template Command*(_: type QsciLexerSpiceEnumEnum): untyped = 2
template Function*(_: type QsciLexerSpiceEnumEnum): untyped = 3
template Parameter*(_: type QsciLexerSpiceEnumEnum): untyped = 4
template Number*(_: type QsciLexerSpiceEnumEnum): untyped = 5
template Delimiter*(_: type QsciLexerSpiceEnumEnum): untyped = 6
template Value*(_: type QsciLexerSpiceEnumEnum): untyped = 7
template Comment*(_: type QsciLexerSpiceEnumEnum): untyped = 8


import gen_qscilexerspice_types
export gen_qscilexerspice_types

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

type cQsciLexerSpice*{.exportc: "QsciLexerSpice", incompleteStruct.} = object

proc fcQsciLexerSpice_new(): ptr cQsciLexerSpice {.importc: "QsciLexerSpice_new".}
proc fcQsciLexerSpice_new2(parent: pointer): ptr cQsciLexerSpice {.importc: "QsciLexerSpice_new2".}
proc fcQsciLexerSpice_metaObject(self: pointer, ): pointer {.importc: "QsciLexerSpice_metaObject".}
proc fcQsciLexerSpice_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerSpice_metacast".}
proc fcQsciLexerSpice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerSpice_metacall".}
proc fcQsciLexerSpice_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerSpice_tr".}
proc fcQsciLexerSpice_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerSpice_trUtf8".}
proc fcQsciLexerSpice_language(self: pointer, ): cstring {.importc: "QsciLexerSpice_language".}
proc fcQsciLexerSpice_lexer(self: pointer, ): cstring {.importc: "QsciLexerSpice_lexer".}
proc fcQsciLexerSpice_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSpice_braceStyle".}
proc fcQsciLexerSpice_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSpice_keywords".}
proc fcQsciLexerSpice_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultColor".}
proc fcQsciLexerSpice_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultFont".}
proc fcQsciLexerSpice_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerSpice_description".}
proc fcQsciLexerSpice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSpice_tr2".}
proc fcQsciLexerSpice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSpice_tr3".}
proc fcQsciLexerSpice_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSpice_trUtf82".}
proc fcQsciLexerSpice_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSpice_trUtf83".}
proc fQsciLexerSpice_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerSpice_virtualbase_metaObject".}
proc fcQsciLexerSpice_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_metaObject".}
proc fQsciLexerSpice_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerSpice_virtualbase_metacast".}
proc fcQsciLexerSpice_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_metacast".}
proc fQsciLexerSpice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerSpice_virtualbase_metacall".}
proc fcQsciLexerSpice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_metacall".}
proc fcQsciLexerSpice_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_language".}
proc fQsciLexerSpice_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerSpice_virtualbase_lexer".}
proc fcQsciLexerSpice_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_lexer".}
proc fQsciLexerSpice_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_lexerId".}
proc fcQsciLexerSpice_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_lexerId".}
proc fQsciLexerSpice_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerSpice_virtualbase_autoCompletionFillups".}
proc fcQsciLexerSpice_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_autoCompletionFillups".}
proc fQsciLexerSpice_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerSpice_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerSpice_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerSpice_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSpice_virtualbase_blockEnd".}
proc fcQsciLexerSpice_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_blockEnd".}
proc fQsciLexerSpice_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_blockLookback".}
proc fcQsciLexerSpice_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_blockLookback".}
proc fQsciLexerSpice_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSpice_virtualbase_blockStart".}
proc fcQsciLexerSpice_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_blockStart".}
proc fQsciLexerSpice_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerSpice_virtualbase_blockStartKeyword".}
proc fcQsciLexerSpice_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_blockStartKeyword".}
proc fQsciLexerSpice_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_braceStyle".}
proc fcQsciLexerSpice_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_braceStyle".}
proc fQsciLexerSpice_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerSpice_virtualbase_caseSensitive".}
proc fcQsciLexerSpice_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_caseSensitive".}
proc fQsciLexerSpice_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_color".}
proc fcQsciLexerSpice_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_color".}
proc fQsciLexerSpice_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerSpice_virtualbase_eolFill".}
proc fcQsciLexerSpice_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_eolFill".}
proc fQsciLexerSpice_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_font".}
proc fcQsciLexerSpice_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_font".}
proc fQsciLexerSpice_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_indentationGuideView".}
proc fcQsciLexerSpice_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_indentationGuideView".}
proc fQsciLexerSpice_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerSpice_virtualbase_keywords".}
proc fcQsciLexerSpice_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_keywords".}
proc fQsciLexerSpice_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_defaultStyle".}
proc fcQsciLexerSpice_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_defaultStyle".}
proc fcQsciLexerSpice_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_description".}
proc fQsciLexerSpice_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_paper".}
proc fcQsciLexerSpice_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_paper".}
proc fQsciLexerSpice_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerSpice_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_defaultColorWithStyle".}
proc fQsciLexerSpice_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerSpice_virtualbase_defaultEolFill".}
proc fcQsciLexerSpice_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_defaultEolFill".}
proc fQsciLexerSpice_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerSpice_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_defaultFontWithStyle".}
proc fQsciLexerSpice_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerSpice_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerSpice_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerSpice_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerSpice_virtualbase_setEditor".}
proc fcQsciLexerSpice_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setEditor".}
proc fQsciLexerSpice_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerSpice_virtualbase_refreshProperties".}
proc fcQsciLexerSpice_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_refreshProperties".}
proc fQsciLexerSpice_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerSpice_virtualbase_styleBitsNeeded".}
proc fcQsciLexerSpice_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_styleBitsNeeded".}
proc fQsciLexerSpice_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerSpice_virtualbase_wordCharacters".}
proc fcQsciLexerSpice_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_wordCharacters".}
proc fQsciLexerSpice_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerSpice_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerSpice_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setAutoIndentStyle".}
proc fQsciLexerSpice_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerSpice_virtualbase_setColor".}
proc fcQsciLexerSpice_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setColor".}
proc fQsciLexerSpice_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerSpice_virtualbase_setEolFill".}
proc fcQsciLexerSpice_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setEolFill".}
proc fQsciLexerSpice_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerSpice_virtualbase_setFont".}
proc fcQsciLexerSpice_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setFont".}
proc fQsciLexerSpice_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerSpice_virtualbase_setPaper".}
proc fcQsciLexerSpice_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_setPaper".}
proc fQsciLexerSpice_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerSpice_virtualbase_readProperties".}
proc fcQsciLexerSpice_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_readProperties".}
proc fQsciLexerSpice_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerSpice_virtualbase_writeProperties".}
proc fcQsciLexerSpice_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_writeProperties".}
proc fQsciLexerSpice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerSpice_virtualbase_event".}
proc fcQsciLexerSpice_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_event".}
proc fQsciLexerSpice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerSpice_virtualbase_eventFilter".}
proc fcQsciLexerSpice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_eventFilter".}
proc fQsciLexerSpice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSpice_virtualbase_timerEvent".}
proc fcQsciLexerSpice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_timerEvent".}
proc fQsciLexerSpice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSpice_virtualbase_childEvent".}
proc fcQsciLexerSpice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_childEvent".}
proc fQsciLexerSpice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerSpice_virtualbase_customEvent".}
proc fcQsciLexerSpice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_customEvent".}
proc fQsciLexerSpice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerSpice_virtualbase_connectNotify".}
proc fcQsciLexerSpice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_connectNotify".}
proc fQsciLexerSpice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerSpice_virtualbase_disconnectNotify".}
proc fcQsciLexerSpice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerSpice_override_virtual_disconnectNotify".}
proc fcQsciLexerSpice_staticMetaObject(): pointer {.importc: "QsciLexerSpice_staticMetaObject".}
proc fcQsciLexerSpice_delete(self: pointer) {.importc: "QsciLexerSpice_delete".}


func init*(T: type gen_qscilexerspice_types.QsciLexerSpice, h: ptr cQsciLexerSpice): gen_qscilexerspice_types.QsciLexerSpice =
  T(h: h)
proc create*(T: type gen_qscilexerspice_types.QsciLexerSpice, ): gen_qscilexerspice_types.QsciLexerSpice =
  gen_qscilexerspice_types.QsciLexerSpice.init(fcQsciLexerSpice_new())

proc create*(T: type gen_qscilexerspice_types.QsciLexerSpice, parent: gen_qobject.QObject): gen_qscilexerspice_types.QsciLexerSpice =
  gen_qscilexerspice_types.QsciLexerSpice.init(fcQsciLexerSpice_new2(parent.h))

proc metaObject*(self: gen_qscilexerspice_types.QsciLexerSpice, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSpice_metaObject(self.h))

proc metacast*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cstring): pointer =
  fcQsciLexerSpice_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerSpice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring): string =
  let v_ms = fcQsciLexerSpice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring): string =
  let v_ms = fcQsciLexerSpice_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_language(self.h))

proc lexer*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fcQsciLexerSpice_lexer(self.h))

proc braceStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fcQsciLexerSpice_braceStyle(self.h)

proc keywords*(self: gen_qscilexerspice_types.QsciLexerSpice, set: cint): cstring =
  (fcQsciLexerSpice_keywords(self.h, set))

proc defaultColor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerSpice_defaultColor(self.h, style))

proc defaultFont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerSpice_defaultFont(self.h, style))

proc description*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): string =
  let v_ms = fcQsciLexerSpice_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSpice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSpice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerSpice_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerspice_types.QsciLexerSpice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerSpice_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerSpicemetaObject*(self: gen_qscilexerspice_types.QsciLexerSpice, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerSpice_virtualbase_metaObject(self.h))

type QsciLexerSpicemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicemetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_metaObject(self: ptr cQsciLexerSpice, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerSpicemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerSpicemetacast*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cstring): pointer =
  fQsciLexerSpice_virtualbase_metacast(self.h, param1)

type QsciLexerSpicemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicemetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_metacast(self: ptr cQsciLexerSpice, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_metacast ".} =
  var nimfunc = cast[ptr QsciLexerSpicemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpicemetacall*(self: gen_qscilexerspice_types.QsciLexerSpice, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerSpice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerSpicemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicemetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_metacall(self: ptr cQsciLexerSpice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_metacall ".} =
  var nimfunc = cast[ptr QsciLexerSpicemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerSpicelanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicelanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicelanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_language(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_language ".} =
  var nimfunc = cast[ptr QsciLexerSpicelanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicelexer*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fQsciLexerSpice_virtualbase_lexer(self.h))

type QsciLexerSpicelexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicelexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicelexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_lexer(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_lexer ".} =
  var nimfunc = cast[ptr QsciLexerSpicelexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicelexerId*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_lexerId(self.h)

type QsciLexerSpicelexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicelexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicelexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_lexerId(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerSpicelexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpiceautoCompletionFillups*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fQsciLexerSpice_virtualbase_autoCompletionFillups(self.h))

type QsciLexerSpiceautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_autoCompletionFillups(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerSpiceautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpiceautoCompletionWordSeparators*(self: gen_qscilexerspice_types.QsciLexerSpice, ): seq[string] =
  var v_ma = fQsciLexerSpice_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerSpiceautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_autoCompletionWordSeparators(self: ptr cQsciLexerSpice, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerSpice_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerSpiceautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerSpiceblockEnd*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fQsciLexerSpice_virtualbase_blockEnd(self.h, style))

type QsciLexerSpiceblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockEnd(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerSpiceblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpiceblockLookback*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_blockLookback(self.h)

type QsciLexerSpiceblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockLookback(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerSpiceblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpiceblockStart*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fQsciLexerSpice_virtualbase_blockStart(self.h, style))

type QsciLexerSpiceblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockStart(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerSpiceblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpiceblockStartKeyword*(self: gen_qscilexerspice_types.QsciLexerSpice, style: ptr cint): cstring =
  (fQsciLexerSpice_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerSpiceblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockStartKeyword(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerSpiceblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpicebraceStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_braceStyle(self.h)

type QsciLexerSpicebraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicebraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicebraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_braceStyle(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicebraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicecaseSensitive*(self: gen_qscilexerspice_types.QsciLexerSpice, ): bool =
  fQsciLexerSpice_virtualbase_caseSensitive(self.h)

type QsciLexerSpicecaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicecaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicecaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_caseSensitive(self: ptr cQsciLexerSpice, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerSpicecaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicecolor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_color(self.h, style))

type QsciLexerSpicecolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicecolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicecolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_color(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_color ".} =
  var nimfunc = cast[ptr QsciLexerSpicecolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpiceeolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): bool =
  fQsciLexerSpice_virtualbase_eolFill(self.h, style)

type QsciLexerSpiceeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_eolFill(self: ptr cQsciLexerSpice, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerSpiceeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpicefont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerSpice_virtualbase_font(self.h, style))

type QsciLexerSpicefontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicefontProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicefontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_font(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_font ".} =
  var nimfunc = cast[ptr QsciLexerSpicefontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpiceindentationGuideView*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_indentationGuideView(self.h)

type QsciLexerSpiceindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_indentationGuideView(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerSpiceindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicekeywords*(self: gen_qscilexerspice_types.QsciLexerSpice, set: cint): cstring =
  (fQsciLexerSpice_virtualbase_keywords(self.h, set))

type QsciLexerSpicekeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicekeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicekeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_keywords(self: ptr cQsciLexerSpice, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_keywords ".} =
  var nimfunc = cast[ptr QsciLexerSpicekeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpicedefaultStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_defaultStyle(self.h)

type QsciLexerSpicedefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultStyle(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicedefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerSpicedescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_description(self: ptr cQsciLexerSpice, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerSpice_description ".} =
  var nimfunc = cast[ptr QsciLexerSpicedescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerSpicepaper*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_paper(self.h, style))

type QsciLexerSpicepaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicepaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicepaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_paper(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_paper ".} =
  var nimfunc = cast[ptr QsciLexerSpicepaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpicedefaultColor*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerSpicedefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultColorWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicedefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpicedefaultEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): bool =
  fQsciLexerSpice_virtualbase_defaultEolFill(self.h, style)

type QsciLexerSpicedefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultEolFill(self: ptr cQsciLexerSpice, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerSpicedefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpicedefaultFont*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerSpice_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerSpicedefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultFontWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicedefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpicedefaultPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerSpicedefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultPaperWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicedefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerSpicesetEditor*(self: gen_qscilexerspice_types.QsciLexerSpice, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerSpice_virtualbase_setEditor(self.h, editor.h)

type QsciLexerSpicesetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setEditor(self: ptr cQsciLexerSpice, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerSpicerefreshProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, ): void =
  fQsciLexerSpice_virtualbase_refreshProperties(self.h)

type QsciLexerSpicerefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicerefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicerefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_refreshProperties(self: ptr cQsciLexerSpice, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerSpice_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerSpicerefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerSpicestyleBitsNeeded*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cint =
  fQsciLexerSpice_virtualbase_styleBitsNeeded(self.h)

type QsciLexerSpicestyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicestyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicestyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_styleBitsNeeded(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerSpicestyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicewordCharacters*(self: gen_qscilexerspice_types.QsciLexerSpice, ): cstring =
  (fQsciLexerSpice_virtualbase_wordCharacters(self.h))

type QsciLexerSpicewordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicewordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicewordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_wordCharacters(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerSpicewordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerSpicesetAutoIndentStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, autoindentstyle: cint): void =
  fQsciLexerSpice_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerSpicesetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setAutoIndentStyle(self: ptr cQsciLexerSpice, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerSpicesetColor*(self: gen_qscilexerspice_types.QsciLexerSpice, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerSpice_virtualbase_setColor(self.h, c.h, style)

type QsciLexerSpicesetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setColor(self: ptr cQsciLexerSpice, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setColor ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSpicesetEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, eoffill: bool, style: cint): void =
  fQsciLexerSpice_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerSpicesetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setEolFill(self: ptr cQsciLexerSpice, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSpicesetFont*(self: gen_qscilexerspice_types.QsciLexerSpice, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerSpice_virtualbase_setFont(self.h, f.h, style)

type QsciLexerSpicesetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setFont(self: ptr cQsciLexerSpice, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setFont ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSpicesetPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerSpice_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerSpicesetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicesetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicesetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setPaper(self: ptr cQsciLexerSpice, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerSpicesetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerSpicereadProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerSpice_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSpicereadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicereadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicereadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_readProperties(self: ptr cQsciLexerSpice, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerSpicereadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSpicewriteProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerSpice_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSpicewritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicewritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicewritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_writeProperties(self: ptr cQsciLexerSpice, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerSpicewritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSpiceevent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerSpice_virtualbase_event(self.h, event.h)

type QsciLexerSpiceeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_event(self: ptr cQsciLexerSpice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_event ".} =
  var nimfunc = cast[ptr QsciLexerSpiceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerSpiceeventFilter*(self: gen_qscilexerspice_types.QsciLexerSpice, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerSpice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerSpiceeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_eventFilter(self: ptr cQsciLexerSpice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerSpiceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerSpicetimerEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerSpice_virtualbase_timerEvent(self.h, event.h)

type QsciLexerSpicetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicetimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_timerEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerSpicetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSpicechildEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerSpice_virtualbase_childEvent(self.h, event.h)

type QsciLexerSpicechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicechildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_childEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerSpicechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSpicecustomEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, event: gen_qcoreevent.QEvent): void =
  fQsciLexerSpice_virtualbase_customEvent(self.h, event.h)

type QsciLexerSpicecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicecustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_customEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerSpicecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerSpiceconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerSpice_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerSpiceconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpiceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpiceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_connectNotify(self: ptr cQsciLexerSpice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerSpiceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerSpicedisconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerSpice_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerSpicedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerspice_types.QsciLexerSpice, slot: QsciLexerSpicedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerSpicedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_disconnectNotify(self: ptr cQsciLexerSpice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerSpicedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerspice_types.QsciLexerSpice): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSpice_staticMetaObject())
proc delete*(self: gen_qscilexerspice_types.QsciLexerSpice) =
  fcQsciLexerSpice_delete(self.h)
