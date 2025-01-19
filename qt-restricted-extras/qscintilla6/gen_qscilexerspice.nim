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
{.compile("gen_qscilexerspice.cpp", cflags).}


type QsciLexerSpiceEnum* = cint
const
  QsciLexerSpiceDefault* = 0
  QsciLexerSpiceIdentifier* = 1
  QsciLexerSpiceCommand* = 2
  QsciLexerSpiceFunction* = 3
  QsciLexerSpiceParameter* = 4
  QsciLexerSpiceNumber* = 5
  QsciLexerSpiceDelimiter* = 6
  QsciLexerSpiceValue* = 7
  QsciLexerSpiceComment* = 8



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
proc fcQsciLexerSpice_language(self: pointer, ): cstring {.importc: "QsciLexerSpice_language".}
proc fcQsciLexerSpice_lexer(self: pointer, ): cstring {.importc: "QsciLexerSpice_lexer".}
proc fcQsciLexerSpice_braceStyle(self: pointer, ): cint {.importc: "QsciLexerSpice_braceStyle".}
proc fcQsciLexerSpice_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerSpice_keywords".}
proc fcQsciLexerSpice_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultColor".}
proc fcQsciLexerSpice_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerSpice_defaultFont".}
proc fcQsciLexerSpice_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerSpice_description".}
proc fcQsciLexerSpice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerSpice_tr2".}
proc fcQsciLexerSpice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerSpice_tr3".}
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


func init*(T: type QsciLexerSpice, h: ptr cQsciLexerSpice): QsciLexerSpice =
  T(h: h)
proc create*(T: type QsciLexerSpice, ): QsciLexerSpice =

  QsciLexerSpice.init(fcQsciLexerSpice_new())
proc create*(T: type QsciLexerSpice, parent: gen_qobject.QObject): QsciLexerSpice =

  QsciLexerSpice.init(fcQsciLexerSpice_new2(parent.h))
proc metaObject*(self: QsciLexerSpice, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSpice_metaObject(self.h))

proc metacast*(self: QsciLexerSpice, param1: cstring): pointer =

  fcQsciLexerSpice_metacast(self.h, param1)

proc metacall*(self: QsciLexerSpice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerSpice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerSpice, s: cstring): string =

  let v_ms = fcQsciLexerSpice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerSpice, ): cstring =

  (fcQsciLexerSpice_language(self.h))

proc lexer*(self: QsciLexerSpice, ): cstring =

  (fcQsciLexerSpice_lexer(self.h))

proc braceStyle*(self: QsciLexerSpice, ): cint =

  fcQsciLexerSpice_braceStyle(self.h)

proc keywords*(self: QsciLexerSpice, set: cint): cstring =

  (fcQsciLexerSpice_keywords(self.h, set))

proc defaultColor*(self: QsciLexerSpice, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerSpice_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerSpice, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerSpice_defaultFont(self.h, style))

proc description*(self: QsciLexerSpice, style: cint): string =

  let v_ms = fcQsciLexerSpice_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerSpice, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerSpice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerSpice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerSpice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerSpice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerSpice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerSpicemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_metacall(self: ptr cQsciLexerSpice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_metacall ".} =
  type Cb = proc(super: QsciLexerSpicemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerSpice(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerSpicelanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerSpice, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_language(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerSpice, ): cstring =


  (fQsciLexerSpice_virtualbase_lexer(self.h))

type QsciLexerSpicelexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicelexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicelexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_lexer(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_lexer ".} =
  type Cb = proc(super: QsciLexerSpicelexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_lexerId(self.h)

type QsciLexerSpicelexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicelexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicelexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_lexerId(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_lexerId ".} =
  type Cb = proc(super: QsciLexerSpicelexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerSpice, ): cstring =


  (fQsciLexerSpice_virtualbase_autoCompletionFillups(self.h))

type QsciLexerSpiceautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_autoCompletionFillups(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerSpiceautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerSpice, ): seq[string] =


  var v_ma = fQsciLexerSpice_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerSpiceautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_autoCompletionWordSeparators(self: ptr cQsciLexerSpice, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerSpice_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerSpiceautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerSpice, style: ptr cint): cstring =


  (fQsciLexerSpice_virtualbase_blockEnd(self.h, style))

type QsciLexerSpiceblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockEnd(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockEnd ".} =
  type Cb = proc(super: QsciLexerSpiceblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_blockLookback(self.h)

type QsciLexerSpiceblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockLookback(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_blockLookback ".} =
  type Cb = proc(super: QsciLexerSpiceblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerSpice, style: ptr cint): cstring =


  (fQsciLexerSpice_virtualbase_blockStart(self.h, style))

type QsciLexerSpiceblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockStart(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockStart ".} =
  type Cb = proc(super: QsciLexerSpiceblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerSpice, style: ptr cint): cstring =


  (fQsciLexerSpice_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerSpiceblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_blockStartKeyword(self: ptr cQsciLexerSpice, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerSpiceblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_braceStyle(self.h)

type QsciLexerSpicebraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicebraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicebraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_braceStyle(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_braceStyle ".} =
  type Cb = proc(super: QsciLexerSpicebraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerSpice, ): bool =


  fQsciLexerSpice_virtualbase_caseSensitive(self.h)

type QsciLexerSpicecaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicecaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicecaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_caseSensitive(self: ptr cQsciLexerSpice, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_caseSensitive ".} =
  type Cb = proc(super: QsciLexerSpicecaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerSpice, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_color(self.h, style))

type QsciLexerSpicecolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicecolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicecolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_color(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_color ".} =
  type Cb = proc(super: QsciLexerSpicecolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerSpice, style: cint): bool =


  fQsciLexerSpice_virtualbase_eolFill(self.h, style)

type QsciLexerSpiceeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_eolFill(self: ptr cQsciLexerSpice, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_eolFill ".} =
  type Cb = proc(super: QsciLexerSpiceeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerSpice, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerSpice_virtualbase_font(self.h, style))

type QsciLexerSpicefontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicefontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicefontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_font(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_font ".} =
  type Cb = proc(super: QsciLexerSpicefontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_indentationGuideView(self.h)

type QsciLexerSpiceindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_indentationGuideView(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerSpiceindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerSpice, set: cint): cstring =


  (fQsciLexerSpice_virtualbase_keywords(self.h, set))

type QsciLexerSpicekeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicekeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicekeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_keywords(self: ptr cQsciLexerSpice, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_keywords ".} =
  type Cb = proc(super: QsciLexerSpicekeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerSpice(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_defaultStyle(self.h)

type QsciLexerSpicedefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultStyle(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultStyle ".} =
  type Cb = proc(super: QsciLexerSpicedefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerSpicedescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerSpice, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_description(self: ptr cQsciLexerSpice, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerSpice_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerSpice, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_paper(self.h, style))

type QsciLexerSpicepaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicepaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicepaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_paper(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_paper ".} =
  type Cb = proc(super: QsciLexerSpicepaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerSpice, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerSpicedefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultColorWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerSpicedefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerSpice, style: cint): bool =


  fQsciLexerSpice_virtualbase_defaultEolFill(self.h, style)

type QsciLexerSpicedefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultEolFill(self: ptr cQsciLexerSpice, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerSpicedefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerSpice, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerSpice_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerSpicedefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultFontWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerSpicedefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerSpice, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerSpice_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerSpicedefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_defaultPaperWithStyle(self: ptr cQsciLexerSpice, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerSpice_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerSpicedefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerSpice(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerSpice, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerSpice_virtualbase_setEditor(self.h, editor.h)

type QsciLexerSpicesetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setEditor(self: ptr cQsciLexerSpice, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setEditor ".} =
  type Cb = proc(super: QsciLexerSpicesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerSpice(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerSpice, ): void =


  fQsciLexerSpice_virtualbase_refreshProperties(self.h)

type QsciLexerSpicerefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicerefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicerefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_refreshProperties(self: ptr cQsciLexerSpice, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerSpice_refreshProperties ".} =
  type Cb = proc(super: QsciLexerSpicerefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerSpice(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerSpice, ): cint =


  fQsciLexerSpice_virtualbase_styleBitsNeeded(self.h)

type QsciLexerSpicestyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicestyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicestyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_styleBitsNeeded(self: ptr cQsciLexerSpice, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerSpice_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerSpicestyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerSpice, ): cstring =


  (fQsciLexerSpice_virtualbase_wordCharacters(self.h))

type QsciLexerSpicewordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicewordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicewordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_wordCharacters(self: ptr cQsciLexerSpice, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerSpice_wordCharacters ".} =
  type Cb = proc(super: QsciLexerSpicewordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerSpice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerSpice, autoindentstyle: cint): void =


  fQsciLexerSpice_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerSpicesetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setAutoIndentStyle(self: ptr cQsciLexerSpice, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerSpicesetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerSpice(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerSpice, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerSpice_virtualbase_setColor(self.h, c.h, style)

type QsciLexerSpicesetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setColor(self: ptr cQsciLexerSpice, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setColor ".} =
  type Cb = proc(super: QsciLexerSpicesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerSpice(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerSpice, eoffill: bool, style: cint): void =


  fQsciLexerSpice_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerSpicesetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setEolFill(self: ptr cQsciLexerSpice, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setEolFill ".} =
  type Cb = proc(super: QsciLexerSpicesetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerSpice(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerSpice, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerSpice_virtualbase_setFont(self.h, f.h, style)

type QsciLexerSpicesetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setFont(self: ptr cQsciLexerSpice, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setFont ".} =
  type Cb = proc(super: QsciLexerSpicesetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerSpice(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerSpice, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerSpice_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerSpicesetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicesetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_setPaper(self: ptr cQsciLexerSpice, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerSpice_setPaper ".} =
  type Cb = proc(super: QsciLexerSpicesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerSpice(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerSpice, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerSpice_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSpicereadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_readProperties(self: ptr cQsciLexerSpice, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_readProperties ".} =
  type Cb = proc(super: QsciLexerSpicereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerSpice(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerSpice, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerSpice_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerSpicewritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_writeProperties(self: ptr cQsciLexerSpice, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_writeProperties ".} =
  type Cb = proc(super: QsciLexerSpicewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerSpice(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerSpice, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerSpice_virtualbase_event(self.h, event.h)

type QsciLexerSpiceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_event(self: ptr cQsciLexerSpice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_event ".} =
  type Cb = proc(super: QsciLexerSpiceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerSpice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerSpice, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerSpice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerSpiceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_eventFilter(self: ptr cQsciLexerSpice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerSpice_eventFilter ".} =
  type Cb = proc(super: QsciLexerSpiceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerSpice(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerSpice, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerSpice_virtualbase_timerEvent(self.h, event.h)

type QsciLexerSpicetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_timerEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_timerEvent ".} =
  type Cb = proc(super: QsciLexerSpicetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerSpice(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerSpice, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerSpice_virtualbase_childEvent(self.h, event.h)

type QsciLexerSpicechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_childEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_childEvent ".} =
  type Cb = proc(super: QsciLexerSpicechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerSpice(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerSpice, event: gen_qcoreevent.QEvent): void =


  fQsciLexerSpice_virtualbase_customEvent(self.h, event.h)

type QsciLexerSpicecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_customEvent(self: ptr cQsciLexerSpice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_customEvent ".} =
  type Cb = proc(super: QsciLexerSpicecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerSpice(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerSpice, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerSpice_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerSpiceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpiceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpiceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_connectNotify(self: ptr cQsciLexerSpice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_connectNotify ".} =
  type Cb = proc(super: QsciLexerSpiceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerSpice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerSpice, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerSpice_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerSpicedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerSpice, slot: proc(super: QsciLexerSpicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerSpicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerSpice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerSpice_disconnectNotify(self: ptr cQsciLexerSpice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerSpice_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerSpicedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerSpice(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerSpice): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerSpice_staticMetaObject())
proc delete*(self: QsciLexerSpice) =
  fcQsciLexerSpice_delete(self.h)
