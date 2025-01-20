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
{.compile("gen_qscilexertex.cpp", cflags).}


type QsciLexerTeXEnum* = cint
const
  QsciLexerTeXDefault* = 0
  QsciLexerTeXSpecial* = 1
  QsciLexerTeXGroup* = 2
  QsciLexerTeXSymbol* = 3
  QsciLexerTeXCommand* = 4
  QsciLexerTeXText* = 5



import gen_qscilexertex_types
export gen_qscilexertex_types

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

type cQsciLexerTeX*{.exportc: "QsciLexerTeX", incompleteStruct.} = object

proc fcQsciLexerTeX_new(): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new".}
proc fcQsciLexerTeX_new2(parent: pointer): ptr cQsciLexerTeX {.importc: "QsciLexerTeX_new2".}
proc fcQsciLexerTeX_metaObject(self: pointer, ): pointer {.importc: "QsciLexerTeX_metaObject".}
proc fcQsciLexerTeX_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerTeX_metacast".}
proc fcQsciLexerTeX_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerTeX_metacall".}
proc fcQsciLexerTeX_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr".}
proc fcQsciLexerTeX_language(self: pointer, ): cstring {.importc: "QsciLexerTeX_language".}
proc fcQsciLexerTeX_lexer(self: pointer, ): cstring {.importc: "QsciLexerTeX_lexer".}
proc fcQsciLexerTeX_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerTeX_wordCharacters".}
proc fcQsciLexerTeX_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerTeX_defaultColor".}
proc fcQsciLexerTeX_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerTeX_keywords".}
proc fcQsciLexerTeX_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerTeX_description".}
proc fcQsciLexerTeX_refreshProperties(self: pointer, ): void {.importc: "QsciLexerTeX_refreshProperties".}
proc fcQsciLexerTeX_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldComments".}
proc fcQsciLexerTeX_foldComments(self: pointer, ): bool {.importc: "QsciLexerTeX_foldComments".}
proc fcQsciLexerTeX_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerTeX_setFoldCompact".}
proc fcQsciLexerTeX_foldCompact(self: pointer, ): bool {.importc: "QsciLexerTeX_foldCompact".}
proc fcQsciLexerTeX_setProcessComments(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessComments".}
proc fcQsciLexerTeX_processComments(self: pointer, ): bool {.importc: "QsciLexerTeX_processComments".}
proc fcQsciLexerTeX_setProcessIf(self: pointer, enable: bool): void {.importc: "QsciLexerTeX_setProcessIf".}
proc fcQsciLexerTeX_processIf(self: pointer, ): bool {.importc: "QsciLexerTeX_processIf".}
proc fcQsciLexerTeX_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerTeX_tr2".}
proc fcQsciLexerTeX_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerTeX_tr3".}
proc fQsciLexerTeX_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerTeX_virtualbase_metaObject".}
proc fcQsciLexerTeX_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metaObject".}
proc fQsciLexerTeX_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerTeX_virtualbase_metacast".}
proc fcQsciLexerTeX_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metacast".}
proc fQsciLexerTeX_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerTeX_virtualbase_metacall".}
proc fcQsciLexerTeX_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_metacall".}
proc fcQsciLexerTeX_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_language".}
proc fQsciLexerTeX_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_lexer".}
proc fcQsciLexerTeX_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_lexer".}
proc fQsciLexerTeX_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_lexerId".}
proc fcQsciLexerTeX_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_lexerId".}
proc fQsciLexerTeX_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_autoCompletionFillups".}
proc fcQsciLexerTeX_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_autoCompletionFillups".}
proc fQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerTeX_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerTeX_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerTeX_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockEnd".}
proc fcQsciLexerTeX_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockEnd".}
proc fQsciLexerTeX_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_blockLookback".}
proc fcQsciLexerTeX_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockLookback".}
proc fQsciLexerTeX_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockStart".}
proc fcQsciLexerTeX_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockStart".}
proc fQsciLexerTeX_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerTeX_virtualbase_blockStartKeyword".}
proc fcQsciLexerTeX_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_blockStartKeyword".}
proc fQsciLexerTeX_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_braceStyle".}
proc fcQsciLexerTeX_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_braceStyle".}
proc fQsciLexerTeX_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerTeX_virtualbase_caseSensitive".}
proc fcQsciLexerTeX_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_caseSensitive".}
proc fQsciLexerTeX_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_color".}
proc fcQsciLexerTeX_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_color".}
proc fQsciLexerTeX_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTeX_virtualbase_eolFill".}
proc fcQsciLexerTeX_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_eolFill".}
proc fQsciLexerTeX_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_font".}
proc fcQsciLexerTeX_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_font".}
proc fQsciLexerTeX_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_indentationGuideView".}
proc fcQsciLexerTeX_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_indentationGuideView".}
proc fQsciLexerTeX_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerTeX_virtualbase_keywords".}
proc fcQsciLexerTeX_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_keywords".}
proc fQsciLexerTeX_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_defaultStyle".}
proc fcQsciLexerTeX_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultStyle".}
proc fcQsciLexerTeX_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_description".}
proc fQsciLexerTeX_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_paper".}
proc fcQsciLexerTeX_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_paper".}
proc fQsciLexerTeX_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultColorWithStyle".}
proc fQsciLexerTeX_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerTeX_virtualbase_defaultEolFill".}
proc fcQsciLexerTeX_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultEolFill".}
proc fQsciLexerTeX_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultFontWithStyle".}
proc fQsciLexerTeX_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerTeX_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerTeX_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerTeX_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerTeX_virtualbase_setEditor".}
proc fcQsciLexerTeX_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setEditor".}
proc fQsciLexerTeX_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerTeX_virtualbase_refreshProperties".}
proc fcQsciLexerTeX_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_refreshProperties".}
proc fQsciLexerTeX_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerTeX_virtualbase_styleBitsNeeded".}
proc fcQsciLexerTeX_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_styleBitsNeeded".}
proc fQsciLexerTeX_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerTeX_virtualbase_wordCharacters".}
proc fcQsciLexerTeX_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_wordCharacters".}
proc fQsciLexerTeX_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerTeX_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerTeX_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setAutoIndentStyle".}
proc fQsciLexerTeX_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setColor".}
proc fcQsciLexerTeX_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setColor".}
proc fQsciLexerTeX_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setEolFill".}
proc fcQsciLexerTeX_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setEolFill".}
proc fQsciLexerTeX_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setFont".}
proc fcQsciLexerTeX_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setFont".}
proc fQsciLexerTeX_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerTeX_virtualbase_setPaper".}
proc fcQsciLexerTeX_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_setPaper".}
proc fQsciLexerTeX_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTeX_virtualbase_readProperties".}
proc fcQsciLexerTeX_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_readProperties".}
proc fQsciLexerTeX_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerTeX_virtualbase_writeProperties".}
proc fcQsciLexerTeX_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_writeProperties".}
proc fQsciLexerTeX_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerTeX_virtualbase_event".}
proc fcQsciLexerTeX_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_event".}
proc fQsciLexerTeX_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerTeX_virtualbase_eventFilter".}
proc fcQsciLexerTeX_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_eventFilter".}
proc fQsciLexerTeX_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_timerEvent".}
proc fcQsciLexerTeX_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_timerEvent".}
proc fQsciLexerTeX_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_childEvent".}
proc fcQsciLexerTeX_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_childEvent".}
proc fQsciLexerTeX_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerTeX_virtualbase_customEvent".}
proc fcQsciLexerTeX_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_customEvent".}
proc fQsciLexerTeX_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTeX_virtualbase_connectNotify".}
proc fcQsciLexerTeX_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_connectNotify".}
proc fQsciLexerTeX_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerTeX_virtualbase_disconnectNotify".}
proc fcQsciLexerTeX_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerTeX_override_virtual_disconnectNotify".}
proc fcQsciLexerTeX_staticMetaObject(): pointer {.importc: "QsciLexerTeX_staticMetaObject".}
proc fcQsciLexerTeX_delete(self: pointer) {.importc: "QsciLexerTeX_delete".}


func init*(T: type QsciLexerTeX, h: ptr cQsciLexerTeX): QsciLexerTeX =
  T(h: h)
proc create*(T: type QsciLexerTeX, ): QsciLexerTeX =

  QsciLexerTeX.init(fcQsciLexerTeX_new())
proc create*(T: type QsciLexerTeX, parent: gen_qobject.QObject): QsciLexerTeX =

  QsciLexerTeX.init(fcQsciLexerTeX_new2(parent.h))
proc metaObject*(self: QsciLexerTeX, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTeX_metaObject(self.h))

proc metacast*(self: QsciLexerTeX, param1: cstring): pointer =

  fcQsciLexerTeX_metacast(self.h, param1)

proc metacall*(self: QsciLexerTeX, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerTeX_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerTeX, s: cstring): string =

  let v_ms = fcQsciLexerTeX_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerTeX, ): cstring =

  (fcQsciLexerTeX_language(self.h))

proc lexer*(self: QsciLexerTeX, ): cstring =

  (fcQsciLexerTeX_lexer(self.h))

proc wordCharacters*(self: QsciLexerTeX, ): cstring =

  (fcQsciLexerTeX_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerTeX, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerTeX_defaultColor(self.h, style))

proc keywords*(self: QsciLexerTeX, set: cint): cstring =

  (fcQsciLexerTeX_keywords(self.h, set))

proc description*(self: QsciLexerTeX, style: cint): string =

  let v_ms = fcQsciLexerTeX_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerTeX, ): void =

  fcQsciLexerTeX_refreshProperties(self.h)

proc setFoldComments*(self: QsciLexerTeX, fold: bool): void =

  fcQsciLexerTeX_setFoldComments(self.h, fold)

proc foldComments*(self: QsciLexerTeX, ): bool =

  fcQsciLexerTeX_foldComments(self.h)

proc setFoldCompact*(self: QsciLexerTeX, fold: bool): void =

  fcQsciLexerTeX_setFoldCompact(self.h, fold)

proc foldCompact*(self: QsciLexerTeX, ): bool =

  fcQsciLexerTeX_foldCompact(self.h)

proc setProcessComments*(self: QsciLexerTeX, enable: bool): void =

  fcQsciLexerTeX_setProcessComments(self.h, enable)

proc processComments*(self: QsciLexerTeX, ): bool =

  fcQsciLexerTeX_processComments(self.h)

proc setProcessIf*(self: QsciLexerTeX, enable: bool): void =

  fcQsciLexerTeX_setProcessIf(self.h, enable)

proc processIf*(self: QsciLexerTeX, ): bool =

  fcQsciLexerTeX_processIf(self.h)

proc tr2*(_: type QsciLexerTeX, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerTeX_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerTeX, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerTeX_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerTeX, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerTeX_virtualbase_metaObject(self.h))

type QsciLexerTeXmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metaObject(self: ptr cQsciLexerTeX, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_metaObject ".} =
  type Cb = proc(super: QsciLexerTeXmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerTeX, param1: cstring): pointer =


  fQsciLexerTeX_virtualbase_metacast(self.h, param1)

type QsciLexerTeXmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metacast(self: ptr cQsciLexerTeX, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_metacast ".} =
  type Cb = proc(super: QsciLexerTeXmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerTeX(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerTeX, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerTeX_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerTeXmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_metacall(self: ptr cQsciLexerTeX, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_metacall ".} =
  type Cb = proc(super: QsciLexerTeXmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerTeX(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerTeXlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerTeX, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_language(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerTeX, ): cstring =


  (fQsciLexerTeX_virtualbase_lexer(self.h))

type QsciLexerTeXlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_lexer(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_lexer ".} =
  type Cb = proc(super: QsciLexerTeXlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_lexerId(self.h)

type QsciLexerTeXlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_lexerId(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_lexerId ".} =
  type Cb = proc(super: QsciLexerTeXlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerTeX, ): cstring =


  (fQsciLexerTeX_virtualbase_autoCompletionFillups(self.h))

type QsciLexerTeXautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_autoCompletionFillups(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerTeXautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerTeX, ): seq[string] =


  var v_ma = fQsciLexerTeX_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerTeXautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_autoCompletionWordSeparators(self: ptr cQsciLexerTeX, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerTeX_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerTeXautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerTeX, style: ptr cint): cstring =


  (fQsciLexerTeX_virtualbase_blockEnd(self.h, style))

type QsciLexerTeXblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockEnd(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockEnd ".} =
  type Cb = proc(super: QsciLexerTeXblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_blockLookback(self.h)

type QsciLexerTeXblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockLookback(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_blockLookback ".} =
  type Cb = proc(super: QsciLexerTeXblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerTeX, style: ptr cint): cstring =


  (fQsciLexerTeX_virtualbase_blockStart(self.h, style))

type QsciLexerTeXblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockStart(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockStart ".} =
  type Cb = proc(super: QsciLexerTeXblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerTeX, style: ptr cint): cstring =


  (fQsciLexerTeX_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerTeXblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_blockStartKeyword(self: ptr cQsciLexerTeX, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerTeXblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_braceStyle(self.h)

type QsciLexerTeXbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_braceStyle(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_braceStyle ".} =
  type Cb = proc(super: QsciLexerTeXbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerTeX, ): bool =


  fQsciLexerTeX_virtualbase_caseSensitive(self.h)

type QsciLexerTeXcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_caseSensitive(self: ptr cQsciLexerTeX, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_caseSensitive ".} =
  type Cb = proc(super: QsciLexerTeXcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerTeX, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_color(self.h, style))

type QsciLexerTeXcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_color(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_color ".} =
  type Cb = proc(super: QsciLexerTeXcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerTeX, style: cint): bool =


  fQsciLexerTeX_virtualbase_eolFill(self.h, style)

type QsciLexerTeXeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_eolFill(self: ptr cQsciLexerTeX, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_eolFill ".} =
  type Cb = proc(super: QsciLexerTeXeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerTeX, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerTeX_virtualbase_font(self.h, style))

type QsciLexerTeXfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_font(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_font ".} =
  type Cb = proc(super: QsciLexerTeXfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_indentationGuideView(self.h)

type QsciLexerTeXindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_indentationGuideView(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerTeXindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerTeX, set: cint): cstring =


  (fQsciLexerTeX_virtualbase_keywords(self.h, set))

type QsciLexerTeXkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_keywords(self: ptr cQsciLexerTeX, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_keywords ".} =
  type Cb = proc(super: QsciLexerTeXkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerTeX(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_defaultStyle(self.h)

type QsciLexerTeXdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultStyle(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultStyle ".} =
  type Cb = proc(super: QsciLexerTeXdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerTeXdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerTeX, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_description(self: ptr cQsciLexerTeX, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerTeX_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerTeX, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_paper(self.h, style))

type QsciLexerTeXpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_paper(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_paper ".} =
  type Cb = proc(super: QsciLexerTeXpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerTeX, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerTeXdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultColorWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerTeXdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerTeX, style: cint): bool =


  fQsciLexerTeX_virtualbase_defaultEolFill(self.h, style)

type QsciLexerTeXdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultEolFill(self: ptr cQsciLexerTeX, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerTeXdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerTeX, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerTeX_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerTeXdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultFontWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerTeXdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerTeX, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerTeX_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerTeXdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_defaultPaperWithStyle(self: ptr cQsciLexerTeX, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerTeX_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerTeXdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerTeX(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerTeX, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerTeX_virtualbase_setEditor(self.h, editor.h)

type QsciLexerTeXsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setEditor(self: ptr cQsciLexerTeX, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setEditor ".} =
  type Cb = proc(super: QsciLexerTeXsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerTeX(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerTeX, ): void =


  fQsciLexerTeX_virtualbase_refreshProperties(self.h)

type QsciLexerTeXrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_refreshProperties(self: ptr cQsciLexerTeX, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerTeX_refreshProperties ".} =
  type Cb = proc(super: QsciLexerTeXrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerTeX(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerTeX, ): cint =


  fQsciLexerTeX_virtualbase_styleBitsNeeded(self.h)

type QsciLexerTeXstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_styleBitsNeeded(self: ptr cQsciLexerTeX, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerTeX_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerTeXstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerTeX, ): cstring =


  (fQsciLexerTeX_virtualbase_wordCharacters(self.h))

type QsciLexerTeXwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_wordCharacters(self: ptr cQsciLexerTeX, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerTeX_wordCharacters ".} =
  type Cb = proc(super: QsciLexerTeXwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerTeX(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerTeX, autoindentstyle: cint): void =


  fQsciLexerTeX_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerTeXsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setAutoIndentStyle(self: ptr cQsciLexerTeX, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerTeXsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerTeX(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerTeX, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerTeX_virtualbase_setColor(self.h, c.h, style)

type QsciLexerTeXsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setColor(self: ptr cQsciLexerTeX, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setColor ".} =
  type Cb = proc(super: QsciLexerTeXsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerTeX(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerTeX, eoffill: bool, style: cint): void =


  fQsciLexerTeX_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerTeXsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setEolFill(self: ptr cQsciLexerTeX, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setEolFill ".} =
  type Cb = proc(super: QsciLexerTeXsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerTeX(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerTeX, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerTeX_virtualbase_setFont(self.h, f.h, style)

type QsciLexerTeXsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setFont(self: ptr cQsciLexerTeX, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setFont ".} =
  type Cb = proc(super: QsciLexerTeXsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerTeX(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerTeX, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerTeX_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerTeXsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_setPaper(self: ptr cQsciLexerTeX, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerTeX_setPaper ".} =
  type Cb = proc(super: QsciLexerTeXsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerTeX(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerTeX, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerTeX_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTeXreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_readProperties(self: ptr cQsciLexerTeX, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_readProperties ".} =
  type Cb = proc(super: QsciLexerTeXreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerTeX(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerTeX, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerTeX_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerTeXwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_writeProperties(self: ptr cQsciLexerTeX, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_writeProperties ".} =
  type Cb = proc(super: QsciLexerTeXwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerTeX(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerTeX, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerTeX_virtualbase_event(self.h, event.h)

type QsciLexerTeXeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_event(self: ptr cQsciLexerTeX, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_event ".} =
  type Cb = proc(super: QsciLexerTeXeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerTeX(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerTeX, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerTeX_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerTeXeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_eventFilter(self: ptr cQsciLexerTeX, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerTeX_eventFilter ".} =
  type Cb = proc(super: QsciLexerTeXeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerTeX(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerTeX, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerTeX_virtualbase_timerEvent(self.h, event.h)

type QsciLexerTeXtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_timerEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_timerEvent ".} =
  type Cb = proc(super: QsciLexerTeXtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerTeX(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerTeX, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerTeX_virtualbase_childEvent(self.h, event.h)

type QsciLexerTeXchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_childEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_childEvent ".} =
  type Cb = proc(super: QsciLexerTeXchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerTeX(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerTeX, event: gen_qcoreevent.QEvent): void =


  fQsciLexerTeX_virtualbase_customEvent(self.h, event.h)

type QsciLexerTeXcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_customEvent(self: ptr cQsciLexerTeX, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_customEvent ".} =
  type Cb = proc(super: QsciLexerTeXcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerTeX(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerTeX, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerTeX_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerTeXconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_connectNotify(self: ptr cQsciLexerTeX, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_connectNotify ".} =
  type Cb = proc(super: QsciLexerTeXconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerTeX(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerTeX, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerTeX_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerTeXdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerTeX, slot: proc(super: QsciLexerTeXdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerTeXdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerTeX_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerTeX_disconnectNotify(self: ptr cQsciLexerTeX, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerTeX_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerTeXdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerTeX(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerTeX): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerTeX_staticMetaObject())
proc delete*(self: QsciLexerTeX) =
  fcQsciLexerTeX_delete(self.h)
