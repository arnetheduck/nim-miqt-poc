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
{.compile("gen_qscilexeroctave.cpp", cflags).}


import gen_qscilexeroctave_types
export gen_qscilexeroctave_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexermatlab,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexermatlab,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerOctave*{.exportc: "QsciLexerOctave", incompleteStruct.} = object

proc fcQsciLexerOctave_new(): ptr cQsciLexerOctave {.importc: "QsciLexerOctave_new".}
proc fcQsciLexerOctave_new2(parent: pointer): ptr cQsciLexerOctave {.importc: "QsciLexerOctave_new2".}
proc fcQsciLexerOctave_metaObject(self: pointer, ): pointer {.importc: "QsciLexerOctave_metaObject".}
proc fcQsciLexerOctave_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerOctave_metacast".}
proc fcQsciLexerOctave_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerOctave_metacall".}
proc fcQsciLexerOctave_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerOctave_tr".}
proc fcQsciLexerOctave_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerOctave_trUtf8".}
proc fcQsciLexerOctave_language(self: pointer, ): cstring {.importc: "QsciLexerOctave_language".}
proc fcQsciLexerOctave_lexer(self: pointer, ): cstring {.importc: "QsciLexerOctave_lexer".}
proc fcQsciLexerOctave_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerOctave_keywords".}
proc fcQsciLexerOctave_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerOctave_tr2".}
proc fcQsciLexerOctave_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerOctave_tr3".}
proc fcQsciLexerOctave_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerOctave_trUtf82".}
proc fcQsciLexerOctave_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerOctave_trUtf83".}
proc fQsciLexerOctave_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerOctave_virtualbase_metacall".}
proc fcQsciLexerOctave_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_metacall".}
proc fcQsciLexerOctave_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_language".}
proc fQsciLexerOctave_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerOctave_virtualbase_lexer".}
proc fcQsciLexerOctave_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_lexer".}
proc fQsciLexerOctave_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_lexerId".}
proc fcQsciLexerOctave_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_lexerId".}
proc fQsciLexerOctave_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerOctave_virtualbase_autoCompletionFillups".}
proc fcQsciLexerOctave_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_autoCompletionFillups".}
proc fQsciLexerOctave_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerOctave_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerOctave_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerOctave_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerOctave_virtualbase_blockEnd".}
proc fcQsciLexerOctave_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_blockEnd".}
proc fQsciLexerOctave_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_blockLookback".}
proc fcQsciLexerOctave_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_blockLookback".}
proc fQsciLexerOctave_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerOctave_virtualbase_blockStart".}
proc fcQsciLexerOctave_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_blockStart".}
proc fQsciLexerOctave_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerOctave_virtualbase_blockStartKeyword".}
proc fcQsciLexerOctave_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_blockStartKeyword".}
proc fQsciLexerOctave_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_braceStyle".}
proc fcQsciLexerOctave_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_braceStyle".}
proc fQsciLexerOctave_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerOctave_virtualbase_caseSensitive".}
proc fcQsciLexerOctave_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_caseSensitive".}
proc fQsciLexerOctave_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_color".}
proc fcQsciLexerOctave_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_color".}
proc fQsciLexerOctave_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerOctave_virtualbase_eolFill".}
proc fcQsciLexerOctave_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_eolFill".}
proc fQsciLexerOctave_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_font".}
proc fcQsciLexerOctave_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_font".}
proc fQsciLexerOctave_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_indentationGuideView".}
proc fcQsciLexerOctave_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_indentationGuideView".}
proc fQsciLexerOctave_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerOctave_virtualbase_keywords".}
proc fcQsciLexerOctave_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_keywords".}
proc fQsciLexerOctave_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_defaultStyle".}
proc fcQsciLexerOctave_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_defaultStyle".}
proc fcQsciLexerOctave_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_description".}
proc fQsciLexerOctave_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_paper".}
proc fcQsciLexerOctave_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_paper".}
proc fQsciLexerOctave_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerOctave_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_defaultColorWithStyle".}
proc fQsciLexerOctave_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerOctave_virtualbase_defaultEolFill".}
proc fcQsciLexerOctave_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_defaultEolFill".}
proc fQsciLexerOctave_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerOctave_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_defaultFontWithStyle".}
proc fQsciLexerOctave_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerOctave_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerOctave_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerOctave_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerOctave_virtualbase_setEditor".}
proc fcQsciLexerOctave_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setEditor".}
proc fQsciLexerOctave_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerOctave_virtualbase_refreshProperties".}
proc fcQsciLexerOctave_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_refreshProperties".}
proc fQsciLexerOctave_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerOctave_virtualbase_styleBitsNeeded".}
proc fcQsciLexerOctave_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_styleBitsNeeded".}
proc fQsciLexerOctave_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerOctave_virtualbase_wordCharacters".}
proc fcQsciLexerOctave_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_wordCharacters".}
proc fQsciLexerOctave_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerOctave_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerOctave_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setAutoIndentStyle".}
proc fQsciLexerOctave_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerOctave_virtualbase_setColor".}
proc fcQsciLexerOctave_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setColor".}
proc fQsciLexerOctave_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerOctave_virtualbase_setEolFill".}
proc fcQsciLexerOctave_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setEolFill".}
proc fQsciLexerOctave_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerOctave_virtualbase_setFont".}
proc fcQsciLexerOctave_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setFont".}
proc fQsciLexerOctave_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerOctave_virtualbase_setPaper".}
proc fcQsciLexerOctave_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_setPaper".}
proc fQsciLexerOctave_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerOctave_virtualbase_readProperties".}
proc fcQsciLexerOctave_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_readProperties".}
proc fQsciLexerOctave_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerOctave_virtualbase_writeProperties".}
proc fcQsciLexerOctave_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_writeProperties".}
proc fQsciLexerOctave_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerOctave_virtualbase_event".}
proc fcQsciLexerOctave_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_event".}
proc fQsciLexerOctave_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerOctave_virtualbase_eventFilter".}
proc fcQsciLexerOctave_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_eventFilter".}
proc fQsciLexerOctave_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerOctave_virtualbase_timerEvent".}
proc fcQsciLexerOctave_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_timerEvent".}
proc fQsciLexerOctave_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerOctave_virtualbase_childEvent".}
proc fcQsciLexerOctave_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_childEvent".}
proc fQsciLexerOctave_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerOctave_virtualbase_customEvent".}
proc fcQsciLexerOctave_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_customEvent".}
proc fQsciLexerOctave_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerOctave_virtualbase_connectNotify".}
proc fcQsciLexerOctave_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_connectNotify".}
proc fQsciLexerOctave_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerOctave_virtualbase_disconnectNotify".}
proc fcQsciLexerOctave_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_disconnectNotify".}
proc fcQsciLexerOctave_staticMetaObject(): pointer {.importc: "QsciLexerOctave_staticMetaObject".}
proc fcQsciLexerOctave_delete(self: pointer) {.importc: "QsciLexerOctave_delete".}


func init*(T: type QsciLexerOctave, h: ptr cQsciLexerOctave): QsciLexerOctave =
  T(h: h)
proc create*(T: type QsciLexerOctave, ): QsciLexerOctave =

  QsciLexerOctave.init(fcQsciLexerOctave_new())
proc create*(T: type QsciLexerOctave, parent: gen_qobject.QObject): QsciLexerOctave =

  QsciLexerOctave.init(fcQsciLexerOctave_new2(parent.h))
proc metaObject*(self: QsciLexerOctave, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerOctave_metaObject(self.h))

proc metacast*(self: QsciLexerOctave, param1: cstring): pointer =

  fcQsciLexerOctave_metacast(self.h, param1)

proc metacall*(self: QsciLexerOctave, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerOctave_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerOctave, s: cstring): string =

  let v_ms = fcQsciLexerOctave_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerOctave, s: cstring): string =

  let v_ms = fcQsciLexerOctave_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerOctave, ): cstring =

  (fcQsciLexerOctave_language(self.h))

proc lexer*(self: QsciLexerOctave, ): cstring =

  (fcQsciLexerOctave_lexer(self.h))

proc keywords*(self: QsciLexerOctave, set: cint): cstring =

  (fcQsciLexerOctave_keywords(self.h, set))

proc tr2*(_: type QsciLexerOctave, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerOctave_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerOctave, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerOctave_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerOctave, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerOctave_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerOctave, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerOctave_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerOctave, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerOctave_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerOctavemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_metacall(self: ptr cQsciLexerOctave, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_metacall ".} =
  type Cb = proc(super: QsciLexerOctavemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerOctave(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerOctavelanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerOctave, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_language(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerOctave, ): cstring =


  (fQsciLexerOctave_virtualbase_lexer(self.h))

type QsciLexerOctavelexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavelexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavelexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_lexer(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_lexer ".} =
  type Cb = proc(super: QsciLexerOctavelexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_lexerId(self.h)

type QsciLexerOctavelexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavelexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavelexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_lexerId(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_lexerId ".} =
  type Cb = proc(super: QsciLexerOctavelexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerOctave, ): cstring =


  (fQsciLexerOctave_virtualbase_autoCompletionFillups(self.h))

type QsciLexerOctaveautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_autoCompletionFillups(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerOctaveautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerOctave, ): seq[string] =


  var v_ma = fQsciLexerOctave_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerOctaveautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_autoCompletionWordSeparators(self: ptr cQsciLexerOctave, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerOctave_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerOctaveautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerOctave, style: ptr cint): cstring =


  (fQsciLexerOctave_virtualbase_blockEnd(self.h, style))

type QsciLexerOctaveblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockEnd(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockEnd ".} =
  type Cb = proc(super: QsciLexerOctaveblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_blockLookback(self.h)

type QsciLexerOctaveblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockLookback(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_blockLookback ".} =
  type Cb = proc(super: QsciLexerOctaveblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerOctave, style: ptr cint): cstring =


  (fQsciLexerOctave_virtualbase_blockStart(self.h, style))

type QsciLexerOctaveblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockStart(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockStart ".} =
  type Cb = proc(super: QsciLexerOctaveblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerOctave, style: ptr cint): cstring =


  (fQsciLexerOctave_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerOctaveblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockStartKeyword(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerOctaveblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_braceStyle(self.h)

type QsciLexerOctavebraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavebraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavebraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_braceStyle(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_braceStyle ".} =
  type Cb = proc(super: QsciLexerOctavebraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerOctave, ): bool =


  fQsciLexerOctave_virtualbase_caseSensitive(self.h)

type QsciLexerOctavecaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavecaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavecaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_caseSensitive(self: ptr cQsciLexerOctave, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_caseSensitive ".} =
  type Cb = proc(super: QsciLexerOctavecaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerOctave, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_color(self.h, style))

type QsciLexerOctavecolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavecolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavecolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_color(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_color ".} =
  type Cb = proc(super: QsciLexerOctavecolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerOctave, style: cint): bool =


  fQsciLexerOctave_virtualbase_eolFill(self.h, style)

type QsciLexerOctaveeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_eolFill(self: ptr cQsciLexerOctave, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_eolFill ".} =
  type Cb = proc(super: QsciLexerOctaveeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerOctave, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerOctave_virtualbase_font(self.h, style))

type QsciLexerOctavefontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavefontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavefontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_font(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_font ".} =
  type Cb = proc(super: QsciLexerOctavefontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_indentationGuideView(self.h)

type QsciLexerOctaveindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_indentationGuideView(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerOctaveindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerOctave, set: cint): cstring =


  (fQsciLexerOctave_virtualbase_keywords(self.h, set))

type QsciLexerOctavekeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavekeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavekeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_keywords(self: ptr cQsciLexerOctave, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_keywords ".} =
  type Cb = proc(super: QsciLexerOctavekeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerOctave(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_defaultStyle(self.h)

type QsciLexerOctavedefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultStyle(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultStyle ".} =
  type Cb = proc(super: QsciLexerOctavedefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerOctavedescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerOctave, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_description(self: ptr cQsciLexerOctave, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerOctave_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerOctave, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_paper(self.h, style))

type QsciLexerOctavepaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavepaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavepaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_paper(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_paper ".} =
  type Cb = proc(super: QsciLexerOctavepaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerOctave, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerOctavedefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultColorWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerOctavedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerOctave, style: cint): bool =


  fQsciLexerOctave_virtualbase_defaultEolFill(self.h, style)

type QsciLexerOctavedefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultEolFill(self: ptr cQsciLexerOctave, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerOctavedefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerOctave, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerOctave_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerOctavedefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultFontWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerOctavedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerOctave, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerOctavedefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultPaperWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerOctavedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerOctave(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerOctave, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerOctave_virtualbase_setEditor(self.h, editor.h)

type QsciLexerOctavesetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setEditor(self: ptr cQsciLexerOctave, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setEditor ".} =
  type Cb = proc(super: QsciLexerOctavesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerOctave(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerOctave, ): void =


  fQsciLexerOctave_virtualbase_refreshProperties(self.h)

type QsciLexerOctaverefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaverefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaverefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_refreshProperties(self: ptr cQsciLexerOctave, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerOctave_refreshProperties ".} =
  type Cb = proc(super: QsciLexerOctaverefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerOctave(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerOctave, ): cint =


  fQsciLexerOctave_virtualbase_styleBitsNeeded(self.h)

type QsciLexerOctavestyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavestyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavestyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_styleBitsNeeded(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerOctavestyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerOctave, ): cstring =


  (fQsciLexerOctave_virtualbase_wordCharacters(self.h))

type QsciLexerOctavewordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavewordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavewordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_wordCharacters(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_wordCharacters ".} =
  type Cb = proc(super: QsciLexerOctavewordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerOctave(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerOctave, autoindentstyle: cint): void =


  fQsciLexerOctave_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerOctavesetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setAutoIndentStyle(self: ptr cQsciLexerOctave, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerOctavesetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerOctave(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerOctave, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerOctave_virtualbase_setColor(self.h, c.h, style)

type QsciLexerOctavesetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setColor(self: ptr cQsciLexerOctave, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setColor ".} =
  type Cb = proc(super: QsciLexerOctavesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerOctave(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerOctave, eoffill: bool, style: cint): void =


  fQsciLexerOctave_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerOctavesetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setEolFill(self: ptr cQsciLexerOctave, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setEolFill ".} =
  type Cb = proc(super: QsciLexerOctavesetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerOctave(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerOctave, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerOctave_virtualbase_setFont(self.h, f.h, style)

type QsciLexerOctavesetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setFont(self: ptr cQsciLexerOctave, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setFont ".} =
  type Cb = proc(super: QsciLexerOctavesetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerOctave(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerOctave, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerOctave_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerOctavesetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavesetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setPaper(self: ptr cQsciLexerOctave, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setPaper ".} =
  type Cb = proc(super: QsciLexerOctavesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerOctave(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerOctave, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerOctave_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerOctavereadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_readProperties(self: ptr cQsciLexerOctave, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_readProperties ".} =
  type Cb = proc(super: QsciLexerOctavereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerOctave(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerOctave, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerOctave_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerOctavewritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_writeProperties(self: ptr cQsciLexerOctave, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_writeProperties ".} =
  type Cb = proc(super: QsciLexerOctavewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerOctave(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerOctave, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerOctave_virtualbase_event(self.h, event.h)

type QsciLexerOctaveeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_event(self: ptr cQsciLexerOctave, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_event ".} =
  type Cb = proc(super: QsciLexerOctaveeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerOctave(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerOctave, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerOctave_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerOctaveeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_eventFilter(self: ptr cQsciLexerOctave, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_eventFilter ".} =
  type Cb = proc(super: QsciLexerOctaveeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerOctave(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerOctave, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerOctave_virtualbase_timerEvent(self.h, event.h)

type QsciLexerOctavetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_timerEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_timerEvent ".} =
  type Cb = proc(super: QsciLexerOctavetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerOctave(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerOctave, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerOctave_virtualbase_childEvent(self.h, event.h)

type QsciLexerOctavechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_childEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_childEvent ".} =
  type Cb = proc(super: QsciLexerOctavechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerOctave(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerOctave, event: gen_qcoreevent.QEvent): void =


  fQsciLexerOctave_virtualbase_customEvent(self.h, event.h)

type QsciLexerOctavecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_customEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_customEvent ".} =
  type Cb = proc(super: QsciLexerOctavecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerOctave(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerOctave, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerOctave_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerOctaveconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctaveconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctaveconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_connectNotify(self: ptr cQsciLexerOctave, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_connectNotify ".} =
  type Cb = proc(super: QsciLexerOctaveconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerOctave(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerOctave, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerOctave_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerOctavedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerOctave, slot: proc(super: QsciLexerOctavedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerOctavedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_disconnectNotify(self: ptr cQsciLexerOctave, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerOctavedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerOctave(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerOctave): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerOctave_staticMetaObject())
proc delete*(self: QsciLexerOctave) =
  fcQsciLexerOctave_delete(self.h)
