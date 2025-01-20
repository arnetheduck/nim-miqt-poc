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
{.compile("gen_qscilexermatlab.cpp", cflags).}


type QsciLexerMatlabEnum* = cint
const
  QsciLexerMatlabDefault* = 0
  QsciLexerMatlabComment* = 1
  QsciLexerMatlabCommand* = 2
  QsciLexerMatlabNumber* = 3
  QsciLexerMatlabKeyword* = 4
  QsciLexerMatlabSingleQuotedString* = 5
  QsciLexerMatlabOperator* = 6
  QsciLexerMatlabIdentifier* = 7
  QsciLexerMatlabDoubleQuotedString* = 8



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
proc fcQsciLexerMatlab_language(self: pointer, ): cstring {.importc: "QsciLexerMatlab_language".}
proc fcQsciLexerMatlab_lexer(self: pointer, ): cstring {.importc: "QsciLexerMatlab_lexer".}
proc fcQsciLexerMatlab_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultColor".}
proc fcQsciLexerMatlab_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMatlab_defaultFont".}
proc fcQsciLexerMatlab_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerMatlab_keywords".}
proc fcQsciLexerMatlab_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMatlab_description".}
proc fcQsciLexerMatlab_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMatlab_tr2".}
proc fcQsciLexerMatlab_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMatlab_tr3".}
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


func init*(T: type QsciLexerMatlab, h: ptr cQsciLexerMatlab): QsciLexerMatlab =
  T(h: h)
proc create*(T: type QsciLexerMatlab, ): QsciLexerMatlab =

  QsciLexerMatlab.init(fcQsciLexerMatlab_new())
proc create*(T: type QsciLexerMatlab, parent: gen_qobject.QObject): QsciLexerMatlab =

  QsciLexerMatlab.init(fcQsciLexerMatlab_new2(parent.h))
proc metaObject*(self: QsciLexerMatlab, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMatlab_metaObject(self.h))

proc metacast*(self: QsciLexerMatlab, param1: cstring): pointer =

  fcQsciLexerMatlab_metacast(self.h, param1)

proc metacall*(self: QsciLexerMatlab, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerMatlab_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerMatlab, s: cstring): string =

  let v_ms = fcQsciLexerMatlab_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerMatlab, ): cstring =

  (fcQsciLexerMatlab_language(self.h))

proc lexer*(self: QsciLexerMatlab, ): cstring =

  (fcQsciLexerMatlab_lexer(self.h))

proc defaultColor*(self: QsciLexerMatlab, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMatlab_defaultColor(self.h, style))

proc defaultFont*(self: QsciLexerMatlab, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerMatlab_defaultFont(self.h, style))

proc keywords*(self: QsciLexerMatlab, set: cint): cstring =

  (fcQsciLexerMatlab_keywords(self.h, set))

proc description*(self: QsciLexerMatlab, style: cint): string =

  let v_ms = fcQsciLexerMatlab_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerMatlab, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerMatlab_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerMatlab, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerMatlab_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerMatlab, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerMatlab_virtualbase_metaObject(self.h))

type QsciLexerMatlabmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metaObject(self: ptr cQsciLexerMatlab, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_metaObject ".} =
  type Cb = proc(super: QsciLexerMatlabmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerMatlab, param1: cstring): pointer =


  fQsciLexerMatlab_virtualbase_metacast(self.h, param1)

type QsciLexerMatlabmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metacast(self: ptr cQsciLexerMatlab, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_metacast ".} =
  type Cb = proc(super: QsciLexerMatlabmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerMatlab(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerMatlab, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerMatlab_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMatlabmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_metacall(self: ptr cQsciLexerMatlab, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_metacall ".} =
  type Cb = proc(super: QsciLexerMatlabmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerMatlab(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMatlablanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerMatlab, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_language(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerMatlab, ): cstring =


  (fQsciLexerMatlab_virtualbase_lexer(self.h))

type QsciLexerMatlablexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlablexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlablexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_lexer(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_lexer ".} =
  type Cb = proc(super: QsciLexerMatlablexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_lexerId(self.h)

type QsciLexerMatlablexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlablexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlablexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_lexerId(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_lexerId ".} =
  type Cb = proc(super: QsciLexerMatlablexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerMatlab, ): cstring =


  (fQsciLexerMatlab_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMatlabautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_autoCompletionFillups(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerMatlabautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerMatlab, ): seq[string] =


  var v_ma = fQsciLexerMatlab_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMatlabautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_autoCompletionWordSeparators(self: ptr cQsciLexerMatlab, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMatlab_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerMatlabautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerMatlab, style: ptr cint): cstring =


  (fQsciLexerMatlab_virtualbase_blockEnd(self.h, style))

type QsciLexerMatlabblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockEnd(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockEnd ".} =
  type Cb = proc(super: QsciLexerMatlabblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_blockLookback(self.h)

type QsciLexerMatlabblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockLookback(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockLookback ".} =
  type Cb = proc(super: QsciLexerMatlabblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerMatlab, style: ptr cint): cstring =


  (fQsciLexerMatlab_virtualbase_blockStart(self.h, style))

type QsciLexerMatlabblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockStart(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockStart ".} =
  type Cb = proc(super: QsciLexerMatlabblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerMatlab, style: ptr cint): cstring =


  (fQsciLexerMatlab_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMatlabblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_blockStartKeyword(self: ptr cQsciLexerMatlab, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerMatlabblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_braceStyle(self.h)

type QsciLexerMatlabbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_braceStyle(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_braceStyle ".} =
  type Cb = proc(super: QsciLexerMatlabbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerMatlab, ): bool =


  fQsciLexerMatlab_virtualbase_caseSensitive(self.h)

type QsciLexerMatlabcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_caseSensitive(self: ptr cQsciLexerMatlab, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_caseSensitive ".} =
  type Cb = proc(super: QsciLexerMatlabcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerMatlab, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_color(self.h, style))

type QsciLexerMatlabcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_color(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_color ".} =
  type Cb = proc(super: QsciLexerMatlabcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerMatlab, style: cint): bool =


  fQsciLexerMatlab_virtualbase_eolFill(self.h, style)

type QsciLexerMatlabeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_eolFill(self: ptr cQsciLexerMatlab, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_eolFill ".} =
  type Cb = proc(super: QsciLexerMatlabeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerMatlab, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMatlab_virtualbase_font(self.h, style))

type QsciLexerMatlabfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_font(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_font ".} =
  type Cb = proc(super: QsciLexerMatlabfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_indentationGuideView(self.h)

type QsciLexerMatlabindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_indentationGuideView(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerMatlabindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerMatlab, set: cint): cstring =


  (fQsciLexerMatlab_virtualbase_keywords(self.h, set))

type QsciLexerMatlabkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_keywords(self: ptr cQsciLexerMatlab, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_keywords ".} =
  type Cb = proc(super: QsciLexerMatlabkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerMatlab(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_defaultStyle(self.h)

type QsciLexerMatlabdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultStyle(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultStyle ".} =
  type Cb = proc(super: QsciLexerMatlabdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerMatlabdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerMatlab, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_description(self: ptr cQsciLexerMatlab, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMatlab_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerMatlab, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_paper(self.h, style))

type QsciLexerMatlabpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_paper(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_paper ".} =
  type Cb = proc(super: QsciLexerMatlabpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerMatlab, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMatlabdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultColorWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerMatlabdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerMatlab, style: cint): bool =


  fQsciLexerMatlab_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMatlabdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultEolFill(self: ptr cQsciLexerMatlab, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerMatlabdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerMatlab, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMatlab_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMatlabdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultFontWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerMatlabdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerMatlab, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMatlab_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMatlabdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_defaultPaperWithStyle(self: ptr cQsciLexerMatlab, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMatlab_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerMatlabdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerMatlab(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerMatlab, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerMatlab_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMatlabsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setEditor(self: ptr cQsciLexerMatlab, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setEditor ".} =
  type Cb = proc(super: QsciLexerMatlabsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerMatlab(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerMatlab, ): void =


  fQsciLexerMatlab_virtualbase_refreshProperties(self.h)

type QsciLexerMatlabrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_refreshProperties(self: ptr cQsciLexerMatlab, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_refreshProperties ".} =
  type Cb = proc(super: QsciLexerMatlabrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerMatlab(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerMatlab, ): cint =


  fQsciLexerMatlab_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMatlabstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_styleBitsNeeded(self: ptr cQsciLexerMatlab, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMatlab_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerMatlabstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerMatlab, ): cstring =


  (fQsciLexerMatlab_virtualbase_wordCharacters(self.h))

type QsciLexerMatlabwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_wordCharacters(self: ptr cQsciLexerMatlab, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMatlab_wordCharacters ".} =
  type Cb = proc(super: QsciLexerMatlabwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerMatlab(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerMatlab, autoindentstyle: cint): void =


  fQsciLexerMatlab_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMatlabsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setAutoIndentStyle(self: ptr cQsciLexerMatlab, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerMatlabsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerMatlab(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerMatlab, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMatlab_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMatlabsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setColor(self: ptr cQsciLexerMatlab, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setColor ".} =
  type Cb = proc(super: QsciLexerMatlabsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerMatlab(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerMatlab, eoffill: bool, style: cint): void =


  fQsciLexerMatlab_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMatlabsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setEolFill(self: ptr cQsciLexerMatlab, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setEolFill ".} =
  type Cb = proc(super: QsciLexerMatlabsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerMatlab(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerMatlab, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerMatlab_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMatlabsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setFont(self: ptr cQsciLexerMatlab, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setFont ".} =
  type Cb = proc(super: QsciLexerMatlabsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerMatlab(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerMatlab, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMatlab_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMatlabsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_setPaper(self: ptr cQsciLexerMatlab, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_setPaper ".} =
  type Cb = proc(super: QsciLexerMatlabsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerMatlab(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerMatlab, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMatlab_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMatlabreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_readProperties(self: ptr cQsciLexerMatlab, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_readProperties ".} =
  type Cb = proc(super: QsciLexerMatlabreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerMatlab(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerMatlab, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMatlab_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMatlabwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_writeProperties(self: ptr cQsciLexerMatlab, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_writeProperties ".} =
  type Cb = proc(super: QsciLexerMatlabwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerMatlab(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerMatlab, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMatlab_virtualbase_event(self.h, event.h)

type QsciLexerMatlabeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_event(self: ptr cQsciLexerMatlab, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_event ".} =
  type Cb = proc(super: QsciLexerMatlabeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerMatlab(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerMatlab, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMatlab_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMatlabeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_eventFilter(self: ptr cQsciLexerMatlab, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMatlab_eventFilter ".} =
  type Cb = proc(super: QsciLexerMatlabeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerMatlab(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerMatlab, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerMatlab_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMatlabtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_timerEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_timerEvent ".} =
  type Cb = proc(super: QsciLexerMatlabtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerMatlab(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerMatlab, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerMatlab_virtualbase_childEvent(self.h, event.h)

type QsciLexerMatlabchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_childEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_childEvent ".} =
  type Cb = proc(super: QsciLexerMatlabchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerMatlab(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerMatlab, event: gen_qcoreevent.QEvent): void =


  fQsciLexerMatlab_virtualbase_customEvent(self.h, event.h)

type QsciLexerMatlabcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_customEvent(self: ptr cQsciLexerMatlab, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_customEvent ".} =
  type Cb = proc(super: QsciLexerMatlabcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerMatlab(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerMatlab, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMatlab_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMatlabconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_connectNotify(self: ptr cQsciLexerMatlab, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_connectNotify ".} =
  type Cb = proc(super: QsciLexerMatlabconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerMatlab(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerMatlab, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMatlab_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMatlabdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerMatlab, slot: proc(super: QsciLexerMatlabdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMatlabdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMatlab_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMatlab_disconnectNotify(self: ptr cQsciLexerMatlab, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMatlab_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerMatlabdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerMatlab(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerMatlab): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMatlab_staticMetaObject())
proc delete*(self: QsciLexerMatlab) =
  fcQsciLexerMatlab_delete(self.h)
