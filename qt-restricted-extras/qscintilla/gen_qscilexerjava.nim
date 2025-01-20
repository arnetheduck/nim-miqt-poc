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
{.compile("gen_qscilexerjava.cpp", cflags).}


import gen_qscilexerjava_types
export gen_qscilexerjava_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerJava*{.exportc: "QsciLexerJava", incompleteStruct.} = object

proc fcQsciLexerJava_new(): ptr cQsciLexerJava {.importc: "QsciLexerJava_new".}
proc fcQsciLexerJava_new2(parent: pointer): ptr cQsciLexerJava {.importc: "QsciLexerJava_new2".}
proc fcQsciLexerJava_metaObject(self: pointer, ): pointer {.importc: "QsciLexerJava_metaObject".}
proc fcQsciLexerJava_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerJava_metacast".}
proc fcQsciLexerJava_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerJava_metacall".}
proc fcQsciLexerJava_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerJava_tr".}
proc fcQsciLexerJava_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerJava_trUtf8".}
proc fcQsciLexerJava_language(self: pointer, ): cstring {.importc: "QsciLexerJava_language".}
proc fcQsciLexerJava_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerJava_keywords".}
proc fcQsciLexerJava_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJava_tr2".}
proc fcQsciLexerJava_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJava_tr3".}
proc fcQsciLexerJava_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerJava_trUtf82".}
proc fcQsciLexerJava_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerJava_trUtf83".}
proc fQsciLexerJava_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerJava_virtualbase_metaObject".}
proc fcQsciLexerJava_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_metaObject".}
proc fQsciLexerJava_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerJava_virtualbase_metacast".}
proc fcQsciLexerJava_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_metacast".}
proc fQsciLexerJava_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerJava_virtualbase_metacall".}
proc fcQsciLexerJava_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_metacall".}
proc fQsciLexerJava_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerJava_virtualbase_setFoldAtElse".}
proc fcQsciLexerJava_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setFoldAtElse".}
proc fQsciLexerJava_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerJava_virtualbase_setFoldComments".}
proc fcQsciLexerJava_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setFoldComments".}
proc fQsciLexerJava_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerJava_virtualbase_setFoldCompact".}
proc fcQsciLexerJava_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setFoldCompact".}
proc fQsciLexerJava_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerJava_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerJava_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setFoldPreprocessor".}
proc fQsciLexerJava_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerJava_virtualbase_setStylePreprocessor".}
proc fcQsciLexerJava_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setStylePreprocessor".}
proc fcQsciLexerJava_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_language".}
proc fQsciLexerJava_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerJava_virtualbase_lexer".}
proc fcQsciLexerJava_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_lexer".}
proc fQsciLexerJava_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_lexerId".}
proc fcQsciLexerJava_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_lexerId".}
proc fQsciLexerJava_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerJava_virtualbase_autoCompletionFillups".}
proc fcQsciLexerJava_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_autoCompletionFillups".}
proc fQsciLexerJava_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerJava_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerJava_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerJava_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJava_virtualbase_blockEnd".}
proc fcQsciLexerJava_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_blockEnd".}
proc fQsciLexerJava_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_blockLookback".}
proc fcQsciLexerJava_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_blockLookback".}
proc fQsciLexerJava_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJava_virtualbase_blockStart".}
proc fcQsciLexerJava_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_blockStart".}
proc fQsciLexerJava_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerJava_virtualbase_blockStartKeyword".}
proc fcQsciLexerJava_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_blockStartKeyword".}
proc fQsciLexerJava_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_braceStyle".}
proc fcQsciLexerJava_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_braceStyle".}
proc fQsciLexerJava_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerJava_virtualbase_caseSensitive".}
proc fcQsciLexerJava_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_caseSensitive".}
proc fQsciLexerJava_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_color".}
proc fcQsciLexerJava_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_color".}
proc fQsciLexerJava_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJava_virtualbase_eolFill".}
proc fcQsciLexerJava_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_eolFill".}
proc fQsciLexerJava_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_font".}
proc fcQsciLexerJava_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_font".}
proc fQsciLexerJava_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_indentationGuideView".}
proc fcQsciLexerJava_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_indentationGuideView".}
proc fQsciLexerJava_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerJava_virtualbase_keywords".}
proc fcQsciLexerJava_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_keywords".}
proc fQsciLexerJava_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_defaultStyle".}
proc fcQsciLexerJava_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_defaultStyle".}
proc fcQsciLexerJava_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_description".}
proc fQsciLexerJava_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_paper".}
proc fcQsciLexerJava_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_paper".}
proc fQsciLexerJava_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerJava_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_defaultColorWithStyle".}
proc fQsciLexerJava_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerJava_virtualbase_defaultEolFill".}
proc fcQsciLexerJava_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_defaultEolFill".}
proc fQsciLexerJava_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerJava_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_defaultFontWithStyle".}
proc fQsciLexerJava_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerJava_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerJava_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerJava_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerJava_virtualbase_setEditor".}
proc fcQsciLexerJava_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setEditor".}
proc fQsciLexerJava_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerJava_virtualbase_refreshProperties".}
proc fcQsciLexerJava_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_refreshProperties".}
proc fQsciLexerJava_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerJava_virtualbase_styleBitsNeeded".}
proc fcQsciLexerJava_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_styleBitsNeeded".}
proc fQsciLexerJava_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerJava_virtualbase_wordCharacters".}
proc fcQsciLexerJava_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_wordCharacters".}
proc fQsciLexerJava_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerJava_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerJava_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setAutoIndentStyle".}
proc fQsciLexerJava_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJava_virtualbase_setColor".}
proc fcQsciLexerJava_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setColor".}
proc fQsciLexerJava_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerJava_virtualbase_setEolFill".}
proc fcQsciLexerJava_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setEolFill".}
proc fQsciLexerJava_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerJava_virtualbase_setFont".}
proc fcQsciLexerJava_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setFont".}
proc fQsciLexerJava_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerJava_virtualbase_setPaper".}
proc fcQsciLexerJava_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_setPaper".}
proc fQsciLexerJava_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJava_virtualbase_readProperties".}
proc fcQsciLexerJava_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_readProperties".}
proc fQsciLexerJava_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerJava_virtualbase_writeProperties".}
proc fcQsciLexerJava_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_writeProperties".}
proc fQsciLexerJava_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerJava_virtualbase_event".}
proc fcQsciLexerJava_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_event".}
proc fQsciLexerJava_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerJava_virtualbase_eventFilter".}
proc fcQsciLexerJava_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_eventFilter".}
proc fQsciLexerJava_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJava_virtualbase_timerEvent".}
proc fcQsciLexerJava_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_timerEvent".}
proc fQsciLexerJava_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJava_virtualbase_childEvent".}
proc fcQsciLexerJava_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_childEvent".}
proc fQsciLexerJava_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerJava_virtualbase_customEvent".}
proc fcQsciLexerJava_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_customEvent".}
proc fQsciLexerJava_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJava_virtualbase_connectNotify".}
proc fcQsciLexerJava_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_connectNotify".}
proc fQsciLexerJava_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerJava_virtualbase_disconnectNotify".}
proc fcQsciLexerJava_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerJava_override_virtual_disconnectNotify".}
proc fcQsciLexerJava_staticMetaObject(): pointer {.importc: "QsciLexerJava_staticMetaObject".}
proc fcQsciLexerJava_delete(self: pointer) {.importc: "QsciLexerJava_delete".}


func init*(T: type gen_qscilexerjava_types.QsciLexerJava, h: ptr cQsciLexerJava): gen_qscilexerjava_types.QsciLexerJava =
  T(h: h)
proc create*(T: type gen_qscilexerjava_types.QsciLexerJava, ): gen_qscilexerjava_types.QsciLexerJava =

  gen_qscilexerjava_types.QsciLexerJava.init(fcQsciLexerJava_new())
proc create*(T: type gen_qscilexerjava_types.QsciLexerJava, parent: gen_qobject.QObject): gen_qscilexerjava_types.QsciLexerJava =

  gen_qscilexerjava_types.QsciLexerJava.init(fcQsciLexerJava_new2(parent.h))
proc metaObject*(self: gen_qscilexerjava_types.QsciLexerJava, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJava_metaObject(self.h))

proc metacast*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cstring): pointer =

  fcQsciLexerJava_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerJava_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring): string =

  let v_ms = fcQsciLexerJava_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring): string =

  let v_ms = fcQsciLexerJava_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =

  (fcQsciLexerJava_language(self.h))

proc keywords*(self: gen_qscilexerjava_types.QsciLexerJava, set: cint): cstring =

  (fcQsciLexerJava_keywords(self.h, set))

proc tr2*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJava_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJava_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJava_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerjava_types.QsciLexerJava, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJava_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerJavametaObject*(self: gen_qscilexerjava_types.QsciLexerJava, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerJava_virtualbase_metaObject(self.h))

type QsciLexerJavametaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavametaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_metaObject(self: ptr cQsciLexerJava, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerJavametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerJavametacast*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cstring): pointer =

  fQsciLexerJava_virtualbase_metacast(self.h, param1)

type QsciLexerJavametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavametacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_metacast(self: ptr cQsciLexerJava, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_metacast ".} =
  var nimfunc = cast[ptr QsciLexerJavametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavametacall*(self: gen_qscilexerjava_types.QsciLexerJava, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerJava_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJavametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavametacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_metacall(self: ptr cQsciLexerJava, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJava_metacall ".} =
  var nimfunc = cast[ptr QsciLexerJavametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerJavasetFoldAtElse*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =

  fQsciLexerJava_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerJavasetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldAtElse(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerJavasetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavasetFoldComments*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =

  fQsciLexerJava_virtualbase_setFoldComments(self.h, fold)

type QsciLexerJavasetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldComments(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerJavasetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavasetFoldCompact*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =

  fQsciLexerJava_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerJavasetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldCompact(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerJavasetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavasetFoldPreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, fold: bool): void =

  fQsciLexerJava_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerJavasetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldPreprocessor(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerJavasetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerJavasetStylePreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, style: bool): void =

  fQsciLexerJava_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerJavasetStylePreprocessorProc* = proc(style: bool): void
proc onsetStylePreprocessor*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetStylePreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetStylePreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setStylePreprocessor(self: ptr cQsciLexerJava, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setStylePreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerJavasetStylePreprocessorProc](cast[pointer](slot))
  let slotval1 = style


  nimfunc[](slotval1)
type QsciLexerJavalanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavalanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavalanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_language(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_language ".} =
  var nimfunc = cast[ptr QsciLexerJavalanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavalexer*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =

  (fQsciLexerJava_virtualbase_lexer(self.h))

type QsciLexerJavalexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavalexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavalexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_lexer(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_lexer ".} =
  var nimfunc = cast[ptr QsciLexerJavalexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavalexerId*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_lexerId(self.h)

type QsciLexerJavalexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavalexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavalexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_lexerId(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerJavalexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaautoCompletionFillups*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =

  (fQsciLexerJava_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJavaautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_autoCompletionFillups(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerJavaautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavaautoCompletionWordSeparators*(self: gen_qscilexerjava_types.QsciLexerJava, ): seq[string] =

  var v_ma = fQsciLexerJava_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJavaautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_autoCompletionWordSeparators(self: ptr cQsciLexerJava, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJava_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerJavaautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerJavablockEnd*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =

  (fQsciLexerJava_virtualbase_blockEnd(self.h, style))

type QsciLexerJavablockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavablockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavablockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockEnd(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerJavablockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavablockLookback*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_blockLookback(self.h)

type QsciLexerJavablockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavablockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavablockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockLookback(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerJavablockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavablockStart*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =

  (fQsciLexerJava_virtualbase_blockStart(self.h, style))

type QsciLexerJavablockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavablockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavablockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockStart(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerJavablockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavablockStartKeyword*(self: gen_qscilexerjava_types.QsciLexerJava, style: ptr cint): cstring =

  (fQsciLexerJava_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJavablockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavablockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavablockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockStartKeyword(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerJavablockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavabraceStyle*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_braceStyle(self.h)

type QsciLexerJavabraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavabraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavabraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_braceStyle(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavabraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavacaseSensitive*(self: gen_qscilexerjava_types.QsciLexerJava, ): bool =

  fQsciLexerJava_virtualbase_caseSensitive(self.h)

type QsciLexerJavacaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavacaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavacaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_caseSensitive(self: ptr cQsciLexerJava, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJava_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerJavacaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavacolor*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_color(self.h, style))

type QsciLexerJavacolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavacolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavacolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_color(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_color ".} =
  var nimfunc = cast[ptr QsciLexerJavacolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaeolFill*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): bool =

  fQsciLexerJava_virtualbase_eolFill(self.h, style)

type QsciLexerJavaeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_eolFill(self: ptr cQsciLexerJava, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJava_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavaeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavafont*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerJava_virtualbase_font(self.h, style))

type QsciLexerJavafontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavafontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavafontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_font(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_font ".} =
  var nimfunc = cast[ptr QsciLexerJavafontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavaindentationGuideView*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_indentationGuideView(self.h)

type QsciLexerJavaindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_indentationGuideView(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerJavaindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavakeywords*(self: gen_qscilexerjava_types.QsciLexerJava, set: cint): cstring =

  (fQsciLexerJava_virtualbase_keywords(self.h, set))

type QsciLexerJavakeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavakeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavakeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_keywords(self: ptr cQsciLexerJava, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_keywords ".} =
  var nimfunc = cast[ptr QsciLexerJavakeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavadefaultStyle*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_defaultStyle(self.h)

type QsciLexerJavadefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultStyle(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavadefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerJavadescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_description(self: ptr cQsciLexerJava, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJava_description ".} =
  var nimfunc = cast[ptr QsciLexerJavadescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerJavapaper*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_paper(self.h, style))

type QsciLexerJavapaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavapaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavapaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_paper(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_paper ".} =
  var nimfunc = cast[ptr QsciLexerJavapaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavadefaultColorWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJavadefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultColorWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavadefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavadefaultEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): bool =

  fQsciLexerJava_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJavadefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultEolFill(self: ptr cQsciLexerJava, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJava_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavadefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavadefaultFontWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerJava_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJavadefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultFontWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavadefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavadefaultPaperWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJavadefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultPaperWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavadefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerJavasetEditor*(self: gen_qscilexerjava_types.QsciLexerJava, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerJava_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJavasetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setEditor(self: ptr cQsciLexerJava, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerJavasetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerJavarefreshProperties*(self: gen_qscilexerjava_types.QsciLexerJava, ): void =

  fQsciLexerJava_virtualbase_refreshProperties(self.h)

type QsciLexerJavarefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavarefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavarefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_refreshProperties(self: ptr cQsciLexerJava, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJava_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavarefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerJavastyleBitsNeeded*(self: gen_qscilexerjava_types.QsciLexerJava, ): cint =

  fQsciLexerJava_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJavastyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavastyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavastyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_styleBitsNeeded(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerJavastyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavawordCharacters*(self: gen_qscilexerjava_types.QsciLexerJava, ): cstring =

  (fQsciLexerJava_virtualbase_wordCharacters(self.h))

type QsciLexerJavawordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavawordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavawordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_wordCharacters(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerJavawordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerJavasetAutoIndentStyle*(self: gen_qscilexerjava_types.QsciLexerJava, autoindentstyle: cint): void =

  fQsciLexerJava_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJavasetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setAutoIndentStyle(self: ptr cQsciLexerJava, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerJavasetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerJavasetColor*(self: gen_qscilexerjava_types.QsciLexerJava, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerJava_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJavasetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setColor(self: ptr cQsciLexerJava, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setColor ".} =
  var nimfunc = cast[ptr QsciLexerJavasetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavasetEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, eoffill: bool, style: cint): void =

  fQsciLexerJava_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJavasetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setEolFill(self: ptr cQsciLexerJava, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerJavasetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavasetFont*(self: gen_qscilexerjava_types.QsciLexerJava, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerJava_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJavasetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFont(self: ptr cQsciLexerJava, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFont ".} =
  var nimfunc = cast[ptr QsciLexerJavasetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavasetPaper*(self: gen_qscilexerjava_types.QsciLexerJava, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerJava_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJavasetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavasetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavasetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setPaper(self: ptr cQsciLexerJava, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerJavasetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerJavareadProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerJava_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavareadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavareadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavareadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_readProperties(self: ptr cQsciLexerJava, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJava_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavareadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavawriteProperties*(self: gen_qscilexerjava_types.QsciLexerJava, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerJava_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavawritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavawritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavawritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_writeProperties(self: ptr cQsciLexerJava, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJava_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerJavawritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavaevent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerJava_virtualbase_event(self.h, event.h)

type QsciLexerJavaeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_event(self: ptr cQsciLexerJava, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJava_event ".} =
  var nimfunc = cast[ptr QsciLexerJavaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerJavaeventFilter*(self: gen_qscilexerjava_types.QsciLexerJava, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerJava_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJavaeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_eventFilter(self: ptr cQsciLexerJava, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJava_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerJavaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerJavatimerEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerJava_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJavatimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavatimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_timerEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavachildEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerJava_virtualbase_childEvent(self.h, event.h)

type QsciLexerJavachildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavachildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_childEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavacustomEvent*(self: gen_qscilexerjava_types.QsciLexerJava, event: gen_qcoreevent.QEvent): void =

  fQsciLexerJava_virtualbase_customEvent(self.h, event.h)

type QsciLexerJavacustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavacustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_customEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerJavacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerJavaconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerJava_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJavaconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_connectNotify(self: ptr cQsciLexerJava, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJavaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerJavadisconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerJava_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJavadisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerjava_types.QsciLexerJava, slot: QsciLexerJavadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerJavadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_disconnectNotify(self: ptr cQsciLexerJava, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerJavadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerjava_types.QsciLexerJava): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJava_staticMetaObject())
proc delete*(self: gen_qscilexerjava_types.QsciLexerJava) =
  fcQsciLexerJava_delete(self.h)
