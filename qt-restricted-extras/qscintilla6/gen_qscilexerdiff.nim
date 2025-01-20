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
{.compile("gen_qscilexerdiff.cpp", cflags).}


type QsciLexerDiffEnumEnum* = distinct cint
template Default*(_: type QsciLexerDiffEnumEnum): untyped = 0
template Comment*(_: type QsciLexerDiffEnumEnum): untyped = 1
template Command*(_: type QsciLexerDiffEnumEnum): untyped = 2
template Header*(_: type QsciLexerDiffEnumEnum): untyped = 3
template Position*(_: type QsciLexerDiffEnumEnum): untyped = 4
template LineRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 5
template LineAdded*(_: type QsciLexerDiffEnumEnum): untyped = 6
template LineChanged*(_: type QsciLexerDiffEnumEnum): untyped = 7
template AddingPatchAdded*(_: type QsciLexerDiffEnumEnum): untyped = 8
template RemovingPatchAdded*(_: type QsciLexerDiffEnumEnum): untyped = 9
template AddingPatchRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 10
template RemovingPatchRemoved*(_: type QsciLexerDiffEnumEnum): untyped = 11


import gen_qscilexerdiff_types
export gen_qscilexerdiff_types

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

type cQsciLexerDiff*{.exportc: "QsciLexerDiff", incompleteStruct.} = object

proc fcQsciLexerDiff_new(): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new".}
proc fcQsciLexerDiff_new2(parent: pointer): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new2".}
proc fcQsciLexerDiff_metaObject(self: pointer, ): pointer {.importc: "QsciLexerDiff_metaObject".}
proc fcQsciLexerDiff_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerDiff_metacast".}
proc fcQsciLexerDiff_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerDiff_metacall".}
proc fcQsciLexerDiff_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr".}
proc fcQsciLexerDiff_language(self: pointer, ): cstring {.importc: "QsciLexerDiff_language".}
proc fcQsciLexerDiff_lexer(self: pointer, ): cstring {.importc: "QsciLexerDiff_lexer".}
proc fcQsciLexerDiff_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerDiff_wordCharacters".}
proc fcQsciLexerDiff_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_defaultColor".}
proc fcQsciLexerDiff_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerDiff_description".}
proc fcQsciLexerDiff_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr2".}
proc fcQsciLexerDiff_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerDiff_tr3".}
proc fQsciLexerDiff_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerDiff_virtualbase_metaObject".}
proc fcQsciLexerDiff_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metaObject".}
proc fQsciLexerDiff_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerDiff_virtualbase_metacast".}
proc fcQsciLexerDiff_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metacast".}
proc fQsciLexerDiff_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerDiff_virtualbase_metacall".}
proc fcQsciLexerDiff_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metacall".}
proc fcQsciLexerDiff_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_language".}
proc fQsciLexerDiff_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_lexer".}
proc fcQsciLexerDiff_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_lexer".}
proc fQsciLexerDiff_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_lexerId".}
proc fcQsciLexerDiff_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_lexerId".}
proc fQsciLexerDiff_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_autoCompletionFillups".}
proc fcQsciLexerDiff_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_autoCompletionFillups".}
proc fQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerDiff_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerDiff_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerDiff_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockEnd".}
proc fcQsciLexerDiff_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockEnd".}
proc fQsciLexerDiff_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_blockLookback".}
proc fcQsciLexerDiff_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockLookback".}
proc fQsciLexerDiff_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockStart".}
proc fcQsciLexerDiff_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockStart".}
proc fQsciLexerDiff_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockStartKeyword".}
proc fcQsciLexerDiff_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockStartKeyword".}
proc fQsciLexerDiff_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_braceStyle".}
proc fcQsciLexerDiff_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_braceStyle".}
proc fQsciLexerDiff_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerDiff_virtualbase_caseSensitive".}
proc fcQsciLexerDiff_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_caseSensitive".}
proc fQsciLexerDiff_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_color".}
proc fcQsciLexerDiff_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_color".}
proc fQsciLexerDiff_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerDiff_virtualbase_eolFill".}
proc fcQsciLexerDiff_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_eolFill".}
proc fQsciLexerDiff_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_font".}
proc fcQsciLexerDiff_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_font".}
proc fQsciLexerDiff_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_indentationGuideView".}
proc fcQsciLexerDiff_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_indentationGuideView".}
proc fQsciLexerDiff_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerDiff_virtualbase_keywords".}
proc fcQsciLexerDiff_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_keywords".}
proc fQsciLexerDiff_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_defaultStyle".}
proc fcQsciLexerDiff_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultStyle".}
proc fcQsciLexerDiff_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_description".}
proc fQsciLexerDiff_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_paper".}
proc fcQsciLexerDiff_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_paper".}
proc fQsciLexerDiff_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultColorWithStyle".}
proc fQsciLexerDiff_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerDiff_virtualbase_defaultEolFill".}
proc fcQsciLexerDiff_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultEolFill".}
proc fQsciLexerDiff_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultFontWithStyle".}
proc fQsciLexerDiff_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerDiff_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerDiff_virtualbase_setEditor".}
proc fcQsciLexerDiff_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setEditor".}
proc fQsciLexerDiff_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerDiff_virtualbase_refreshProperties".}
proc fcQsciLexerDiff_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_refreshProperties".}
proc fQsciLexerDiff_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_styleBitsNeeded".}
proc fcQsciLexerDiff_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_styleBitsNeeded".}
proc fQsciLexerDiff_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_wordCharacters".}
proc fcQsciLexerDiff_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_wordCharacters".}
proc fQsciLexerDiff_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerDiff_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerDiff_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setAutoIndentStyle".}
proc fQsciLexerDiff_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setColor".}
proc fcQsciLexerDiff_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setColor".}
proc fQsciLexerDiff_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setEolFill".}
proc fcQsciLexerDiff_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setEolFill".}
proc fQsciLexerDiff_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setFont".}
proc fcQsciLexerDiff_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setFont".}
proc fQsciLexerDiff_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setPaper".}
proc fcQsciLexerDiff_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setPaper".}
proc fQsciLexerDiff_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerDiff_virtualbase_readProperties".}
proc fcQsciLexerDiff_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_readProperties".}
proc fQsciLexerDiff_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerDiff_virtualbase_writeProperties".}
proc fcQsciLexerDiff_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_writeProperties".}
proc fQsciLexerDiff_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerDiff_virtualbase_event".}
proc fcQsciLexerDiff_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_event".}
proc fQsciLexerDiff_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerDiff_virtualbase_eventFilter".}
proc fcQsciLexerDiff_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_eventFilter".}
proc fQsciLexerDiff_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_timerEvent".}
proc fcQsciLexerDiff_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_timerEvent".}
proc fQsciLexerDiff_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_childEvent".}
proc fcQsciLexerDiff_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_childEvent".}
proc fQsciLexerDiff_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_customEvent".}
proc fcQsciLexerDiff_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_customEvent".}
proc fQsciLexerDiff_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerDiff_virtualbase_connectNotify".}
proc fcQsciLexerDiff_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_connectNotify".}
proc fQsciLexerDiff_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerDiff_virtualbase_disconnectNotify".}
proc fcQsciLexerDiff_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_disconnectNotify".}
proc fcQsciLexerDiff_staticMetaObject(): pointer {.importc: "QsciLexerDiff_staticMetaObject".}
proc fcQsciLexerDiff_delete(self: pointer) {.importc: "QsciLexerDiff_delete".}


func init*(T: type gen_qscilexerdiff_types.QsciLexerDiff, h: ptr cQsciLexerDiff): gen_qscilexerdiff_types.QsciLexerDiff =
  T(h: h)
proc create*(T: type gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qscilexerdiff_types.QsciLexerDiff =
  gen_qscilexerdiff_types.QsciLexerDiff.init(fcQsciLexerDiff_new())

proc create*(T: type gen_qscilexerdiff_types.QsciLexerDiff, parent: gen_qobject.QObject): gen_qscilexerdiff_types.QsciLexerDiff =
  gen_qscilexerdiff_types.QsciLexerDiff.init(fcQsciLexerDiff_new2(parent.h))

proc metaObject*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerDiff_metaObject(self.h))

proc metacast*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cstring): pointer =
  fcQsciLexerDiff_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerDiff_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring): string =
  let v_ms = fcQsciLexerDiff_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_language(self.h))

proc lexer*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fcQsciLexerDiff_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerDiff_defaultColor(self.h, style))

proc description*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): string =
  let v_ms = fcQsciLexerDiff_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerDiff_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerdiff_types.QsciLexerDiff, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerDiff_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerDiffmetaObject*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerDiff_virtualbase_metaObject(self.h))

type QsciLexerDiffmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metaObject(self: ptr cQsciLexerDiff, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerDiffmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerDiffmetacast*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cstring): pointer =
  fQsciLexerDiff_virtualbase_metacast(self.h, param1)

type QsciLexerDiffmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metacast(self: ptr cQsciLexerDiff, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_metacast ".} =
  var nimfunc = cast[ptr QsciLexerDiffmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffmetacall*(self: gen_qscilexerdiff_types.QsciLexerDiff, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerDiff_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerDiffmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metacall(self: ptr cQsciLexerDiff, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_metacall ".} =
  var nimfunc = cast[ptr QsciLexerDiffmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerDifflanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDifflanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerDifflanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_language(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_language ".} =
  var nimfunc = cast[ptr QsciLexerDifflanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDifflexer*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fQsciLexerDiff_virtualbase_lexer(self.h))

type QsciLexerDifflexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDifflexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerDifflexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_lexer(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_lexer ".} =
  var nimfunc = cast[ptr QsciLexerDifflexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDifflexerId*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_lexerId(self.h)

type QsciLexerDifflexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDifflexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerDifflexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_lexerId(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerDifflexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffautoCompletionFillups*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fQsciLexerDiff_virtualbase_autoCompletionFillups(self.h))

type QsciLexerDiffautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_autoCompletionFillups(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerDiffautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffautoCompletionWordSeparators*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): seq[string] =
  var v_ma = fQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerDiffautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_autoCompletionWordSeparators(self: ptr cQsciLexerDiff, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerDiff_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerDiffautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerDiffblockEnd*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fQsciLexerDiff_virtualbase_blockEnd(self.h, style))

type QsciLexerDiffblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockEnd(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerDiffblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffblockLookback*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_blockLookback(self.h)

type QsciLexerDiffblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockLookback(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerDiffblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffblockStart*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fQsciLexerDiff_virtualbase_blockStart(self.h, style))

type QsciLexerDiffblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockStart(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerDiffblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffblockStartKeyword*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: ptr cint): cstring =
  (fQsciLexerDiff_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerDiffblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockStartKeyword(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerDiffblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffbraceStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_braceStyle(self.h)

type QsciLexerDiffbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_braceStyle(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffcaseSensitive*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): bool =
  fQsciLexerDiff_virtualbase_caseSensitive(self.h)

type QsciLexerDiffcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_caseSensitive(self: ptr cQsciLexerDiff, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerDiffcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffcolor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_color(self.h, style))

type QsciLexerDiffcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_color(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_color ".} =
  var nimfunc = cast[ptr QsciLexerDiffcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffeolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): bool =
  fQsciLexerDiff_virtualbase_eolFill(self.h, style)

type QsciLexerDiffeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_eolFill(self: ptr cQsciLexerDiff, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerDiffeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDifffont*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerDiff_virtualbase_font(self.h, style))

type QsciLexerDifffontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDifffontProc) =
  # TODO check subclass
  var tmp = new QsciLexerDifffontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_font(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_font ".} =
  var nimfunc = cast[ptr QsciLexerDifffontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffindentationGuideView*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_indentationGuideView(self.h)

type QsciLexerDiffindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_indentationGuideView(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerDiffindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffkeywords*(self: gen_qscilexerdiff_types.QsciLexerDiff, set: cint): cstring =
  (fQsciLexerDiff_virtualbase_keywords(self.h, set))

type QsciLexerDiffkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_keywords(self: ptr cQsciLexerDiff, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_keywords ".} =
  var nimfunc = cast[ptr QsciLexerDiffkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffdefaultStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_defaultStyle(self.h)

type QsciLexerDiffdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultStyle(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerDiffdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_description(self: ptr cQsciLexerDiff, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerDiff_description ".} =
  var nimfunc = cast[ptr QsciLexerDiffdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerDiffpaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_paper(self.h, style))

type QsciLexerDiffpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_paper(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_paper ".} =
  var nimfunc = cast[ptr QsciLexerDiffpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffdefaultColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerDiffdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultColorWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffdefaultEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): bool =
  fQsciLexerDiff_virtualbase_defaultEolFill(self.h, style)

type QsciLexerDiffdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultEolFill(self: ptr cQsciLexerDiff, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerDiffdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffdefaultFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerDiff_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerDiffdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultFontWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffdefaultPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerDiffdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultPaperWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerDiffsetEditor*(self: gen_qscilexerdiff_types.QsciLexerDiff, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerDiff_virtualbase_setEditor(self.h, editor.h)

type QsciLexerDiffsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setEditor(self: ptr cQsciLexerDiff, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerDiffrefreshProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): void =
  fQsciLexerDiff_virtualbase_refreshProperties(self.h)

type QsciLexerDiffrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_refreshProperties(self: ptr cQsciLexerDiff, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerDiff_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerDiffrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerDiffstyleBitsNeeded*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cint =
  fQsciLexerDiff_virtualbase_styleBitsNeeded(self.h)

type QsciLexerDiffstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_styleBitsNeeded(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerDiffstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffwordCharacters*(self: gen_qscilexerdiff_types.QsciLexerDiff, ): cstring =
  (fQsciLexerDiff_virtualbase_wordCharacters(self.h))

type QsciLexerDiffwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_wordCharacters(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerDiffwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerDiffsetAutoIndentStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, autoindentstyle: cint): void =
  fQsciLexerDiff_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerDiffsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setAutoIndentStyle(self: ptr cQsciLexerDiff, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerDiffsetColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerDiff_virtualbase_setColor(self.h, c.h, style)

type QsciLexerDiffsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setColor(self: ptr cQsciLexerDiff, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setColor ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDiffsetEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, eoffill: bool, style: cint): void =
  fQsciLexerDiff_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerDiffsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setEolFill(self: ptr cQsciLexerDiff, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDiffsetFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerDiff_virtualbase_setFont(self.h, f.h, style)

type QsciLexerDiffsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setFont(self: ptr cQsciLexerDiff, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setFont ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDiffsetPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerDiff_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerDiffsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setPaper(self: ptr cQsciLexerDiff, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerDiffsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerDiffreadProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerDiff_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDiffreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_readProperties(self: ptr cQsciLexerDiff, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerDiffreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDiffwriteProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerDiff_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDiffwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_writeProperties(self: ptr cQsciLexerDiff, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerDiffwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDiffevent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerDiff_virtualbase_event(self.h, event.h)

type QsciLexerDiffeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_event(self: ptr cQsciLexerDiff, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_event ".} =
  var nimfunc = cast[ptr QsciLexerDiffeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerDiffeventFilter*(self: gen_qscilexerdiff_types.QsciLexerDiff, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerDiff_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerDiffeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_eventFilter(self: ptr cQsciLexerDiff, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerDiffeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerDifftimerEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerDiff_virtualbase_timerEvent(self.h, event.h)

type QsciLexerDifftimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDifftimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDifftimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_timerEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerDifftimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDiffchildEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerDiff_virtualbase_childEvent(self.h, event.h)

type QsciLexerDiffchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_childEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerDiffchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDiffcustomEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, event: gen_qcoreevent.QEvent): void =
  fQsciLexerDiff_virtualbase_customEvent(self.h, event.h)

type QsciLexerDiffcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_customEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerDiffcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerDiffconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerDiff_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerDiffconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_connectNotify(self: ptr cQsciLexerDiff, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerDiffconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerDiffdisconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerDiff_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerDiffdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerdiff_types.QsciLexerDiff, slot: QsciLexerDiffdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerDiffdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_disconnectNotify(self: ptr cQsciLexerDiff, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerDiffdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerdiff_types.QsciLexerDiff): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerDiff_staticMetaObject())
proc delete*(self: gen_qscilexerdiff_types.QsciLexerDiff) =
  fcQsciLexerDiff_delete(self.h)
