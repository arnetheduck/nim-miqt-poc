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
{.compile("gen_qscilexercustom.cpp", cflags).}


import gen_qscilexercustom_types
export gen_qscilexercustom_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexer,
  gen_qsciscintilla,
  gen_qscistyle,
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
  gen_qscistyle,
  gen_qsettings

type cQsciLexerCustom*{.exportc: "QsciLexerCustom", incompleteStruct.} = object

proc fcQsciLexerCustom_new(): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new".}
proc fcQsciLexerCustom_new2(parent: pointer): ptr cQsciLexerCustom {.importc: "QsciLexerCustom_new2".}
proc fcQsciLexerCustom_metaObject(self: pointer, ): pointer {.importc: "QsciLexerCustom_metaObject".}
proc fcQsciLexerCustom_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerCustom_metacast".}
proc fcQsciLexerCustom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerCustom_metacall".}
proc fcQsciLexerCustom_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr".}
proc fcQsciLexerCustom_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerCustom_trUtf8".}
proc fcQsciLexerCustom_setStyling(self: pointer, length: cint, style: cint): void {.importc: "QsciLexerCustom_setStyling".}
proc fcQsciLexerCustom_setStyling2(self: pointer, length: cint, style: pointer): void {.importc: "QsciLexerCustom_setStyling2".}
proc fcQsciLexerCustom_startStyling(self: pointer, pos: cint): void {.importc: "QsciLexerCustom_startStyling".}
proc fcQsciLexerCustom_styleText(self: pointer, start: cint, endVal: cint): void {.importc: "QsciLexerCustom_styleText".}
proc fcQsciLexerCustom_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerCustom_setEditor".}
proc fcQsciLexerCustom_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerCustom_styleBitsNeeded".}
proc fcQsciLexerCustom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCustom_tr2".}
proc fcQsciLexerCustom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCustom_tr3".}
proc fcQsciLexerCustom_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerCustom_trUtf82".}
proc fcQsciLexerCustom_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerCustom_trUtf83".}
proc fcQsciLexerCustom_startStyling2(self: pointer, pos: cint, styleBits: cint): void {.importc: "QsciLexerCustom_startStyling2".}
proc fQsciLexerCustom_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerCustom_virtualbase_metaObject".}
proc fcQsciLexerCustom_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metaObject".}
proc fQsciLexerCustom_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerCustom_virtualbase_metacast".}
proc fcQsciLexerCustom_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metacast".}
proc fQsciLexerCustom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerCustom_virtualbase_metacall".}
proc fcQsciLexerCustom_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_metacall".}
proc fcQsciLexerCustom_override_virtual_styleText(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_styleText".}
proc fQsciLexerCustom_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerCustom_virtualbase_setEditor".}
proc fcQsciLexerCustom_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setEditor".}
proc fQsciLexerCustom_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_styleBitsNeeded".}
proc fcQsciLexerCustom_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_styleBitsNeeded".}
proc fcQsciLexerCustom_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_language".}
proc fQsciLexerCustom_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_lexer".}
proc fcQsciLexerCustom_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_lexer".}
proc fQsciLexerCustom_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_lexerId".}
proc fcQsciLexerCustom_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_lexerId".}
proc fQsciLexerCustom_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_autoCompletionFillups".}
proc fcQsciLexerCustom_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_autoCompletionFillups".}
proc fQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerCustom_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerCustom_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerCustom_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockEnd".}
proc fcQsciLexerCustom_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockEnd".}
proc fQsciLexerCustom_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_blockLookback".}
proc fcQsciLexerCustom_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockLookback".}
proc fQsciLexerCustom_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockStart".}
proc fcQsciLexerCustom_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockStart".}
proc fQsciLexerCustom_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerCustom_virtualbase_blockStartKeyword".}
proc fcQsciLexerCustom_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_blockStartKeyword".}
proc fQsciLexerCustom_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_braceStyle".}
proc fcQsciLexerCustom_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_braceStyle".}
proc fQsciLexerCustom_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerCustom_virtualbase_caseSensitive".}
proc fcQsciLexerCustom_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_caseSensitive".}
proc fQsciLexerCustom_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_color".}
proc fcQsciLexerCustom_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_color".}
proc fQsciLexerCustom_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCustom_virtualbase_eolFill".}
proc fcQsciLexerCustom_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_eolFill".}
proc fQsciLexerCustom_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_font".}
proc fcQsciLexerCustom_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_font".}
proc fQsciLexerCustom_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_indentationGuideView".}
proc fcQsciLexerCustom_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_indentationGuideView".}
proc fQsciLexerCustom_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerCustom_virtualbase_keywords".}
proc fcQsciLexerCustom_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_keywords".}
proc fQsciLexerCustom_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerCustom_virtualbase_defaultStyle".}
proc fcQsciLexerCustom_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultStyle".}
proc fcQsciLexerCustom_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_description".}
proc fQsciLexerCustom_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_paper".}
proc fcQsciLexerCustom_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_paper".}
proc fQsciLexerCustom_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultColorWithStyle".}
proc fQsciLexerCustom_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerCustom_virtualbase_defaultEolFill".}
proc fcQsciLexerCustom_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultEolFill".}
proc fQsciLexerCustom_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultFontWithStyle".}
proc fQsciLexerCustom_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerCustom_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerCustom_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerCustom_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerCustom_virtualbase_refreshProperties".}
proc fcQsciLexerCustom_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_refreshProperties".}
proc fQsciLexerCustom_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerCustom_virtualbase_wordCharacters".}
proc fcQsciLexerCustom_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_wordCharacters".}
proc fQsciLexerCustom_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerCustom_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerCustom_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setAutoIndentStyle".}
proc fQsciLexerCustom_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setColor".}
proc fcQsciLexerCustom_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setColor".}
proc fQsciLexerCustom_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setEolFill".}
proc fcQsciLexerCustom_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setEolFill".}
proc fQsciLexerCustom_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setFont".}
proc fcQsciLexerCustom_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setFont".}
proc fQsciLexerCustom_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerCustom_virtualbase_setPaper".}
proc fcQsciLexerCustom_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_setPaper".}
proc fQsciLexerCustom_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCustom_virtualbase_readProperties".}
proc fcQsciLexerCustom_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_readProperties".}
proc fQsciLexerCustom_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerCustom_virtualbase_writeProperties".}
proc fcQsciLexerCustom_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_writeProperties".}
proc fQsciLexerCustom_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerCustom_virtualbase_event".}
proc fcQsciLexerCustom_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_event".}
proc fQsciLexerCustom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerCustom_virtualbase_eventFilter".}
proc fcQsciLexerCustom_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_eventFilter".}
proc fQsciLexerCustom_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_timerEvent".}
proc fcQsciLexerCustom_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_timerEvent".}
proc fQsciLexerCustom_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_childEvent".}
proc fcQsciLexerCustom_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_childEvent".}
proc fQsciLexerCustom_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerCustom_virtualbase_customEvent".}
proc fcQsciLexerCustom_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_customEvent".}
proc fQsciLexerCustom_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCustom_virtualbase_connectNotify".}
proc fcQsciLexerCustom_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_connectNotify".}
proc fQsciLexerCustom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerCustom_virtualbase_disconnectNotify".}
proc fcQsciLexerCustom_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerCustom_override_virtual_disconnectNotify".}
proc fcQsciLexerCustom_staticMetaObject(): pointer {.importc: "QsciLexerCustom_staticMetaObject".}
proc fcQsciLexerCustom_delete(self: pointer) {.importc: "QsciLexerCustom_delete".}


func init*(T: type QsciLexerCustom, h: ptr cQsciLexerCustom): QsciLexerCustom =
  T(h: h)
proc create*(T: type QsciLexerCustom, ): QsciLexerCustom =

  QsciLexerCustom.init(fcQsciLexerCustom_new())
proc create*(T: type QsciLexerCustom, parent: gen_qobject.QObject): QsciLexerCustom =

  QsciLexerCustom.init(fcQsciLexerCustom_new2(parent.h))
proc metaObject*(self: QsciLexerCustom, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCustom_metaObject(self.h))

proc metacast*(self: QsciLexerCustom, param1: cstring): pointer =

  fcQsciLexerCustom_metacast(self.h, param1)

proc metacall*(self: QsciLexerCustom, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerCustom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerCustom, s: cstring): string =

  let v_ms = fcQsciLexerCustom_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerCustom, s: cstring): string =

  let v_ms = fcQsciLexerCustom_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyling*(self: QsciLexerCustom, length: cint, style: cint): void =

  fcQsciLexerCustom_setStyling(self.h, length, style)

proc setStyling2*(self: QsciLexerCustom, length: cint, style: gen_qscistyle.QsciStyle): void =

  fcQsciLexerCustom_setStyling2(self.h, length, style.h)

proc startStyling*(self: QsciLexerCustom, pos: cint): void =

  fcQsciLexerCustom_startStyling(self.h, pos)

proc styleText*(self: QsciLexerCustom, start: cint, endVal: cint): void =

  fcQsciLexerCustom_styleText(self.h, start, endVal)

proc setEditor*(self: QsciLexerCustom, editor: gen_qsciscintilla.QsciScintilla): void =

  fcQsciLexerCustom_setEditor(self.h, editor.h)

proc styleBitsNeeded*(self: QsciLexerCustom, ): cint =

  fcQsciLexerCustom_styleBitsNeeded(self.h)

proc tr2*(_: type QsciLexerCustom, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCustom_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerCustom, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCustom_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerCustom, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerCustom_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerCustom, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerCustom_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startStyling2*(self: QsciLexerCustom, pos: cint, styleBits: cint): void =

  fcQsciLexerCustom_startStyling2(self.h, pos, styleBits)

proc callVirtualBase_metaObject(self: QsciLexerCustom, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerCustom_virtualbase_metaObject(self.h))

type QsciLexerCustommetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustommetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustommetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metaObject(self: ptr cQsciLexerCustom, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_metaObject ".} =
  type Cb = proc(super: QsciLexerCustommetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerCustom, param1: cstring): pointer =


  fQsciLexerCustom_virtualbase_metacast(self.h, param1)

type QsciLexerCustommetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustommetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustommetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metacast(self: ptr cQsciLexerCustom, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_metacast ".} =
  type Cb = proc(super: QsciLexerCustommetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerCustom(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerCustom, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerCustom_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerCustommetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_metacall(self: ptr cQsciLexerCustom, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_metacall ".} =
  type Cb = proc(super: QsciLexerCustommetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerCustom(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerCustomstyleTextBase* = proc(start: cint, endVal: cint): void
proc onstyleText*(self: QsciLexerCustom, slot: proc(start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_styleText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_styleText(self: ptr cQsciLexerCustom, slot: int, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_styleText ".} =
  type Cb = proc(start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)
proc callVirtualBase_setEditor(self: QsciLexerCustom, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerCustom_virtualbase_setEditor(self.h, editor.h)

type QsciLexerCustomsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setEditor(self: ptr cQsciLexerCustom, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setEditor ".} =
  type Cb = proc(super: QsciLexerCustomsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerCustom(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_styleBitsNeeded(self.h)

type QsciLexerCustomstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_styleBitsNeeded(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerCustomstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCustomlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerCustom, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_language(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerCustom, ): cstring =


  (fQsciLexerCustom_virtualbase_lexer(self.h))

type QsciLexerCustomlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_lexer(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_lexer ".} =
  type Cb = proc(super: QsciLexerCustomlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_lexerId(self.h)

type QsciLexerCustomlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_lexerId(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_lexerId ".} =
  type Cb = proc(super: QsciLexerCustomlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerCustom, ): cstring =


  (fQsciLexerCustom_virtualbase_autoCompletionFillups(self.h))

type QsciLexerCustomautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_autoCompletionFillups(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerCustomautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerCustom, ): seq[string] =


  var v_ma = fQsciLexerCustom_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerCustomautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_autoCompletionWordSeparators(self: ptr cQsciLexerCustom, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerCustom_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerCustomautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerCustom, style: ptr cint): cstring =


  (fQsciLexerCustom_virtualbase_blockEnd(self.h, style))

type QsciLexerCustomblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockEnd(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockEnd ".} =
  type Cb = proc(super: QsciLexerCustomblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_blockLookback(self.h)

type QsciLexerCustomblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockLookback(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_blockLookback ".} =
  type Cb = proc(super: QsciLexerCustomblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerCustom, style: ptr cint): cstring =


  (fQsciLexerCustom_virtualbase_blockStart(self.h, style))

type QsciLexerCustomblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockStart(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockStart ".} =
  type Cb = proc(super: QsciLexerCustomblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerCustom, style: ptr cint): cstring =


  (fQsciLexerCustom_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerCustomblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_blockStartKeyword(self: ptr cQsciLexerCustom, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerCustomblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_braceStyle(self.h)

type QsciLexerCustombraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustombraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustombraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_braceStyle(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_braceStyle ".} =
  type Cb = proc(super: QsciLexerCustombraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerCustom, ): bool =


  fQsciLexerCustom_virtualbase_caseSensitive(self.h)

type QsciLexerCustomcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_caseSensitive(self: ptr cQsciLexerCustom, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_caseSensitive ".} =
  type Cb = proc(super: QsciLexerCustomcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerCustom, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_color(self.h, style))

type QsciLexerCustomcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_color(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_color ".} =
  type Cb = proc(super: QsciLexerCustomcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerCustom, style: cint): bool =


  fQsciLexerCustom_virtualbase_eolFill(self.h, style)

type QsciLexerCustomeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_eolFill(self: ptr cQsciLexerCustom, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_eolFill ".} =
  type Cb = proc(super: QsciLexerCustomeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerCustom, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCustom_virtualbase_font(self.h, style))

type QsciLexerCustomfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_font(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_font ".} =
  type Cb = proc(super: QsciLexerCustomfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_indentationGuideView(self.h)

type QsciLexerCustomindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_indentationGuideView(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerCustomindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerCustom, set: cint): cstring =


  (fQsciLexerCustom_virtualbase_keywords(self.h, set))

type QsciLexerCustomkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_keywords(self: ptr cQsciLexerCustom, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_keywords ".} =
  type Cb = proc(super: QsciLexerCustomkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerCustom(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerCustom, ): cint =


  fQsciLexerCustom_virtualbase_defaultStyle(self.h)

type QsciLexerCustomdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultStyle(self: ptr cQsciLexerCustom, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultStyle ".} =
  type Cb = proc(super: QsciLexerCustomdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerCustomdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerCustom, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_description(self: ptr cQsciLexerCustom, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerCustom_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerCustom, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_paper(self.h, style))

type QsciLexerCustompaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustompaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustompaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_paper(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_paper ".} =
  type Cb = proc(super: QsciLexerCustompaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerCustom, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerCustomdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultColorWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerCustomdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerCustom, style: cint): bool =


  fQsciLexerCustom_virtualbase_defaultEolFill(self.h, style)

type QsciLexerCustomdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultEolFill(self: ptr cQsciLexerCustom, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerCustomdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerCustom, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerCustom_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerCustomdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultFontWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerCustomdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerCustom, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerCustom_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerCustomdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_defaultPaperWithStyle(self: ptr cQsciLexerCustom, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerCustom_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerCustomdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerCustom(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_refreshProperties(self: QsciLexerCustom, ): void =


  fQsciLexerCustom_virtualbase_refreshProperties(self.h)

type QsciLexerCustomrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_refreshProperties(self: ptr cQsciLexerCustom, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerCustom_refreshProperties ".} =
  type Cb = proc(super: QsciLexerCustomrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerCustom(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_wordCharacters(self: QsciLexerCustom, ): cstring =


  (fQsciLexerCustom_virtualbase_wordCharacters(self.h))

type QsciLexerCustomwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_wordCharacters(self: ptr cQsciLexerCustom, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerCustom_wordCharacters ".} =
  type Cb = proc(super: QsciLexerCustomwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerCustom(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerCustom, autoindentstyle: cint): void =


  fQsciLexerCustom_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerCustomsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setAutoIndentStyle(self: ptr cQsciLexerCustom, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerCustomsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerCustom(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerCustom, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCustom_virtualbase_setColor(self.h, c.h, style)

type QsciLexerCustomsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setColor(self: ptr cQsciLexerCustom, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setColor ".} =
  type Cb = proc(super: QsciLexerCustomsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerCustom(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerCustom, eoffill: bool, style: cint): void =


  fQsciLexerCustom_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerCustomsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setEolFill(self: ptr cQsciLexerCustom, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setEolFill ".} =
  type Cb = proc(super: QsciLexerCustomsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerCustom(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerCustom, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerCustom_virtualbase_setFont(self.h, f.h, style)

type QsciLexerCustomsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setFont(self: ptr cQsciLexerCustom, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setFont ".} =
  type Cb = proc(super: QsciLexerCustomsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerCustom(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerCustom, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerCustom_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerCustomsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_setPaper(self: ptr cQsciLexerCustom, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerCustom_setPaper ".} =
  type Cb = proc(super: QsciLexerCustomsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerCustom(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerCustom, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCustom_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCustomreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_readProperties(self: ptr cQsciLexerCustom, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_readProperties ".} =
  type Cb = proc(super: QsciLexerCustomreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerCustom(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerCustom, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerCustom_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerCustomwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_writeProperties(self: ptr cQsciLexerCustom, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_writeProperties ".} =
  type Cb = proc(super: QsciLexerCustomwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerCustom(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerCustom, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCustom_virtualbase_event(self.h, event.h)

type QsciLexerCustomeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_event(self: ptr cQsciLexerCustom, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_event ".} =
  type Cb = proc(super: QsciLexerCustomeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerCustom(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerCustom, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerCustom_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerCustomeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_eventFilter(self: ptr cQsciLexerCustom, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerCustom_eventFilter ".} =
  type Cb = proc(super: QsciLexerCustomeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerCustom(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerCustom, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerCustom_virtualbase_timerEvent(self.h, event.h)

type QsciLexerCustomtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_timerEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_timerEvent ".} =
  type Cb = proc(super: QsciLexerCustomtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerCustom(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerCustom, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerCustom_virtualbase_childEvent(self.h, event.h)

type QsciLexerCustomchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_childEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_childEvent ".} =
  type Cb = proc(super: QsciLexerCustomchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerCustom(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerCustom, event: gen_qcoreevent.QEvent): void =


  fQsciLexerCustom_virtualbase_customEvent(self.h, event.h)

type QsciLexerCustomcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_customEvent(self: ptr cQsciLexerCustom, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_customEvent ".} =
  type Cb = proc(super: QsciLexerCustomcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerCustom(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerCustom, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCustom_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerCustomconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_connectNotify(self: ptr cQsciLexerCustom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_connectNotify ".} =
  type Cb = proc(super: QsciLexerCustomconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerCustom(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerCustom, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerCustom_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerCustomdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerCustom, slot: proc(super: QsciLexerCustomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerCustomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerCustom_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerCustom_disconnectNotify(self: ptr cQsciLexerCustom, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerCustom_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerCustomdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerCustom(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerCustom): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerCustom_staticMetaObject())
proc delete*(self: QsciLexerCustom) =
  fcQsciLexerCustom_delete(self.h)
