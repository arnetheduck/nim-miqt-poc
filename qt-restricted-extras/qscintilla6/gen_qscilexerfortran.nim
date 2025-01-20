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
{.compile("gen_qscilexerfortran.cpp", cflags).}


import gen_qscilexerfortran_types
export gen_qscilexerfortran_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexerfortran77,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexerfortran77,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerFortran*{.exportc: "QsciLexerFortran", incompleteStruct.} = object

proc fcQsciLexerFortran_new(): ptr cQsciLexerFortran {.importc: "QsciLexerFortran_new".}
proc fcQsciLexerFortran_new2(parent: pointer): ptr cQsciLexerFortran {.importc: "QsciLexerFortran_new2".}
proc fcQsciLexerFortran_metaObject(self: pointer, ): pointer {.importc: "QsciLexerFortran_metaObject".}
proc fcQsciLexerFortran_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerFortran_metacast".}
proc fcQsciLexerFortran_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerFortran_metacall".}
proc fcQsciLexerFortran_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerFortran_tr".}
proc fcQsciLexerFortran_language(self: pointer, ): cstring {.importc: "QsciLexerFortran_language".}
proc fcQsciLexerFortran_lexer(self: pointer, ): cstring {.importc: "QsciLexerFortran_lexer".}
proc fcQsciLexerFortran_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerFortran_keywords".}
proc fcQsciLexerFortran_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerFortran_tr2".}
proc fcQsciLexerFortran_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerFortran_tr3".}
proc fQsciLexerFortran_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerFortran_virtualbase_metaObject".}
proc fcQsciLexerFortran_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_metaObject".}
proc fQsciLexerFortran_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerFortran_virtualbase_metacast".}
proc fcQsciLexerFortran_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_metacast".}
proc fQsciLexerFortran_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerFortran_virtualbase_metacall".}
proc fcQsciLexerFortran_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_metacall".}
proc fQsciLexerFortran_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerFortran_virtualbase_setFoldCompact".}
proc fcQsciLexerFortran_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setFoldCompact".}
proc fcQsciLexerFortran_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_language".}
proc fQsciLexerFortran_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerFortran_virtualbase_lexer".}
proc fcQsciLexerFortran_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_lexer".}
proc fQsciLexerFortran_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_lexerId".}
proc fcQsciLexerFortran_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_lexerId".}
proc fQsciLexerFortran_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerFortran_virtualbase_autoCompletionFillups".}
proc fcQsciLexerFortran_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_autoCompletionFillups".}
proc fQsciLexerFortran_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerFortran_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerFortran_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerFortran_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran_virtualbase_blockEnd".}
proc fcQsciLexerFortran_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_blockEnd".}
proc fQsciLexerFortran_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_blockLookback".}
proc fcQsciLexerFortran_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_blockLookback".}
proc fQsciLexerFortran_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran_virtualbase_blockStart".}
proc fcQsciLexerFortran_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_blockStart".}
proc fQsciLexerFortran_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerFortran_virtualbase_blockStartKeyword".}
proc fcQsciLexerFortran_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_blockStartKeyword".}
proc fQsciLexerFortran_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_braceStyle".}
proc fcQsciLexerFortran_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_braceStyle".}
proc fQsciLexerFortran_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerFortran_virtualbase_caseSensitive".}
proc fcQsciLexerFortran_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_caseSensitive".}
proc fQsciLexerFortran_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_color".}
proc fcQsciLexerFortran_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_color".}
proc fQsciLexerFortran_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran_virtualbase_eolFill".}
proc fcQsciLexerFortran_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_eolFill".}
proc fQsciLexerFortran_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_font".}
proc fcQsciLexerFortran_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_font".}
proc fQsciLexerFortran_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_indentationGuideView".}
proc fcQsciLexerFortran_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_indentationGuideView".}
proc fQsciLexerFortran_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerFortran_virtualbase_keywords".}
proc fcQsciLexerFortran_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_keywords".}
proc fQsciLexerFortran_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_defaultStyle".}
proc fcQsciLexerFortran_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_defaultStyle".}
proc fcQsciLexerFortran_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_description".}
proc fQsciLexerFortran_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_paper".}
proc fcQsciLexerFortran_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_paper".}
proc fQsciLexerFortran_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerFortran_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_defaultColorWithStyle".}
proc fQsciLexerFortran_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerFortran_virtualbase_defaultEolFill".}
proc fcQsciLexerFortran_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_defaultEolFill".}
proc fQsciLexerFortran_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerFortran_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_defaultFontWithStyle".}
proc fQsciLexerFortran_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerFortran_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerFortran_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerFortran_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerFortran_virtualbase_setEditor".}
proc fcQsciLexerFortran_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setEditor".}
proc fQsciLexerFortran_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerFortran_virtualbase_refreshProperties".}
proc fcQsciLexerFortran_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_refreshProperties".}
proc fQsciLexerFortran_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerFortran_virtualbase_styleBitsNeeded".}
proc fcQsciLexerFortran_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_styleBitsNeeded".}
proc fQsciLexerFortran_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerFortran_virtualbase_wordCharacters".}
proc fcQsciLexerFortran_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_wordCharacters".}
proc fQsciLexerFortran_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerFortran_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerFortran_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setAutoIndentStyle".}
proc fQsciLexerFortran_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran_virtualbase_setColor".}
proc fcQsciLexerFortran_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setColor".}
proc fQsciLexerFortran_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerFortran_virtualbase_setEolFill".}
proc fcQsciLexerFortran_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setEolFill".}
proc fQsciLexerFortran_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerFortran_virtualbase_setFont".}
proc fcQsciLexerFortran_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setFont".}
proc fQsciLexerFortran_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerFortran_virtualbase_setPaper".}
proc fcQsciLexerFortran_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_setPaper".}
proc fQsciLexerFortran_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran_virtualbase_readProperties".}
proc fcQsciLexerFortran_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_readProperties".}
proc fQsciLexerFortran_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerFortran_virtualbase_writeProperties".}
proc fcQsciLexerFortran_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_writeProperties".}
proc fQsciLexerFortran_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerFortran_virtualbase_event".}
proc fcQsciLexerFortran_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_event".}
proc fQsciLexerFortran_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerFortran_virtualbase_eventFilter".}
proc fcQsciLexerFortran_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_eventFilter".}
proc fQsciLexerFortran_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran_virtualbase_timerEvent".}
proc fcQsciLexerFortran_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_timerEvent".}
proc fQsciLexerFortran_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran_virtualbase_childEvent".}
proc fcQsciLexerFortran_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_childEvent".}
proc fQsciLexerFortran_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerFortran_virtualbase_customEvent".}
proc fcQsciLexerFortran_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_customEvent".}
proc fQsciLexerFortran_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran_virtualbase_connectNotify".}
proc fcQsciLexerFortran_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_connectNotify".}
proc fQsciLexerFortran_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerFortran_virtualbase_disconnectNotify".}
proc fcQsciLexerFortran_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerFortran_override_virtual_disconnectNotify".}
proc fcQsciLexerFortran_staticMetaObject(): pointer {.importc: "QsciLexerFortran_staticMetaObject".}
proc fcQsciLexerFortran_delete(self: pointer) {.importc: "QsciLexerFortran_delete".}


func init*(T: type QsciLexerFortran, h: ptr cQsciLexerFortran): QsciLexerFortran =
  T(h: h)
proc create*(T: type QsciLexerFortran, ): QsciLexerFortran =

  QsciLexerFortran.init(fcQsciLexerFortran_new())
proc create*(T: type QsciLexerFortran, parent: gen_qobject.QObject): QsciLexerFortran =

  QsciLexerFortran.init(fcQsciLexerFortran_new2(parent.h))
proc metaObject*(self: QsciLexerFortran, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran_metaObject(self.h))

proc metacast*(self: QsciLexerFortran, param1: cstring): pointer =

  fcQsciLexerFortran_metacast(self.h, param1)

proc metacall*(self: QsciLexerFortran, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerFortran_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerFortran, s: cstring): string =

  let v_ms = fcQsciLexerFortran_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerFortran, ): cstring =

  (fcQsciLexerFortran_language(self.h))

proc lexer*(self: QsciLexerFortran, ): cstring =

  (fcQsciLexerFortran_lexer(self.h))

proc keywords*(self: QsciLexerFortran, set: cint): cstring =

  (fcQsciLexerFortran_keywords(self.h, set))

proc tr2*(_: type QsciLexerFortran, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerFortran_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerFortran, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerFortran_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerFortran, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerFortran_virtualbase_metaObject(self.h))

type QsciLexerFortranmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metaObject(self: ptr cQsciLexerFortran, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_metaObject ".} =
  type Cb = proc(super: QsciLexerFortranmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerFortran, param1: cstring): pointer =


  fQsciLexerFortran_virtualbase_metacast(self.h, param1)

type QsciLexerFortranmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metacast(self: ptr cQsciLexerFortran, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_metacast ".} =
  type Cb = proc(super: QsciLexerFortranmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerFortran(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerFortran, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerFortran_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerFortranmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metacall(self: ptr cQsciLexerFortran, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_metacall ".} =
  type Cb = proc(super: QsciLexerFortranmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerFortran(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerFortran, fold: bool): void =


  fQsciLexerFortran_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerFortransetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setFoldCompact(self: ptr cQsciLexerFortran, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerFortransetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerFortran(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerFortranlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerFortran, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_language(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerFortran, ): cstring =


  (fQsciLexerFortran_virtualbase_lexer(self.h))

type QsciLexerFortranlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_lexer(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_lexer ".} =
  type Cb = proc(super: QsciLexerFortranlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_lexerId(self.h)

type QsciLexerFortranlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_lexerId(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_lexerId ".} =
  type Cb = proc(super: QsciLexerFortranlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerFortran, ): cstring =


  (fQsciLexerFortran_virtualbase_autoCompletionFillups(self.h))

type QsciLexerFortranautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_autoCompletionFillups(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerFortranautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerFortran, ): seq[string] =


  var v_ma = fQsciLexerFortran_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerFortranautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_autoCompletionWordSeparators(self: ptr cQsciLexerFortran, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerFortran_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerFortranautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerFortran, style: ptr cint): cstring =


  (fQsciLexerFortran_virtualbase_blockEnd(self.h, style))

type QsciLexerFortranblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockEnd(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockEnd ".} =
  type Cb = proc(super: QsciLexerFortranblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_blockLookback(self.h)

type QsciLexerFortranblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockLookback(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_blockLookback ".} =
  type Cb = proc(super: QsciLexerFortranblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerFortran, style: ptr cint): cstring =


  (fQsciLexerFortran_virtualbase_blockStart(self.h, style))

type QsciLexerFortranblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockStart(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockStart ".} =
  type Cb = proc(super: QsciLexerFortranblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerFortran, style: ptr cint): cstring =


  (fQsciLexerFortran_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerFortranblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockStartKeyword(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerFortranblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_braceStyle(self.h)

type QsciLexerFortranbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_braceStyle(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_braceStyle ".} =
  type Cb = proc(super: QsciLexerFortranbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerFortran, ): bool =


  fQsciLexerFortran_virtualbase_caseSensitive(self.h)

type QsciLexerFortrancaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrancaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrancaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_caseSensitive(self: ptr cQsciLexerFortran, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_caseSensitive ".} =
  type Cb = proc(super: QsciLexerFortrancaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerFortran, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_color(self.h, style))

type QsciLexerFortrancolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrancolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrancolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_color(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_color ".} =
  type Cb = proc(super: QsciLexerFortrancolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerFortran, style: cint): bool =


  fQsciLexerFortran_virtualbase_eolFill(self.h, style)

type QsciLexerFortraneolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortraneolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortraneolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_eolFill(self: ptr cQsciLexerFortran, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_eolFill ".} =
  type Cb = proc(super: QsciLexerFortraneolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerFortran, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerFortran_virtualbase_font(self.h, style))

type QsciLexerFortranfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_font(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_font ".} =
  type Cb = proc(super: QsciLexerFortranfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_indentationGuideView(self.h)

type QsciLexerFortranindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_indentationGuideView(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerFortranindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerFortran, set: cint): cstring =


  (fQsciLexerFortran_virtualbase_keywords(self.h, set))

type QsciLexerFortrankeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrankeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrankeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_keywords(self: ptr cQsciLexerFortran, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_keywords ".} =
  type Cb = proc(super: QsciLexerFortrankeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerFortran(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_defaultStyle(self.h)

type QsciLexerFortrandefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultStyle(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultStyle ".} =
  type Cb = proc(super: QsciLexerFortrandefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerFortrandescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerFortran, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_description(self: ptr cQsciLexerFortran, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerFortran_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerFortran, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_paper(self.h, style))

type QsciLexerFortranpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_paper(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_paper ".} =
  type Cb = proc(super: QsciLexerFortranpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerFortran, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerFortrandefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultColorWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerFortrandefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerFortran, style: cint): bool =


  fQsciLexerFortran_virtualbase_defaultEolFill(self.h, style)

type QsciLexerFortrandefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultEolFill(self: ptr cQsciLexerFortran, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerFortrandefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerFortran, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerFortran_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerFortrandefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultFontWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerFortrandefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerFortran, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerFortrandefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultPaperWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerFortrandefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerFortran(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerFortran, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerFortran_virtualbase_setEditor(self.h, editor.h)

type QsciLexerFortransetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setEditor(self: ptr cQsciLexerFortran, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setEditor ".} =
  type Cb = proc(super: QsciLexerFortransetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerFortran(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerFortran, ): void =


  fQsciLexerFortran_virtualbase_refreshProperties(self.h)

type QsciLexerFortranrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_refreshProperties(self: ptr cQsciLexerFortran, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerFortran_refreshProperties ".} =
  type Cb = proc(super: QsciLexerFortranrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerFortran(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerFortran, ): cint =


  fQsciLexerFortran_virtualbase_styleBitsNeeded(self.h)

type QsciLexerFortranstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_styleBitsNeeded(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerFortranstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerFortran, ): cstring =


  (fQsciLexerFortran_virtualbase_wordCharacters(self.h))

type QsciLexerFortranwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_wordCharacters(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_wordCharacters ".} =
  type Cb = proc(super: QsciLexerFortranwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerFortran(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerFortran, autoindentstyle: cint): void =


  fQsciLexerFortran_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerFortransetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setAutoIndentStyle(self: ptr cQsciLexerFortran, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerFortransetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerFortran(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerFortran, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerFortran_virtualbase_setColor(self.h, c.h, style)

type QsciLexerFortransetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setColor(self: ptr cQsciLexerFortran, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setColor ".} =
  type Cb = proc(super: QsciLexerFortransetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerFortran(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerFortran, eoffill: bool, style: cint): void =


  fQsciLexerFortran_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerFortransetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setEolFill(self: ptr cQsciLexerFortran, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setEolFill ".} =
  type Cb = proc(super: QsciLexerFortransetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerFortran(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerFortran, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerFortran_virtualbase_setFont(self.h, f.h, style)

type QsciLexerFortransetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setFont(self: ptr cQsciLexerFortran, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setFont ".} =
  type Cb = proc(super: QsciLexerFortransetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerFortran(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerFortran, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerFortran_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerFortransetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortransetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortransetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setPaper(self: ptr cQsciLexerFortran, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setPaper ".} =
  type Cb = proc(super: QsciLexerFortransetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerFortran(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerFortran, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerFortran_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortranreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_readProperties(self: ptr cQsciLexerFortran, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_readProperties ".} =
  type Cb = proc(super: QsciLexerFortranreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerFortran(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerFortran, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerFortran_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortranwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_writeProperties(self: ptr cQsciLexerFortran, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_writeProperties ".} =
  type Cb = proc(super: QsciLexerFortranwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerFortran(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerFortran, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerFortran_virtualbase_event(self.h, event.h)

type QsciLexerFortraneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortraneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortraneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_event(self: ptr cQsciLexerFortran, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_event ".} =
  type Cb = proc(super: QsciLexerFortraneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerFortran(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerFortran, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerFortran_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerFortraneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortraneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortraneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_eventFilter(self: ptr cQsciLexerFortran, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_eventFilter ".} =
  type Cb = proc(super: QsciLexerFortraneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerFortran(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerFortran, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerFortran_virtualbase_timerEvent(self.h, event.h)

type QsciLexerFortrantimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrantimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrantimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_timerEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_timerEvent ".} =
  type Cb = proc(super: QsciLexerFortrantimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerFortran(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerFortran, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerFortran_virtualbase_childEvent(self.h, event.h)

type QsciLexerFortranchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_childEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_childEvent ".} =
  type Cb = proc(super: QsciLexerFortranchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerFortran(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerFortran, event: gen_qcoreevent.QEvent): void =


  fQsciLexerFortran_virtualbase_customEvent(self.h, event.h)

type QsciLexerFortrancustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrancustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrancustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_customEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_customEvent ".} =
  type Cb = proc(super: QsciLexerFortrancustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerFortran(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerFortran, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerFortran_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerFortranconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortranconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortranconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_connectNotify(self: ptr cQsciLexerFortran, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_connectNotify ".} =
  type Cb = proc(super: QsciLexerFortranconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerFortran(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerFortran, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerFortran_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerFortrandisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerFortran, slot: proc(super: QsciLexerFortrandisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerFortrandisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_disconnectNotify(self: ptr cQsciLexerFortran, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerFortrandisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerFortran(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerFortran): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran_staticMetaObject())
proc delete*(self: QsciLexerFortran) =
  fcQsciLexerFortran_delete(self.h)
