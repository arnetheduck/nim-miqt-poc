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
{.compile("gen_qscilexerdiff.cpp", cflags).}


type QsciLexerDiffEnum* = cint
const
  QsciLexerDiffDefault* = 0
  QsciLexerDiffComment* = 1
  QsciLexerDiffCommand* = 2
  QsciLexerDiffHeader* = 3
  QsciLexerDiffPosition* = 4
  QsciLexerDiffLineRemoved* = 5
  QsciLexerDiffLineAdded* = 6
  QsciLexerDiffLineChanged* = 7
  QsciLexerDiffAddingPatchAdded* = 8
  QsciLexerDiffRemovingPatchAdded* = 9
  QsciLexerDiffAddingPatchRemoved* = 10
  QsciLexerDiffRemovingPatchRemoved* = 11



import gen_qscilexerdiff_types
export gen_qscilexerdiff_types

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

type cQsciLexerDiff*{.exportc: "QsciLexerDiff", incompleteStruct.} = object

proc fcQsciLexerDiff_new(): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new".}
proc fcQsciLexerDiff_new2(parent: pointer): ptr cQsciLexerDiff {.importc: "QsciLexerDiff_new2".}
proc fcQsciLexerDiff_metaObject(self: pointer, ): pointer {.importc: "QsciLexerDiff_metaObject".}
proc fcQsciLexerDiff_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerDiff_metacast".}
proc fcQsciLexerDiff_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerDiff_metacall".}
proc fcQsciLexerDiff_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr".}
proc fcQsciLexerDiff_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerDiff_trUtf8".}
proc fcQsciLexerDiff_language(self: pointer, ): cstring {.importc: "QsciLexerDiff_language".}
proc fcQsciLexerDiff_lexer(self: pointer, ): cstring {.importc: "QsciLexerDiff_lexer".}
proc fcQsciLexerDiff_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerDiff_wordCharacters".}
proc fcQsciLexerDiff_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerDiff_defaultColor".}
proc fcQsciLexerDiff_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerDiff_description".}
proc fcQsciLexerDiff_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerDiff_tr2".}
proc fcQsciLexerDiff_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerDiff_tr3".}
proc fcQsciLexerDiff_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerDiff_trUtf82".}
proc fcQsciLexerDiff_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerDiff_trUtf83".}
proc fQsciLexerDiff_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerDiff_virtualbase_metaObject".}
proc fcQsciLexerDiff_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metaObject".}
proc fQsciLexerDiff_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerDiff_virtualbase_metacast".}
proc fcQsciLexerDiff_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metacast".}
proc fQsciLexerDiff_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerDiff_virtualbase_metacall".}
proc fcQsciLexerDiff_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_metacall".}
proc fcQsciLexerDiff_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_language".}
proc fQsciLexerDiff_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_lexer".}
proc fcQsciLexerDiff_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_lexer".}
proc fQsciLexerDiff_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_lexerId".}
proc fcQsciLexerDiff_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_lexerId".}
proc fQsciLexerDiff_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_autoCompletionFillups".}
proc fcQsciLexerDiff_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_autoCompletionFillups".}
proc fQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerDiff_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerDiff_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerDiff_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockEnd".}
proc fcQsciLexerDiff_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockEnd".}
proc fQsciLexerDiff_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_blockLookback".}
proc fcQsciLexerDiff_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockLookback".}
proc fQsciLexerDiff_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockStart".}
proc fcQsciLexerDiff_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockStart".}
proc fQsciLexerDiff_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerDiff_virtualbase_blockStartKeyword".}
proc fcQsciLexerDiff_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_blockStartKeyword".}
proc fQsciLexerDiff_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_braceStyle".}
proc fcQsciLexerDiff_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_braceStyle".}
proc fQsciLexerDiff_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerDiff_virtualbase_caseSensitive".}
proc fcQsciLexerDiff_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_caseSensitive".}
proc fQsciLexerDiff_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_color".}
proc fcQsciLexerDiff_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_color".}
proc fQsciLexerDiff_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerDiff_virtualbase_eolFill".}
proc fcQsciLexerDiff_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_eolFill".}
proc fQsciLexerDiff_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_font".}
proc fcQsciLexerDiff_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_font".}
proc fQsciLexerDiff_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_indentationGuideView".}
proc fcQsciLexerDiff_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_indentationGuideView".}
proc fQsciLexerDiff_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerDiff_virtualbase_keywords".}
proc fcQsciLexerDiff_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_keywords".}
proc fQsciLexerDiff_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_defaultStyle".}
proc fcQsciLexerDiff_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultStyle".}
proc fcQsciLexerDiff_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_description".}
proc fQsciLexerDiff_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_paper".}
proc fcQsciLexerDiff_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_paper".}
proc fQsciLexerDiff_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultColorWithStyle".}
proc fQsciLexerDiff_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerDiff_virtualbase_defaultEolFill".}
proc fcQsciLexerDiff_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultEolFill".}
proc fQsciLexerDiff_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultFontWithStyle".}
proc fQsciLexerDiff_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerDiff_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerDiff_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerDiff_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerDiff_virtualbase_setEditor".}
proc fcQsciLexerDiff_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setEditor".}
proc fQsciLexerDiff_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerDiff_virtualbase_refreshProperties".}
proc fcQsciLexerDiff_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_refreshProperties".}
proc fQsciLexerDiff_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerDiff_virtualbase_styleBitsNeeded".}
proc fcQsciLexerDiff_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_styleBitsNeeded".}
proc fQsciLexerDiff_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerDiff_virtualbase_wordCharacters".}
proc fcQsciLexerDiff_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_wordCharacters".}
proc fQsciLexerDiff_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerDiff_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerDiff_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setAutoIndentStyle".}
proc fQsciLexerDiff_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setColor".}
proc fcQsciLexerDiff_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setColor".}
proc fQsciLexerDiff_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setEolFill".}
proc fcQsciLexerDiff_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setEolFill".}
proc fQsciLexerDiff_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setFont".}
proc fcQsciLexerDiff_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setFont".}
proc fQsciLexerDiff_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerDiff_virtualbase_setPaper".}
proc fcQsciLexerDiff_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_setPaper".}
proc fQsciLexerDiff_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerDiff_virtualbase_readProperties".}
proc fcQsciLexerDiff_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_readProperties".}
proc fQsciLexerDiff_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerDiff_virtualbase_writeProperties".}
proc fcQsciLexerDiff_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_writeProperties".}
proc fQsciLexerDiff_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerDiff_virtualbase_event".}
proc fcQsciLexerDiff_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_event".}
proc fQsciLexerDiff_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerDiff_virtualbase_eventFilter".}
proc fcQsciLexerDiff_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_eventFilter".}
proc fQsciLexerDiff_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_timerEvent".}
proc fcQsciLexerDiff_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_timerEvent".}
proc fQsciLexerDiff_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_childEvent".}
proc fcQsciLexerDiff_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_childEvent".}
proc fQsciLexerDiff_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerDiff_virtualbase_customEvent".}
proc fcQsciLexerDiff_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_customEvent".}
proc fQsciLexerDiff_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerDiff_virtualbase_connectNotify".}
proc fcQsciLexerDiff_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_connectNotify".}
proc fQsciLexerDiff_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerDiff_virtualbase_disconnectNotify".}
proc fcQsciLexerDiff_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerDiff_override_virtual_disconnectNotify".}
proc fcQsciLexerDiff_staticMetaObject(): pointer {.importc: "QsciLexerDiff_staticMetaObject".}
proc fcQsciLexerDiff_delete(self: pointer) {.importc: "QsciLexerDiff_delete".}


func init*(T: type QsciLexerDiff, h: ptr cQsciLexerDiff): QsciLexerDiff =
  T(h: h)
proc create*(T: type QsciLexerDiff, ): QsciLexerDiff =

  QsciLexerDiff.init(fcQsciLexerDiff_new())
proc create*(T: type QsciLexerDiff, parent: gen_qobject.QObject): QsciLexerDiff =

  QsciLexerDiff.init(fcQsciLexerDiff_new2(parent.h))
proc metaObject*(self: QsciLexerDiff, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerDiff_metaObject(self.h))

proc metacast*(self: QsciLexerDiff, param1: cstring): pointer =

  fcQsciLexerDiff_metacast(self.h, param1)

proc metacall*(self: QsciLexerDiff, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerDiff_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerDiff, s: cstring): string =

  let v_ms = fcQsciLexerDiff_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QsciLexerDiff, s: cstring): string =

  let v_ms = fcQsciLexerDiff_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerDiff, ): cstring =

  (fcQsciLexerDiff_language(self.h))

proc lexer*(self: QsciLexerDiff, ): cstring =

  (fcQsciLexerDiff_lexer(self.h))

proc wordCharacters*(self: QsciLexerDiff, ): cstring =

  (fcQsciLexerDiff_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerDiff, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerDiff_defaultColor(self.h, style))

proc description*(self: QsciLexerDiff, style: cint): string =

  let v_ms = fcQsciLexerDiff_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerDiff, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerDiff_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerDiff, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerDiff_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QsciLexerDiff, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerDiff_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QsciLexerDiff, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerDiff_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerDiff, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerDiff_virtualbase_metaObject(self.h))

type QsciLexerDiffmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metaObject(self: ptr cQsciLexerDiff, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_metaObject ".} =
  type Cb = proc(super: QsciLexerDiffmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerDiff, param1: cstring): pointer =


  fQsciLexerDiff_virtualbase_metacast(self.h, param1)

type QsciLexerDiffmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metacast(self: ptr cQsciLexerDiff, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_metacast ".} =
  type Cb = proc(super: QsciLexerDiffmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerDiff(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerDiff, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerDiff_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerDiffmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_metacall(self: ptr cQsciLexerDiff, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_metacall ".} =
  type Cb = proc(super: QsciLexerDiffmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerDiff(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerDifflanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerDiff, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_language(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerDiff, ): cstring =


  (fQsciLexerDiff_virtualbase_lexer(self.h))

type QsciLexerDifflexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerDiff, slot: proc(super: QsciLexerDifflexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDifflexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_lexer(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_lexer ".} =
  type Cb = proc(super: QsciLexerDifflexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_lexerId(self.h)

type QsciLexerDifflexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerDiff, slot: proc(super: QsciLexerDifflexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDifflexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_lexerId(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_lexerId ".} =
  type Cb = proc(super: QsciLexerDifflexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerDiff, ): cstring =


  (fQsciLexerDiff_virtualbase_autoCompletionFillups(self.h))

type QsciLexerDiffautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_autoCompletionFillups(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerDiffautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerDiff, ): seq[string] =


  var v_ma = fQsciLexerDiff_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerDiffautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_autoCompletionWordSeparators(self: ptr cQsciLexerDiff, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerDiff_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerDiffautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerDiff, style: ptr cint): cstring =


  (fQsciLexerDiff_virtualbase_blockEnd(self.h, style))

type QsciLexerDiffblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockEnd(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockEnd ".} =
  type Cb = proc(super: QsciLexerDiffblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_blockLookback(self.h)

type QsciLexerDiffblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockLookback(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_blockLookback ".} =
  type Cb = proc(super: QsciLexerDiffblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerDiff, style: ptr cint): cstring =


  (fQsciLexerDiff_virtualbase_blockStart(self.h, style))

type QsciLexerDiffblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockStart(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockStart ".} =
  type Cb = proc(super: QsciLexerDiffblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerDiff, style: ptr cint): cstring =


  (fQsciLexerDiff_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerDiffblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_blockStartKeyword(self: ptr cQsciLexerDiff, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerDiffblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_braceStyle(self.h)

type QsciLexerDiffbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_braceStyle(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_braceStyle ".} =
  type Cb = proc(super: QsciLexerDiffbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerDiff, ): bool =


  fQsciLexerDiff_virtualbase_caseSensitive(self.h)

type QsciLexerDiffcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_caseSensitive(self: ptr cQsciLexerDiff, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_caseSensitive ".} =
  type Cb = proc(super: QsciLexerDiffcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerDiff, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_color(self.h, style))

type QsciLexerDiffcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_color(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_color ".} =
  type Cb = proc(super: QsciLexerDiffcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerDiff, style: cint): bool =


  fQsciLexerDiff_virtualbase_eolFill(self.h, style)

type QsciLexerDiffeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_eolFill(self: ptr cQsciLexerDiff, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_eolFill ".} =
  type Cb = proc(super: QsciLexerDiffeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerDiff, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerDiff_virtualbase_font(self.h, style))

type QsciLexerDifffontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerDiff, slot: proc(super: QsciLexerDifffontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDifffontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_font(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_font ".} =
  type Cb = proc(super: QsciLexerDifffontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_indentationGuideView(self.h)

type QsciLexerDiffindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_indentationGuideView(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerDiffindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerDiff, set: cint): cstring =


  (fQsciLexerDiff_virtualbase_keywords(self.h, set))

type QsciLexerDiffkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_keywords(self: ptr cQsciLexerDiff, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_keywords ".} =
  type Cb = proc(super: QsciLexerDiffkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerDiff(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_defaultStyle(self.h)

type QsciLexerDiffdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultStyle(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultStyle ".} =
  type Cb = proc(super: QsciLexerDiffdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerDiffdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerDiff, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_description(self: ptr cQsciLexerDiff, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerDiff_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerDiff, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_paper(self.h, style))

type QsciLexerDiffpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_paper(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_paper ".} =
  type Cb = proc(super: QsciLexerDiffpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerDiff, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerDiffdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultColorWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerDiffdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerDiff, style: cint): bool =


  fQsciLexerDiff_virtualbase_defaultEolFill(self.h, style)

type QsciLexerDiffdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultEolFill(self: ptr cQsciLexerDiff, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerDiffdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerDiff, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerDiff_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerDiffdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultFontWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerDiffdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerDiff, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerDiff_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerDiffdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_defaultPaperWithStyle(self: ptr cQsciLexerDiff, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerDiff_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerDiffdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerDiff(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerDiff, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerDiff_virtualbase_setEditor(self.h, editor.h)

type QsciLexerDiffsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setEditor(self: ptr cQsciLexerDiff, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setEditor ".} =
  type Cb = proc(super: QsciLexerDiffsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerDiff(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerDiff, ): void =


  fQsciLexerDiff_virtualbase_refreshProperties(self.h)

type QsciLexerDiffrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_refreshProperties(self: ptr cQsciLexerDiff, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerDiff_refreshProperties ".} =
  type Cb = proc(super: QsciLexerDiffrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerDiff(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerDiff, ): cint =


  fQsciLexerDiff_virtualbase_styleBitsNeeded(self.h)

type QsciLexerDiffstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_styleBitsNeeded(self: ptr cQsciLexerDiff, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerDiff_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerDiffstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerDiff, ): cstring =


  (fQsciLexerDiff_virtualbase_wordCharacters(self.h))

type QsciLexerDiffwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_wordCharacters(self: ptr cQsciLexerDiff, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerDiff_wordCharacters ".} =
  type Cb = proc(super: QsciLexerDiffwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerDiff(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerDiff, autoindentstyle: cint): void =


  fQsciLexerDiff_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerDiffsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setAutoIndentStyle(self: ptr cQsciLexerDiff, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerDiffsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerDiff(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerDiff, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerDiff_virtualbase_setColor(self.h, c.h, style)

type QsciLexerDiffsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setColor(self: ptr cQsciLexerDiff, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setColor ".} =
  type Cb = proc(super: QsciLexerDiffsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerDiff(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerDiff, eoffill: bool, style: cint): void =


  fQsciLexerDiff_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerDiffsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setEolFill(self: ptr cQsciLexerDiff, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setEolFill ".} =
  type Cb = proc(super: QsciLexerDiffsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerDiff(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerDiff, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerDiff_virtualbase_setFont(self.h, f.h, style)

type QsciLexerDiffsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setFont(self: ptr cQsciLexerDiff, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setFont ".} =
  type Cb = proc(super: QsciLexerDiffsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerDiff(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerDiff, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerDiff_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerDiffsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_setPaper(self: ptr cQsciLexerDiff, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerDiff_setPaper ".} =
  type Cb = proc(super: QsciLexerDiffsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerDiff(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerDiff, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerDiff_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDiffreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_readProperties(self: ptr cQsciLexerDiff, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_readProperties ".} =
  type Cb = proc(super: QsciLexerDiffreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerDiff(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerDiff, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerDiff_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDiffwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_writeProperties(self: ptr cQsciLexerDiff, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_writeProperties ".} =
  type Cb = proc(super: QsciLexerDiffwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerDiff(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerDiff, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerDiff_virtualbase_event(self.h, event.h)

type QsciLexerDiffeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_event(self: ptr cQsciLexerDiff, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_event ".} =
  type Cb = proc(super: QsciLexerDiffeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerDiff(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerDiff, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerDiff_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerDiffeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_eventFilter(self: ptr cQsciLexerDiff, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerDiff_eventFilter ".} =
  type Cb = proc(super: QsciLexerDiffeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerDiff(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerDiff, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerDiff_virtualbase_timerEvent(self.h, event.h)

type QsciLexerDifftimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerDiff, slot: proc(super: QsciLexerDifftimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDifftimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_timerEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_timerEvent ".} =
  type Cb = proc(super: QsciLexerDifftimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerDiff(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerDiff, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerDiff_virtualbase_childEvent(self.h, event.h)

type QsciLexerDiffchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_childEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_childEvent ".} =
  type Cb = proc(super: QsciLexerDiffchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerDiff(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerDiff, event: gen_qcoreevent.QEvent): void =


  fQsciLexerDiff_virtualbase_customEvent(self.h, event.h)

type QsciLexerDiffcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_customEvent(self: ptr cQsciLexerDiff, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_customEvent ".} =
  type Cb = proc(super: QsciLexerDiffcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerDiff(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerDiff, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerDiff_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerDiffconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_connectNotify(self: ptr cQsciLexerDiff, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_connectNotify ".} =
  type Cb = proc(super: QsciLexerDiffconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerDiff(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerDiff, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerDiff_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerDiffdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerDiff, slot: proc(super: QsciLexerDiffdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDiffdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerDiff_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerDiff_disconnectNotify(self: ptr cQsciLexerDiff, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerDiff_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerDiffdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerDiff(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerDiff): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerDiff_staticMetaObject())
proc delete*(self: QsciLexerDiff) =
  fcQsciLexerDiff_delete(self.h)
