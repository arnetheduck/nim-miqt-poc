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


func init*(T: type QsciLexerJava, h: ptr cQsciLexerJava): QsciLexerJava =
  T(h: h)
proc create*(T: type QsciLexerJava, ): QsciLexerJava =

  QsciLexerJava.init(fcQsciLexerJava_new())
proc create*(T: type QsciLexerJava, parent: gen_qobject.QObject): QsciLexerJava =

  QsciLexerJava.init(fcQsciLexerJava_new2(parent.h))
proc metaObject*(self: QsciLexerJava, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJava_metaObject(self.h))

proc metacast*(self: QsciLexerJava, param1: cstring): pointer =

  fcQsciLexerJava_metacast(self.h, param1)

proc metacall*(self: QsciLexerJava, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerJava_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerJava, s: cstring): string =

  let v_ms = fcQsciLexerJava_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerJava, s: cstring): string =

  let v_ms = fcQsciLexerJava_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerJava, ): cstring =

  (fcQsciLexerJava_language(self.h))

proc keywords*(self: QsciLexerJava, set: cint): cstring =

  (fcQsciLexerJava_keywords(self.h, set))

proc tr2*(_: type QsciLexerJava, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJava_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerJava, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJava_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerJava, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerJava_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerJava, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerJava_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerJava, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerJava_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerJavametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerJava, slot: proc(super: QsciLexerJavametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_metacall(self: ptr cQsciLexerJava, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerJava_metacall ".} =
  type Cb = proc(super: QsciLexerJavametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerJava(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerJava, fold: bool): void =


  fQsciLexerJava_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerJavasetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldAtElse(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerJavasetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerJava(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerJava, fold: bool): void =


  fQsciLexerJava_virtualbase_setFoldComments(self.h, fold)

type QsciLexerJavasetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldComments(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldComments ".} =
  type Cb = proc(super: QsciLexerJavasetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerJava(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerJava, fold: bool): void =


  fQsciLexerJava_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerJavasetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldCompact(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerJavasetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerJava(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerJava, fold: bool): void =


  fQsciLexerJava_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerJavasetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFoldPreprocessor(self: ptr cQsciLexerJava, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerJavasetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerJava(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setStylePreprocessor(self: QsciLexerJava, style: bool): void =


  fQsciLexerJava_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerJavasetStylePreprocessorBase* = proc(style: bool): void
proc onsetStylePreprocessor*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetStylePreprocessorBase, style: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetStylePreprocessorBase, style: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setStylePreprocessor(self: ptr cQsciLexerJava, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerJava_setStylePreprocessor ".} =
  type Cb = proc(super: QsciLexerJavasetStylePreprocessorBase, style: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: bool): auto =
    callVirtualBase_setStylePreprocessor(QsciLexerJava(h: self), style)
  let slotval1 = style


  nimfunc[](superCall, slotval1)
type QsciLexerJavalanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerJava, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_language(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerJava, ): cstring =


  (fQsciLexerJava_virtualbase_lexer(self.h))

type QsciLexerJavalexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerJava, slot: proc(super: QsciLexerJavalexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavalexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_lexer(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_lexer ".} =
  type Cb = proc(super: QsciLexerJavalexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_lexerId(self.h)

type QsciLexerJavalexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerJava, slot: proc(super: QsciLexerJavalexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavalexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_lexerId(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_lexerId ".} =
  type Cb = proc(super: QsciLexerJavalexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerJava, ): cstring =


  (fQsciLexerJava_virtualbase_autoCompletionFillups(self.h))

type QsciLexerJavaautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_autoCompletionFillups(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerJavaautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerJava, ): seq[string] =


  var v_ma = fQsciLexerJava_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerJavaautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_autoCompletionWordSeparators(self: ptr cQsciLexerJava, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerJava_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerJavaautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerJava, style: ptr cint): cstring =


  (fQsciLexerJava_virtualbase_blockEnd(self.h, style))

type QsciLexerJavablockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerJava, slot: proc(super: QsciLexerJavablockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavablockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockEnd(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockEnd ".} =
  type Cb = proc(super: QsciLexerJavablockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_blockLookback(self.h)

type QsciLexerJavablockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerJava, slot: proc(super: QsciLexerJavablockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavablockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockLookback(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_blockLookback ".} =
  type Cb = proc(super: QsciLexerJavablockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerJava, style: ptr cint): cstring =


  (fQsciLexerJava_virtualbase_blockStart(self.h, style))

type QsciLexerJavablockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerJava, slot: proc(super: QsciLexerJavablockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavablockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockStart(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockStart ".} =
  type Cb = proc(super: QsciLexerJavablockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerJava, style: ptr cint): cstring =


  (fQsciLexerJava_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerJavablockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerJava, slot: proc(super: QsciLexerJavablockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavablockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_blockStartKeyword(self: ptr cQsciLexerJava, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerJavablockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_braceStyle(self.h)

type QsciLexerJavabraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavabraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavabraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_braceStyle(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_braceStyle ".} =
  type Cb = proc(super: QsciLexerJavabraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerJava, ): bool =


  fQsciLexerJava_virtualbase_caseSensitive(self.h)

type QsciLexerJavacaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerJava, slot: proc(super: QsciLexerJavacaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavacaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_caseSensitive(self: ptr cQsciLexerJava, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerJava_caseSensitive ".} =
  type Cb = proc(super: QsciLexerJavacaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerJava, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_color(self.h, style))

type QsciLexerJavacolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerJava, slot: proc(super: QsciLexerJavacolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavacolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_color(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_color ".} =
  type Cb = proc(super: QsciLexerJavacolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerJava, style: cint): bool =


  fQsciLexerJava_virtualbase_eolFill(self.h, style)

type QsciLexerJavaeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_eolFill(self: ptr cQsciLexerJava, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJava_eolFill ".} =
  type Cb = proc(super: QsciLexerJavaeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerJava, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJava_virtualbase_font(self.h, style))

type QsciLexerJavafontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerJava, slot: proc(super: QsciLexerJavafontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavafontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_font(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_font ".} =
  type Cb = proc(super: QsciLexerJavafontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_indentationGuideView(self.h)

type QsciLexerJavaindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_indentationGuideView(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerJavaindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerJava, set: cint): cstring =


  (fQsciLexerJava_virtualbase_keywords(self.h, set))

type QsciLexerJavakeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerJava, slot: proc(super: QsciLexerJavakeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavakeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_keywords(self: ptr cQsciLexerJava, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_keywords ".} =
  type Cb = proc(super: QsciLexerJavakeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerJava(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_defaultStyle(self.h)

type QsciLexerJavadefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultStyle(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_defaultStyle ".} =
  type Cb = proc(super: QsciLexerJavadefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerJavadescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerJava, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_description(self: ptr cQsciLexerJava, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerJava_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerJava, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_paper(self.h, style))

type QsciLexerJavapaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerJava, slot: proc(super: QsciLexerJavapaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavapaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_paper(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_paper ".} =
  type Cb = proc(super: QsciLexerJavapaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerJava, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerJavadefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultColorWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerJavadefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerJava, style: cint): bool =


  fQsciLexerJava_virtualbase_defaultEolFill(self.h, style)

type QsciLexerJavadefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultEolFill(self: ptr cQsciLexerJava, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerJava_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerJavadefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerJava, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerJava_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerJavadefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultFontWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerJavadefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerJava, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerJava_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerJavadefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_defaultPaperWithStyle(self: ptr cQsciLexerJava, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerJava_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerJavadefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerJava(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerJava, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerJava_virtualbase_setEditor(self.h, editor.h)

type QsciLexerJavasetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setEditor(self: ptr cQsciLexerJava, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_setEditor ".} =
  type Cb = proc(super: QsciLexerJavasetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerJava(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerJava, ): void =


  fQsciLexerJava_virtualbase_refreshProperties(self.h)

type QsciLexerJavarefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerJava, slot: proc(super: QsciLexerJavarefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavarefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_refreshProperties(self: ptr cQsciLexerJava, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerJava_refreshProperties ".} =
  type Cb = proc(super: QsciLexerJavarefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerJava(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerJava, ): cint =


  fQsciLexerJava_virtualbase_styleBitsNeeded(self.h)

type QsciLexerJavastyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerJava, slot: proc(super: QsciLexerJavastyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavastyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_styleBitsNeeded(self: ptr cQsciLexerJava, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerJava_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerJavastyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerJava, ): cstring =


  (fQsciLexerJava_virtualbase_wordCharacters(self.h))

type QsciLexerJavawordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerJava, slot: proc(super: QsciLexerJavawordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavawordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_wordCharacters(self: ptr cQsciLexerJava, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerJava_wordCharacters ".} =
  type Cb = proc(super: QsciLexerJavawordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerJava(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerJava, autoindentstyle: cint): void =


  fQsciLexerJava_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerJavasetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setAutoIndentStyle(self: ptr cQsciLexerJava, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerJavasetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerJava(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerJava, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJava_virtualbase_setColor(self.h, c.h, style)

type QsciLexerJavasetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setColor(self: ptr cQsciLexerJava, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setColor ".} =
  type Cb = proc(super: QsciLexerJavasetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerJava(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerJava, eoffill: bool, style: cint): void =


  fQsciLexerJava_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerJavasetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setEolFill(self: ptr cQsciLexerJava, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setEolFill ".} =
  type Cb = proc(super: QsciLexerJavasetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerJava(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerJava, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerJava_virtualbase_setFont(self.h, f.h, style)

type QsciLexerJavasetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setFont(self: ptr cQsciLexerJava, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setFont ".} =
  type Cb = proc(super: QsciLexerJavasetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerJava(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerJava, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerJava_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerJavasetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerJava, slot: proc(super: QsciLexerJavasetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavasetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_setPaper(self: ptr cQsciLexerJava, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerJava_setPaper ".} =
  type Cb = proc(super: QsciLexerJavasetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerJava(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerJava, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJava_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavareadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerJava, slot: proc(super: QsciLexerJavareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_readProperties(self: ptr cQsciLexerJava, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJava_readProperties ".} =
  type Cb = proc(super: QsciLexerJavareadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerJava(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerJava, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerJava_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerJavawritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerJava, slot: proc(super: QsciLexerJavawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_writeProperties(self: ptr cQsciLexerJava, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerJava_writeProperties ".} =
  type Cb = proc(super: QsciLexerJavawritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerJava(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerJava, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJava_virtualbase_event(self.h, event.h)

type QsciLexerJavaeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_event(self: ptr cQsciLexerJava, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJava_event ".} =
  type Cb = proc(super: QsciLexerJavaeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerJava(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerJava, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerJava_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerJavaeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_eventFilter(self: ptr cQsciLexerJava, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerJava_eventFilter ".} =
  type Cb = proc(super: QsciLexerJavaeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerJava(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerJava, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerJava_virtualbase_timerEvent(self.h, event.h)

type QsciLexerJavatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerJava, slot: proc(super: QsciLexerJavatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_timerEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_timerEvent ".} =
  type Cb = proc(super: QsciLexerJavatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerJava(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerJava, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerJava_virtualbase_childEvent(self.h, event.h)

type QsciLexerJavachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerJava, slot: proc(super: QsciLexerJavachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_childEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_childEvent ".} =
  type Cb = proc(super: QsciLexerJavachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerJava(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerJava, event: gen_qcoreevent.QEvent): void =


  fQsciLexerJava_virtualbase_customEvent(self.h, event.h)

type QsciLexerJavacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerJava, slot: proc(super: QsciLexerJavacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_customEvent(self: ptr cQsciLexerJava, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_customEvent ".} =
  type Cb = proc(super: QsciLexerJavacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerJava(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerJava, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJava_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerJavaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerJava, slot: proc(super: QsciLexerJavaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_connectNotify(self: ptr cQsciLexerJava, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_connectNotify ".} =
  type Cb = proc(super: QsciLexerJavaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerJava(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerJava, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerJava_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerJavadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerJava, slot: proc(super: QsciLexerJavadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerJavadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerJava_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerJava_disconnectNotify(self: ptr cQsciLexerJava, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerJava_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerJavadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerJava(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerJava): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerJava_staticMetaObject())
proc delete*(self: QsciLexerJava) =
  fcQsciLexerJava_delete(self.h)
