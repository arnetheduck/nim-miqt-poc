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
{.compile("gen_qscilexeridl.cpp", cflags).}


import gen_qscilexeridl_types
export gen_qscilexeridl_types

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

type cQsciLexerIDL*{.exportc: "QsciLexerIDL", incompleteStruct.} = object

proc fcQsciLexerIDL_new(): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new".}
proc fcQsciLexerIDL_new2(parent: pointer): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new2".}
proc fcQsciLexerIDL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerIDL_metaObject".}
proc fcQsciLexerIDL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerIDL_metacast".}
proc fcQsciLexerIDL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerIDL_metacall".}
proc fcQsciLexerIDL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr".}
proc fcQsciLexerIDL_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerIDL_trUtf8".}
proc fcQsciLexerIDL_language(self: pointer, ): cstring {.importc: "QsciLexerIDL_language".}
proc fcQsciLexerIDL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_defaultColor".}
proc fcQsciLexerIDL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerIDL_keywords".}
proc fcQsciLexerIDL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerIDL_description".}
proc fcQsciLexerIDL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr2".}
proc fcQsciLexerIDL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerIDL_tr3".}
proc fcQsciLexerIDL_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerIDL_trUtf82".}
proc fcQsciLexerIDL_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerIDL_trUtf83".}
proc fQsciLexerIDL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerIDL_virtualbase_metacall".}
proc fcQsciLexerIDL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_metacall".}
proc fQsciLexerIDL_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldAtElse".}
proc fcQsciLexerIDL_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldAtElse".}
proc fQsciLexerIDL_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldComments".}
proc fcQsciLexerIDL_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldComments".}
proc fQsciLexerIDL_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldCompact".}
proc fcQsciLexerIDL_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldCompact".}
proc fQsciLexerIDL_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerIDL_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldPreprocessor".}
proc fQsciLexerIDL_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerIDL_virtualbase_setStylePreprocessor".}
proc fcQsciLexerIDL_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setStylePreprocessor".}
proc fcQsciLexerIDL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_language".}
proc fQsciLexerIDL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_lexer".}
proc fcQsciLexerIDL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_lexer".}
proc fQsciLexerIDL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_lexerId".}
proc fcQsciLexerIDL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_lexerId".}
proc fQsciLexerIDL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerIDL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_autoCompletionFillups".}
proc fQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerIDL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerIDL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerIDL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockEnd".}
proc fcQsciLexerIDL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockEnd".}
proc fQsciLexerIDL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_blockLookback".}
proc fcQsciLexerIDL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockLookback".}
proc fQsciLexerIDL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockStart".}
proc fcQsciLexerIDL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockStart".}
proc fQsciLexerIDL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockStartKeyword".}
proc fcQsciLexerIDL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockStartKeyword".}
proc fQsciLexerIDL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_braceStyle".}
proc fcQsciLexerIDL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_braceStyle".}
proc fQsciLexerIDL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerIDL_virtualbase_caseSensitive".}
proc fcQsciLexerIDL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_caseSensitive".}
proc fQsciLexerIDL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_color".}
proc fcQsciLexerIDL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_color".}
proc fQsciLexerIDL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerIDL_virtualbase_eolFill".}
proc fcQsciLexerIDL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_eolFill".}
proc fQsciLexerIDL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_font".}
proc fcQsciLexerIDL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_font".}
proc fQsciLexerIDL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_indentationGuideView".}
proc fcQsciLexerIDL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_indentationGuideView".}
proc fQsciLexerIDL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerIDL_virtualbase_keywords".}
proc fcQsciLexerIDL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_keywords".}
proc fQsciLexerIDL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_defaultStyle".}
proc fcQsciLexerIDL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultStyle".}
proc fcQsciLexerIDL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_description".}
proc fQsciLexerIDL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_paper".}
proc fcQsciLexerIDL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_paper".}
proc fQsciLexerIDL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerIDL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerIDL_virtualbase_defaultEolFill".}
proc fcQsciLexerIDL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultEolFill".}
proc fQsciLexerIDL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerIDL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerIDL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerIDL_virtualbase_setEditor".}
proc fcQsciLexerIDL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setEditor".}
proc fQsciLexerIDL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerIDL_virtualbase_refreshProperties".}
proc fcQsciLexerIDL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_refreshProperties".}
proc fQsciLexerIDL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerIDL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_styleBitsNeeded".}
proc fQsciLexerIDL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_wordCharacters".}
proc fcQsciLexerIDL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_wordCharacters".}
proc fQsciLexerIDL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerIDL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerIDL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerIDL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setColor".}
proc fcQsciLexerIDL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setColor".}
proc fQsciLexerIDL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setEolFill".}
proc fcQsciLexerIDL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setEolFill".}
proc fQsciLexerIDL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setFont".}
proc fcQsciLexerIDL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFont".}
proc fQsciLexerIDL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setPaper".}
proc fcQsciLexerIDL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setPaper".}
proc fQsciLexerIDL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerIDL_virtualbase_readProperties".}
proc fcQsciLexerIDL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_readProperties".}
proc fQsciLexerIDL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerIDL_virtualbase_writeProperties".}
proc fcQsciLexerIDL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_writeProperties".}
proc fQsciLexerIDL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerIDL_virtualbase_event".}
proc fcQsciLexerIDL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_event".}
proc fQsciLexerIDL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerIDL_virtualbase_eventFilter".}
proc fcQsciLexerIDL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_eventFilter".}
proc fQsciLexerIDL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_timerEvent".}
proc fcQsciLexerIDL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_timerEvent".}
proc fQsciLexerIDL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_childEvent".}
proc fcQsciLexerIDL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_childEvent".}
proc fQsciLexerIDL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_customEvent".}
proc fcQsciLexerIDL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_customEvent".}
proc fQsciLexerIDL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerIDL_virtualbase_connectNotify".}
proc fcQsciLexerIDL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_connectNotify".}
proc fQsciLexerIDL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerIDL_virtualbase_disconnectNotify".}
proc fcQsciLexerIDL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_disconnectNotify".}
proc fcQsciLexerIDL_staticMetaObject(): pointer {.importc: "QsciLexerIDL_staticMetaObject".}
proc fcQsciLexerIDL_delete(self: pointer) {.importc: "QsciLexerIDL_delete".}


func init*(T: type QsciLexerIDL, h: ptr cQsciLexerIDL): QsciLexerIDL =
  T(h: h)
proc create*(T: type QsciLexerIDL, ): QsciLexerIDL =

  QsciLexerIDL.init(fcQsciLexerIDL_new())
proc create*(T: type QsciLexerIDL, parent: gen_qobject.QObject): QsciLexerIDL =

  QsciLexerIDL.init(fcQsciLexerIDL_new2(parent.h))
proc metaObject*(self: QsciLexerIDL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerIDL_metaObject(self.h))

proc metacast*(self: QsciLexerIDL, param1: cstring): pointer =

  fcQsciLexerIDL_metacast(self.h, param1)

proc metacall*(self: QsciLexerIDL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerIDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerIDL, s: cstring): string =

  let v_ms = fcQsciLexerIDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerIDL, s: cstring): string =

  let v_ms = fcQsciLexerIDL_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerIDL, ): cstring =

  (fcQsciLexerIDL_language(self.h))

proc defaultColor*(self: QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerIDL_defaultColor(self.h, style))

proc keywords*(self: QsciLexerIDL, set: cint): cstring =

  (fcQsciLexerIDL_keywords(self.h, set))

proc description*(self: QsciLexerIDL, style: cint): string =

  let v_ms = fcQsciLexerIDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerIDL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerIDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerIDL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerIDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerIDL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerIDL_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerIDL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerIDL_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerIDL, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerIDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerIDLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_metacall(self: ptr cQsciLexerIDL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_metacall ".} =
  type Cb = proc(super: QsciLexerIDLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerIDL(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerIDL, fold: bool): void =


  fQsciLexerIDL_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerIDLsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldAtElse(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerIDLsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerIDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerIDL, fold: bool): void =


  fQsciLexerIDL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerIDLsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldComments(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldComments ".} =
  type Cb = proc(super: QsciLexerIDLsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerIDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerIDL, fold: bool): void =


  fQsciLexerIDL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerIDLsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldCompact(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerIDLsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerIDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerIDL, fold: bool): void =


  fQsciLexerIDL_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerIDLsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldPreprocessor(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerIDLsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerIDL(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setStylePreprocessor(self: QsciLexerIDL, style: bool): void =


  fQsciLexerIDL_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerIDLsetStylePreprocessorBase* = proc(style: bool): void
proc onsetStylePreprocessor*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetStylePreprocessorBase, style: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetStylePreprocessorBase, style: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setStylePreprocessor(self: ptr cQsciLexerIDL, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setStylePreprocessor ".} =
  type Cb = proc(super: QsciLexerIDLsetStylePreprocessorBase, style: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: bool): auto =
    callVirtualBase_setStylePreprocessor(QsciLexerIDL(h: self), style)
  let slotval1 = style


  nimfunc[](superCall, slotval1)
type QsciLexerIDLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerIDL, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_language(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerIDL, ): cstring =


  (fQsciLexerIDL_virtualbase_lexer(self.h))

type QsciLexerIDLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_lexer(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_lexer ".} =
  type Cb = proc(super: QsciLexerIDLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_lexerId(self.h)

type QsciLexerIDLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_lexerId(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_lexerId ".} =
  type Cb = proc(super: QsciLexerIDLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerIDL, ): cstring =


  (fQsciLexerIDL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerIDLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_autoCompletionFillups(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerIDLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerIDL, ): seq[string] =


  var v_ma = fQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerIDLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_autoCompletionWordSeparators(self: ptr cQsciLexerIDL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerIDL_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerIDLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerIDL, style: ptr cint): cstring =


  (fQsciLexerIDL_virtualbase_blockEnd(self.h, style))

type QsciLexerIDLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockEnd(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockEnd ".} =
  type Cb = proc(super: QsciLexerIDLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_blockLookback(self.h)

type QsciLexerIDLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockLookback(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_blockLookback ".} =
  type Cb = proc(super: QsciLexerIDLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerIDL, style: ptr cint): cstring =


  (fQsciLexerIDL_virtualbase_blockStart(self.h, style))

type QsciLexerIDLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockStart(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockStart ".} =
  type Cb = proc(super: QsciLexerIDLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerIDL, style: ptr cint): cstring =


  (fQsciLexerIDL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerIDLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockStartKeyword(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerIDLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_braceStyle(self.h)

type QsciLexerIDLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_braceStyle(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_braceStyle ".} =
  type Cb = proc(super: QsciLexerIDLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerIDL, ): bool =


  fQsciLexerIDL_virtualbase_caseSensitive(self.h)

type QsciLexerIDLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_caseSensitive(self: ptr cQsciLexerIDL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_caseSensitive ".} =
  type Cb = proc(super: QsciLexerIDLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerIDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_color(self.h, style))

type QsciLexerIDLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_color(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_color ".} =
  type Cb = proc(super: QsciLexerIDLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerIDL, style: cint): bool =


  fQsciLexerIDL_virtualbase_eolFill(self.h, style)

type QsciLexerIDLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_eolFill(self: ptr cQsciLexerIDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_eolFill ".} =
  type Cb = proc(super: QsciLexerIDLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerIDL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerIDL_virtualbase_font(self.h, style))

type QsciLexerIDLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_font(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_font ".} =
  type Cb = proc(super: QsciLexerIDLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_indentationGuideView(self.h)

type QsciLexerIDLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_indentationGuideView(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerIDLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerIDL, set: cint): cstring =


  (fQsciLexerIDL_virtualbase_keywords(self.h, set))

type QsciLexerIDLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_keywords(self: ptr cQsciLexerIDL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_keywords ".} =
  type Cb = proc(super: QsciLexerIDLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerIDL(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_defaultStyle(self.h)

type QsciLexerIDLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultStyle(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultStyle ".} =
  type Cb = proc(super: QsciLexerIDLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerIDLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerIDL, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_description(self: ptr cQsciLexerIDL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerIDL_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerIDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_paper(self.h, style))

type QsciLexerIDLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_paper(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_paper ".} =
  type Cb = proc(super: QsciLexerIDLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerIDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerIDLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultColorWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerIDLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerIDL, style: cint): bool =


  fQsciLexerIDL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerIDLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultEolFill(self: ptr cQsciLexerIDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerIDLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerIDL, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerIDL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerIDLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultFontWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerIDLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerIDL, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerIDLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultPaperWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerIDLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerIDL(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerIDL, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerIDL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerIDLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setEditor(self: ptr cQsciLexerIDL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setEditor ".} =
  type Cb = proc(super: QsciLexerIDLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerIDL(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerIDL, ): void =


  fQsciLexerIDL_virtualbase_refreshProperties(self.h)

type QsciLexerIDLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_refreshProperties(self: ptr cQsciLexerIDL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerIDL_refreshProperties ".} =
  type Cb = proc(super: QsciLexerIDLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerIDL(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerIDL, ): cint =


  fQsciLexerIDL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerIDLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_styleBitsNeeded(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerIDLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerIDL, ): cstring =


  (fQsciLexerIDL_virtualbase_wordCharacters(self.h))

type QsciLexerIDLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_wordCharacters(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_wordCharacters ".} =
  type Cb = proc(super: QsciLexerIDLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerIDL(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerIDL, autoindentstyle: cint): void =


  fQsciLexerIDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerIDLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setAutoIndentStyle(self: ptr cQsciLexerIDL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerIDLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerIDL(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerIDL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerIDL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerIDLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setColor(self: ptr cQsciLexerIDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setColor ".} =
  type Cb = proc(super: QsciLexerIDLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerIDL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerIDL, eoffill: bool, style: cint): void =


  fQsciLexerIDL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerIDLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setEolFill(self: ptr cQsciLexerIDL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setEolFill ".} =
  type Cb = proc(super: QsciLexerIDLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerIDL(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerIDL, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerIDL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerIDLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFont(self: ptr cQsciLexerIDL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFont ".} =
  type Cb = proc(super: QsciLexerIDLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerIDL(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerIDL, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerIDL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerIDLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setPaper(self: ptr cQsciLexerIDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setPaper ".} =
  type Cb = proc(super: QsciLexerIDLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerIDL(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerIDL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerIDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerIDLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_readProperties(self: ptr cQsciLexerIDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_readProperties ".} =
  type Cb = proc(super: QsciLexerIDLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerIDL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerIDL, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerIDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerIDLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_writeProperties(self: ptr cQsciLexerIDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_writeProperties ".} =
  type Cb = proc(super: QsciLexerIDLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerIDL(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerIDL, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerIDL_virtualbase_event(self.h, event.h)

type QsciLexerIDLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_event(self: ptr cQsciLexerIDL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_event ".} =
  type Cb = proc(super: QsciLexerIDLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerIDL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerIDL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerIDL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerIDLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_eventFilter(self: ptr cQsciLexerIDL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_eventFilter ".} =
  type Cb = proc(super: QsciLexerIDLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerIDL(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerIDL, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerIDL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerIDLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_timerEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_timerEvent ".} =
  type Cb = proc(super: QsciLexerIDLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerIDL(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerIDL, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerIDL_virtualbase_childEvent(self.h, event.h)

type QsciLexerIDLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_childEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_childEvent ".} =
  type Cb = proc(super: QsciLexerIDLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerIDL(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerIDL, event: gen_qcoreevent.QEvent): void =


  fQsciLexerIDL_virtualbase_customEvent(self.h, event.h)

type QsciLexerIDLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_customEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_customEvent ".} =
  type Cb = proc(super: QsciLexerIDLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerIDL(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerIDL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerIDL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerIDLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_connectNotify(self: ptr cQsciLexerIDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_connectNotify ".} =
  type Cb = proc(super: QsciLexerIDLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerIDL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerIDL, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerIDL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerIDLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerIDL, slot: proc(super: QsciLexerIDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerIDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_disconnectNotify(self: ptr cQsciLexerIDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerIDLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerIDL(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerIDL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerIDL_staticMetaObject())
proc delete*(self: QsciLexerIDL) =
  fcQsciLexerIDL_delete(self.h)
