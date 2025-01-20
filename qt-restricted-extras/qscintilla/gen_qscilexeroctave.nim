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
proc fQsciLexerOctave_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerOctave_virtualbase_metaObject".}
proc fcQsciLexerOctave_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_metaObject".}
proc fQsciLexerOctave_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerOctave_virtualbase_metacast".}
proc fcQsciLexerOctave_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerOctave_override_virtual_metacast".}
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


func init*(T: type gen_qscilexeroctave_types.QsciLexerOctave, h: ptr cQsciLexerOctave): gen_qscilexeroctave_types.QsciLexerOctave =
  T(h: h)
proc create*(T: type gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qscilexeroctave_types.QsciLexerOctave =

  gen_qscilexeroctave_types.QsciLexerOctave.init(fcQsciLexerOctave_new())
proc create*(T: type gen_qscilexeroctave_types.QsciLexerOctave, parent: gen_qobject.QObject): gen_qscilexeroctave_types.QsciLexerOctave =

  gen_qscilexeroctave_types.QsciLexerOctave.init(fcQsciLexerOctave_new2(parent.h))
proc metaObject*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerOctave_metaObject(self.h))

proc metacast*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cstring): pointer =

  fcQsciLexerOctave_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerOctave_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring): string =

  let v_ms = fcQsciLexerOctave_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring): string =

  let v_ms = fcQsciLexerOctave_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =

  (fcQsciLexerOctave_language(self.h))

proc lexer*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =

  (fcQsciLexerOctave_lexer(self.h))

proc keywords*(self: gen_qscilexeroctave_types.QsciLexerOctave, set: cint): cstring =

  (fcQsciLexerOctave_keywords(self.h, set))

proc tr2*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerOctave_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerOctave_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerOctave_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexeroctave_types.QsciLexerOctave, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerOctave_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerOctavemetaObject*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerOctave_virtualbase_metaObject(self.h))

type QsciLexerOctavemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavemetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_metaObject(self: ptr cQsciLexerOctave, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerOctavemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerOctavemetacast*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cstring): pointer =

  fQsciLexerOctave_virtualbase_metacast(self.h, param1)

type QsciLexerOctavemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavemetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_metacast(self: ptr cQsciLexerOctave, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_metacast ".} =
  var nimfunc = cast[ptr QsciLexerOctavemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctavemetacall*(self: gen_qscilexeroctave_types.QsciLexerOctave, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerOctave_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerOctavemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavemetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_metacall(self: ptr cQsciLexerOctave, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_metacall ".} =
  var nimfunc = cast[ptr QsciLexerOctavemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerOctavelanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavelanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavelanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_language(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_language ".} =
  var nimfunc = cast[ptr QsciLexerOctavelanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavelexer*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =

  (fQsciLexerOctave_virtualbase_lexer(self.h))

type QsciLexerOctavelexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavelexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavelexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_lexer(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_lexer ".} =
  var nimfunc = cast[ptr QsciLexerOctavelexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavelexerId*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_lexerId(self.h)

type QsciLexerOctavelexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavelexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavelexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_lexerId(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerOctavelexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctaveautoCompletionFillups*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =

  (fQsciLexerOctave_virtualbase_autoCompletionFillups(self.h))

type QsciLexerOctaveautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_autoCompletionFillups(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerOctaveautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctaveautoCompletionWordSeparators*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): seq[string] =

  var v_ma = fQsciLexerOctave_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerOctaveautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_autoCompletionWordSeparators(self: ptr cQsciLexerOctave, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerOctave_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerOctaveautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerOctaveblockEnd*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =

  (fQsciLexerOctave_virtualbase_blockEnd(self.h, style))

type QsciLexerOctaveblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockEnd(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerOctaveblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctaveblockLookback*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_blockLookback(self.h)

type QsciLexerOctaveblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockLookback(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerOctaveblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctaveblockStart*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =

  (fQsciLexerOctave_virtualbase_blockStart(self.h, style))

type QsciLexerOctaveblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockStart(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerOctaveblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctaveblockStartKeyword*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: ptr cint): cstring =

  (fQsciLexerOctave_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerOctaveblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_blockStartKeyword(self: ptr cQsciLexerOctave, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerOctaveblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctavebraceStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_braceStyle(self.h)

type QsciLexerOctavebraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavebraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavebraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_braceStyle(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavebraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavecaseSensitive*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): bool =

  fQsciLexerOctave_virtualbase_caseSensitive(self.h)

type QsciLexerOctavecaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavecaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavecaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_caseSensitive(self: ptr cQsciLexerOctave, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerOctavecaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavecolor*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_color(self.h, style))

type QsciLexerOctavecolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavecolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavecolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_color(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_color ".} =
  var nimfunc = cast[ptr QsciLexerOctavecolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctaveeolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): bool =

  fQsciLexerOctave_virtualbase_eolFill(self.h, style)

type QsciLexerOctaveeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_eolFill(self: ptr cQsciLexerOctave, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerOctaveeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctavefont*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerOctave_virtualbase_font(self.h, style))

type QsciLexerOctavefontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavefontProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavefontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_font(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_font ".} =
  var nimfunc = cast[ptr QsciLexerOctavefontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctaveindentationGuideView*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_indentationGuideView(self.h)

type QsciLexerOctaveindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_indentationGuideView(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerOctaveindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavekeywords*(self: gen_qscilexeroctave_types.QsciLexerOctave, set: cint): cstring =

  (fQsciLexerOctave_virtualbase_keywords(self.h, set))

type QsciLexerOctavekeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavekeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavekeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_keywords(self: ptr cQsciLexerOctave, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_keywords ".} =
  var nimfunc = cast[ptr QsciLexerOctavekeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctavedefaultStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_defaultStyle(self.h)

type QsciLexerOctavedefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultStyle(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavedefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerOctavedescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_description(self: ptr cQsciLexerOctave, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerOctave_description ".} =
  var nimfunc = cast[ptr QsciLexerOctavedescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerOctavepaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_paper(self.h, style))

type QsciLexerOctavepaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavepaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavepaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_paper(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_paper ".} =
  var nimfunc = cast[ptr QsciLexerOctavepaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctavedefaultColorWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerOctavedefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultColorWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavedefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctavedefaultEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): bool =

  fQsciLexerOctave_virtualbase_defaultEolFill(self.h, style)

type QsciLexerOctavedefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultEolFill(self: ptr cQsciLexerOctave, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerOctavedefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctavedefaultFontWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerOctave_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerOctavedefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultFontWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavedefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctavedefaultPaperWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerOctave_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerOctavedefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_defaultPaperWithStyle(self: ptr cQsciLexerOctave, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerOctave_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavedefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerOctavesetEditor*(self: gen_qscilexeroctave_types.QsciLexerOctave, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerOctave_virtualbase_setEditor(self.h, editor.h)

type QsciLexerOctavesetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setEditor(self: ptr cQsciLexerOctave, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerOctaverefreshProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): void =

  fQsciLexerOctave_virtualbase_refreshProperties(self.h)

type QsciLexerOctaverefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaverefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaverefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_refreshProperties(self: ptr cQsciLexerOctave, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerOctave_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerOctaverefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerOctavestyleBitsNeeded*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cint =

  fQsciLexerOctave_virtualbase_styleBitsNeeded(self.h)

type QsciLexerOctavestyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavestyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavestyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_styleBitsNeeded(self: ptr cQsciLexerOctave, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerOctave_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerOctavestyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavewordCharacters*(self: gen_qscilexeroctave_types.QsciLexerOctave, ): cstring =

  (fQsciLexerOctave_virtualbase_wordCharacters(self.h))

type QsciLexerOctavewordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavewordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavewordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_wordCharacters(self: ptr cQsciLexerOctave, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerOctave_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerOctavewordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerOctavesetAutoIndentStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, autoindentstyle: cint): void =

  fQsciLexerOctave_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerOctavesetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setAutoIndentStyle(self: ptr cQsciLexerOctave, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerOctavesetColor*(self: gen_qscilexeroctave_types.QsciLexerOctave, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerOctave_virtualbase_setColor(self.h, c.h, style)

type QsciLexerOctavesetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setColor(self: ptr cQsciLexerOctave, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setColor ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerOctavesetEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, eoffill: bool, style: cint): void =

  fQsciLexerOctave_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerOctavesetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setEolFill(self: ptr cQsciLexerOctave, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerOctavesetFont*(self: gen_qscilexeroctave_types.QsciLexerOctave, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerOctave_virtualbase_setFont(self.h, f.h, style)

type QsciLexerOctavesetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setFont(self: ptr cQsciLexerOctave, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setFont ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerOctavesetPaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerOctave_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerOctavesetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavesetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavesetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_setPaper(self: ptr cQsciLexerOctave, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerOctave_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerOctavesetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerOctavereadProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerOctave_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerOctavereadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavereadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavereadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_readProperties(self: ptr cQsciLexerOctave, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerOctavereadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerOctavewriteProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerOctave_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerOctavewritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavewritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavewritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_writeProperties(self: ptr cQsciLexerOctave, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerOctavewritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerOctaveevent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerOctave_virtualbase_event(self.h, event.h)

type QsciLexerOctaveeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_event(self: ptr cQsciLexerOctave, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_event ".} =
  var nimfunc = cast[ptr QsciLexerOctaveeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerOctaveeventFilter*(self: gen_qscilexeroctave_types.QsciLexerOctave, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerOctave_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerOctaveeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_eventFilter(self: ptr cQsciLexerOctave, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerOctave_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerOctaveeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerOctavetimerEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerOctave_virtualbase_timerEvent(self.h, event.h)

type QsciLexerOctavetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavetimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_timerEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerOctavetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerOctavechildEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerOctave_virtualbase_childEvent(self.h, event.h)

type QsciLexerOctavechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavechildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_childEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerOctavechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerOctavecustomEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, event: gen_qcoreevent.QEvent): void =

  fQsciLexerOctave_virtualbase_customEvent(self.h, event.h)

type QsciLexerOctavecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavecustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_customEvent(self: ptr cQsciLexerOctave, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerOctavecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerOctaveconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerOctave_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerOctaveconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctaveconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctaveconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_connectNotify(self: ptr cQsciLexerOctave, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerOctaveconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerOctavedisconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerOctave_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerOctavedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexeroctave_types.QsciLexerOctave, slot: QsciLexerOctavedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerOctavedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerOctave_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerOctave_disconnectNotify(self: ptr cQsciLexerOctave, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerOctave_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerOctavedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexeroctave_types.QsciLexerOctave): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerOctave_staticMetaObject())
proc delete*(self: gen_qscilexeroctave_types.QsciLexerOctave) =
  fcQsciLexerOctave_delete(self.h)
