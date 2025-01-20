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


func init*(T: type gen_qscilexerfortran_types.QsciLexerFortran, h: ptr cQsciLexerFortran): gen_qscilexerfortran_types.QsciLexerFortran =
  T(h: h)
proc create*(T: type gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qscilexerfortran_types.QsciLexerFortran =
  gen_qscilexerfortran_types.QsciLexerFortran.init(fcQsciLexerFortran_new())

proc create*(T: type gen_qscilexerfortran_types.QsciLexerFortran, parent: gen_qobject.QObject): gen_qscilexerfortran_types.QsciLexerFortran =
  gen_qscilexerfortran_types.QsciLexerFortran.init(fcQsciLexerFortran_new2(parent.h))

proc metaObject*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran_metaObject(self.h))

proc metacast*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cstring): pointer =
  fcQsciLexerFortran_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerFortran_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring): string =
  let v_ms = fcQsciLexerFortran_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_language(self.h))

proc lexer*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fcQsciLexerFortran_lexer(self.h))

proc keywords*(self: gen_qscilexerfortran_types.QsciLexerFortran, set: cint): cstring =
  (fcQsciLexerFortran_keywords(self.h, set))

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerFortran_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerfortran_types.QsciLexerFortran, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerFortran_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerFortranmetaObject*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerFortran_virtualbase_metaObject(self.h))

type QsciLexerFortranmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metaObject(self: ptr cQsciLexerFortran, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerFortranmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerFortranmetacast*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cstring): pointer =
  fQsciLexerFortran_virtualbase_metacast(self.h, param1)

type QsciLexerFortranmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metacast(self: ptr cQsciLexerFortran, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_metacast ".} =
  var nimfunc = cast[ptr QsciLexerFortranmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortranmetacall*(self: gen_qscilexerfortran_types.QsciLexerFortran, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerFortran_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerFortranmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_metacall(self: ptr cQsciLexerFortran, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_metacall ".} =
  var nimfunc = cast[ptr QsciLexerFortranmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerFortransetFoldCompact*(self: gen_qscilexerfortran_types.QsciLexerFortran, fold: bool): void =
  fQsciLexerFortran_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerFortransetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setFoldCompact(self: ptr cQsciLexerFortran, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerFortransetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
type QsciLexerFortranlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_language(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_language ".} =
  var nimfunc = cast[ptr QsciLexerFortranlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranlexer*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fQsciLexerFortran_virtualbase_lexer(self.h))

type QsciLexerFortranlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_lexer(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_lexer ".} =
  var nimfunc = cast[ptr QsciLexerFortranlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranlexerId*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_lexerId(self.h)

type QsciLexerFortranlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_lexerId(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerFortranlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranautoCompletionFillups*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fQsciLexerFortran_virtualbase_autoCompletionFillups(self.h))

type QsciLexerFortranautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_autoCompletionFillups(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerFortranautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranautoCompletionWordSeparators*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): seq[string] =
  var v_ma = fQsciLexerFortran_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerFortranautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_autoCompletionWordSeparators(self: ptr cQsciLexerFortran, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerFortran_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerFortranautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerFortranblockEnd*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fQsciLexerFortran_virtualbase_blockEnd(self.h, style))

type QsciLexerFortranblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockEnd(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerFortranblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortranblockLookback*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_blockLookback(self.h)

type QsciLexerFortranblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockLookback(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerFortranblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranblockStart*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fQsciLexerFortran_virtualbase_blockStart(self.h, style))

type QsciLexerFortranblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockStart(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerFortranblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortranblockStartKeyword*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: ptr cint): cstring =
  (fQsciLexerFortran_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerFortranblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_blockStartKeyword(self: ptr cQsciLexerFortran, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerFortranblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortranbraceStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_braceStyle(self.h)

type QsciLexerFortranbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_braceStyle(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortranbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortrancaseSensitive*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): bool =
  fQsciLexerFortran_virtualbase_caseSensitive(self.h)

type QsciLexerFortrancaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrancaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrancaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_caseSensitive(self: ptr cQsciLexerFortran, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerFortrancaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortrancolor*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_color(self.h, style))

type QsciLexerFortrancolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrancolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrancolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_color(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_color ".} =
  var nimfunc = cast[ptr QsciLexerFortrancolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortraneolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): bool =
  fQsciLexerFortran_virtualbase_eolFill(self.h, style)

type QsciLexerFortraneolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortraneolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortraneolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_eolFill(self: ptr cQsciLexerFortran, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortraneolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortranfont*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerFortran_virtualbase_font(self.h, style))

type QsciLexerFortranfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_font(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_font ".} =
  var nimfunc = cast[ptr QsciLexerFortranfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortranindentationGuideView*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_indentationGuideView(self.h)

type QsciLexerFortranindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_indentationGuideView(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerFortranindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortrankeywords*(self: gen_qscilexerfortran_types.QsciLexerFortran, set: cint): cstring =
  (fQsciLexerFortran_virtualbase_keywords(self.h, set))

type QsciLexerFortrankeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrankeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrankeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_keywords(self: ptr cQsciLexerFortran, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_keywords ".} =
  var nimfunc = cast[ptr QsciLexerFortrankeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortrandefaultStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_defaultStyle(self.h)

type QsciLexerFortrandefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultStyle(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortrandefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerFortrandescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_description(self: ptr cQsciLexerFortran, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerFortran_description ".} =
  var nimfunc = cast[ptr QsciLexerFortrandescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerFortranpaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_paper(self.h, style))

type QsciLexerFortranpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_paper(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_paper ".} =
  var nimfunc = cast[ptr QsciLexerFortranpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortrandefaultColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerFortrandefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultColorWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortrandefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortrandefaultEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): bool =
  fQsciLexerFortran_virtualbase_defaultEolFill(self.h, style)

type QsciLexerFortrandefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultEolFill(self: ptr cQsciLexerFortran, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortrandefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortrandefaultFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerFortran_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerFortrandefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultFontWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortrandefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortrandefaultPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerFortran_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerFortrandefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_defaultPaperWithStyle(self: ptr cQsciLexerFortran, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerFortran_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortrandefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerFortransetEditor*(self: gen_qscilexerfortran_types.QsciLexerFortran, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerFortran_virtualbase_setEditor(self.h, editor.h)

type QsciLexerFortransetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setEditor(self: ptr cQsciLexerFortran, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerFortransetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerFortranrefreshProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): void =
  fQsciLexerFortran_virtualbase_refreshProperties(self.h)

type QsciLexerFortranrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_refreshProperties(self: ptr cQsciLexerFortran, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerFortran_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortranrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerFortranstyleBitsNeeded*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cint =
  fQsciLexerFortran_virtualbase_styleBitsNeeded(self.h)

type QsciLexerFortranstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_styleBitsNeeded(self: ptr cQsciLexerFortran, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerFortran_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerFortranstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortranwordCharacters*(self: gen_qscilexerfortran_types.QsciLexerFortran, ): cstring =
  (fQsciLexerFortran_virtualbase_wordCharacters(self.h))

type QsciLexerFortranwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_wordCharacters(self: ptr cQsciLexerFortran, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerFortran_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerFortranwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerFortransetAutoIndentStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, autoindentstyle: cint): void =
  fQsciLexerFortran_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerFortransetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setAutoIndentStyle(self: ptr cQsciLexerFortran, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerFortransetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerFortransetColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerFortran_virtualbase_setColor(self.h, c.h, style)

type QsciLexerFortransetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setColor(self: ptr cQsciLexerFortran, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setColor ".} =
  var nimfunc = cast[ptr QsciLexerFortransetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortransetEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, eoffill: bool, style: cint): void =
  fQsciLexerFortran_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerFortransetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setEolFill(self: ptr cQsciLexerFortran, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerFortransetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortransetFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerFortran_virtualbase_setFont(self.h, f.h, style)

type QsciLexerFortransetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setFont(self: ptr cQsciLexerFortran, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setFont ".} =
  var nimfunc = cast[ptr QsciLexerFortransetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortransetPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerFortran_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerFortransetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortransetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortransetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_setPaper(self: ptr cQsciLexerFortran, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerFortran_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerFortransetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerFortranreadProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerFortran_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortranreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_readProperties(self: ptr cQsciLexerFortran, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortranreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortranwriteProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerFortran_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerFortranwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_writeProperties(self: ptr cQsciLexerFortran, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerFortranwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortranevent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerFortran_virtualbase_event(self.h, event.h)

type QsciLexerFortraneventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortraneventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortraneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_event(self: ptr cQsciLexerFortran, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_event ".} =
  var nimfunc = cast[ptr QsciLexerFortraneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerFortraneventFilter*(self: gen_qscilexerfortran_types.QsciLexerFortran, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerFortran_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerFortraneventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortraneventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortraneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_eventFilter(self: ptr cQsciLexerFortran, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerFortran_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerFortraneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerFortrantimerEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerFortran_virtualbase_timerEvent(self.h, event.h)

type QsciLexerFortrantimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrantimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrantimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_timerEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortrantimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortranchildEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerFortran_virtualbase_childEvent(self.h, event.h)

type QsciLexerFortranchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_childEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortranchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortrancustomEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, event: gen_qcoreevent.QEvent): void =
  fQsciLexerFortran_virtualbase_customEvent(self.h, event.h)

type QsciLexerFortrancustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrancustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrancustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_customEvent(self: ptr cQsciLexerFortran, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerFortrancustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerFortranconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerFortran_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerFortranconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortranconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortranconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_connectNotify(self: ptr cQsciLexerFortran, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerFortranconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerFortrandisconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerFortran_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerFortrandisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerfortran_types.QsciLexerFortran, slot: QsciLexerFortrandisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerFortrandisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerFortran_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerFortran_disconnectNotify(self: ptr cQsciLexerFortran, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerFortran_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerFortrandisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerfortran_types.QsciLexerFortran): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerFortran_staticMetaObject())
proc delete*(self: gen_qscilexerfortran_types.QsciLexerFortran) =
  fcQsciLexerFortran_delete(self.h)
